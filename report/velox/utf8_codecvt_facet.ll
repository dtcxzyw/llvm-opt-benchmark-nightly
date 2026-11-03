Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/utf8_codecvt_facet?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK5boost15program_options6detail18utf8_codecvt_facet10do_unshiftER11__mbstate_tPcS5_RS5_ = comdat any

$_ZNK5boost15program_options6detail18utf8_codecvt_facet11do_encodingEv = comdat any

$_ZNK5boost15program_options6detail18utf8_codecvt_facet16do_always_noconvEv = comdat any

$_ZNK5boost15program_options6detail18utf8_codecvt_facet13do_max_lengthEv = comdat any

$_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthERK11__mbstate_tPKcS7_m = comdat any

$_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table = comdat any

@_ZTVN5boost15program_options6detail18utf8_codecvt_facetE = constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN5boost15program_options6detail18utf8_codecvt_facetE, ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev, ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD0Ev, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet10do_unshiftER11__mbstate_tPcS5_RS5_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet11do_encodingEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet16do_always_noconvEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthER11__mbstate_tPKcS6_m, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet13do_max_lengthEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthERK11__mbstate_tPKcS7_m] }, align 8
@_ZTIN5boost15program_options6detail18utf8_codecvt_facetE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost15program_options6detail18utf8_codecvt_facetE, ptr @_ZTISt7codecvtIwc11__mbstate_tE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost15program_options6detail18utf8_codecvt_facetE = constant [53 x i8] c"N5boost15program_options6detail18utf8_codecvt_facetE\00", align 1
@_ZTISt7codecvtIwc11__mbstate_tE = external constant ptr
@_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table = linkonce_odr local_unnamed_addr constant [6 x i32] [i32 0, i32 192, i32 224, i32 240, i32 248, i32 252], comdat, align 16

@_ZN5boost15program_options6detail18utf8_codecvt_facetC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetC2Em
@_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5boost15program_options6detail18utf8_codecvt_facetE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

declare void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ne ptr %2, %3
  %i.b = icmp ne ptr %5, %6
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %bb.a, %bb.k
  %.04875 = phi ptr [ %.149.lcssa112, %bb.k ], [ %2, %bb.a ] ; 4 uses
  %.05074 = phi ptr [ %i.aj, %bb.k ], [ %5, %bb.a ] ; 5 uses
  %i.d = load i8, ptr %.04875, align 1, !tbaa !10 ; 9 uses
  %or.cond.i = icmp slt i8 %i.d, -64
  %i.e = icmp ugt i8 %i.d, -3
  %i.f = or i1 %or.cond.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph77
  store ptr %.04875, ptr %4, align 8, !tbaa !13
  store ptr %.05074, ptr %7, align 8, !tbaa !15
  br label %.thread

bb.c:                                             ; preds = %.lr.ph77
  %i.g = icmp sgt i8 %i.d, -1
  br i1 %i.g, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c
  %i.h = zext nneg i8 %i.d to i32
  %.14967105 = getelementptr inbounds nuw i8, ptr %.04875, i64 1 ; 2 uses
  %i.i = icmp eq ptr %.14967105, %3
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i8 %i.d, -32
  br i1 %i.j, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i8 %i.d, -16
  %or.cond5.i.i = icmp eq i8 %i.k, -32
  br i1 %or.cond5.i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i8 %i.d, -8
  %or.cond8.i.i = icmp eq i8 %i.l, -16
  br i1 %or.cond8.i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i8 %i.d, -4
  %or.cond11.i.i = icmp eq i8 %i.m, -8
  %i.n = select i1 %or.cond11.i.i, i32 4, i32 5
  br label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit

_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i32 [ 3, %bb.f ], [ %i.n, %bb.g ], [ 1, %bb.d ], [ 2, %bb.e ] ; 2 uses
  %i.o = zext i8 %i.d to i32
  %i.p = zext nneg i32 %.0.i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = sub nsw i32 %i.o, %i.r                   ; 2 uses
  %.14967 = getelementptr inbounds nuw i8, ptr %.04875, i64 1 ; 3 uses
  %.not = icmp eq ptr %.14967, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, %bb.i
  %.14970 = phi ptr [ %.149, %bb.i ], [ %.14967, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 3 uses
  %.069 = phi i32 [ %i.z, %bb.i ], [ 0, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 2 uses
  %.04568 = phi i32 [ %i.y, %bb.i ], [ %i.s, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ]
  %i.t = load i8, ptr %.14970, align 1, !tbaa !10 ; 2 uses
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  store ptr %.14970, ptr %4, align 8, !tbaa !13
  store ptr %.05074, ptr %7, align 8, !tbaa !15
  br label %.thread

bb.i:                                             ; preds = %.lr.ph
  %i.v = shl nsw i32 %.04568, 6
  %i.w = zext i8 %i.t to i32
  %i.x = add nsw i32 %i.w, -128
  %i.y = or disjoint i32 %i.x, %i.v               ; 2 uses
  %i.z = add nuw nsw i32 %.069, 1                 ; 2 uses
  %.149 = getelementptr inbounds nuw i8, ptr %.14970, i64 1 ; 3 uses
  %i.aa = icmp ne i32 %i.z, %.0.i.i               ; 2 uses
  %i.ab = icmp ne ptr %.149, %3
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ad = add nuw nsw i32 %.069, 2
  %i.ae = zext nneg i32 %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit
  %.045.lcssa = phi i32 [ %i.s, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %i.y, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 1, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %i.ae, %._crit_edge.loopexit ]
  %.149.lcssa = phi ptr [ %.14967, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %.149, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i1 [ true, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %i.aa, %._crit_edge.loopexit ]
  %i.af = icmp eq ptr %.149.lcssa, %3             ; 2 uses
  %brmerge.not = and i1 %i.af, %.lcssa
  br i1 %brmerge.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ag = sub nsw i64 0, %.0.lcssa
  %i.ah = getelementptr inbounds i8, ptr %.149.lcssa, i64 %i.ag
  store ptr %i.ah, ptr %4, align 8, !tbaa !13
  store ptr %.05074, ptr %7, align 8, !tbaa !15
  br label %.thread

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ai = phi i1 [ %i.i, %._crit_edge.thread ], [ %i.af, %._crit_edge ]
  %.149.lcssa112 = phi ptr [ %.14967105, %._crit_edge.thread ], [ %.149.lcssa, %._crit_edge ] ; 2 uses
  %.045.lcssa111 = phi i32 [ %i.h, %._crit_edge.thread ], [ %.045.lcssa, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.05074, i64 4 ; 3 uses
  store i32 %.045.lcssa111, ptr %.05074, align 4, !tbaa !17
  %i.ak = icmp eq ptr %i.aj, %6
  %.not103 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %.not103, label %._crit_edge78, label %.lr.ph77, !llvm.loop !20

._crit_edge78:                                    ; preds = %bb.k, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.aj, %bb.k ]
  %.048.lcssa = phi ptr [ %2, %bb.a ], [ %.149.lcssa112, %bb.k ] ; 2 uses
  store ptr %.048.lcssa, ptr %4, align 8, !tbaa !13
  store ptr %.050.lcssa, ptr %7, align 8, !tbaa !15
  %i.al = icmp ne ptr %.048.lcssa, %3
  %. = zext i1 %i.al to i32
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %._crit_edge78, %bb.b
  %.2 = phi i32 [ 2, %bb.b ], [ %., %._crit_edge78 ], [ 1, %bb.j ], [ 2, %bb.h ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #5 align 2 {
bb.a:
  %8 = ptrtoaddr ptr %6 to i64                    ; 2 uses
  %i.a = icmp ne ptr %2, %3
  %i.b = icmp ne ptr %5, %6
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %bb.a
  %9 = add i64 %8, -2
  %10 = add i64 %8, -2
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph64.preheader ] ; 2 uses
  %.04662 = phi ptr [ %i.cc, %bb.f ], [ %2, %.lr.ph64.preheader ] ; 12 uses
  %.04861 = phi ptr [ %.149.lcssa, %bb.f ], [ %5, %.lr.ph64.preheader ] ; 18 uses
  %.0486197 = ptrtoaddr ptr %.04861 to i64        ; 2 uses
  %i.d = load i32, ptr %.04662, align 4, !tbaa !17 ; 6 uses
  %i.e = icmp slt i32 %i.d, 128
  br i1 %i.e, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph64
  %i.f = icmp samesign ult i32 %i.d, 2048
  br i1 %i.f, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.d, 65536
  br i1 %i.g, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %i.d, 2097152
  br i1 %i.h, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i32 %i.d, 67108864
  %..i.i = select i1 %i.i, i32 4, i32 5
  br label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit

_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit: ; preds = %.lr.ph64, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i32 [ 3, %bb.d ], [ 0, %.lr.ph64 ], [ 1, %bb.b ], [ 2, %bb.c ], [ %..i.i, %bb.e ] ; 10 uses
  %i.j = mul nuw nsw i32 %.0.i.i, 6               ; 9 uses
  %i.k = zext nneg i32 %.0.i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = shl nuw nsw i32 1, %i.j
  %i.o = sdiv i32 %i.d, %i.n
  %i.p = add i32 %i.o, %i.m
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %.04861, align 1, !tbaa !10
  %.14955 = getelementptr i8, ptr %.04861, i64 1  ; 6 uses
  %i.r = icmp ne i32 %.0.i.i, 0                   ; 2 uses
  %i.s = icmp ne ptr %.14955, %6
  %11 = and i1 %i.r, %i.s
  br i1 %11, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %12 = add nsw i32 %.0.i.i, -1
  %13 = zext i32 %12 to i64                       ; 2 uses
  %14 = sub i64 %9, %.0486197
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %13)
  %16 = getelementptr i8, ptr %.04861, i64 %15
  %17 = getelementptr i8, ptr %16, i64 2
  %18 = shl i64 %indvar, 2
  %19 = getelementptr i8, ptr %2, i64 %18
  %20 = getelementptr i8, ptr %19, i64 4
  %bound0 = icmp ult ptr %.14955, %20
  %bound1 = icmp ult ptr %.04662, %17
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %21 = sub i64 %10, %.0486197
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 %13) ; 3 uses
  %23 = getelementptr i8, ptr %.14955, i64 %22
  %24 = getelementptr i8, ptr %23, i64 1
  %broadcast.splatinsert100 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat101 = shufflevector <8 x i32> %broadcast.splatinsert100, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %22, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %25 = load i32, ptr %.04662, align 4, !tbaa !17, !alias.scope !25
  %broadcast.splatinsert111 = insertelement <8 x i32> poison, i32 %25, i64 0
  %broadcast.splat112 = shufflevector <8 x i32> %broadcast.splatinsert111, <8 x i32> poison, <8 x i32> zeroinitializer
  %26 = icmp samesign uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 10 uses
  %next.gep104 = getelementptr i8, ptr %.04861, i64 2
  %next.gep105 = getelementptr i8, ptr %.04861, i64 3
  %next.gep106 = getelementptr i8, ptr %.04861, i64 4
  %next.gep107 = getelementptr i8, ptr %.04861, i64 5
  %next.gep108 = getelementptr i8, ptr %.04861, i64 6
  %next.gep109 = getelementptr i8, ptr %.04861, i64 7
  %next.gep110 = getelementptr i8, ptr %.04861, i64 8
  %27 = add nsw <8 x i32> %broadcast.splat101, <i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48>
  %28 = shl nuw <8 x i32> splat (i32 1), %27
  %29 = tail call <8 x i32> @llvm.masked.sdiv.v8i32(<8 x i32> %broadcast.splat112, <8 x i32> %28, <8 x i1> %26)
  %30 = srem <8 x i32> %29, splat (i32 64)
  %31 = trunc nsw <8 x i32> %30 to <8 x i8>
  %32 = xor <8 x i8> %31, splat (i8 -128)         ; 8 uses
  %33 = extractelement <8 x i1> %26, i64 0
  br i1 %33, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  %34 = extractelement <8 x i8> %32, i64 0
  store i8 %34, ptr %.14955, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %35 = extractelement <8 x i1> %26, i64 1
  br i1 %35, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue
  %36 = extractelement <8 x i8> %32, i64 1
  store i8 %36, ptr %next.gep104, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue
  %37 = extractelement <8 x i1> %26, i64 2
  br i1 %37, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  %38 = extractelement <8 x i8> %32, i64 2
  store i8 %38, ptr %next.gep105, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %39 = extractelement <8 x i1> %26, i64 3
  br i1 %39, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  %40 = extractelement <8 x i8> %32, i64 3
  store i8 %40, ptr %next.gep106, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %41 = extractelement <8 x i1> %26, i64 4
  br i1 %41, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  %42 = extractelement <8 x i8> %32, i64 4
  store i8 %42, ptr %next.gep107, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %43 = extractelement <8 x i1> %26, i64 5
  br i1 %43, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %44 = extractelement <8 x i8> %32, i64 5
  store i8 %44, ptr %next.gep108, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %45 = extractelement <8 x i1> %26, i64 6
  br i1 %45, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %46 = extractelement <8 x i8> %32, i64 6
  store i8 %46, ptr %next.gep109, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %47 = extractelement <8 x i1> %26, i64 7
  br i1 %47, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %48 = extractelement <8 x i8> %32, i64 7
  store i8 %48, ptr %next.gep110, align 1, !tbaa !10, !alias.scope !26, !noalias !25
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %49 = xor <8 x i1> %26, splat (i1 true)
  %first.inactive.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %49, i1 false)
  %last.active.lane = add i64 %first.inactive.lane, -1
  %50 = extractelement <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, i64 %last.active.lane
  %51 = add nuw nsw i32 %50, 1
  %52 = icmp ne i32 %51, %.0.i.i
  br label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.t = add nsw i32 %i.j, -6
  %i.u = load i32, ptr %.04662, align 4, !tbaa !17
  %i.v = shl nuw i32 1, %i.t
  %i.w = sdiv i32 %i.u, %i.v
  %i.x = srem i32 %i.w, 64
  %i.y = trunc nsw i32 %i.x to i8
  %i.z = xor i8 %i.y, -128
  store i8 %i.z, ptr %.14955, align 1, !tbaa !10
  %.149 = getelementptr i8, ptr %.04861, i64 2    ; 3 uses
  %i.aa = icmp ne i32 %.0.i.i, 1                  ; 2 uses
  %i.ab = icmp ne ptr %.149, %6
  %53 = and i1 %i.aa, %i.ab
  br i1 %53, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ac = add nsw i32 %i.j, -12
  %i.ad = load i32, ptr %.04662, align 4, !tbaa !17
  %i.ae = shl nuw i32 1, %i.ac
  %i.af = sdiv i32 %i.ad, %i.ae
  %i.ag = srem i32 %i.af, 64
  %i.ah = trunc nsw i32 %i.ag to i8
  %i.ai = xor i8 %i.ah, -128
  store i8 %i.ai, ptr %.149, align 1, !tbaa !10
  %.149.1 = getelementptr i8, ptr %.04861, i64 3  ; 3 uses
  %i.aj = icmp ne i32 %.0.i.i, 2                  ; 2 uses
  %i.ak = icmp ne ptr %.149.1, %6
  %54 = and i1 %i.aj, %i.ak
  br i1 %54, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.al = add nsw i32 %i.j, -18
  %i.am = load i32, ptr %.04662, align 4, !tbaa !17
  %i.an = shl nuw i32 1, %i.al
  %i.ao = sdiv i32 %i.am, %i.an
  %i.ap = srem i32 %i.ao, 64
  %i.aq = trunc nsw i32 %i.ap to i8
  %i.ar = xor i8 %i.aq, -128
  store i8 %i.ar, ptr %.149.1, align 1, !tbaa !10
  %.149.2 = getelementptr i8, ptr %.04861, i64 4  ; 3 uses
  %i.as = icmp ne i32 %.0.i.i, 3                  ; 2 uses
  %i.at = icmp ne ptr %.149.2, %6
  %55 = and i1 %i.as, %i.at
  br i1 %55, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.au = add nsw i32 %i.j, -24
  %i.av = load i32, ptr %.04662, align 4, !tbaa !17
  %i.aw = shl nuw i32 1, %i.au
  %i.ax = sdiv i32 %i.av, %i.aw
  %i.ay = srem i32 %i.ax, 64
  %i.az = trunc nsw i32 %i.ay to i8
  %i.ba = xor i8 %i.az, -128
  store i8 %i.ba, ptr %.149.2, align 1, !tbaa !10
  %.149.3 = getelementptr i8, ptr %.04861, i64 5  ; 3 uses
  %i.bb = icmp ne i32 %.0.i.i, 4                  ; 2 uses
  %i.bc = icmp ne ptr %.149.3, %6
  %56 = and i1 %i.bb, %i.bc
  br i1 %56, label %.lr.ph.4, label %._crit_edge.loopexit

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bd = add nsw i32 %i.j, -30
  %i.be = load i32, ptr %.04662, align 4, !tbaa !17
  %i.bf = shl nuw i32 1, %i.bd
  %i.bg = sdiv i32 %i.be, %i.bf
  %i.bh = srem i32 %i.bg, 64
  %i.bi = trunc nsw i32 %i.bh to i8
  %i.bj = xor i8 %i.bi, -128
  store i8 %i.bj, ptr %.149.3, align 1, !tbaa !10
  %.149.4 = getelementptr i8, ptr %.04861, i64 6  ; 3 uses
  %i.bk = icmp ne i32 %.0.i.i, 5                  ; 2 uses
  %i.bl = icmp ne ptr %.149.4, %6
  %57 = and i1 %i.bk, %i.bl
  br i1 %57, label %.lr.ph.5, label %._crit_edge.loopexit

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.bm = add nsw i32 %i.j, -36
  %i.bn = load i32, ptr %.04662, align 4, !tbaa !17
  %i.bo = shl nuw i32 1, %i.bm
  %i.bp = sdiv i32 %i.bn, %i.bo
  %i.bq = srem i32 %i.bp, 64
  %i.br = trunc nsw i32 %i.bq to i8
  %i.bs = xor i8 %i.br, -128
  store i8 %i.bs, ptr %.149.4, align 1, !tbaa !10
  %.149.5 = getelementptr i8, ptr %.04861, i64 7  ; 3 uses
  %.not = icmp eq ptr %.149.5, %6
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bt = add nsw i32 %i.j, -42
  %i.bu = load i32, ptr %.04662, align 4, !tbaa !17
  %i.bv = shl nuw i32 1, %i.bt
  %i.bw = sdiv i32 %i.bu, %i.bv
  %i.bx = srem i32 %i.bw, 64
  %i.by = trunc nsw i32 %i.bx to i8
  %i.bz = xor i8 %i.by, -128
  store i8 %i.bz, ptr %.149.5, align 1, !tbaa !10
  %.149.6 = getelementptr i8, ptr %.04861, i64 8
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %pred.store.continue126
  %.057.lcssa = phi i64 [ %22, %pred.store.continue126 ], [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %.lr.ph.2 ], [ 3, %.lr.ph.3 ], [ 4, %.lr.ph.4 ], [ 5, %.lr.ph.5 ], [ 6, %.lr.ph.6 ]
  %.149.lcssa89 = phi ptr [ %24, %pred.store.continue126 ], [ %.149, %.lr.ph ], [ %.149.1, %.lr.ph.1 ], [ %.149.2, %.lr.ph.2 ], [ %.149.3, %.lr.ph.3 ], [ %.149.4, %.lr.ph.4 ], [ %.149.5, %.lr.ph.5 ], [ %.149.6, %.lr.ph.6 ]
  %.lcssa88 = phi i1 [ %52, %pred.store.continue126 ], [ %i.aa, %.lr.ph ], [ %i.aj, %.lr.ph.1 ], [ %i.as, %.lr.ph.2 ], [ %i.bb, %.lr.ph.3 ], [ %i.bk, %.lr.ph.4 ], [ true, %.lr.ph.5 ], [ true, %.lr.ph.6 ]
  %58 = add nsw i64 %.057.lcssa, 2
  %59 = and i64 %58, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %.0.lcssa = phi i64 [ 1, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %59, %._crit_edge.loopexit ]
  %.149.lcssa = phi ptr [ %.14955, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %.149.lcssa89, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ %i.r, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %.lcssa88, %._crit_edge.loopexit ]
  %i.ca = icmp eq ptr %.149.lcssa, %6             ; 2 uses
  %brmerge.not = and i1 %i.ca, %.lcssa
  br i1 %brmerge.not, label %.critedge, label %bb.f

.critedge:                                        ; preds = %._crit_edge
  store ptr %.04662, ptr %4, align 8, !tbaa !15
  %60 = sub nsw i64 0, %.0.lcssa
  %i.cb = getelementptr inbounds i8, ptr %.149.lcssa, i64 %60
  store ptr %i.cb, ptr %7, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %.04662, i64 4 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %3
  %.not81 = or i1 %i.cd, %i.ca
  %indvar.next = add i64 %indvar, 1
  br i1 %.not81, label %._crit_edge65, label %.lr.ph64, !llvm.loop !24

._crit_edge65:                                    ; preds = %bb.f, %bb.a
  %.048.lcssa = phi ptr [ %5, %bb.a ], [ %.149.lcssa, %bb.f ]
  %.046.lcssa = phi ptr [ %2, %bb.a ], [ %i.cc, %bb.f ] ; 2 uses
  store ptr %.046.lcssa, ptr %4, align 8, !tbaa !15
  store ptr %.048.lcssa, ptr %7, align 8, !tbaa !13
  %i.ce = icmp ne ptr %.046.lcssa, %3
  %. = zext i1 %i.ce to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge65, %.critedge
  %.2 = phi i32 [ %., %._crit_edge65 ], [ 1, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 6) i32 @_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw(i32 noundef signext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 2048
  br i1 %i.b, label %_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 65536
  br i1 %i.c, label %_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 2097152
  br i1 %i.d, label %_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 67108864
  %..i = select i1 %i.e, i32 4, i32 5
  br label %_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit

_ZN5boost15program_options6detail6detail29get_cont_octet_out_count_implILm4EEEiw.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 3, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ %..i, %bb.e ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthER11__mbstate_tPKcS6_m(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ult ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01419 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.g ]
  %.01518 = phi ptr [ %2, %.lr.ph ], [ %i.n, %bb.g ] ; 4 uses
  %i.e = load i8, ptr %.01518, align 1, !tbaa !10 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i8 %i.e, -32
  %or.cond.i = icmp eq i8 %i.g, -64
  br i1 %or.cond.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.e, -16
  %or.cond5.i = icmp eq i8 %i.h, -32
  br i1 %or.cond5.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i8 %i.e, -8
  %or.cond8.i = icmp eq i8 %i.i, -16
  br i1 %or.cond8.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i8 %i.e, -4
  %or.cond11.i = icmp eq i8 %i.j, -8
  %i.k = select i1 %or.cond11.i, i64 5, i64 6
  br label %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit

_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ %i.k, %bb.f ] ; 2 uses
  %i.l = ptrtoint ptr %.01518 to i64
  %i.m = sub i64 %i.d, %i.l
  %.not = icmp ult i64 %i.m, %.0.i
  br i1 %.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.01518, i64 %.0.i ; 3 uses
  %i.o = add nuw i64 %.01419, 1                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %4
  %i.q = icmp ult ptr %i.n, %3
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, %bb.g, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %bb.g ], [ %.01518, %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit ]
  %i.s = ptrtoint ptr %.015.lcssa to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 7) i32 @_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh(i8 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %0, -32
  %or.cond = icmp eq i8 %i.b, -64
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i8 %0, -16
  %or.cond5 = icmp eq i8 %i.c, -32
  br i1 %or.cond5, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = and i8 %0, -8
  %or.cond8 = icmp eq i8 %i.d, -16
  br i1 %or.cond8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = and i8 %0, -4
  %or.cond11 = icmp eq i8 %i.e, -8
  %. = select i1 %or.cond11, i32 5, i32 6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 4, %bb.d ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ %., %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet10do_unshiftER11__mbstate_tPcS5_RS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %2, ptr %4, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet11do_encodingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost15program_options6detail18utf8_codecvt_facet16do_always_noconvEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet13do_max_lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthERK11__mbstate_tPKcS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  ret i32 %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.masked.sdiv.v8i32(<8 x i32>, <8 x i32>, <8 x i1>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1>, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 wchar_t", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"wchar_t", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !18}
!25 = !{!22}
!26 = !{!23}
!27 = distinct !{!27, !18}
end_hunk_0
