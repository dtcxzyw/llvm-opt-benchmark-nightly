Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.02?download=true
inline.NumInlined: 88
inline.NumDeleted: 46
begin_hunk_0_@_RNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure:bb.a
          to label %.body85 unwind label %bb.aq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95: ; preds = %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fx = load i64, ptr %i.n, align 8, !range !5, !alias.scope !113, !noundef !6
  %i.fy = icmp eq i64 %i.fx, -1
  br i1 %i.fy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body83 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107 unwind label %.loopexit120

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.gb = load i64, ptr %i.u, align 8, !range !7, !noundef !6
  %i.gc = icmp sgt i64 %i.gb, -1
  %i.gd = trunc nuw i8 %.sroa.024.3 to i1
  %or.cond3 = and i1 %i.gc, %i.gd
  br i1 %or.cond3, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  %i.ge = load i64, ptr %i.v, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.ge, -1
  br i1 %.not, label %bb.b, label %._crit_edge

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109: ; preds = %bb.cc
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.cb

bb.cf:                                            ; preds = %.body83
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #17
          to label %common.resume unwind label %bb.aq

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.bt
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.bt ], [ %i.af, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.sroa.0.3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !116, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !116, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !116, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !116
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !122
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !123, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !123, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !123
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !123
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !149, !noundef !6
  switch i64 %i.a, label %default.unreachable261 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted206 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted157 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.k = trunc nuw i8 %.promoted206 to i1         ; 2 uses
  %i.l = icmp eq i64 %.promoted157, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.not.i.i.us.peel = icmp ult i64 %.promoted157, %i.j
  br i1 %.not.i.i.us.peel, label %bb.c, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %bb.b
  %i.m = icmp eq i64 %.promoted157, %i.j
  br i1 %i.m, label %bb.d, label %.split.us161

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted157
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !151, !noalias !152, !noundef !6
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %.split.us161

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.peel, %.lr.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted157 ; 4 uses
  %i.r = icmp samesign eq i64 %.promoted157, %i.j
  br i1 %i.r, label %.split166.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !noalias !153, !noundef !6 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.peel

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.peel: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %.promoted157, 1
  %i.y = icmp samesign ne i64 %i.x, %i.j
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.u, align 1, !noalias !153, !noundef !6
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = add nuw nsw i64 %.promoted157, 2
  %i.ah = icmp samesign ne i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.af, align 1, !noalias !153, !noundef !6
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ar = add nuw nsw i64 %.promoted157, 3
  %i.as = icmp samesign ne i64 %i.ar, %i.j
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !153, !noundef !6
  %i.au = shl nuw nsw i32 %i.w, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.am, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.peel, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.peel, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.peel
  %.sroa.4.0.i.ph.i.us.peel = phi i32 [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.peel ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.peel ], [ %i.ad, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.peel ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br i1 %i.k, label %.loopexit42.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 128
  br i1 %i.bd, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 2048
  br i1 %i.be, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 65536
  %..i.us.peel = select i1 %i.bf, i64 3, i64 4
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.peel = phi i64 [ 2, %bb.i ], [ %..i.us.peel, %bb.j ], [ 1, %bb.h ]
  %i.bg = add i64 %.sroa.01.0.i.us.peel, %.promoted157 ; 13 uses
  store i64 %i.bg, ptr %i.b, align 8, !alias.scope !150
  %i.bh = icmp eq i64 %i.bg, 0
  %.not.i.i.us = icmp ult i64 %i.bg, %i.j
  %i.bi = icmp eq i64 %i.bg, %i.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg ; 4 uses
  %i.bl = icmp samesign eq i64 %i.bg, %i.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = add nuw nsw i64 %i.bg, 1
  %i.bo = icmp samesign ne i64 %i.bn, %i.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !151, !noalias !155, !noundef !6
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !156, !noundef !6 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !156, !noundef !6
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !156, !noundef !6
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !156, !noundef !6
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit42.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit42.split.us.loopexit

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !154
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #15, !noalias !155
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !154
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !154
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !154
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !6 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !6 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !6 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !6 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !6 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !154
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !6 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit43, label %.loopexit44

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !157, !noundef !6
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit43, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !159 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !159, !noundef !6
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !159 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !159 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !159
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !160, !noundef !6
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu) ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !159
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !159
  %i.fj = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1     ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !161, !noundef !6
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !160, !noundef !6
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !159
  store i64 0, ptr %i.dg, align 8, !alias.scope !159
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !162
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !162
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !161, !noundef !6
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !160, !noundef !6
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !163
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !165 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !165, !noundef !6
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !165
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !165
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gp = add i64 %.fr215, -1                     ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !166, !noundef !6
  %i.gu = and i8 %i.gt, 63
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = and i64 %i.gw, %i.gl
  %.not.us.i = icmp eq i64 %i.gx, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1          ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.i19

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !167, !noundef !6
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !166, !noundef !6
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go
  br label %bb.ah

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !167, !noundef !6
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !166, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i19:                                   ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i20

.split32.us.i20:                                  ; preds = %.preheader.i19
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !168
  unreachable

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !165
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !165
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.i19
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !165
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !169
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !169
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0INtNtB1J_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keyReNCNvB1o_9configure0E0EB1q_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENCNvMB1p_B1n_5short0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1r_(ptr noundef nonnull, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2JuP67VRGmV_8textwrap4wrap4wrapRNtNtB4_7options7OptionsECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs1xwejQucwHj_5alloc5sliceSh6repeatCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE7reserveBI_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser4next(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsgWT32ugvpwR_6lexoptNtB4_3Arg10unexpected(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_CsgWT32ugvpwR_6lexoptNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB5_8ValueExt6string(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline noreturn }
attributes #16 = { inlinehint }
attributes #17 = { cold }
attributes #18 = { noinline }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 0, i64 -9223372036854775806}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 2}
!10 = !{i8 0, i8 2}
!11 = !{i64 -1, i64 -9223372036854775801}
!12 = !{i32 0, i32 1114112}
!13 = distinct !{!13, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!14 = distinct !{!14, !13, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!16 = distinct !{!16, !15, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!17 = distinct !{!17, i1 true, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!18 = distinct !{!18, !17, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli"}
!20 = distinct !{!20, !19, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!21 = distinct !{!21, !15, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3tZ2SXJA1qv_8jiff_cli"}
!23 = distinct !{!23, !22, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli"}
!25 = distinct !{!25, !24, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!26 = distinct !{!26, !24, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!27 = distinct !{!27, !24, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!28 = distinct !{!28, !24, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!30 = distinct !{!30, !29, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!32 = distinct !{!32, !31, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!33 = distinct !{!33, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!34 = distinct !{!34, !33, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!35 = distinct !{!35, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!36 = distinct !{!36, !35, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1:h.rot"}
!37 = distinct !{!37, i1 true, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!38 = distinct !{!38, !37, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0:h.rot"}
!39 = distinct !{!39, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli"}
!40 = distinct !{!40, !39, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0:h.rot"}
!41 = distinct !{!41, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli"}
!42 = distinct !{!42, !41, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!44 = distinct !{!44, !43, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!45 = distinct !{!45, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli"}
!46 = distinct !{!46, !45, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!48 = distinct !{!48, !47, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1:h.rot"}
!49 = !{!14}
!50 = !{!16}
!51 = !{!18}
!52 = !{!20}
!53 = !{!20, !18, !16}
!54 = !{!20, !18, !21, !16}
!55 = !{!23, !20, !18, !16}
!56 = !{!28, !27, !26, !25}
!57 = !{!30}
!58 = !{i64 0, i64 -9223372036854775808}
!59 = !{!32}
!60 = !{!34}
!61 = !{!40, !38, !36}
!62 = !{!42}
!63 = !{!44}
!64 = !{!46}
!65 = !{!48}
!66 = distinct !{!66, i1 true, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENCNvMB1o_B1m_5short0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_"}
!67 = distinct !{!67, !66, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENCNvMB1o_B1m_5short0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_: argument 0"}
!68 = !{!67}
!69 = distinct !{!69, i1 true, !"_RINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBy_9configure0EBA_"}
!70 = distinct !{!70, !69, !"_RINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBy_9configure0EBA_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMB2_SBH_11sort_by_keyReNCNvBJ_9configure0E0EBL_"}
!72 = distinct !{!72, !71, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMB2_SBH_11sort_by_keyReNCNvBJ_9configure0E0EBL_: argument 1"}
!73 = distinct !{!73, !71, !"_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMB2_SBH_11sort_by_keyReNCNvBJ_9configure0E0EBL_: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE15append_elementsBI_"}
!75 = distinct !{!75, !74, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE15append_elementsBI_: argument 0"}
!76 = distinct !{!76, i1 true, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli"}
!77 = distinct !{!77, !76, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!78 = distinct !{!78, !76, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!79 = distinct !{!79, !76, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!80 = distinct !{!80, !76, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!82 = distinct !{!82, !81, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!84 = distinct !{!84, !83, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!85 = distinct !{!85, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!86 = distinct !{!86, !85, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli"}
!88 = distinct !{!88, !87, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!89 = distinct !{!89, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli"}
!90 = distinct !{!90, !89, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!91 = distinct !{!91, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli"}
!92 = distinct !{!92, !91, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!93 = distinct !{!93, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli"}
!94 = distinct !{!94, !93, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!95 = !{!70}
!96 = !{i64 8}
!97 = !{!73, !72, !70}
!98 = !{!"branch_weights", !"expected", i32 2145766481, i32 1717167}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!100 = !{!75}
!101 = !{!80, !79, !78, !77}
!102 = !{i64 0, i64 -9223372036854775807}
!103 = !{!80, !77}
!104 = !{!82}
!105 = !{!84}
!106 = !{!86}
!107 = !{!80}
!108 = !{!79, !78, !77}
!109 = !{!"branch_weights", i32 1, i32 2000, i32 1, i32 2000}
!110 = !{!88}
!111 = !{!90}
!112 = !{!92}
!113 = !{!94}
!114 = distinct !{!114, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!115 = distinct !{!115, !114, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!118 = distinct !{!118, !117, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!119 = distinct !{!119, !117, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli"}
!121 = distinct !{!121, !120, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!122 = !{!118}
!123 = !{!121, !119}
!124 = distinct !{!124, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!125 = distinct !{!125, !124, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!126 = distinct !{!126, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!127 = distinct !{!127, !126, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!128 = distinct !{!128, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!129 = distinct !{!129, !128, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!130 = distinct !{!130, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!131 = distinct !{!131, !130, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!132 = distinct !{!132, !128, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!133 = distinct !{!133, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!134 = distinct !{!134, !133, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!135 = distinct !{!135, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!136 = distinct !{!136, !135, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!137 = distinct !{!137, !135, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!138 = distinct !{!138, !135, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!139 = distinct !{!139, !135, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!140 = distinct !{!140, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!141 = distinct !{!141, !140, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!143 = distinct !{!143, !142, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!144 = distinct !{!144, !142, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!145 = distinct !{!145, !142, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!146 = distinct !{!146, !142, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!147 = distinct !{!147, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!148 = distinct !{!148, !147, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!149 = !{i64 0, i64 3}
!150 = !{!125}
!151 = !{!127}
!152 = !{!129, !125}
!153 = !{!131, !129, !125}
!154 = !{!132}
!155 = !{!129, !132}
!156 = !{!131, !129, !132}
!157 = !{!134}
!158 = !{!136}
!159 = !{!137}
!160 = !{!138}
!161 = !{!139}
!162 = !{!141, !136}
!163 = !{!136, !137, !138, !139}
!164 = !{!143}
!165 = !{!144}
!166 = !{!145}
!167 = !{!146}
!168 = !{!143, !144, !145, !146}
!169 = !{!148, !143}
end_hunk_0
