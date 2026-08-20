inline.NumInlined: 588
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.CaDiCaL::Blocker" = type { %"class.std::vector.0", %"class.std::vector.0", %"class.CaDiCaL::heap.115" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.CaDiCaL::heap.115" = type { %"class.std::vector.15", %"class.std::vector.15", %"struct.CaDiCaL::block_more_occs_size" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.CaDiCaL::block_more_occs_size" = type { ptr }

$_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9push_backEj = comdat any

$_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE9pop_frontEv = comdat any

$_ZN7CaDiCaL7BlockerD2Ev = comdat any

$_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm = comdat any

$_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE2upEj = comdat any

$_ZN7CaDiCaL4heapINS_20block_more_occs_sizeEE4downEj = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"scheduled %zd candidate literals %.2f%% (%d skipped %.2f%%)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"blocked %ld clauses in %ld resolutions\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"found %ld pure literals in %ld clauses\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"no pure literals found\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN7CaDiCaLL21invalid_heap_positionE = internal constant i32 -1, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal17is_blocked_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL8Internal4markEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  %i.a = sub nsw i32 0, %2                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.d = tail call noundef i32 @llvm.fshl.i32(i32 %i.c, i32 %i.a, i32 1)
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !12   ; 4 uses
  %.not7189 = icmp eq ptr %i.j, %i.i
  br i1 %.not7189, label %._crit_edge, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5312 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.promoted = load i64, ptr %i.k, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %bb.e
  %i.m = phi i64 [ %.promoted, %.lr.ph92 ], [ %i.o, %bb.e ]
  %.03991 = phi ptr [ null, %.lr.ph92 ], [ %i.n, %bb.e ]
  %.sroa.051.090 = phi ptr [ %i.j, %.lr.ph92 ], [ %i.an, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %.sroa.051.090, align 8, !tbaa !158 ; 8 uses
  store ptr %.03991, ptr %.sroa.051.090, align 8, !tbaa !158
  %i.o = add nsw i64 %i.m, 1                      ; 2 uses
  store i64 %i.o, ptr %i.k, align 8, !tbaa !15
  %.ptr74 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %.not80 = icmp eq i32 %i.q, 0
  br i1 %.not80, label %.thread68, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.r, 2
  %i.s = add nsw i64 %.idx, 20
  br label %.lr.ph

.preheader:                                       ; preds = %bb.d
  %.not5095 = icmp eq i64 %.044.add, 24
  br i1 %.not5095, label %.thread68, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.t = add nuw nsw i64 %indvar, 1               ; 2 uses
  %min.iters.check = icmp ult i64 %indvar, 7
  br i1 %min.iters.check, label %.lr.ph98.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.u = shl i64 %n.vec, 2
  %i.v = sub i64 %.044.add, %i.u
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.ac, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %reverse131, %vector.body ]
  %i.w = shl i64 %index, 2
  %i.x = sub i64 %.044.add, %i.w
  %i.y = getelementptr i8, ptr %i.n, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -32     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !159 ; 2 uses
  %wide.load130 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !159 ; 3 uses
  %reverse131 = shufflevector <4 x i32> %wide.load130, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse132 = shufflevector <4 x i32> %wide.load, <4 x i32> %vector.recur, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %reverse133 = shufflevector <4 x i32> %wide.load130, <4 x i32> %wide.load, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %reverse132, ptr %i.z, align 4, !tbaa !159
  store <4 x i32> %reverse133, ptr %i.aa, align 4, !tbaa !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load130, i64 0
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.thread68, label %.lr.ph98.preheader134

.lr.ph98.preheader134:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.145.idx97.ph = phi i64 [ %.044.add, %.lr.ph98.preheader ], [ %i.v, %middle.block ]
  %.24896.ph = phi i32 [ %i.ac, %.lr.ph98.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.d ] ; 3 uses
  %.044.idx82 = phi i64 [ 24, %.lr.ph.preheader ], [ %.044.add, %bb.d ] ; 3 uses
  %.04681 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %bb.d ]
  %.044.ptr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.044.idx82 ; 2 uses
  %i.ac = load i32, ptr %.044.ptr, align 4, !tbaa !159 ; 7 uses
  store i32 %.04681, ptr %.044.ptr, align 4, !tbaa !159
  %i.ad = icmp eq i32 %i.ac, %i.a
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = tail call noundef i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !165 ; 2 uses
  %i.aj = icmp slt i32 %i.ac, 0
  %i.ak = sub i8 0, %i.ai
  %spec.select.i = select i1 %i.aj, i8 %i.ak, i8 %i.ai
  %i.al = icmp slt i8 %spec.select.i, 0
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.044.add = add nuw nsw i64 %.044.idx82, 4      ; 5 uses
  %.not = icmp eq i64 %.044.idx82, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !166

.lr.ph98:                                         ; preds = %.lr.ph98.preheader134, %.lr.ph98
  %.145.idx97 = phi i64 [ %.145.add, %.lr.ph98 ], [ %.145.idx97.ph, %.lr.ph98.preheader134 ]
  %.24896 = phi i32 [ %i.am, %.lr.ph98 ], [ %.24896.ph, %.lr.ph98.preheader134 ]
  %.145.add = add nsw i64 %.145.idx97, -4         ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.n, i64 %.145.add ; 2 uses
  %i.am = load i32, ptr %.ptr, align 4, !tbaa !159
  store i32 %.24896, ptr %.ptr, align 4, !tbaa !159
  %.not50 = icmp eq i64 %.145.add, 24
  br i1 %.not50, label %.thread68, label %.lr.ph98, !llvm.loop !167

.thread68:                                        ; preds = %bb.b, %.lr.ph98, %middle.block, %.preheader
  store ptr %i.n, ptr %i.j, align 8, !tbaa !158
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i32 %i.ac, ptr %.ptr74, align 8, !tbaa !159
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.051.090, i64 8 ; 3 uses
  %.not71 = icmp eq ptr %i.an, %i.i
  br i1 %.not71, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.051.0.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.an, %bb.e ] ; 2 uses
  %.039.lcssa = phi ptr [ null, %bb.a ], [ %i.n, %bb.e ]
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !12  ; 2 uses
  %.not7299 = icmp eq ptr %.sroa.051.0.lcssa, %i.ao
  br i1 %.not7299, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %._crit_edge, %.lr.ph103
  %.241101 = phi ptr [ %i.aq, %.lr.ph103 ], [ %.039.lcssa, %._crit_edge ]
  %.sroa.051.1100 = phi ptr [ %i.ap, %.lr.ph103 ], [ %.sroa.051.0.lcssa, %._crit_edge ]
  %i.ap = getelementptr inbounds i8, ptr %.sroa.051.1100, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !158
  store ptr %.241101, ptr %i.ap, align 8, !tbaa !158
  %.not72 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not72, label %.loopexit, label %.lr.ph103, !llvm.loop !169

.loopexit:                                        ; preds = %.lr.ph103, %._crit_edge, %.thread68
  %i.ar = phi i1 [ false, %.thread68 ], [ true, %._crit_edge ], [ true, %.lr.ph103 ]
  ret i1 %i.ar
}

declare void @_ZN7CaDiCaL8Internal4markEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal14block_scheduleERNS_7BlockerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not8194 = icmp eq ptr %i.b, %i.d
  br i1 %.not8194, label %._crit_edge105, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3228
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit89
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.pre120 = load ptr, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %.not82101 = icmp eq ptr %.pre, %.pre120
  br i1 %.not82101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph96, %.loopexit89
  %.sroa.078.095 = phi ptr [ %i.b, %.lr.ph96 ], [ %i.ag, %.loopexit89 ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.078.095, align 8, !tbaa !158 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 2064
  %or.cond = icmp eq i32 %i.k, 0
  br i1 %or.cond, label %bb.c, label %.loopexit89

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !159  ; 3 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !170
  %.not60 = icmp sgt i32 %i.m, %i.n
  br i1 %.not60, label %bb.d, label %.loopexit89

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not6192 = icmp eq i32 %i.m, 0
  br i1 %.not6192, label %.loopexit89, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN7CaDiCaL8Internal9mark_skipEi.exit
  %.05393 = phi ptr [ %i.af, %_ZN7CaDiCaL8Internal9mark_skipEi.exit ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = load i32, ptr %.05393, align 4, !tbaa !159 ; 2 uses
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %.inv = icmp slt i32 %i.r, 1
  %i.w = select i1 %.inv, i32 1, i32 2            ; 2 uses
  %i.x = load i32, ptr %i.v, align 1              ; 2 uses
  %i.y = lshr i32 %i.x, 16                        ; 2 uses
  %i.z = and i32 %i.y, %i.w
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.e, label %_ZN7CaDiCaL8Internal9mark_skipEi.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aa = or i32 %i.y, %i.w
  %i.ab = shl nuw i32 %i.aa, 16
  %i.ac = and i32 %i.ab, 196608
  %i.ad = and i32 %i.x, -196609
  %i.ae = or disjoint i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %i.v, align 1
  br label %_ZN7CaDiCaL8Internal9mark_skipEi.exit

_ZN7CaDiCaL8Internal9mark_skipEi.exit:            ; preds = %.lr.ph, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.05393, i64 4 ; 2 uses
  %.not61 = icmp eq ptr %i.af, %i.q
  br i1 %.not61, label %.loopexit89, label %.lr.ph

.loopexit89:                                      ; preds = %_ZN7CaDiCaL8Internal9mark_skipEi.exit, %bb.d, %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.078.095, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.ag, %i.d
  br i1 %.not81, label %._crit_edge, label %bb.b

._crit_edge105:                                   ; preds = %.loopexit88, %bb.a, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !172, !nonnull !173, !align !174
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !159 ; 2 uses
  %i.ak = xor i32 %i.aj, -1
  %i.al = lshr i32 %i.aj, 31
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %.not83106 = icmp eq i32 %i.am, -1
  br i1 %.not83106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %._crit_edge105
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !171
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph104, %.loopexit88
  %.sroa.074.0102 = phi ptr [ %.pre, %.lr.ph104 ], [ %i.ce, %.loopexit88 ] ; 4 uses
  %i.ar = load ptr, ptr %.sroa.074.0102, align 8, !tbaa !158 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 2064
  %or.cond62 = icmp eq i32 %i.au, 0
  br i1 %or.cond62, label %bb.g, label %.loopexit88

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !159 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %.idx119 = shl nsw i64 %i.ay, 2
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %.idx119
  %.not5797 = icmp eq i32 %i.ax, 0
  br i1 %.not5797, label %.loopexit88, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.05298 = phi ptr [ %i.cd, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.av, %bb.g ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal18block_pure_literalERNS_7BlockerEi:bb.a
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #12 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.ar, ptr %i.bk, align 8, !tbaa !158
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.k, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ay) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !177
  store ptr %i.bm, ptr %i.ad, align 8, !tbaa !175
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !189 ; 2 uses
  %.not16 = icmp eq ptr %i.bo, null
  %.pre28 = load ptr, ptr %.sroa.021.027, align 8, !tbaa !158 ; 2 uses
  br i1 %.not16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  tail call void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.bo, ptr noundef %.pre28)
  %.pre = load ptr, ptr %.sroa.021.027, align 8, !tbaa !158
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.bp = phi ptr [ %.pre, %bb.m ], [ %.pre28, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ]
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !190
  tail call void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(568) %i.bq, ptr noundef %i.bp, i32 noundef %2)
  %i.br = load i64, ptr %i.ah, align 8, !tbaa !188
  %i.bs = add nsw i64 %i.br, 1
  store i64 %i.bs, ptr %i.ah, align 8, !tbaa !188
  %i.bt = load ptr, ptr %.sroa.021.027, align 8, !tbaa !158
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.bt)
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.bu, %i.ab
  br i1 %.not25, label %._crit_edge.loopexit, label %bb.f

bb.p:                                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit, %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit19
  ret void
}

declare void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal9mark_pureEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal35block_literal_with_one_negative_occERNS_7BlockerEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i32 0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 2 uses
  %i.d = tail call noundef i32 @llvm.fshl.i32(i32 %i.c, i32 %i.a, i32 1)
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 5 uses
  %.not92100 = icmp eq ptr %i.h, %i.j
  br i1 %.not92100, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit.thread, label %.lr.ph

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit.thread: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = sub nuw nsw i64 1, %i.n
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.o)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !177
  store ptr null, ptr %.pre, align 8, !tbaa !158
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 8
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.i, align 8, !tbaa !175
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i
  store ptr %..0, ptr %i.h, align 8, !tbaa !158
  %.not = icmp eq ptr %..0, null
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0102 = phi ptr [ %..0, %.lr.ph ], [ null, %bb.a ]
  %.sroa.085.0101 = phi ptr [ %i.y, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.085.0101, align 8, !tbaa !158 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 16
  %.not61 = icmp eq i32 %i.x, 0
  %..0 = select i1 %.not61, ptr %i.u, ptr %.0102  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.085.0101, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.y, %i.j
  br i1 %.not92, label %bb.b, label %.lr.ph

bb.d:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %..0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3228
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !170
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.z, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit.thread, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %bb.d
  %.0.lcssa147151 = phi ptr [ null, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit.thread ], [ null, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %..0, %bb.d ] ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal4markEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %.0.lcssa147151)
  %i.ae = tail call noundef i32 @llvm.fshl.i32(i32 %i.c, i32 %2, i32 1)
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 4 uses
  %.not93114 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not93114, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3228
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph119, %.loopexit
  %.051117 = phi i64 [ 0, %.lr.ph119 ], [ %.253, %.loopexit ] ; 8 uses
  %.sroa.075.0116 = phi ptr [ %i.ak, %.lr.ph119 ], [ %i.cw, %.loopexit ] ; 2 uses
  %.sroa.078.0115 = phi ptr [ %i.ak, %.lr.ph119 ], [ %.sroa.078.1, %.loopexit ] ; 4 uses
  %i.at = load ptr, ptr %.sroa.075.0116, align 8, !tbaa !158 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.078.0115, i64 8 ; 6 uses
  store ptr %i.at, ptr %.sroa.078.0115, align 8, !tbaa !158
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, 16
  %.not57 = icmp eq i32 %i.ax, 0
  br i1 %.not57, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !159 ; 4 uses
  %i.ba = load i32, ptr %i.al, align 4, !tbaa !170
  %i.bb = icmp sgt i32 %i.az, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !191
  %i.bd = icmp slt i32 %i.az, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.ptr95 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.not58103 = icmp eq i32 %i.az, 0
  br i1 %.not58103, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.i
  %i.be = sext i32 %i.az to i64
  %.idx = shl nsw i64 %i.be, 2
  %i.bf = add nsw i64 %.idx, 20
  br label %.lr.ph107

.preheader:                                       ; preds = %bb.k
  %.not60110 = icmp eq i64 %.046.add, 24
  br i1 %.not60110, label %.loopexit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %.preheader
  %i.bg = add nuw nsw i64 %indvar, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %indvar, 7
  br i1 %min.iters.check, label %.lr.ph113.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113.preheader
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = sub i64 %.046.add, %i.bh
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bp, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %reverse158, %vector.body ]
  %i.bj = shl i64 %index, 2
  %i.bk = sub i64 %.046.add, %i.bj
  %i.bl = getelementptr i8, ptr %i.at, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 -32    ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !159 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !159 ; 3 uses
  %reverse158 = shufflevector <4 x i32> %wide.load157, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse159 = shufflevector <4 x i32> %wide.load, <4 x i32> %vector.recur, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %reverse160 = shufflevector <4 x i32> %wide.load157, <4 x i32> %wide.load, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %reverse159, ptr %i.bm, align 4, !tbaa !159
  store <4 x i32> %reverse160, ptr %i.bn, align 4, !tbaa !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load157, i64 0
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph113.preheader162

.lr.ph113.preheader162:                           ; preds = %.lr.ph113.preheader, %middle.block
  %.147.idx112.ph = phi i64 [ %.046.add, %.lr.ph113.preheader ], [ %i.bi, %middle.block ]
  %.2111.ph = phi i32 [ %i.bp, %.lr.ph113.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph113

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.k
  %indvar = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvar.next, %bb.k ] ; 3 uses
  %.046.idx105 = phi i64 [ 24, %.lr.ph107.preheader ], [ %.046.add, %bb.k ] ; 3 uses
  %.048104 = phi i32 [ 0, %.lr.ph107.preheader ], [ %i.bp, %bb.k ]
  %.046.ptr = getelementptr inbounds nuw i8, ptr %i.at, i64 %.046.idx105 ; 2 uses
  %i.bp = load i32, ptr %.046.ptr, align 4, !tbaa !159 ; 7 uses
  store i32 %.048104, ptr %.046.ptr, align 4, !tbaa !159
  %i.bq = icmp eq i32 %i.bp, %2
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph107
  %i.br = tail call noundef i32 @llvm.abs.i32(i32 %i.bp, i1 true)
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !164
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !165 ; 2 uses
  %i.bw = icmp slt i32 %i.bp, 0
  %i.bx = sub i8 0, %i.bv
  %spec.select.i = select i1 %i.bw, i8 %i.bx, i8 %i.bv
  %i.by = icmp slt i8 %spec.select.i, 0
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph107, %bb.j
  %.046.add = add nuw nsw i64 %.046.idx105, 4     ; 5 uses
  %.not58 = icmp eq i64 %.046.idx105, %i.bf
  %indvar.next = add i64 %indvar, 1
  br i1 %.not58, label %.preheader, label %.lr.ph107, !llvm.loop !193

.lr.ph113:                                        ; preds = %.lr.ph113.preheader162, %.lr.ph113
  %.147.idx112 = phi i64 [ %.147.add, %.lr.ph113 ], [ %.147.idx112.ph, %.lr.ph113.preheader162 ]
  %.2111 = phi i32 [ %i.bz, %.lr.ph113 ], [ %.2111.ph, %.lr.ph113.preheader162 ]
  %.147.add = add nsw i64 %.147.idx112, -4        ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.at, i64 %.147.add ; 2 uses
  %i.bz = load i32, ptr %.ptr, align 4, !tbaa !159
  store i32 %.2111, ptr %.ptr, align 4, !tbaa !159
  %.not60 = icmp eq i64 %.147.add, 24
  br i1 %.not60, label %.loopexit, label %.lr.ph113, !llvm.loop !194

bb.l:                                             ; preds = %bb.j
  store i32 %i.bp, ptr %.ptr95, align 8, !tbaa !159
  %i.ca = add nsw i64 %.051117, 1
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !189 ; 2 uses
  %.not59 = icmp eq ptr %i.cb, null
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.cb, ptr noundef nonnull %i.at)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = load ptr, ptr %i.ap, align 8, !tbaa !190
  tail call void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(568) %i.cc, ptr noundef nonnull %i.at, i32 noundef %2)
  %i.cd = load ptr, ptr %i.ar, align 8, !tbaa !175 ; 4 uses
  %i.ce = load ptr, ptr %i.as, align 8, !tbaa !176
  %.not.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.at, ptr %i.cd, align 8, !tbaa !158
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cf, ptr %i.ar, align 8, !tbaa !175
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !177 ; 4 uses
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.q, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #11
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #12 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store ptr %i.at, ptr %i.cs, align 8, !tbaa !158
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.r, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cg) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cr, ptr %i.aq, align 8, !tbaa !177
  store ptr %i.cu, ptr %i.ar, align 8, !tbaa !175
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cv, ptr %i.as, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.o, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.at)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph113, %middle.block, %bb.i, %.preheader, %bb.f, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.h, %bb.g
  %.sroa.078.1 = phi ptr [ %i.au, %bb.g ], [ %i.au, %bb.h ], [ %.sroa.078.0115, %bb.f ], [ %.sroa.078.0115, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.au, %.preheader ], [ %i.au, %bb.i ], [ %i.au, %middle.block ], [ %i.au, %.lr.ph113 ] ; 2 uses
  %.253 = phi i64 [ %.051117, %bb.g ], [ %.051117, %bb.h ], [ %.051117, %bb.f ], [ %i.ca, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.051117, %.preheader ], [ %.051117, %bb.i ], [ %.051117, %middle.block ], [ %.051117, %.lr.ph113 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.075.0116, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.cw, %i.aj
  br i1 %.not93, label %._crit_edge120.loopexit, label %bb.f, !llvm.loop !195

._crit_edge120.loopexit:                          ; preds = %.loopexit
  %.pre124 = load ptr, ptr %i.ah, align 8, !tbaa !12
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %bb.e
  %i.cx = phi ptr [ %i.ak, %bb.e ], [ %.pre124, %._crit_edge120.loopexit ] ; 6 uses
  %.sroa.078.0.lcssa = phi ptr [ %i.aj, %bb.e ], [ %.sroa.078.1, %._crit_edge120.loopexit ] ; 3 uses
  %.051.lcssa = phi i64 [ 0, %bb.e ], [ %.253, %._crit_edge120.loopexit ]
  %i.cy = icmp eq ptr %.sroa.078.0.lcssa, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.w

bb.t:                                             ; preds = %._crit_edge120
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !176
  %.not.i62 = icmp eq ptr %i.da, %i.cx
  br i1 %.not.i62, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdlPv(ptr noundef nonnull %i.cx) #13
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

bb.w:                                             ; preds = %._crit_edge120
  %i.db = ptrtoint ptr %.sroa.078.0.lcssa to i64
  %i.dc = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = ashr exact i64 %i.dd, 3                 ; 3 uses
  %i.df = load ptr, ptr %i.ai, align 8, !tbaa !175 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.dc
  %i.di = ashr exact i64 %i.dh, 3                 ; 3 uses
  %i.dj = icmp ugt i64 %i.de, %i.di
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = sub nuw nsw i64 %i.de, %i.di
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.dk)
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

bb.y:                                             ; preds = %bb.w
  %i.dl = icmp uge i64 %i.de, %i.di
  %.not.i.i63 = icmp eq ptr %i.df, %.sroa.078.0.lcssa
  %or.cond = or i1 %i.dl, %.not.i.i63
  br i1 %or.cond, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i64

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i64: ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  store ptr %i.dm, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i64, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !196
  %i.dp = add nsw i64 %i.do, %.051.lcssa
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !196
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %.0.lcssa147151)
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZN7CaDiCaL8Internal16block_candidatesERNS_7BlockerEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 2 uses
  %i.c = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %2, i32 1)
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 6 uses
  %i.g = sub nsw i32 0, %2
  %i.h = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.g, i32 1)
end_hunk_1
