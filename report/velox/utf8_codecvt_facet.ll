Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/utf8_codecvt_facet?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

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
  %.04662 = phi ptr [ %2, %.lr.ph64.preheader ], [ %i.ed, %bb.f ] ; 12 uses
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
  %i.ag = sub i64 %i.f, %.0486197
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.y) ; 3 uses
  %i.ai = getelementptr i8, ptr %.14955, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %broadcast.splatinsert100 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat101 = shufflevector <8 x i32> %broadcast.splatinsert100, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ak = load i32, ptr %.04662, align 4, !tbaa !21, !alias.scope !34
  %broadcast.splatinsert111 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat112 = shufflevector <8 x i32> %broadcast.splatinsert111, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.al = icmp samesign uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 10 uses
  %next.gep104 = getelementptr i8, ptr %.04861, i64 2
  %next.gep105 = getelementptr i8, ptr %.04861, i64 3
  %next.gep106 = getelementptr i8, ptr %.04861, i64 4
  %next.gep107 = getelementptr i8, ptr %.04861, i64 5
  %next.gep108 = getelementptr i8, ptr %.04861, i64 6
  %next.gep109 = getelementptr i8, ptr %.04861, i64 7
  %next.gep110 = getelementptr i8, ptr %.04861, i64 8
  %i.am = add nsw <8 x i32> %broadcast.splat101, <i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48>
  %i.an = shl nuw <8 x i32> splat (i32 1), %i.am
  %i.ao = tail call <8 x i32> @llvm.masked.sdiv.v8i32(<8 x i32> %broadcast.splat112, <8 x i32> %i.an, <8 x i1> %i.al)
  %i.ap = srem <8 x i32> %i.ao, splat (i32 64)
  %i.aq = trunc nsw <8 x i32> %i.ap to <8 x i8>
  %i.ar = xor <8 x i8> %i.aq, splat (i8 -128)     ; 8 uses
  %i.as = extractelement <8 x i1> %i.al, i64 0
  br i1 %i.as, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  %i.at = extractelement <8 x i8> %i.ar, i64 0
  store i8 %i.at, ptr %.14955, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.au = extractelement <8 x i1> %i.al, i64 1
  br i1 %i.au, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue
  %i.av = extractelement <8 x i8> %i.ar, i64 1
  store i8 %i.av, ptr %next.gep104, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue
  %i.aw = extractelement <8 x i1> %i.al, i64 2
  br i1 %i.aw, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  %i.ax = extractelement <8 x i8> %i.ar, i64 2
  store i8 %i.ax, ptr %next.gep105, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.ay = extractelement <8 x i1> %i.al, i64 3
  br i1 %i.ay, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  %i.az = extractelement <8 x i8> %i.ar, i64 3
  store i8 %i.az, ptr %next.gep106, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.ba = extractelement <8 x i1> %i.al, i64 4
  br i1 %i.ba, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  %i.bb = extractelement <8 x i8> %i.ar, i64 4
  store i8 %i.bb, ptr %next.gep107, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.bc = extractelement <8 x i1> %i.al, i64 5
  br i1 %i.bc, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.bd = extractelement <8 x i8> %i.ar, i64 5
  store i8 %i.bd, ptr %next.gep108, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.be = extractelement <8 x i1> %i.al, i64 6
  br i1 %i.be, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.bf = extractelement <8 x i8> %i.ar, i64 6
  store i8 %i.bf, ptr %next.gep109, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.bg = extractelement <8 x i1> %i.al, i64 7
  br i1 %i.bg, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %i.bh = extractelement <8 x i8> %i.ar, i64 7
  store i8 %i.bh, ptr %next.gep110, align 1, !tbaa !14, !alias.scope !35, !noalias !34
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.bi = xor <8 x i1> %i.al, splat (i1 true)
  %first.inactive.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %i.bi, i1 false)
  %last.active.lane = add i64 %first.inactive.lane, -1
  %i.bj = extractelement <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, i64 %last.active.lane
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = icmp ne i32 %i.bk, %.0.i.i
  br label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.bm = add nsw i32 %i.m, -6
  %i.bn = load i32, ptr %.04662, align 4, !tbaa !21
  %i.bo = shl nuw i32 1, %i.bm
  %i.bp = sdiv i32 %i.bn, %i.bo
  %i.bq = srem i32 %i.bp, 64
  %i.br = trunc nsw i32 %i.bq to i8
  %i.bs = xor i8 %i.br, -128
  store i8 %i.bs, ptr %.14955, align 1, !tbaa !14
  %.149 = getelementptr i8, ptr %.04861, i64 2    ; 3 uses
  %i.bt = icmp ne i32 %.0.i.i, 1                  ; 2 uses
  %i.bu = icmp ne ptr %.149, %6
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.1, label %._crit_edge.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bw = add nsw i32 %i.m, -12
  %i.bx = load i32, ptr %.04662, align 4, !tbaa !21
  %i.by = shl nuw i32 1, %i.bw
  %i.bz = sdiv i32 %i.bx, %i.by
  %i.ca = srem i32 %i.bz, 64
  %i.cb = trunc nsw i32 %i.ca to i8
  %i.cc = xor i8 %i.cb, -128
  store i8 %i.cc, ptr %.149, align 1, !tbaa !14
  %.149.1 = getelementptr i8, ptr %.04861, i64 3  ; 3 uses
  %i.cd = icmp ne i32 %.0.i.i, 2                  ; 2 uses
  %i.ce = icmp ne ptr %.149.1, %6
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.cg = add nsw i32 %i.m, -18
  %i.ch = load i32, ptr %.04662, align 4, !tbaa !21
  %i.ci = shl nuw i32 1, %i.cg
  %i.cj = sdiv i32 %i.ch, %i.ci
  %i.ck = srem i32 %i.cj, 64
  %i.cl = trunc nsw i32 %i.ck to i8
  %i.cm = xor i8 %i.cl, -128
  store i8 %i.cm, ptr %.149.1, align 1, !tbaa !14
  %.149.2 = getelementptr i8, ptr %.04861, i64 4  ; 3 uses
end_hunk_0
