Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hb_bit_page_t = type { i32, %struct.hb_vector_size_t }
%struct.hb_vector_size_t = type { [8 x i64] }
%"struct.hb_bit_page_t::iter_t" = type <{ ptr, i32, [4 x i8] }>
%struct.hb_array_t.15 = type { ptr, i32, i32 }
%struct.hb_vector_t.3 = type { i32, i32, ptr }
%struct.contour_point_vector_t = type { %struct.hb_vector_t.0 }
%struct.hb_vector_t.0 = type { i32, i32, ptr }

$_ZN11hb_vector_tIjLb0EE5allocEjb = comdat any

$_ZNK13hb_bit_page_t8is_emptyEv = comdat any

$_ZNK13hb_bit_page_t14get_populationEv = comdat any

$_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv = comdat any

$_ZN11hb_vector_tIiLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb = comdat any

@_hb_CrapPool = external hidden local_unnamed_addr global [80 x i64], align 16
@_hb_NullPool = external hidden local_unnamed_addr constant [80 x i64], align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.hb_bit_page_t, align 8      ; 16 uses
  %7 = alloca %struct.hb_bit_page_t, align 8      ; 8 uses
  %8 = alloca %struct.hb_bit_page_t, align 8      ; 8 uses
  %9 = alloca %"struct.hb_bit_page_t::iter_t", align 8 ; 5 uses
  %10 = alloca %struct.hb_array_t.15, align 8     ; 6 uses
  %11 = alloca %struct.hb_vector_t.3, align 8     ; 8 uses
  %12 = alloca %struct.hb_vector_t.3, align 8     ; 8 uses
  %13 = alloca %struct.contour_point_vector_t, align 8 ; 9 uses
  %.sroa.3 = alloca [8 x i64], align 8            ; 7 uses
  %14 = alloca %struct.hb_bit_page_t, align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !13     ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.d
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, !prof !12

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.h, %.preheader.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.053.i.i, 1
  %i.g = add nuw i32 %.053.i.i, 8
  %i.h = add nuw i32 %i.g, %i.f                   ; 6 uses
  %i.i = icmp ugt i32 %i.b, %i.h
  br i1 %i.i, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !16

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %i.h to i64
  %i.m = tail call ptr @hb_malloc(i64 noundef %i.l) #8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %i.q, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !20
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread39.i.i
  %i.r = phi ptr [ null, %bb.d ], [ %i.k, %.thread39.i.i ]
  %i.s = zext i32 %i.h to i64
  %i.t = tail call ptr @hb_realloc(ptr noundef %i.r, i64 noundef %i.s) #8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !24

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.u = load i32, ptr %3, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.h, %i.u
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i = phi ptr [ %i.t, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store ptr %.1.i.i52.i.i, ptr %i.j, align 8, !tbaa !18
  store i32 %i.h, ptr %3, align 8, !tbaa !13
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.v = xor i32 %i.u, -1
  store i32 %i.v, ptr %3, align 8, !tbaa !13
  br label %.critedge

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19   ; 3 uses
  %i.y = icmp ugt i32 %i.b, %i.x
  br i1 %i.y, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.h

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  %i.z = sub nuw nsw i32 %i.b, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = zext nneg i32 %i.z to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 0, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  store i32 %i.b, ptr %i.w, align 4, !tbaa !19
  %i.af = load i32, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ah = xor i32 %i.af, -1
  store i32 %i.ah, ptr %4, align 8, !tbaa !25
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit

_ZN11hb_vector_tIjLb0EE5resetEv.exit:             ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 17 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !28
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !8   ; 6 uses
  %i.ak = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aj, i1 noundef zeroext false)
  br i1 %i.ak, label %.preheader119, label %.critedge, !prof !29

.preheader119:                                    ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit
  %i.al = add i32 %i.aj, -4                       ; 3 uses
  %.not145 = icmp eq i32 %i.al, 0
  br i1 %.not145, label %.lr.ph136, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr @_hb_NullPool, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext i32 %i.al to i64
  br label %bb.j

.preheader:                                       ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.ap = icmp ugt i32 %i.aj, 3
  br i1 %i.ap, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.preheader119, %.preheader
  %i.aq = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.at = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55 = icmp slt i32 %i.as, %i.at
  br i1 %.not.i55, label %.critedge.i59, label %bb.n

bb.j:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31, !range !35, !noundef !36
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.ba = load i32, ptr %4, align 8, !tbaa !25
  %.not.i = icmp slt i32 %i.az, %i.ba
  br i1 %.not.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add i32 %i.az, 1
  %i.bc = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bb, i1 noundef zeroext false)
  br i1 %i.bc, label %..critedge_crit_edge.i, label %bb.m, !prof !29

..critedge_crit_edge.i:                           ; preds = %bb.l
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i

bb.m:                                             ; preds = %bb.l
  store i32 %i.an, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.k
  %i.bd = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.bf = add i32 %i.bd, 1
  store i32 %i.bf, ptr %i.ai, align 4, !tbaa !28
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.m, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.j, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.v, %.critedge.i59.3, %.preheader
  %i.bj = load i32, ptr %4, align 8, !tbaa !25
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %bb.w

bb.n:                                             ; preds = %.lr.ph136
  %i.bl = add i32 %i.as, 1
  %i.bm = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bl, i1 noundef zeroext false)
  br i1 %i.bm, label %..critedge_crit_edge.i57, label %bb.o, !prof !29

..critedge_crit_edge.i57:                         ; preds = %bb.n
  %.pre.i58 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59

bb.o:                                             ; preds = %bb.n
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %bb.p

.critedge.i59:                                    ; preds = %..critedge_crit_edge.i57, %.lr.ph136
  %i.bn = phi i32 [ %.pre.i58, %..critedge_crit_edge.i57 ], [ %i.as, %.lr.ph136 ] ; 2 uses
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !28
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.al, ptr %i.br, align 4, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i59, %bb.o
  %i.bs = add i32 %i.aj, -3
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.bu = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.1 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i55.1, label %.critedge.i59.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add i32 %i.bt, 1
  %i.bw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv, i1 noundef zeroext false)
  br i1 %i.bw, label %..critedge_crit_edge.i57.1, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

..critedge_crit_edge.i57.1:                       ; preds = %bb.q
  %.pre.i58.1 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.1

.critedge.i59.1:                                  ; preds = %..critedge_crit_edge.i57.1, %bb.p
  %i.bx = phi i32 [ %.pre.i58.1, %..critedge_crit_edge.i57.1 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.bz = add i32 %i.bx, 1
  store i32 %i.bz, ptr %i.ai, align 4, !tbaa !28
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %i.bs, ptr %i.cb, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1: ; preds = %.critedge.i59.1, %bb.r
  %i.cc = add i32 %i.aj, -2
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.ce = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.2 = icmp slt i32 %i.cd, %i.ce
  br i1 %.not.i55.2, label %.critedge.i59.2, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.cf = add i32 %i.cd, 1
  %i.cg = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cf, i1 noundef zeroext false)
  br i1 %i.cg, label %..critedge_crit_edge.i57.2, label %bb.t, !prof !29

bb.t:                                             ; preds = %bb.s
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

..critedge_crit_edge.i57.2:                       ; preds = %bb.s
  %.pre.i58.2 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.2

.critedge.i59.2:                                  ; preds = %..critedge_crit_edge.i57.2, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.ch = phi i32 [ %.pre.i58.2, %..critedge_crit_edge.i57.2 ], [ %i.cd, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1 ] ; 2 uses
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.cj = add i32 %i.ch, 1
  store i32 %i.cj, ptr %i.ai, align 4, !tbaa !28
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ck
  store i32 %i.cc, ptr %i.cl, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2: ; preds = %.critedge.i59.2, %bb.t
  %i.cm = add i32 %i.aj, -1
  %i.cn = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.co = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.3 = icmp slt i32 %i.cn, %i.co
  br i1 %.not.i55.3, label %.critedge.i59.3, label %bb.u

bb.u:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cp = add i32 %i.cn, 1
  %i.cq = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cp, i1 noundef zeroext false)
  br i1 %i.cq, label %..critedge_crit_edge.i57.3, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %._crit_edge

..critedge_crit_edge.i57.3:                       ; preds = %bb.u
  %.pre.i58.3 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.3

.critedge.i59.3:                                  ; preds = %..critedge_crit_edge.i57.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cr = phi i32 [ %.pre.i58.3, %..critedge_crit_edge.i57.3 ], [ %i.cn, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2 ] ; 2 uses
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.ct = add i32 %i.cr, 1
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !28
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cm, ptr %i.cv, align 4, !tbaa !38
  br label %._crit_edge

bb.w:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !28 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx = shl nuw nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %.not137 = icmp eq i32 %i.cy, 0
  br i1 %.not137, label %.critedge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = fmul double %5, %5                      ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph141, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread
  %.048139 = phi i32 [ 0, %.lr.ph141 ], [ %.ph, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 6 uses
  %.050138 = phi ptr [ %i.cx, %.lr.ph141 ], [ %i.rx, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 2 uses
  %i.et = load i32, ptr %.050138, align 4, !tbaa !38 ; 2 uses
  %i.eu = sub i32 %i.et, %.048139
  %i.ev = add i32 %i.eu, 1                        ; 4 uses
  %i.ew = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.ex = load i32, ptr %i.a, align 4, !tbaa !8
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.ex, i32 %.048139)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ev) ; 23 uses
  %i.ey = zext i32 %.048139 to i64                ; 5 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ew, i64 %i.ey ; 8 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 5 uses
  %i.fa = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.fb = load i32, ptr %i.dd, align 4, !tbaa !42
  %storemerge.i.i66 = call i32 @llvm.usub.sat.i32(i32 %i.fb, i32 %.048139)
  %.sroa.speculated.i.i67 = call i32 @llvm.umin.i32(i32 %storemerge.i.i66, i32 %i.ev)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey ; 8 uses
  %i.fd = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.fe = load i32, ptr %i.df, align 4, !tbaa !42
  %storemerge.i.i74 = call i32 @llvm.usub.sat.i32(i32 %i.fe, i32 %.048139)
  %.sroa.speculated.i.i75 = call i32 @llvm.umin.i32(i32 %storemerge.i.i74, i32 %i.ev)
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ey ; 9 uses
  %i.fg = load ptr, ptr %i.dg, align 8, !tbaa !18 ; 2 uses
  %i.fh = ptrtoaddr ptr %i.fg to i64
  %i.fi = load i32, ptr %i.w, align 4, !tbaa !19
  %storemerge.i.i82 = call i32 @llvm.usub.sat.i32(i32 %i.fi, i32 %.048139)
  %.sroa.speculated.i.i83 = call i32 @llvm.umin.i32(i32 %storemerge.i.i82, i32 %i.ev) ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey ; 16 uses
  %.sroa.3.8.insert.ext.i.i84 = zext i32 %.sroa.speculated.i.i83 to i64 ; 15 uses
  %.not.i87 = icmp eq i32 %.sroa.speculated.i.i83, %.sroa.speculated.i.i
  %.not161.i = icmp eq i32 %.sroa.speculated.i.i67, %.sroa.speculated.i.i
  %or.cond.i = select i1 %.not.i87, i1 %.not161.i, i1 false
  %.not162.i = icmp eq i32 %.sroa.speculated.i.i75, %.sroa.speculated.i.i
  %or.cond168.i = select i1 %or.cond.i, i1 %.not162.i, i1 false ; 3 uses
  br i1 %or.cond168.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fk = add i32 %.sroa.speculated.i.i, -513
  %or.cond = icmp ult i32 %i.fk, -512
  br i1 %or.cond, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !prof !43

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond.not.i, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %bb.y, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !38
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !38
  %i.fp = sitofp i32 %i.fm to double              ; 2 uses
  %i.fq = sitofp i32 %i.fo to double              ; 2 uses
  %i.fr = fmul nnan double %i.fq, %i.fq
  %i.fs = call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double %i.fr)
  %i.ft = fcmp ule double %i.fs, %i.dh
  br i1 %i.ft, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.fu = icmp eq i32 %.sroa.speculated.i.i, 1
  br i1 %i.fu, label %bb.ab, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.aa
  %i.fv = load i32, ptr %i.fc, align 4, !tbaa !38 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.fj, align 1, !tbaa !45
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

bb.ac:                                            ; preds = %bb.ae
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond67.not.i, label %.critedge.i93, label %bb.ad, !llvm.loop !46

bb.ad:                                            ; preds = %bb.ac, %.lr.ph38.i
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph38.i ], [ %indvars.iv.next64.i, %bb.ac ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv63.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !38
  %.not163.i = icmp eq i32 %i.fx, %i.fv
  br i1 %.not163.i, label %bb.ae, label %.lr.ph.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv63.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !38
  %i.ga = load i32, ptr %i.ff, align 4, !tbaa !38
  %.not164.i = icmp eq i32 %i.fz, %i.ga
  br i1 %.not164.i, label %bb.ac, label %.lr.ph.i.i

.critedge.i93:                                    ; preds = %bb.ac
  store i8 1, ptr %i.fj, align 1, !tbaa !45
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, i8 0, i64 64, i1 false), !tbaa !47
  %.084116.i.i = add nsw i32 %.sroa.speculated.i.i, -1 ; 4 uses
  %i.gb = zext nneg i32 %.084116.i.i to i64       ; 2 uses
  %.079.in.pre.i.i = load float, ptr %i.ez, align 4, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.076.i.i = phi i32 [ %i.fv, %.lr.ph.i.i ], [ %.078.i.i, %.loopexit.i.i ] ; 5 uses
  %i.gc = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kb, %.loopexit.i.i ] ; 10 uses
  %.079.in.i.i = phi float [ %.079.in.pre.i.i, %.lr.ph.i.i ], [ %.081.in.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.gb, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 9 uses
  %.085117.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.i.i, %.loopexit.i.i ] ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ge = add i32 %.084116.i.i, %i.gd
  %i.gf = urem i32 %i.ge, %.sroa.speculated.i.i
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %indvars.iv.i.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i.i
  %i.gj = zext nneg i32 %i.gf to i64              ; 3 uses
  %i.gk = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gj
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %.085117.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.085117.i.i
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gj
  %.077.i.i = load i32, ptr %i.gr, align 4, !tbaa !38 ; 5 uses
  %.078.i.i = load i32, ptr %i.gq, align 4, !tbaa !38 ; 8 uses
  %.079.i.i = fpext float %.079.in.i.i to double  ; 2 uses
  %.080.in.i.i = load float, ptr %i.gk, align 4, !tbaa !49 ; 3 uses
  %.080.i.i = fpext float %.080.in.i.i to double  ; 2 uses
  %.081.in.i.i = load float, ptr %i.gg, align 4, !tbaa !49 ; 2 uses
  %.081.i.i = fpext float %.081.in.i.i to double  ; 3 uses
  %i.gs = fcmp ugt float %.080.in.i.i, %.079.in.i.i ; 4 uses
  %.076..077.i.i = select i1 %i.gs, i32 %.076.i.i, i32 %.077.i.i ; 5 uses
  %.077..076.i.i = select i1 %i.gs, i32 %.077.i.i, i32 %.076.i.i ; 5 uses
  %.079..080.i.i = select i1 %i.gs, double %.079.i.i, double %.080.i.i ; 2 uses
  %i.gt = fcmp oeq float %.079.in.i.i, %.080.in.i.i
  br i1 %i.gt, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gu = sub nsw i32 %.076..077.i.i, %.077..076.i.i
  %i.gv = call i32 @llvm.abs.i32(i32 %i.gu, i1 true)
  %i.gw = uitofp nneg i32 %i.gv to double
  %i.gx = fcmp olt double %5, %i.gw
  br i1 %i.gx, label %bb.ah, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gy = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.gz = uitofp nneg i32 %i.gy to double
  %i.ha = fcmp olt double %5, %i.gz
  br i1 %i.ha, label %.critedge96.i.i, label %.critedge.i.i

bb.ai:                                            ; preds = %bb.af
  %.080..079.i.i = select i1 %i.gs, double %.080.i.i, double %.079.i.i
  %i.hb = fcmp ugt double %.079..080.i.i, %.081.i.i
  %i.hc = fcmp ult double %.080..079.i.i, %.081.i.i
  %or.cond.i.i = or i1 %i.hb, %i.hc
  br i1 %or.cond.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.speculated103.i.i = call i32 @llvm.smin.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hd = sitofp i32 %.sroa.speculated103.i.i to double
  %i.he = fsub double %i.hd, %5
  %i.hf = sitofp i32 %.078.i.i to double          ; 2 uses
  %i.hg = fcmp ugt double %i.he, %i.hf
  br i1 %i.hg, label %.critedge96.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.speculated.i.i88 = call i32 @llvm.smax.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hh = sitofp i32 %.sroa.speculated.i.i88 to double
  %i.hi = fadd double %5, %i.hh
  %i.hj = fcmp ult double %i.hi, %i.hf
  br i1 %i.hj, label %.critedge96.i.i, label %.critedge.i.i

bb.al:                                            ; preds = %bb.ai
  %.not.i.i92 = icmp eq i32 %.076.i.i, %.077.i.i
  br i1 %.not.i.i92, label %.critedge.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hk = fcmp ogt double %.079..080.i.i, %.081.i.i
  %i.hl = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.hm = uitofp nneg i32 %i.hl to double
end_hunk_0
begin_hunk_1_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
  br i1 %cmp.n, label %.critedge179.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index239 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next241, %vec.epilog.vector.body ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 %index239
  %wide.load240 = load <4 x i8>, ptr %i.ng, align 1, !tbaa !45
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fj, i64 %index239
  store <4 x i8> %wide.load240, ptr %i.nh, align 1, !tbaa !45
  %index.next241 = add nuw i64 %index239, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next241, %n.vec238
  br i1 %i.ni, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n242 = icmp eq i64 %n.vec238, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n242, label %.critedge179.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec238, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i84, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv78.i.prol
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !45, !range !35, !noundef !36
  %i.nl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv78.i.prol
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !45
  %indvars.iv.next79.i.prol = add nuw nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !75

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv78.i.unr = phi i64 [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.nm = sub nsw i64 %indvars.iv78.i.ph, %.sroa.3.8.insert.ext.i.i84
  %i.nn = icmp ugt i64 %i.nm, -4
  br i1 %i.nn, label %.critedge179.i, label %vec.epilog.scalar.ph

.lr.ph54.i:                                       ; preds = %bb.cd, %.lr.ph54.i
  %i.no = phi i32 [ %.pr.i, %.lr.ph54.i ], [ %.fca.1.extract35.i, %bb.cd ]
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.np
  store i8 1, ptr %i.nq, align 1, !tbaa !45
  %i.nr = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  %.pr.i = load i32, ptr %.sroa.237.0..sroa_idx.i, align 8, !tbaa !77 ; 2 uses
  %.not28.i = icmp eq i32 %.pr.i, -1
  br i1 %.not28.i, label %._crit_edge55.i, label %.lr.ph54.i

.critedge179.i:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv78.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv78.i
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !45, !range !35, !noundef !36
  %i.nu = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv78.i
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !45
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv.next79.i
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !45, !range !35, !noundef !36
  %i.nx = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv.next79.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !45
  %indvars.iv.next79.i.1 = add nuw nsw i64 %indvars.iv78.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv.next79.i.1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !45, !range !35, !noundef !36
  %i.oa = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv.next79.i.1
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !45
  %indvars.iv.next79.i.2 = add nuw nsw i64 %indvars.iv78.i, 3 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv.next79.i.2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !45, !range !35, !noundef !36
  %i.od = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv.next79.i.2
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !45
  %indvars.iv.next79.i.3 = add nuw nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond83.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond83.not.i.3, label %.critedge179.i, label %vec.epilog.scalar.ph, !llvm.loop !80

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

bb.cg:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i, %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.oe = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 6 uses
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89, %bb.cg
  %.043.i.i = phi i32 [ %i.oh, %.preheader.i.i89 ], [ 0, %bb.cg ] ; 2 uses
  %i.of = lshr i32 %.043.i.i, 1
  %i.og = add i32 %.043.i.i, 8
  %i.oh = add i32 %i.og, %i.of                    ; 8 uses
  %i.oi = icmp ugt i32 %i.oe, %i.oh
  br i1 %i.oi, label %.preheader.i.i89, label %.thread.i.i, !llvm.loop !81

.thread.i.i:                                      ; preds = %.preheader.i.i89
  %i.oj = icmp ugt i32 %i.oh, 1073741823
  br i1 %i.oj, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ok = shl nuw i32 %i.oh, 2
  %i.ol = zext i32 %i.ok to i64
  %i.om = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ol) #8 ; 9 uses
  %.not22.i.i90 = icmp eq ptr %i.om, null
  br i1 %.not22.i.i90, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ch, !prof !82

bb.ch:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i
  store ptr %i.om, ptr %i.du, align 8, !tbaa !40
  store i32 %i.oh, ptr %11, align 8, !tbaa !51
  store i32 %i.oe, ptr %i.dv, align 4, !tbaa !42
  br label %.preheader.i224.i

.preheader.i224.i:                                ; preds = %.preheader.i224.i, %bb.ch
  %.043.i225.i = phi i32 [ %i.op, %.preheader.i224.i ], [ 0, %bb.ch ] ; 2 uses
  %i.on = lshr i32 %.043.i225.i, 1
  %i.oo = add i32 %.043.i225.i, 8
  %i.op = add i32 %i.oo, %i.on                    ; 5 uses
  %i.oq = icmp ugt i32 %i.oe, %i.op
  br i1 %i.oq, label %.preheader.i224.i, label %.thread.i226.i, !llvm.loop !81

.thread.i226.i:                                   ; preds = %.preheader.i224.i
  %i.or = icmp ugt i32 %i.op, 1073741823
  br i1 %i.or, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i: ; preds = %.thread.i226.i
  %i.os = shl nuw i32 %i.op, 2
  %i.ot = zext i32 %i.os to i64
  %i.ou = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ot) #8 ; 7 uses
  %.not22.i230.i = icmp eq ptr %i.ou, null
  br i1 %.not22.i230.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ci, !prof !82

bb.ci:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i
  store ptr %i.ou, ptr %i.dw, align 8, !tbaa !40
  store i32 %i.op, ptr %12, align 8, !tbaa !51
  store i32 %i.oe, ptr %i.dx, align 4, !tbaa !42
  br label %.preheader.i245.i

.preheader.i245.i:                                ; preds = %.preheader.i245.i, %bb.ci
  %.043.i246.i = phi i32 [ %i.ox, %.preheader.i245.i ], [ 0, %bb.ci ] ; 2 uses
  %i.ov = lshr i32 %.043.i246.i, 1
  %i.ow = add i32 %.043.i246.i, 8
  %i.ox = add i32 %i.ow, %i.ov                    ; 5 uses
  %i.oy = icmp ugt i32 %i.oe, %i.ox
  br i1 %i.oy, label %.preheader.i245.i, label %.thread.i247.i, !llvm.loop !83

.thread.i247.i:                                   ; preds = %.preheader.i245.i
  %i.oz = icmp ugt i32 %i.ox, 357913941
  br i1 %i.oz, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i247.i
  %i.pa = zext nneg i32 %i.ox to i64
  %i.pb = mul nuw nsw i64 %i.pa, 12
  %i.pc = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.pb) #8 ; 6 uses
  %.not22.i250.i = icmp eq ptr %i.pc, null
  br i1 %.not22.i250.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i, !prof !82

_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i
  store ptr %i.pc, ptr %i.dy, align 8, !tbaa !30
  store i32 %i.ox, ptr %13, align 8, !tbaa !55
  store i32 %i.oe, ptr %i.dz, align 4, !tbaa !8
  %i.pd = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2 ; 4 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.sroa.3.8.insert.ext.i.i
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %.sroa.3.8.insert.ext.i.i
  %i.pg = mul nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 12 ; 2 uses
  %i.ph = getelementptr inbounds nuw [12 x i8], ptr %i.pc, i64 %.sroa.3.8.insert.ext.i.i
  br label %_ZL9hb_memcpyPvPKvm.exit204.i

bb.cj:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i
  %i.pi = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(72) %6, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.pi, label %bb.ck, label %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i

_ZL9hb_memcpyPvPKvm.exit204.i:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i
  %.013940.i = phi i32 [ 0, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i ], [ %i.pj, %_ZL9hb_memcpyPvPKvm.exit204.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.om, ptr nonnull readonly align 1 %i.fc, i64 range(i64 0, 51539607541) %i.pd, i1 false), !alias.scope !84
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pe, ptr nonnull readonly align 1 %i.fc, i64 range(i64 0, 51539607541) %i.pd, i1 false), !alias.scope !88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ou, ptr readonly align 1 %i.ff, i64 range(i64 0, 51539607541) %i.pd, i1 false), !alias.scope !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pf, ptr readonly align 1 %i.ff, i64 range(i64 0, 51539607541) %i.pd, i1 false), !alias.scope !96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pc, ptr nonnull readonly align 1 %i.ez, i64 range(i64 0, 51539607541) %i.pg, i1 false), !alias.scope !100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ph, ptr nonnull readonly align 1 %i.ez, i64 range(i64 0, 51539607541) %i.pg, i1 false), !alias.scope !104
  %i.pj = add nuw nsw i32 %.013940.i, 1           ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.pj, %.sroa.speculated.i.i
  br i1 %exitcond68.not.i, label %bb.cj, label %_ZL9hb_memcpyPvPKvm.exit204.i, !llvm.loop !108

bb.ck:                                            ; preds = %bb.cj
  %i.pk = load i32, ptr %i.dk, align 4, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i8 0, i64 64, i1 false), !tbaa !47
  %.not57.i = icmp slt i32 %i.pk, %.sroa.speculated.i.i
  br i1 %.not57.i, label %.preheader.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.ck
  %i.pl = add nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.pm = load ptr, ptr %i.ed, align 8, !tbaa !40
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %bb.cq, %bb.ck
  %min.iters.check243 = icmp ult i32 %.sroa.speculated.i.i83, 4
  br i1 %min.iters.check243, label %scalar.ph.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.preheader.i
  %n.vec245 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %pred.store.continue255, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next256, %pred.store.continue255 ] ; 7 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph244 ], [ %vec.ind.next, %pred.store.continue255 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.pn = lshr i64 %index247, 3
  %i.po = lshr i64 %index247, 3
  %i.pp = and i64 %i.pn, 56
  %i.pq = and i64 %i.po, 56
  %.sroa.3.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 %i.pp
  %i.pr = load i64, ptr %.sroa.3.0..sroa_idx276, align 8, !tbaa !47
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %.sroa.3.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 %i.pq
  %i.ps = load i64, ptr %.sroa.3.0..sroa_idx279, align 8, !tbaa !47
  %broadcast.splatinsert248 = insertelement <2 x i64> poison, i64 %i.ps, i64 0
  %broadcast.splat249 = shufflevector <2 x i64> %broadcast.splatinsert248, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pt = and <2 x i64> %vec.ind, splat (i64 63)
  %i.pu = and <2 x i64> %step.add, splat (i64 63)
  %i.pv = shl nuw <2 x i64> splat (i64 1), %i.pt
  %i.pw = shl nuw <2 x i64> splat (i64 1), %i.pu
  %i.px = and <2 x i64> %i.pv, %broadcast.splat
  %i.py = and <2 x i64> %i.pw, %broadcast.splat249
  %i.pz = icmp ne <2 x i64> %i.px, zeroinitializer ; 2 uses
  %i.qa = icmp ne <2 x i64> %i.py, zeroinitializer ; 2 uses
  %i.qb = extractelement <2 x i1> %i.pz, i64 0
  br i1 %i.qb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body246
  %i.qc = getelementptr inbounds nuw i8, ptr %i.fj, i64 %index247
  store i8 1, ptr %i.qc, align 1, !tbaa !45
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body246
  %i.qd = extractelement <2 x i1> %i.pz, i64 1
  br i1 %i.qd, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %pred.store.continue
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fj, i64 %index247
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store i8 1, ptr %i.qf, align 1, !tbaa !45
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue
  %i.qg = extractelement <2 x i1> %i.qa, i64 0
  br i1 %i.qg, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  %i.qh = getelementptr inbounds nuw i8, ptr %i.fj, i64 %index247
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  store i8 1, ptr %i.qi, align 1, !tbaa !45
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.qj = extractelement <2 x i1> %i.qa, i64 1
  br i1 %i.qj, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  %i.qk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %index247
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 3
  store i8 1, ptr %i.ql, align 1, !tbaa !45
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %index.next256 = add nuw i64 %index247, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.qm = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.qm, label %middle.block257, label %vector.body246, !llvm.loop !109

middle.block257:                                  ; preds = %pred.store.continue255
  %cmp.n258 = icmp eq i64 %n.vec245, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n258, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block257
  %indvars.iv73.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec245, %middle.block257 ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %bb.cq, %.lr.ph49.i
  %indvars.iv69.i = phi i64 [ %i.gb, %.lr.ph49.i ], [ %indvars.iv.next70.i, %bb.cq ] ; 4 uses
  %.013846.i = phi i32 [ %i.pl, %.lr.ph49.i ], [ %.2.i, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i8 0, i64 64, i1 false), !tbaa !47
  %i.qn = sub nsw i64 %indvars.iv69.i, %.sroa.3.8.insert.ext.i.i84 ; 2 uses
  %i.qo = trunc nsw i64 %indvars.iv69.i to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph44.i
  %.013643.i = phi i32 [ %i.qo, %.lr.ph44.i ], [ %i.ra, %bb.cl ] ; 2 uses
  %i.qp = urem i32 %.013643.i, %.sroa.speculated.i.i ; 2 uses
  %i.qq = and i32 %i.qp, 63
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = shl nuw i64 1, %i.qr
  %i.qt = lshr i32 %i.qp, 6
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.qu ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !47
  %i.qx = or i64 %i.qs, %i.qw
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !47
  %i.qy = sext i32 %.013643.i to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !38 ; 5 uses
  %i.rb = sext i32 %i.ra to i64
  %i.rc = icmp slt i64 %i.qn, %i.rb
  br i1 %i.rc, label %bb.cl, label %._crit_edge.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %bb.cl
  %i.rd = trunc nsw i64 %i.qn to i32
  %i.re = icmp eq i32 %i.ra, %i.rd
  br i1 %i.re, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %._crit_edge.i
  %i.rf = icmp slt i32 %i.ra, 0
  %.pre.i91 = load ptr, ptr %i.ee, align 8, !tbaa !37 ; 2 uses
  br i1 %i.rf, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rg = zext nneg i32 %i.ra to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !38
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.rj = phi i32 [ %i.ri, %bb.cn ], [ 0, %bb.cm ]
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %indvars.iv69.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !38
  %i.rm = sub i32 %i.rl, %i.rj                    ; 2 uses
  %.not167.i = icmp ugt i32 %i.rm, %.013846.i
  br i1 %.not167.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i64 64, i1 false), !tbaa.struct !111
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i
  %.2.i = phi i32 [ %.013846.i, %._crit_edge.i ], [ %i.rm, %bb.cp ], [ %.013846.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next70.i to i32
  %exitcond72.not.i = icmp eq i32 %i.pk, %lftr.wideiv.i
  br i1 %exitcond72.not.i, label %.preheader.i, label %.lr.ph44.i, !llvm.loop !113

_ZN11hb_vector_tIiLb0EED2Ev.exit207.i:            ; preds = %bb.cs, %middle.block257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @hb_free(ptr noundef nonnull %i.pc) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ou) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @hb_free(ptr noundef nonnull %i.om) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cs
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %bb.cs ], [ %indvars.iv73.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.rn = lshr i64 %indvars.iv73.i, 3
  %i.ro = and i64 %i.rn, 56
  %.sroa.3.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 %i.ro
  %i.rp = load i64, ptr %.sroa.3.0..sroa_idx273, align 8, !tbaa !47
  %i.rq = and i64 %indvars.iv73.i, 63
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = and i64 %i.rr, %i.rp
  %.not27.i = icmp eq i64 %i.rs, 0
  br i1 %.not27.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %scalar.ph
  %i.rt = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv73.i
  store i8 1, ptr %i.rt, align 1, !tbaa !45
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %scalar.ph
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond77.not.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph, !llvm.loop !114

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, %.thread.i226.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.ph.i = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ null, %.thread.i.i ], [ %i.om, %.thread.i226.i ], [ %i.om, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  %.ph123.i = phi i32 [ -1, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ -1, %.thread.i.i ], [ %i.oh, %.thread.i226.i ], [ %i.oh, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i247.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ou) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tIiLb0EED2Ev.exit211.i:            ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i
  %i.ru = phi i32 [ %.ph123.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.oh, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  %i.rv = phi ptr [ %.ph.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.om, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.rw = add nsw i32 %i.ru, -1
  %spec.select.i.i.i212.i = icmp ult i32 %i.rw, -2
  br i1 %spec.select.i.i.i212.i, label %bb.ct, label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

bb.ct:                                            ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @hb_free(ptr noundef %i.rv) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

_ZN11hb_vector_tIiLb0EED2Ev.exit213.i:            ; preds = %bb.ct, %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZN11hb_vector_tIiLb0EED2Ev.exit219.i:            ; preds = %bb.cj
  call void @hb_free(ptr noundef nonnull %i.pc) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ou) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @hb_free(ptr noundef nonnull %i.om) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

.critedge170.critedge.i:                          ; preds = %bb.bt, %bb.by, %bb.bx, %bb.bw, %_ZL9hb_memcpyPvPKvm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116: ; preds = %_ZNK13hb_bit_page_t7get_maxEv.exit.i, %.critedge170.critedge.i, %bb.cf, %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedge

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit: ; preds = %.critedge179.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread: ; preds = %bb.z, %.critedge.i93, %bb.ab, %bb.y, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit
  %.ph = add i32 %i.et, 1
  %i.rx = getelementptr inbounds nuw i8, ptr %.050138, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.rx, %i.da
  br i1 %.not, label %.critedge, label %bb.x

.critedge:                                        ; preds = %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, %bb.x, %bb.w, %bb.b, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %bb.a, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116, %_ZN11hb_vector_tIjLb0EE5resetEv.exit, %._crit_edge
  %.5 = phi i1 [ false, %bb.b ], [ false, %._crit_edge ], [ false, %_ZN11hb_vector_tIjLb0EE5resetEv.exit ], [ false, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i ], [ false, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116 ], [ false, %bb.a ], [ true, %bb.w ], [ %or.cond168.i, %bb.x ], [ %or.cond168.i, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !25     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !115

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !116
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !37
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not3 = icmp eq i32 %i.a, -1
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %.not.not.i = icmp ne i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not.1.not.i = icmp ne i64 %i.e, 0
  %or.cond.not27.i = select i1 %.not.not.i, i1 true, i1 %.not.1.not.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %.not.2.not.i = icmp ne i64 %i.g, 0
  %or.cond12.not26.i = select i1 %or.cond.not27.i, i1 true, i1 %.not.2.not.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %.not.3.not.i = icmp ne i64 %i.i, 0
  %or.cond14.not25.i = select i1 %or.cond12.not26.i, i1 true, i1 %.not.3.not.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %.not.4.not.i = icmp ne i64 %i.k, 0
  %or.cond16.not24.i = select i1 %or.cond14.not25.i, i1 true, i1 %.not.4.not.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %.not.5.not.i = icmp ne i64 %i.m, 0
  %or.cond18.not23.i = select i1 %or.cond16.not24.i, i1 true, i1 %.not.5.not.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8
  %.not.6.not.i = icmp ne i64 %i.o, 0
  %or.cond20.not.i = select i1 %or.cond18.not23.i, i1 true, i1 %.not.6.not.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %.not.7.not.i = icmp ne i64 %i.q, 0
  %or.cond22.i = select i1 %or.cond20.not.i, i1 true, i1 %.not.7.not.i
  br i1 %or.cond22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree readonly captures(none) %.0.val, i32 %.8.val, i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %.8.val, 0
  br i1 %.not, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %.8.val, 0
  br i1 %i.a, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.8.val, i1 noundef zeroext false)
  br i1 %i.b, label %bb.d, label %_ZL9hb_memcpyPvPKvm.exit26, !prof !56

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.8.val, ptr %i.c, align 4, !tbaa !42
  %i.d = urem i32 %0, %.8.val                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = shl i32 %i.d, 2                          ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %i.g to i64
  %i.i = zext nneg i32 %.8.val to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.i
  %i.k = sub nsw i64 0, %i.f
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %i.l, i64 range(i64 0, 51539607541) %i.h, i1 false), !alias.scope !120
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.d, %bb.e
  %i.n = sub nsw i32 %.8.val, %i.d
  %i.o = shl i32 %i.n, 2                          ; 2 uses
  %.not.i25 = icmp eq i32 %i.o, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.f, !prof !12

bb.f:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !124
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.c, %bb.b, %bb.f, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ true, %_ZL9hb_memcpyPvPKvm.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef range(i32 0, 513) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2                          ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !128
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not.1.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i.i.i.i.i, label %bb.f, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not.2.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i.i.i.i.i, label %bb.g, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i.i.i.i.i, label %bb.h, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i.i.i.i.i, label %bb.i, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.5.i.i.i.i.i, label %bb.j, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.6.i.i.i.i.i, label %bb.k, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.7.i.i.i.i.i, label %.loopexit, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0712.lcssa.wide.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ 64, %bb.e ], [ 128, %bb.f ], [ 192, %bb.g ], [ 256, %bb.h ], [ 320, %bb.i ], [ 384, %bb.j ], [ 448, %bb.k ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %.0712.lcssa.wide.i.i.i.i.i, %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 -1, ptr %3, align 8, !tbaa !52
  %i.x = add nuw nsw i32 %i.v, %i.b
  %i.y = urem i32 %i.x, %2                        ; 2 uses
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i32 %i.y, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = or i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ai = and i32 %i.ah, 511                      ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i56, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit
  %i.aj = phi i32 [ %i.bp, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ai, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ]
  %i.ak = phi i32 [ %i.bo, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ah, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ] ; 2 uses
  %i.al = lshr i32 %i.aj, 6                       ; 2 uses
  %i.am = and i32 %i.ak, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.aq = zext nneg i32 %i.am to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.aq
  %i.ar = and i64 %i.ap, %notmask.i.i.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !47
  %i.as = lshr i32 %i.ak, 6
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = or disjoint i32 %i.at, 8
  %i.aw = sub nuw nsw i32 %i.av, %i.al
  %wide.trip.count.i.i.i = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.au, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 2 uses
  %.027.i.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.ay, %bb.l ]
  %i.ax = load i64, ptr %.027.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not20.not.i.not.i.i, label %bb.l, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, label %.lr.ph.i.i.i, !llvm.loop !129

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit: ; preds = %.lr.ph.i.i.i
  %i.az = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ba = shl nuw nsw i32 %i.az, 6
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = add nuw i32 %i.bd, %i.b
  %i.bf = urem i32 %i.be, %2                      ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = lshr i32 %i.bf, 6
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bn = or i64 %i.bi, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !47
  %i.bo = add nuw i32 %i.bd, 1                    ; 2 uses
  %i.bp = and i32 %i.bo, 511                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %bb.k, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, %bb.c, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, double noundef %4, i32 noundef range(i32 0, 513) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %.thread, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !28
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.b, ptr %i.g, align 4, !tbaa !42
  %.sroa.speculated133 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %.not172 = icmp eq i32 %i.b, 0
  br i1 %.not172, label %.thread, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.b, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph171, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.s = icmp eq i64 %indvars.iv, 0
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !37   ; 3 uses
  br i1 %i.s, label %.thread140, label %bb.f

.thread140:                                       ; preds = %bb.e
  store i32 1, ptr %i.t, align 4, !tbaa !38
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !40
  store i32 -1, ptr %i.u, align 4, !tbaa !38
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = add i32 %i.x, 1                          ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !38
  %i.aa = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !38
  %i.ae = lshr i32 %i.ab, 6
  %i.af = and i32 %i.ae, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = and i32 %i.ab, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.ai, %i.al
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.thread140, %bb.f
  %.pre-phi = phi i32 [ 0, %.thread140 ], [ %i.aa, %bb.f ] ; 3 uses
  %i.an = phi i32 [ 1, %.thread140 ], [ %i.y, %bb.f ]
  %i.ao = sub nsw i32 %.pre-phi, %.sroa.speculated133
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 -2) ; 3 uses
  %i.aq = add i32 %.pre-phi, -2                   ; 2 uses
  %.not81.not165 = icmp sgt i32 %i.aq, %i.ap
  br i1 %.not81.not165, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.backedge
  %.077167 = phi i32 [ %.1, %.lr.ph.backedge ], [ %i.an, %bb.g ] ; 10 uses
  %.078166 = phi i32 [ %.078166.be, %.lr.ph.backedge ], [ %i.aq, %bb.g ] ; 11 uses
  %i.ar = icmp eq i32 %.078166, -1                ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.at = zext nneg i32 %.078166 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = add i32 %i.av, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.ax = phi i32 [ %i.aw, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %.077167
  br i1 %i.ay, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.az = select i1 %i.ar, i32 %i.k, i32 %.078166
  %i.ba = xor i32 %.078166, -1
  %i.bb = add i32 %.pre-phi, %i.ba
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !30  ; 3 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !8
  %i.be = add nsw i32 %.078166, 1                 ; 2 uses
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.bd, i32 %i.be)
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.bb)
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %.sroa.speculated.i.i.fr = freeze i32 %.sroa.speculated.i.i ; 12 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i.fr to i64 ; 10 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !40  ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bf ; 2 uses
  %i.bl = zext i32 %i.az to i64                   ; 3 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bl
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !38
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !38
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !38
  %i.bw = icmp slt i32 %.sroa.speculated.i.i.fr, 0
  br i1 %i.bw, label %.critedge, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %8, align 8, !tbaa !130   ; 5 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.critedge, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %.not.i104 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.bx
  br i1 %.not.i104, label %.preheader.i106, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !12

.preheader.i106:                                  ; preds = %bb.l, %.preheader.i106
  %.043.i107 = phi i32 [ %i.cb, %.preheader.i106 ], [ %i.bx, %bb.l ] ; 2 uses
  %i.bz = lshr i32 %.043.i107, 1
  %i.ca = add nuw i32 %.043.i107, 8
  %i.cb = add nuw i32 %i.ca, %i.bz                ; 7 uses
  %i.cc = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.cb
  br i1 %i.cc, label %.preheader.i106, label %.thread.i108, !llvm.loop !133

.thread.i108:                                     ; preds = %.preheader.i106
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %bb.m, !prof !12

bb.m:                                             ; preds = %.thread.i108
  %.not49.i110 = icmp eq i32 %i.bx, 0
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !134 ; 2 uses
  br i1 %.not49.i110, label %bb.n, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i120 = icmp eq ptr %i.ce, null
  br i1 %.not9.i.i.i120, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = shl nuw i32 %i.cb, 3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call ptr @hb_malloc(i64 noundef %i.cg) #8 ; 4 uses
  %.not10.i.i.i121 = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i.i121, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !135 ; 2 uses
  %.not.i.i.i.i122 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i122, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr readonly align 1 %i.cl, i64 range(i64 0, 51539607541) %i.ck, i1 false), !alias.scope !136
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ null, %bb.n ], [ %i.ce, %bb.m ]
  %i.cn = shl nuw i32 %i.cb, 3
  %i.co = zext i32 %i.cn to i64
  %i.cp = tail call ptr @hb_realloc(ptr noundef %i.cm, i64 noundef %i.co) #8 ; 2 uses
  %.not22.i112 = icmp eq ptr %i.cp, null
  br i1 %.not22.i112, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, !prof !82

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, %bb.o
  %i.cq = load i32, ptr %8, align 8, !tbaa !130   ; 2 uses
  %.not23.i119 = icmp ugt i32 %i.cb, %i.cq
  br i1 %.not23.i119, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !140

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %.thread.i108
  %.sink.i116.ph.in = phi i32 [ %i.bx, %.thread.i108 ], [ %i.cq, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118 ]
  %.sink.i116.ph = xor i32 %.sink.i116.ph.in, -1
  store i32 %.sink.i116.ph, ptr %8, align 8, !tbaa !130
  br label %.critedge

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124:         ; preds = %bb.p, %bb.q, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111
  %.1.i.i42.i114 = phi ptr [ %i.cp, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111 ], [ %i.ch, %bb.q ], [ %i.ch, %bb.p ]
  store ptr %.1.i.i42.i114, ptr %i.o, align 8, !tbaa !134
  store i32 %i.cb, ptr %8, align 8, !tbaa !130
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %bb.l, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124
  store i32 %.sroa.speculated.i.i.fr, ptr %i.p, align 4, !tbaa !135
  %i.cr = load i32, ptr %9, align 8, !tbaa !130   ; 5 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.critedge, label %bb.r, !prof !12

bb.r:                                             ; preds = %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread
  %.not.i103 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.cr
  br i1 %.not.i103, label %.preheader.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i, !prof !12

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.cv, %.preheader.i ], [ %i.cr, %bb.r ] ; 2 uses
  %i.ct = lshr i32 %.043.i, 1
  %i.cu = add nuw i32 %.043.i, 8
  %i.cv = add nuw i32 %i.cu, %i.ct                ; 7 uses
  %i.cw = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.cv
  br i1 %i.cw, label %.preheader.i, label %.thread.i, !llvm.loop !133

.thread.i:                                        ; preds = %.preheader.i
  %i.cx = icmp ugt i32 %i.cv, 536870911
  br i1 %i.cx, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %bb.s, !prof !12

bb.s:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.cr, 0
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !134 ; 2 uses
  br i1 %.not49.i, label %bb.t, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = shl nuw i32 %i.cv, 3
  %i.da = zext i32 %i.cz to i64
  %i.db = tail call ptr @hb_malloc(i64 noundef %i.da) #8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !135 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr readonly align 1 %i.df, i64 range(i64 0, 51539607541) %i.de, i1 false), !alias.scope !141
  br label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i: ; preds = %bb.t, %bb.s
  %i.dg = phi ptr [ null, %bb.t ], [ %i.cy, %bb.s ]
  %i.dh = shl nuw i32 %i.cv, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call ptr @hb_realloc(ptr noundef %i.dg, i64 noundef %i.di) #8 ; 2 uses
  %.not22.i = icmp eq ptr %i.dj, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, !prof !82

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.u
  %i.dk = load i32, ptr %9, align 8, !tbaa !130   ; 2 uses
  %.not23.i = icmp ugt i32 %i.cv, %i.dk
  br i1 %.not23.i, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %.sink.split

_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.cr, %.thread.i ], [ %i.dk, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %9, align 8, !tbaa !130
  br label %.critedge

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.w, %bb.v
  %.1.i.i42.i = phi ptr [ %i.dj, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i ], [ %i.db, %bb.w ], [ %i.db, %bb.v ]
  store ptr %.1.i.i42.i, ptr %i.r, align 8, !tbaa !134
  store i32 %i.cv, ptr %9, align 8, !tbaa !130
  br label %.sink.split

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i: ; preds = %bb.r
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !135
  %.not104.not.i.i = icmp eq i32 %.sroa.speculated.i.i.fr, 0
  br i1 %.not104.not.i.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %bb.x

.sink.split:                                      ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !135
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.dn = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 3 ; 2 uses
  %.090.us.i.i = sitofp i32 %i.br to double       ; 3 uses
  %.091.us.i.i = sitofp i32 %i.bp to double       ; 5 uses
  %.093.in.us.i.i = load float, ptr %i.bn, align 4, !tbaa !49 ; 3 uses
  %.093.us.i.i = fpext float %.093.in.us.i.i to double ; 2 uses
  %.095.in.us.i.i = load float, ptr %i.bm, align 4, !tbaa !49 ; 3 uses
  %.095.us.i.i = fpext float %.095.in.us.i.i to double ; 2 uses
  %.058.us.i.i = load ptr, ptr %i.o, align 8, !tbaa !134 ; 5 uses
  %i.do = fcmp oeq float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.do, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = fcmp ogt float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.dp, label %bb.z, label %.lr.ph.us.i.i

bb.z:                                             ; preds = %bb.y
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.z, %bb.y
  %.196.us.i.i = phi double [ %.093.us.i.i, %bb.z ], [ %.095.us.i.i, %bb.y ] ; 3 uses
  %.194.us.i.i = phi double [ %.095.us.i.i, %bb.z ], [ %.093.us.i.i, %bb.y ] ; 2 uses
  %.192.us.i.i = phi double [ %.090.us.i.i, %bb.z ], [ %.091.us.i.i, %bb.y ] ; 3 uses
  %.1.us.i.i = phi double [ %.091.us.i.i, %bb.z ], [ %.090.us.i.i, %bb.y ] ; 2 uses
  %i.dq = fsub double %.1.us.i.i, %.192.us.i.i
  %i.dr = fsub double %.194.us.i.i, %.196.us.i.i
  %i.ds = fdiv double %i.dq, %i.dr
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ae
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.us.i.i, label %bb.ab, !llvm.loop !145

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 4 uses
  %gep.us.i.i = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.dt = load float, ptr %gep.us.i.i, align 4, !tbaa !49
  %i.du = fpext float %i.dt to double             ; 3 uses
  %i.dv = fcmp ult double %.196.us.i.i, %i.du
  br i1 %i.dv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dw = fcmp ugt double %.194.us.i.i, %i.du
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dx = fsub double %i.du, %.196.us.i.i
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.ds, double %.192.us.i.i)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.us.i.i = phi double [ %i.dy, %bb.ad ], [ %.192.us.i.i, %bb.ab ], [ %.1.us.i.i, %bb.ac ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i.i
  store double %.0.us.i.i, ptr %i.dz, align 8, !tbaa !146
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fsub double %.0.us.i.i, %i.ec           ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = fcmp ule double %i.ee, %4
  br i1 %i.ef, label %bb.aa, label %.critedge

bb.af:                                            ; preds = %bb.x
  %i.eg = fcmp oeq double %.091.us.i.i, %.090.us.i.i
  br i1 %i.eg, label %.lr.ph109.us.i.i.preheader, label %.lr.ph107.us.preheader.i.i

.lr.ph109.us.i.i.preheader:                       ; preds = %bb.af
  %min.iters.check209 = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check209, label %.lr.ph109.us.i.i.preheader223, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph109.us.i.i.preheader
  %n.vec211 = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert212 = insertelement <2 x double> poison, double %.091.us.i.i, i64 0
  %broadcast.splat213 = shufflevector <2 x double> %broadcast.splatinsert212, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %index215 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x double> %broadcast.splat213, ptr %i.eh, align 8, !tbaa !146
  store <2 x double> %broadcast.splat213, ptr %i.ei, align 8, !tbaa !146
  %index.next216 = add nuw i64 %index215, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.ej, label %middle.block217, label %vector.body214, !llvm.loop !148

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %n.vec211, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n218, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i.preheader223

.lr.ph109.us.i.i.preheader223:                    ; preds = %.lr.ph109.us.i.i.preheader, %middle.block217
  %indvars.iv172.i.i.ph = phi i64 [ 0, %.lr.ph109.us.i.i.preheader ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph109.us.i.i

.lr.ph109.us.i.i:                                 ; preds = %.lr.ph109.us.i.i.preheader223, %.lr.ph109.us.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.lr.ph109.us.i.i ], [ %indvars.iv172.i.i.ph, %.lr.ph109.us.i.i.preheader223 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv172.i.i
  store double %.091.us.i.i, ptr %i.ek, align 8, !tbaa !146
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond176.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.not.i.i, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i, !llvm.loop !149

.loopexit.us.i.i:                                 ; preds = %bb.aa, %.lr.ph109.us.i.i, %middle.block217, %.lr.ph107.us.preheader.i.i
  %.090.us.1.i.i = sitofp i32 %i.bv to double     ; 3 uses
  %.091.us.1.i.i = sitofp i32 %i.bt to double     ; 5 uses
  %.093.in.us.1.i.i = load float, ptr %i.dm, align 4, !tbaa !49 ; 3 uses
  %.093.us.1.i.i = fpext float %.093.in.us.1.i.i to double ; 2 uses
  %.095.in.us.1.i.i = load float, ptr %i.dl, align 4, !tbaa !49 ; 3 uses
  %.095.us.1.i.i = fpext float %.095.in.us.1.i.i to double ; 2 uses
  %.058.us.1.i.i = load ptr, ptr %i.r, align 8, !tbaa !134 ; 5 uses
  %i.el = fcmp oeq float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.el, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.us.i.i
  %i.em = fcmp ogt float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.em, label %bb.ah, label %.lr.ph.us.1.i.i

bb.ah:                                            ; preds = %bb.ag
  br label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.196.us.1.i.i = phi double [ %.093.us.1.i.i, %bb.ah ], [ %.095.us.1.i.i, %bb.ag ] ; 3 uses
  %.194.us.1.i.i = phi double [ %.095.us.1.i.i, %bb.ah ], [ %.093.us.1.i.i, %bb.ag ] ; 2 uses
  %.192.us.1.i.i = phi double [ %.090.us.1.i.i, %bb.ah ], [ %.091.us.1.i.i, %bb.ag ] ; 3 uses
  %.1.us.1.i.i = phi double [ %.091.us.1.i.i, %bb.ah ], [ %.090.us.1.i.i, %bb.ag ] ; 2 uses
  %i.en = fsub double %.1.us.1.i.i, %.192.us.1.i.i
  %i.eo = fsub double %.194.us.1.i.i, %.196.us.1.i.i
  %i.ep = fdiv double %i.en, %i.eo
  %invariant.gep.us.1.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.us.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.lr.ph.us.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.am ] ; 4 uses
  %gep.us.1.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.us.1.i.i, i64 %indvars.iv.1.i.i
  %i.eq = load float, ptr %gep.us.1.i.i, align 4, !tbaa !49
  %i.er = fpext float %i.eq to double             ; 3 uses
  %i.es = fcmp ult double %.196.us.1.i.i, %i.er
  br i1 %i.es, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.et = fcmp ugt double %.194.us.1.i.i, %i.er
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eu = fsub double %i.er, %.196.us.1.i.i
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ep, double %.192.us.1.i.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.us.1.i.i = phi double [ %i.ev, %bb.ak ], [ %.192.us.1.i.i, %bb.ai ], [ %.1.us.1.i.i, %bb.aj ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.1.i.i
  store double %.0.us.1.i.i, ptr %i.ew, align 8, !tbaa !146
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.1.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !38
  %i.ez = sitofp i32 %i.ey to double
  %i.fa = fsub double %.0.us.1.i.i, %i.ez         ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = fcmp ule double %i.fb, %4
  br i1 %i.fc, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %bb.ai, !llvm.loop !145

bb.an:                                            ; preds = %.loopexit.us.i.i
  %i.fd = fcmp oeq double %.091.us.1.i.i, %.090.us.1.i.i
  br i1 %i.fd, label %.lr.ph109.us.1.i.i.preheader, label %.lr.ph107.us.preheader.1.i.i

.lr.ph109.us.1.i.i.preheader:                     ; preds = %bb.an
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check, label %.lr.ph109.us.1.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph109.us.1.i.i.preheader
  %n.vec = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.091.us.1.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> %broadcast.splat, ptr %i.fe, align 8, !tbaa !146
  store <2 x double> %broadcast.splat, ptr %i.ff, align 8, !tbaa !146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i.preheader220

.lr.ph109.us.1.i.i.preheader220:                  ; preds = %.lr.ph109.us.1.i.i.preheader, %middle.block
  %indvars.iv172.1.i.i.ph = phi i64 [ 0, %.lr.ph109.us.1.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph109.us.1.i.i

.lr.ph107.us.preheader.1.i.i:                     ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.1.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !146
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader: ; preds = %bb.am, %.lr.ph109.us.1.i.i, %middle.block, %.lr.ph107.us.preheader.1.i.i
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i

.lr.ph109.us.1.i.i:                               ; preds = %.lr.ph109.us.1.i.i.preheader220, %.lr.ph109.us.1.i.i
  %indvars.iv172.1.i.i = phi i64 [ %indvars.iv.next173.1.i.i, %.lr.ph109.us.1.i.i ], [ %indvars.iv172.1.i.i.ph, %.lr.ph109.us.1.i.i.preheader220 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv172.1.i.i
  store double %.091.us.1.i.i, ptr %i.fh, align 8, !tbaa !146
  %indvars.iv.next173.1.i.i = add nuw nsw i64 %indvars.iv172.1.i.i, 1 ; 2 uses
  %exitcond176.1.not.i.i = icmp eq i64 %indvars.iv.next173.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i, !llvm.loop !151

.lr.ph107.us.preheader.i.i:                       ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !146
  br label %.loopexit.us.i.i

bb.ao:                                            ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, !llvm.loop !152

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i: ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !38
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !146
  %i.fn = fsub double %i.fk, %i.fm                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !38
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !146
  %i.ft = fsub double %i.fq, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fu)
  %i.fw = fcmp ule double %i.fv, %4
  br i1 %i.fw, label %bb.ao, label %.critedge

_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit: ; preds = %bb.ao, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  store i32 %i.ax, ptr %i.fy, align 4, !tbaa !38
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  store i32 %.078166, ptr %i.ga, align 4, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.al, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, %bb.k, %bb.j, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, %bb.i, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit
  %.1 = phi i32 [ %i.ax, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit ], [ %.077167, %bb.i ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145 ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152 ], [ %.077167, %bb.j ], [ %.077167, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i ], [ %.077167, %bb.al ], [ %.077167, %bb.k ], [ %.077167, %bb.ae ]
  %i.gb = icmp sgt i32 %.078166, 0
  br i1 %i.gb, label %bb.ap, label %.critedge83

bb.ap:                                            ; preds = %.critedge
  %i.gc = lshr i32 %.078166, 6
  %i.gd = and i32 %i.gc, 7
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !47
  %i.gh = and i32 %.078166, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gg, %i.gj
  %.not159 = icmp eq i64 %i.gk, 0
  %i.gl = add nsw i32 %.078166, -1                ; 2 uses
  %.not81.not = icmp sgt i32 %i.gl, %i.ap
  %or.cond = select i1 %.not159, i1 %.not81.not, i1 false
  br i1 %or.cond, label %.lr.ph.backedge, label %.loopexit

.critedge83:                                      ; preds = %.critedge
  %.old = add nsw i32 %.078166, -1
  %.not81.not.old = icmp sgt i32 %.old, %i.ap
  br i1 %.not81.not.old, label %.lr.ph.backedge, label %.loopexit

.lr.ph.backedge:                                  ; preds = %.critedge83, %bb.ap
  %.078166.be = phi i32 [ %i.gl, %bb.ap ], [ -1, %.critedge83 ]
  br label %.lr.ph, !llvm.loop !153

.loopexit:                                        ; preds = %bb.ap, %.critedge83, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !154

.thread:                                          ; preds = %.loopexit, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ true, %.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <8 x i64>, ptr %i.b, align 8, !tbaa !47
  %i.d = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.c)
  %i.e = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.d)
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, i32 } @_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not.1.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i.i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not.2.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i.i.i, label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0712.lcssa.wide.i.i.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.0712.lcssa.wide.i.i.i.i, %i.r
  br label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit"

"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit": ; preds = %bb.h, %bb.i
  %i.t = phi i32 [ %i.s, %bb.i ], [ -1, %bb.h ]
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %0, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 %i.t, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = add i32 %i.c, 1                          ; 3 uses
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.b, align 4, !tbaa !38
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !155
  %i.g = lshr i32 %i.e, 6                         ; 2 uses
  %i.h = and i32 %i.d, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.n = and i64 %i.l, %notmask.i.i
  store i64 %i.n, ptr %i.a, align 8, !tbaa !47
  %i.o = lshr i32 %i.d, 6
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i32 %i.p, 8
  %i.s = sub nuw nsw i32 %i.r, %i.g
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.027.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i ], [ %i.z, %bb.d ]
  %i.t = load i64, ptr %.027.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not20.not.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  br label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !129

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i32 [ %i.y, %bb.c ], [ -1, %bb.d ]
  store i32 %storemerge.i.i, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

_ZN13hb_bit_page_t6iter_t8__next__Ev.exit:        ; preds = %bb.b, %.critedge.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12rotate_arrayIbTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 -2147483647, 1) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 8 uses
  %or.cond = icmp slt i32 %i.b, 1
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h, !prof !12

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.g, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.e = lshr i32 %.053.i.i, 1
  %i.f = add nuw i32 %.053.i.i, 8
  %i.g = add nuw i32 %i.f, %i.e                   ; 6 uses
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !16

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.g to i64
  %i.l = tail call ptr @hb_malloc(i64 noundef %i.k) #8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %i.p, i64 range(i64 0, 51539607541) %i.o, i1 false), !alias.scope !156
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread39.i.i
  %i.q = phi ptr [ null, %bb.d ], [ %i.j, %.thread39.i.i ]
  %i.r = zext i32 %i.g to i64
  %i.s = tail call ptr @hb_realloc(ptr noundef %i.q, i64 noundef %i.r) #8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.s, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !24

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.t = load i32, ptr %2, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.g, %i.t
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %bb.h, !prof !160

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i = phi ptr [ %i.s, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  store ptr %.1.i.i52.i.i, ptr %i.i, align 8, !tbaa !18
  store i32 %i.g, ptr %2, align 8, !tbaa !13
  br label %bb.h

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.u = xor i32 %i.t, -1
  store i32 %i.u, ptr %2, align 8, !tbaa !13
  br label %_ZL9hb_memcpyPvPKvm.exit26

bb.h:                                             ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.b, ptr %i.v, align 4, !tbaa !19
  %i.w = icmp slt i32 %1, 0
  br i1 %i.w, label %_ZL9hb_memcpyPvPKvm.exit, label %_ZL9hb_memcpyPvPKvm.exit.thread

_ZL9hb_memcpyPvPKvm.exit.thread:                  ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.h
  %i.y = sub nsw i32 0, %1
  %i.z = urem i32 %i.y, %i.b                      ; 2 uses
  %i.aa = sub nsw i32 %i.b, %i.z                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !66
  %i.af = zext nneg i32 %i.b to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = sub nsw i64 0, %i.ac
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, 51539607541) %i.ad, i1 false), !alias.scope !161
  %.not.i25 = icmp eq i32 %i.z, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.i, !prof !165

bb.i:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.thread, %_ZL9hb_memcpyPvPKvm.exit
  %.0223041 = phi i32 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.aa, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.ak = phi ptr [ %i.x, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ab, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.al = phi i64 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ac, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.am = sub i32 %i.b, %.0223041
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %0, align 8, !tbaa !66
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr readonly align 1 %i.ao, i64 range(i64 0, 51539607541) %i.an, i1 false), !alias.scope !166
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.b, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %bb.i, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @hb_free(ptr noundef) local_unnamed_addr #7

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #7

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !81

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !170
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !51    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !55     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !83

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !174
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !55    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"_ZTS11hb_vector_tI15contour_point_tLb0EE", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 _ZTS15contour_point_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !5, i64 0}
!14 = !{!"_ZTS11hb_vector_tIbLb0EE", !5, i64 0, !5, i64 4, !15, i64 8}
!15 = !{!"p1 bool", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !15, i64 8}
!19 = !{!14, !5, i64 4}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!22 = distinct !{!22, !"_ZL9hb_memcpyPvPKvm"}
!23 = distinct !{!23, !22, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!24 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!25 = !{!26, !5, i64 0}
!26 = !{!"_ZTS11hb_vector_tIjLb0EE", !5, i64 0, !5, i64 4, !27, i64 8}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!26, !5, i64 4}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!9, !10, i64 8}
!31 = !{!32, !34, i64 9}
!32 = !{!"_ZTS15contour_point_t", !33, i64 0, !33, i64 4, !6, i64 8, !34, i64 9}
!33 = !{!"float", !6, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!26, !27, i64 8}
!38 = !{!5, !5, i64 0}
!39 = distinct !{!39, !17}
!40 = !{!41, !27, i64 8}
!41 = !{!"_ZTS11hb_vector_tIiLb0EE", !5, i64 0, !5, i64 4, !27, i64 8}
!42 = !{!41, !5, i64 4}
!43 = !{!"branch_weights", i32 2002, i32 2000}
!44 = distinct !{!44, !17}
!45 = !{!34, !34, i64 0}
!46 = distinct !{!46, !17}
!47 = !{!48, !48, i64 0}
!48 = !{!"long long", !6, i64 0}
!49 = !{!33, !33, i64 0}
!50 = distinct !{!50, !17}
!51 = !{!41, !5, i64 0}
!52 = !{!53, !5, i64 0}
!53 = !{!"_ZTS13hb_bit_page_t", !5, i64 0, !54, i64 8}
!54 = !{!"_ZTS16hb_vector_size_tIyLj64EE", !6, i64 0}
!55 = !{!9, !5, i64 0}
!56 = !{!"branch_weights", i32 2146410443, i32 1073205}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!59 = distinct !{!59, !"_ZL9hb_memcpyPvPKvm"}
!60 = distinct !{!60, !59, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!63 = distinct !{!63, !"_ZL9hb_memcpyPvPKvm"}
!64 = distinct !{!64, !63, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!65 = distinct !{!65, !17}
!66 = !{!67, !15, i64 0}
!67 = !{!"_ZTS10hb_array_tIKbE", !15, i64 0, !5, i64 8, !5, i64 12}
!68 = !{!67, !5, i64 8}
!69 = !{!67, !5, i64 12}
!70 = distinct !{!70, !17, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"branch_weights", i32 4, i32 28}
!74 = distinct !{!74, !17, !71, !72}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!78, !5, i64 8}
!78 = !{!"_ZTSN13hb_bit_page_t6iter_tE", !79, i64 0, !5, i64 8}
!79 = !{!"p1 _ZTS13hb_bit_page_t", !11, i64 0}
!80 = distinct !{!80, !17, !71}
!81 = distinct !{!81, !17}
!82 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!83 = distinct !{!83, !17}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!86 = distinct !{!86, !"_ZL9hb_memcpyPvPKvm"}
!87 = distinct !{!87, !86, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!90 = distinct !{!90, !"_ZL9hb_memcpyPvPKvm"}
!91 = distinct !{!91, !90, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!94 = distinct !{!94, !"_ZL9hb_memcpyPvPKvm"}
!95 = distinct !{!95, !94, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!98 = distinct !{!98, !"_ZL9hb_memcpyPvPKvm"}
!99 = distinct !{!99, !98, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!102 = distinct !{!102, !"_ZL9hb_memcpyPvPKvm"}
!103 = distinct !{!103, !102, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!104 = !{!105, !107}
!105 = distinct !{!105, !106, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!106 = distinct !{!106, !"_ZL9hb_memcpyPvPKvm"}
!107 = distinct !{!107, !106, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17, !71, !72}
!110 = distinct !{!110, !17}
!111 = !{i64 0, i64 64, !112}
!112 = !{!6, !6, i64 0}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17, !72, !71}
!115 = distinct !{!115, !17}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!118 = distinct !{!118, !"_ZL9hb_memcpyPvPKvm"}
!119 = distinct !{!119, !118, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!122 = distinct !{!122, !"_ZL9hb_memcpyPvPKvm"}
!123 = distinct !{!123, !122, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = distinct !{!126, !"_ZL9hb_memcpyPvPKvm"}
!127 = distinct !{!127, !126, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!128 = !{i64 0, i64 4, !38, i64 8, i64 64, !112}
!129 = distinct !{!129, !17}
!130 = !{!131, !5, i64 0}
!131 = !{!"_ZTS11hb_vector_tIdLb0EE", !5, i64 0, !5, i64 4, !132, i64 8}
!132 = !{!"p1 double", !11, i64 0}
!133 = distinct !{!133, !17}
!134 = !{!131, !132, i64 8}
!135 = !{!131, !5, i64 4}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!138 = distinct !{!138, !"_ZL9hb_memcpyPvPKvm"}
!139 = distinct !{!139, !138, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!140 = !{!"branch_weights", i32 0, i32 -2147483648}
!141 = !{!142, !144}
!142 = distinct !{!142, !143, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!143 = distinct !{!143, !"_ZL9hb_memcpyPvPKvm"}
!144 = distinct !{!144, !143, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!145 = distinct !{!145, !17}
!146 = !{!147, !147, i64 0}
!147 = !{!"double", !6, i64 0}
!148 = distinct !{!148, !17, !71, !72}
!149 = distinct !{!149, !17, !72, !71}
!150 = distinct !{!150, !17, !71, !72}
!151 = distinct !{!151, !17, !72, !71}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = !{!78, !79, i64 0}
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!158 = distinct !{!158, !"_ZL9hb_memcpyPvPKvm"}
!159 = distinct !{!159, !158, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!160 = !{!"branch_weights", i32 1073205, i32 2146410443}
!161 = !{!162, !164}
!162 = distinct !{!162, !163, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!163 = distinct !{!163, !"_ZL9hb_memcpyPvPKvm"}
!164 = distinct !{!164, !163, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!165 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!168 = distinct !{!168, !"_ZL9hb_memcpyPvPKvm"}
!169 = distinct !{!169, !168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!172 = distinct !{!172, !"_ZL9hb_memcpyPvPKvm"}
!173 = distinct !{!173, !172, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!174 = !{!175, !177}
!175 = distinct !{!175, !176, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!176 = distinct !{!176, !"_ZL9hb_memcpyPvPKvm"}
!177 = distinct !{!177, !176, !"_ZL9hb_memcpyPvPKvm: argument 1"}
end_hunk_1
