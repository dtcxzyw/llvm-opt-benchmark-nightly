Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/utf8_codecvt_facet?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  tail call void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options6detail18utf8_codecvt_facetD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5boost15program_options6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #9
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
  %.05074 = phi ptr [ %i.ag, %bb.k ], [ %5, %bb.a ] ; 5 uses
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
  %.14967105 = getelementptr inbounds nuw i8, ptr %.04875, i64 1
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i8 %i.d, -32
  br i1 %i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i8 %i.d, -16
  %or.cond5.i.i = icmp eq i8 %i.j, -32
  br i1 %or.cond5.i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i8 %i.d, -8
  %or.cond8.i.i = icmp eq i8 %i.k, -16
  br i1 %or.cond8.i.i, label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i8 %i.d, -4
  %or.cond11.i.i = icmp eq i8 %i.l, -8
  %i.m = select i1 %or.cond11.i.i, i32 4, i32 5
  br label %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit

_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i32 [ 3, %bb.f ], [ %i.m, %bb.g ], [ 1, %bb.d ], [ 2, %bb.e ] ; 2 uses
  %i.n = zext i8 %i.d to i32
  %i.o = zext nneg i32 %.0.i.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = sub nsw i32 %i.n, %i.q                   ; 2 uses
  %.14967 = getelementptr inbounds nuw i8, ptr %.04875, i64 1 ; 3 uses
  %.not = icmp eq ptr %.14967, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit, %bb.i
  %.14970 = phi ptr [ %.149, %bb.i ], [ %.14967, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 3 uses
  %.069 = phi i32 [ %i.y, %bb.i ], [ 0, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ] ; 2 uses
  %.04568 = phi i32 [ %i.x, %bb.i ], [ %i.r, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ]
  %i.s = load i8, ptr %.14970, align 1, !tbaa !10 ; 2 uses
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  store ptr %.14970, ptr %4, align 8, !tbaa !13
  store ptr %.05074, ptr %7, align 8, !tbaa !15
  br label %.thread

bb.i:                                             ; preds = %.lr.ph
  %i.u = shl nsw i32 %.04568, 6
  %i.v = zext i8 %i.s to i32
  %i.w = add nsw i32 %i.v, -128
  %i.x = or disjoint i32 %i.w, %i.u               ; 2 uses
  %i.y = add nuw nsw i32 %.069, 1                 ; 2 uses
  %.149 = getelementptr inbounds nuw i8, ptr %.14970, i64 1 ; 3 uses
  %i.z = icmp ne i32 %i.y, %.0.i.i                ; 2 uses
  %i.aa = icmp ne ptr %.149, %3                   ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ac = add nuw nsw i32 %.069, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %8 = xor i1 %i.z, true
  %9 = or i1 %i.aa, %8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit
  %.045.lcssa = phi i32 [ %i.r, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %i.x, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 1, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %i.ad, %._crit_edge.loopexit ]
  %.149.lcssa = phi ptr [ %.14967, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %.149, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i1 [ false, %_ZN5boost15program_options6detail18utf8_codecvt_facet20get_cont_octet_countEh.exit ], [ %9, %._crit_edge.loopexit ]
  br i1 %.lcssa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ae = sub nsw i64 0, %.0.lcssa
  %i.af = getelementptr inbounds i8, ptr %.149.lcssa, i64 %i.ae
  store ptr %i.af, ptr %4, align 8, !tbaa !13
  store ptr %.05074, ptr %7, align 8, !tbaa !15
  br label %.thread

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.149.lcssa112 = phi ptr [ %.14967105, %._crit_edge.thread ], [ %.149.lcssa, %._crit_edge ] ; 3 uses
  %.045.lcssa111 = phi i32 [ %i.h, %._crit_edge.thread ], [ %.045.lcssa, %._crit_edge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.05074, i64 4 ; 3 uses
  store i32 %.045.lcssa111, ptr %.05074, align 4, !tbaa !17
  %10 = icmp ne ptr %.149.lcssa112, %3
  %11 = icmp ne ptr %i.ag, %6
  %.not103 = select i1 %10, i1 %11, i1 false
  br i1 %.not103, label %.lr.ph77, label %._crit_edge78, !llvm.loop !20

._crit_edge78:                                    ; preds = %bb.k, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.ag, %bb.k ]
  %.048.lcssa = phi ptr [ %2, %bb.a ], [ %.149.lcssa112, %bb.k ] ; 2 uses
  store ptr %.048.lcssa, ptr %4, align 8, !tbaa !13
  store ptr %.050.lcssa, ptr %7, align 8, !tbaa !15
  %i.ah = icmp ne ptr %.048.lcssa, %3
  %. = zext i1 %i.ah to i32
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %._crit_edge78, %bb.b
  %.2 = phi i32 [ 2, %bb.b ], [ %., %._crit_edge78 ], [ 1, %bb.j ], [ 2, %bb.h ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZNK5boost15program_options6detail18utf8_codecvt_facet6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ne ptr %2, %3
  %i.b = icmp ne ptr %5, %6
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.a, %bb.f
  %.04662 = phi ptr [ %i.ch, %bb.f ], [ %2, %bb.a ] ; 10 uses
  %.04861 = phi ptr [ %.149.lcssa, %bb.f ], [ %5, %bb.a ] ; 9 uses
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
  %.0.i.i = phi i32 [ 3, %bb.d ], [ 0, %.lr.ph64 ], [ 1, %bb.b ], [ 2, %bb.c ], [ %..i.i, %bb.e ] ; 8 uses
  %i.j = mul nuw nsw i32 %.0.i.i, 6               ; 8 uses
  %i.k = zext nneg i32 %.0.i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5boost15program_options6detail6detail25get_octet1_modifier_tableEvE21octet1_modifier_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = shl nuw nsw i32 1, %i.j
  %i.o = sdiv i32 %i.d, %i.n
  %i.p = add i32 %i.o, %i.m
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %.04861, align 1, !tbaa !10
  %.14955 = getelementptr inbounds nuw i8, ptr %.04861, i64 1 ; 3 uses
  %i.r = icmp ne i32 %.0.i.i, 0                   ; 2 uses
  %i.s = icmp ne ptr %.14955, %6                  ; 2 uses
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %i.u = add nsw i32 %i.j, -6
  %i.v = load i32, ptr %.04662, align 4, !tbaa !17
  %i.w = shl nuw i32 1, %i.u
  %i.x = sdiv i32 %i.v, %i.w
  %i.y = srem i32 %i.x, 64
  %i.z = trunc nsw i32 %i.y to i8
  %i.aa = xor i8 %i.z, -128
  store i8 %i.aa, ptr %.14955, align 1, !tbaa !10
  %.149 = getelementptr inbounds nuw i8, ptr %.04861, i64 2 ; 3 uses
  %i.ab = icmp ne i32 %.0.i.i, 1                  ; 2 uses
  %i.ac = icmp ne ptr %.149, %6                   ; 2 uses
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ae = add nsw i32 %i.j, -12
  %i.af = load i32, ptr %.04662, align 4, !tbaa !17
  %i.ag = shl nuw i32 1, %i.ae
  %i.ah = sdiv i32 %i.af, %i.ag
  %i.ai = srem i32 %i.ah, 64
  %i.aj = trunc nsw i32 %i.ai to i8
  %i.ak = xor i8 %i.aj, -128
  store i8 %i.ak, ptr %.149, align 1, !tbaa !10
  %.149.1 = getelementptr inbounds nuw i8, ptr %.04861, i64 3 ; 3 uses
  %i.al = icmp ne i32 %.0.i.i, 2                  ; 2 uses
  %i.am = icmp ne ptr %.149.1, %6                 ; 2 uses
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ao = add nsw i32 %i.j, -18
  %i.ap = load i32, ptr %.04662, align 4, !tbaa !17
  %i.aq = shl nuw i32 1, %i.ao
  %i.ar = sdiv i32 %i.ap, %i.aq
  %i.as = srem i32 %i.ar, 64
  %i.at = trunc nsw i32 %i.as to i8
  %i.au = xor i8 %i.at, -128
  store i8 %i.au, ptr %.149.1, align 1, !tbaa !10
  %.149.2 = getelementptr inbounds nuw i8, ptr %.04861, i64 4 ; 3 uses
  %i.av = icmp ne i32 %.0.i.i, 3                  ; 2 uses
  %i.aw = icmp ne ptr %.149.2, %6                 ; 2 uses
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ay = add nsw i32 %i.j, -24
  %i.az = load i32, ptr %.04662, align 4, !tbaa !17
  %i.ba = shl nuw i32 1, %i.ay
  %i.bb = sdiv i32 %i.az, %i.ba
  %i.bc = srem i32 %i.bb, 64
  %i.bd = trunc nsw i32 %i.bc to i8
  %i.be = xor i8 %i.bd, -128
  store i8 %i.be, ptr %.149.2, align 1, !tbaa !10
  %.149.3 = getelementptr inbounds nuw i8, ptr %.04861, i64 5 ; 3 uses
  %i.bf = icmp ne i32 %.0.i.i, 4                  ; 2 uses
  %i.bg = icmp ne ptr %.149.3, %6                 ; 2 uses
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bi = add nsw i32 %i.j, -30
  %i.bj = load i32, ptr %.04662, align 4, !tbaa !17
  %i.bk = shl nuw i32 1, %i.bi
  %i.bl = sdiv i32 %i.bj, %i.bk
  %i.bm = srem i32 %i.bl, 64
  %i.bn = trunc nsw i32 %i.bm to i8
  %i.bo = xor i8 %i.bn, -128
  store i8 %i.bo, ptr %.149.3, align 1, !tbaa !10
  %.149.4 = getelementptr inbounds nuw i8, ptr %.04861, i64 6 ; 3 uses
  %i.bp = icmp ne i32 %.0.i.i, 5                  ; 2 uses
  %i.bq = icmp ne ptr %.149.4, %6                 ; 2 uses
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.bs = add nsw i32 %i.j, -36
  %i.bt = load i32, ptr %.04662, align 4, !tbaa !17
  %i.bu = shl nuw i32 1, %i.bs
  %i.bv = sdiv i32 %i.bt, %i.bu
  %i.bw = srem i32 %i.bv, 64
  %i.bx = trunc nsw i32 %i.bw to i8
  %i.by = xor i8 %i.bx, -128
  store i8 %i.by, ptr %.149.4, align 1, !tbaa !10
  %.149.5 = getelementptr inbounds nuw i8, ptr %.04861, i64 7 ; 3 uses
  %.not = icmp eq ptr %.149.5, %6
  br i1 %.not, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bz = add nsw i32 %i.j, -42
  %i.ca = load i32, ptr %.04662, align 4, !tbaa !17
  %i.cb = shl nuw i32 1, %i.bz
  %i.cc = sdiv i32 %i.ca, %i.cb
  %i.cd = srem i32 %i.cc, 64
  %i.ce = trunc nsw i32 %i.cd to i8
  %i.cf = xor i8 %i.ce, -128
  store i8 %i.cf, ptr %.149.5, align 1, !tbaa !10
  %.149.6 = getelementptr inbounds nuw i8, ptr %.04861, i64 8 ; 2 uses
  %8 = icmp ne ptr %.149.6, %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit
  %.0.lcssa.neg = phi i64 [ -1, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ -2, %.lr.ph ], [ -3, %.lr.ph.1 ], [ -4, %.lr.ph.2 ], [ -5, %.lr.ph.3 ], [ -6, %.lr.ph.4 ], [ -7, %.lr.ph.5 ], [ -8, %.lr.ph.6 ]
  %.149.lcssa = phi ptr [ %.14955, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %.149, %.lr.ph ], [ %.149.1, %.lr.ph.1 ], [ %.149.2, %.lr.ph.2 ], [ %.149.3, %.lr.ph.3 ], [ %.149.4, %.lr.ph.4 ], [ %.149.5, %.lr.ph.5 ], [ %.149.6, %.lr.ph.6 ] ; 4 uses
  %.lcssa.a = phi i1 [ %i.r, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %i.ab, %.lr.ph ], [ %i.al, %.lr.ph.1 ], [ %i.av, %.lr.ph.2 ], [ %i.bf, %.lr.ph.3 ], [ %i.bp, %.lr.ph.4 ], [ true, %.lr.ph.5 ], [ true, %.lr.ph.6 ]
  %.lcssa = phi i1 [ %i.s, %_ZN5boost15program_options6detail18utf8_codecvt_facet24get_cont_octet_out_countEw.exit ], [ %i.ac, %.lr.ph ], [ %i.am, %.lr.ph.1 ], [ %i.aw, %.lr.ph.2 ], [ %i.bg, %.lr.ph.3 ], [ %i.bq, %.lr.ph.4 ], [ false, %.lr.ph.5 ], [ %8, %.lr.ph.6 ]
  %.not52 = xor i1 %.lcssa.a, true
  %brmerge = or i1 %.lcssa, %.not52
  br i1 %brmerge, label %bb.f, label %.critedge

.critedge:                                        ; preds = %._crit_edge
  store ptr %.04662, ptr %4, align 8, !tbaa !15
  %i.cg = getelementptr inbounds i8, ptr %.149.lcssa, i64 %.0.lcssa.neg
  store ptr %i.cg, ptr %7, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %.04662, i64 4 ; 3 uses
  %9 = icmp ne ptr %i.ch, %3
  %10 = icmp ne ptr %.149.lcssa, %6
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %.lr.ph64, label %._crit_edge65, !llvm.loop !21

._crit_edge65:                                    ; preds = %bb.f, %bb.a
  %.048.lcssa = phi ptr [ %5, %bb.a ], [ %.149.lcssa, %bb.f ]
  %.046.lcssa = phi ptr [ %2, %bb.a ], [ %i.ch, %bb.f ] ; 2 uses
  store ptr %.046.lcssa, ptr %4, align 8, !tbaa !15
  store ptr %.048.lcssa, ptr %7, align 8, !tbaa !13
  %i.ci = icmp ne ptr %.046.lcssa, %3
  %. = zext i1 %i.ci to i32
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
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !22

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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
end_hunk_0
