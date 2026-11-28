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

@_ZTVN5boost15program_options6detail18utf8_codecvt_facetE = constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN5boost15program_options6detail18utf8_codecvt_facetE, ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev, ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD0Ev, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet10do_unshiftER11__mbstate_tPcS5_RS5_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet11do_encodingEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet16do_always_noconvEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthER11__mbstate_tPKcS6_m, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet13do_max_lengthEv, ptr @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthERK11__mbstate_tPKcS7_m] }, align 8, !guid !8
@_ZTIN5boost15program_options6detail18utf8_codecvt_facetE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost15program_options6detail18utf8_codecvt_facetE, ptr @_ZTISt7codecvtIwc11__mbstate_tE }, align 8, !guid !9
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost15program_options6detail18utf8_codecvt_facetE = constant [53 x i8] c"N5boost15program_options6detail18utf8_codecvt_facetE\00", align 1, !guid !10
@_ZTISt7codecvtIwc11__mbstate_tE = external constant ptr
@_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table = linkonce_odr local_unnamed_addr constant [6 x i32] [i32 0, i32 192, i32 224, i32 240, i32 248, i32 252], comdat, align 16, !guid !11

@_ZN5boost15program_options6detail18utf8_codecvt_facetC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetC2Em
@_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost15program_options6detail18utf8_codecvt_facetD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 !guid !23 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5boost15program_options6detail18utf8_codecvt_facetE, i64 16), ptr %0, align 8, !tbaa !13
  ret void
}

declare void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 align 2 !guid !24 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !guid !25 {
bb.a:
  tail call void @_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #5 align 2 !guid !28 {
bb.a:
  %i.a = icmp ne ptr %2, %3
  %i.b = icmp ne ptr %5, %6
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %bb.a, %bb.k
  %.04875 = phi ptr [ %.149.lcssa112, %bb.k ], [ %2, %bb.a ] ; 4 uses
  %.05074 = phi ptr [ %i.aj, %bb.k ], [ %5, %bb.a ] ; 5 uses
  %i.d = load i8, ptr %.04875, align 1, !tbaa !14 ; 9 uses
  %or.cond.i = icmp slt i8 %i.d, -64
  %i.e = icmp ugt i8 %i.d, -3
  %i.f = or i1 %or.cond.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph77
  store ptr %.04875, ptr %4, align 8, !tbaa !17
  store ptr %.05074, ptr %7, align 8, !tbaa !19
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  %i.s = sub nsw i32 %i.o, %i.r                   ; 2 uses
  %.14967 = getelementptr inbounds nuw i8, ptr %.04875, i64 1 ; 3 uses
  %.not = icmp eq ptr %.14967, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, %bb.i
  %.14970 = phi ptr [ %.149, %bb.i ], [ %.14967, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 3 uses
  %.069 = phi i32 [ %i.z, %bb.i ], [ 0, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 2 uses
  %.04568 = phi i32 [ %i.y, %bb.i ], [ %i.s, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ]
  %i.t = load i8, ptr %.14970, align 1, !tbaa !14 ; 2 uses
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  store ptr %.14970, ptr %4, align 8, !tbaa !17
  store ptr %.05074, ptr %7, align 8, !tbaa !19
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
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !26

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
  store ptr %i.ah, ptr %4, align 8, !tbaa !17
  store ptr %.05074, ptr %7, align 8, !tbaa !19
  br label %.thread

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ai = phi i1 [ %i.i, %._crit_edge.thread ], [ %i.af, %._crit_edge ]
  %.149.lcssa112 = phi ptr [ %.14967105, %._crit_edge.thread ], [ %.149.lcssa, %._crit_edge ] ; 2 uses
  %.045.lcssa111 = phi i32 [ %i.h, %._crit_edge.thread ], [ %.045.lcssa, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.05074, i64 4 ; 3 uses
  store i32 %.045.lcssa111, ptr %.05074, align 4, !tbaa !21
  %i.ak = icmp eq ptr %i.aj, %6
  %.not103 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %.not103, label %._crit_edge78, label %.lr.ph77, !llvm.loop !27

._crit_edge78:                                    ; preds = %bb.k, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.aj, %bb.k ]
  %.048.lcssa = phi ptr [ %2, %bb.a ], [ %.149.lcssa112, %bb.k ] ; 2 uses
  store ptr %.048.lcssa, ptr %4, align 8, !tbaa !17
  store ptr %.050.lcssa, ptr %7, align 8, !tbaa !19
  %i.al = icmp ne ptr %.048.lcssa, %3
  %. = zext i1 %i.al to i32
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %._crit_edge78, %bb.b
  %.2 = phi i32 [ 2, %bb.b ], [ %., %._crit_edge78 ], [ 1, %bb.j ], [ 2, %bb.h ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #5 align 2 !guid !33 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = icmp ne ptr %2, %3
  %i.c = icmp ne ptr %5, %6
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %bb.a
  %i.e = add i64 %i.a, -2
  %i.f = add i64 %i.a, -2
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %.04662 = phi ptr [ %2, %.lr.ph64.preheader ], [ %i.ea, %bb.f ] ; 12 uses
  %.04861 = phi ptr [ %5, %.lr.ph64.preheader ], [ %.149.lcssa, %bb.f ] ; 18 uses
  %.0486197 = ptrtoaddr ptr %.04861 to i64        ; 2 uses
  %i.g = load i32, ptr %.04662, align 4, !tbaa !21 ; 6 uses
  %i.h = icmp slt i32 %i.g, 128
  br i1 %i.h, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph64
  %i.i = icmp samesign ult i32 %i.g, 2048
  br i1 %i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.g, 65536
  br i1 %i.j, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.g, 2097152
  br i1 %i.k, label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %i.g, 67108864
  %..i.i = select i1 %i.l, i32 4, i32 5
  br label %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit

_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit: ; preds = %.lr.ph64, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i32 [ 3, %bb.d ], [ 0, %.lr.ph64 ], [ 1, %bb.b ], [ 2, %bb.c ], [ %..i.i, %bb.e ] ; 10 uses
  %i.m = mul nuw nsw i32 %.0.i.i, 6               ; 9 uses
  %i.n = zext nneg i32 %.0.i.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %i.q = shl nuw nsw i32 1, %i.m
  %i.r = sdiv i32 %i.g, %i.q
  %i.s = add i32 %i.r, %i.p
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %.04861, align 1, !tbaa !14
  %.14955 = getelementptr i8, ptr %.04861, i64 1  ; 6 uses
  %i.u = icmp ne i32 %.0.i.i, 0                   ; 2 uses
  %i.v = icmp ne ptr %.14955, %6
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %i.x = add nsw i32 %.0.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = sub i64 %i.e, %.0486197
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y)
  %i.ab = getelementptr i8, ptr %.04861, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  %i.ad = shl i64 %indvar, 2
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %bound0 = icmp ult ptr %.14955, %i.af
  %bound1 = icmp ult ptr %.04662, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %8 = sub i64 %i.f, %.0486197
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %i.y) ; 3 uses
  %i.ag = getelementptr i8, ptr %.14955, i64 %9
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %broadcast.splatinsert100 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat101 = shufflevector <8 x i32> %broadcast.splatinsert100, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %9, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ai = load i32, ptr %.04662, align 4, !tbaa !21, !alias.scope !34
  %broadcast.splatinsert111 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat112 = shufflevector <8 x i32> %broadcast.splatinsert111, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aj = icmp samesign uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 10 uses
  %next.gep104 = getelementptr i8, ptr %.04861, i64 2
  %next.gep105 = getelementptr i8, ptr %.04861, i64 3
  %next.gep106 = getelementptr i8, ptr %.04861, i64 4
  %next.gep107 = getelementptr i8, ptr %.04861, i64 5
  %next.gep108 = getelementptr i8, ptr %.04861, i64 6
  %next.gep109 = getelementptr i8, ptr %.04861, i64 7
  %next.gep110 = getelementptr i8, ptr %.04861, i64 8
  %i.ak = add nsw <8 x i32> %broadcast.splat101, <i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48>
  %i.al = shl nuw <8 x i32> splat (i32 1), %i.ak
  %i.am = tail call <8 x i32> @llvm.masked.sdiv.v8i32(<8 x i32> %broadcast.splat112, <8 x i32> %i.al, <8 x i1> %i.aj)
  %i.an = srem <8 x i32> %i.am, splat (i32 64)
  %i.ao = trunc nsw <8 x i32> %i.an to <8 x i8>
  %i.ap = xor <8 x i8> %i.ao, splat (i8 -128)     ; 8 uses
  %i.aq = extractelement <8 x i1> %i.aj, i64 0
  br i1 %i.aq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  %i.ar = extractelement <8 x i8> %i.ap, i64 0
  store i8 %i.ar, ptr %.14955, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.as = extractelement <8 x i1> %i.aj, i64 1
  br i1 %i.as, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue
  %i.at = extractelement <8 x i8> %i.ap, i64 1
  store i8 %i.at, ptr %next.gep104, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue
  %i.au = extractelement <8 x i1> %i.aj, i64 2
  br i1 %i.au, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  %i.av = extractelement <8 x i8> %i.ap, i64 2
  store i8 %i.av, ptr %next.gep105, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.aw = extractelement <8 x i1> %i.aj, i64 3
  br i1 %i.aw, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  %i.ax = extractelement <8 x i8> %i.ap, i64 3
  store i8 %i.ax, ptr %next.gep106, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.ay = extractelement <8 x i1> %i.aj, i64 4
  br i1 %i.ay, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  %i.az = extractelement <8 x i8> %i.ap, i64 4
  store i8 %i.az, ptr %next.gep107, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.ba = extractelement <8 x i1> %i.aj, i64 5
  br i1 %i.ba, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.bb = extractelement <8 x i8> %i.ap, i64 5
  store i8 %i.bb, ptr %next.gep108, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.bc = extractelement <8 x i1> %i.aj, i64 6
  br i1 %i.bc, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.bd = extractelement <8 x i8> %i.ap, i64 6
  store i8 %i.bd, ptr %next.gep109, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.be = extractelement <8 x i1> %i.aj, i64 7
  br i1 %i.be, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %i.bf = extractelement <8 x i8> %i.ap, i64 7
  store i8 %i.bf, ptr %next.gep110, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %10 = xor <8 x i1> %i.aj, splat (i1 true)
  %first.inactive.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %10, i1 false)
  %last.active.lane = add i64 %first.inactive.lane, -1
  %i.bg = extractelement <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, i64 %last.active.lane
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = icmp ne i32 %i.bh, %.0.i.i
  br label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.bj = add nsw i32 %i.m, -6
  %i.bk = load i32, ptr %.04662, align 4, !tbaa !21
  %i.bl = shl nuw i32 1, %i.bj
  %i.bm = sdiv i32 %i.bk, %i.bl
  %i.bn = srem i32 %i.bm, 64
  %i.bo = trunc nsw i32 %i.bn to i8
  %i.bp = xor i8 %i.bo, -128
  store i8 %i.bp, ptr %.14955, align 1, !tbaa !14
  %.149 = getelementptr i8, ptr %.04861, i64 2    ; 3 uses
  %i.bq = icmp ne i32 %.0.i.i, 1                  ; 2 uses
  %i.br = icmp ne ptr %.149, %6
  %i.bs = and i1 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bt = add nsw i32 %i.m, -12
  %i.bu = load i32, ptr %.04662, align 4, !tbaa !21
  %i.bv = shl nuw i32 1, %i.bt
  %i.bw = sdiv i32 %i.bu, %i.bv
  %i.bx = srem i32 %i.bw, 64
  %i.by = trunc nsw i32 %i.bx to i8
  %i.bz = xor i8 %i.by, -128
  store i8 %i.bz, ptr %.149, align 1, !tbaa !14
  %.149.1 = getelementptr i8, ptr %.04861, i64 3  ; 3 uses
  %i.ca = icmp ne i32 %.0.i.i, 2                  ; 2 uses
  %i.cb = icmp ne ptr %.149.1, %6
  %i.cc = and i1 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.cd = add nsw i32 %i.m, -18
  %i.ce = load i32, ptr %.04662, align 4, !tbaa !21
  %i.cf = shl nuw i32 1, %i.cd
  %i.cg = sdiv i32 %i.ce, %i.cf
  %i.ch = srem i32 %i.cg, 64
  %i.ci = trunc nsw i32 %i.ch to i8
  %i.cj = xor i8 %i.ci, -128
  store i8 %i.cj, ptr %.149.1, align 1, !tbaa !14
  %.149.2 = getelementptr i8, ptr %.04861, i64 4  ; 3 uses
  %i.ck = icmp ne i32 %.0.i.i, 3                  ; 2 uses
  %i.cl = icmp ne ptr %.149.2, %6
  %i.cm = and i1 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.3, label %._crit_edge.loopexit

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.cn = add nsw i32 %i.m, -24
  %i.co = load i32, ptr %.04662, align 4, !tbaa !21
  %i.cp = shl nuw i32 1, %i.cn
  %i.cq = sdiv i32 %i.co, %i.cp
  %i.cr = srem i32 %i.cq, 64
  %i.cs = trunc nsw i32 %i.cr to i8
  %i.ct = xor i8 %i.cs, -128
  store i8 %i.ct, ptr %.149.2, align 1, !tbaa !14
  %.149.3 = getelementptr i8, ptr %.04861, i64 5  ; 3 uses
  %i.cu = icmp ne i32 %.0.i.i, 4                  ; 2 uses
  %i.cv = icmp ne ptr %.149.3, %6
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.4, label %._crit_edge.loopexit

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.cx = add nsw i32 %i.m, -30
  %i.cy = load i32, ptr %.04662, align 4, !tbaa !21
  %i.cz = shl nuw i32 1, %i.cx
  %i.da = sdiv i32 %i.cy, %i.cz
  %i.db = srem i32 %i.da, 64
  %i.dc = trunc nsw i32 %i.db to i8
  %i.dd = xor i8 %i.dc, -128
  store i8 %i.dd, ptr %.149.3, align 1, !tbaa !14
  %.149.4 = getelementptr i8, ptr %.04861, i64 6  ; 3 uses
  %i.de = icmp ne i32 %.0.i.i, 5                  ; 2 uses
  %i.df = icmp ne ptr %.149.4, %6
  %i.dg = and i1 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph.5, label %._crit_edge.loopexit

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.dh = add nsw i32 %i.m, -36
  %i.di = load i32, ptr %.04662, align 4, !tbaa !21
  %i.dj = shl nuw i32 1, %i.dh
  %i.dk = sdiv i32 %i.di, %i.dj
  %i.dl = srem i32 %i.dk, 64
  %i.dm = trunc nsw i32 %i.dl to i8
  %i.dn = xor i8 %i.dm, -128
  store i8 %i.dn, ptr %.149.4, align 1, !tbaa !14
  %.149.5 = getelementptr i8, ptr %.04861, i64 7  ; 3 uses
  %.not = icmp eq ptr %.149.5, %6
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.do = add nsw i32 %i.m, -42
  %i.dp = load i32, ptr %.04662, align 4, !tbaa !21
  %i.dq = shl nuw i32 1, %i.do
  %i.dr = sdiv i32 %i.dp, %i.dq
  %i.ds = srem i32 %i.dr, 64
  %i.dt = trunc nsw i32 %i.ds to i8
  %i.du = xor i8 %i.dt, -128
  store i8 %i.du, ptr %.149.5, align 1, !tbaa !14
  %.149.6 = getelementptr i8, ptr %.04861, i64 8
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %pred.store.continue126
  %.057.lcssa = phi i64 [ %9, %pred.store.continue126 ], [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %.lr.ph.2 ], [ 3, %.lr.ph.3 ], [ 4, %.lr.ph.4 ], [ 5, %.lr.ph.5 ], [ 6, %.lr.ph.6 ]
  %.149.lcssa89 = phi ptr [ %i.ah, %pred.store.continue126 ], [ %.149, %.lr.ph ], [ %.149.1, %.lr.ph.1 ], [ %.149.2, %.lr.ph.2 ], [ %.149.3, %.lr.ph.3 ], [ %.149.4, %.lr.ph.4 ], [ %.149.5, %.lr.ph.5 ], [ %.149.6, %.lr.ph.6 ]
  %.lcssa88 = phi i1 [ %i.bi, %pred.store.continue126 ], [ %i.bq, %.lr.ph ], [ %i.ca, %.lr.ph.1 ], [ %i.ck, %.lr.ph.2 ], [ %i.cu, %.lr.ph.3 ], [ %i.de, %.lr.ph.4 ], [ true, %.lr.ph.5 ], [ true, %.lr.ph.6 ]
  %i.dv = add nsw i64 %.057.lcssa, 2
  %i.dw = and i64 %i.dv, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %.0.lcssa = phi i64 [ 1, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %i.dw, %._crit_edge.loopexit ]
  %.149.lcssa = phi ptr [ %.14955, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %.149.lcssa89, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ %i.u, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %.lcssa88, %._crit_edge.loopexit ]
  %i.dx = icmp eq ptr %.149.lcssa, %6             ; 2 uses
  %brmerge.not = and i1 %i.dx, %.lcssa
  br i1 %brmerge.not, label %.critedge, label %bb.f

.critedge:                                        ; preds = %._crit_edge
  store ptr %.04662, ptr %4, align 8, !tbaa !19
  %i.dy = sub nsw i64 0, %.0.lcssa
  %i.dz = getelementptr inbounds i8, ptr %.149.lcssa, i64 %i.dy
  store ptr %i.dz, ptr %7, align 8, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %.04662, i64 4 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %3
  %.not81 = or i1 %i.eb, %i.dx
  %indvar.next = add i64 %indvar, 1
  br i1 %.not81, label %._crit_edge65, label %.lr.ph64, !llvm.loop !32

._crit_edge65:                                    ; preds = %bb.f, %bb.a
  %.048.lcssa = phi ptr [ %5, %bb.a ], [ %.149.lcssa, %bb.f ]
  %.046.lcssa = phi ptr [ %2, %bb.a ], [ %i.ea, %bb.f ] ; 2 uses
  store ptr %.046.lcssa, ptr %4, align 8, !tbaa !19
  store ptr %.048.lcssa, ptr %7, align 8, !tbaa !17
  %i.ec = icmp ne ptr %.046.lcssa, %3
  %. = zext i1 %i.ec to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge65, %.critedge
  %.2 = phi i32 [ %., %._crit_edge65 ], [ 1, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 6) i32 @_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw(i32 noundef signext %0) local_unnamed_addr #6 align 2 !guid !36 {
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
define noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthER11__mbstate_tPKcS6_m(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #7 align 2 !guid !38 {
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
  %i.e = load i8, ptr %.01518, align 1, !tbaa !14 ; 5 uses
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
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit, %bb.g, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %bb.g ], [ %.01518, %_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh.exit ]
  %i.s = ptrtoint ptr %.015.lcssa to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 7) i32 @_ZN5boost15program_options6detail18utf8_codecvt_facet15get_octet_countEh(i8 noundef zeroext %0) local_unnamed_addr #6 align 2 !guid !39 {
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
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet10do_unshiftER11__mbstate_tPcS5_RS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 !guid !40 {
bb.a:
  store ptr %2, ptr %4, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet11do_encodingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !41 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost15program_options6detail18utf8_codecvt_facet16do_always_noconvEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !42 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet13do_max_lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !43 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet9do_lengthERK11__mbstate_tPKcS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 comdat align 2 !guid !44 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
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
!8 = !{i64 -1392360176829507190}
!9 = !{i64 -2876103603162570590}
!10 = !{i64 -6551410151060038396}
!11 = !{i64 4752839985480276970}
!12 = !{!"vtable pointer", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 wchar_t", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"wchar_t", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i64 -4058098000565327235}
!24 = !{i64 6323880960158666357}
!25 = !{i64 -9014230967970198878}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = !{i64 8917058805891298496}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !22}
!33 = !{i64 -2715123640352167693}
!34 = !{!30}
!35 = !{!31}
!36 = !{i64 8032389032913711517}
!37 = distinct !{!37, !22}
!38 = !{i64 7031841404027994621}
!39 = !{i64 -3231666948991571185}
!40 = !{i64 -4656940269137504972}
!41 = !{i64 607264985907552447}
!42 = !{i64 7436284188019267237}
!43 = !{i64 -8790058508676752852}
!44 = !{i64 3125623409234702548}
end_hunk_0
