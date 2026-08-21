inline.NumInlined: 223
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii:bb.a
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @42, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !range !48, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %.sroa.0.0, %i.o
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14add_to_byteset(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, i32 noundef range(i32 1, 131073) %1, ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.a, label %default.unreachable32 [
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %.preheader.preheader
    i32 7, label %.preheader.preheader
    i32 8, label %.preheader.preheader
    i32 9, label %.preheader.preheader
    i32 10, label %.preheader.preheader
    i32 11, label %.preheader.preheader
    i32 12, label %.preheader.preheader
    i32 13, label %.preheader.preheader
    i32 14, label %.preheader.preheader
    i32 15, label %.preheader.preheader
    i32 16, label %.preheader.preheader
    i32 17, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.preheader

default.unreachable32:                            ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22, %bb.d, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit, %bb.a, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = load i8, ptr %0, align 1, !noundef !3    ; 4 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i8 %i.b, -1                          ; 2 uses
  %.lobit.i = lshr i8 %i.c, 7
  %i.d = zext nneg i8 %.lobit.i to i64
  %i.e = and i8 %i.c, 127
  %i.f = zext nneg i8 %i.e to i128
  %i.g = shl nuw i128 1, %i.f
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.i = load i128, ptr %i.h, align 16, !alias.scope !289, !noundef !3
  %i.j = or i128 %i.i, %i.g
  store i128 %i.j, ptr %i.h, align 16, !alias.scope !289
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit: ; preds = %bb.b, %bb.c
  %.lobit1.i = lshr i8 %i.b, 7
  %i.k = zext nneg i8 %.lobit1.i to i64
  %i.l = and i8 %i.b, 127
  %i.m = zext nneg i8 %i.l to i128
  %i.n = shl nuw i128 1, %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.p = load i128, ptr %i.o, align 16, !alias.scope !289, !noundef !3
  %i.q = or i128 %i.p, %i.n
  store i128 %i.q, ptr %i.o, align 16, !alias.scope !289
  br label %.loopexit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.r = load i128, ptr %2, align 16, !alias.scope !292, !noundef !3
  %i.s = or i128 %i.r, 13824
  store i128 %i.s, ptr %2, align 16, !alias.scope !295
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22
  %.sroa.0.027 = phi i16 [ %.sroa.05.029, %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22 ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.t = zext nneg i16 %.sroa.0.027 to i64
  %i.u = getelementptr inbounds nuw i8, ptr @42, i64 %i.t
  %umax = tail call i16 @llvm.umax.i16(i16 %.sroa.0.027, i16 255) ; 2 uses
  %i.v = add i16 %umax, 1
  %exitcond.not36 = icmp ugt i16 %.sroa.0.027, 254
  br i1 %exitcond.not36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = load i8, ptr %i.u, align 1, !range !48, !noundef !3
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i16 %.sroa.05.0, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.x = icmp ult i16 %.sroa.0.027, 256
  br i1 %i.x, label %.thread, label %bb.f, !prof !298

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.05.0.in37 = phi i16 [ %.sroa.05.0, %bb.e ], [ %.sroa.0.027, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.0 = add i16 %.sroa.05.0.in37, 1       ; 4 uses
  %i.y = and i16 %.sroa.05.0, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @42, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !range !48, !noundef !3
  %i.ac = icmp eq i8 %i.w, %i.ab
  br i1 %i.ac, label %bb.e, label %.thread

bb.f:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
  unreachable

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %.sroa.05.0.in31 = phi i16 [ 255, %._crit_edge ], [ %.sroa.05.0.in37, %.lr.ph ] ; 2 uses
  %.sroa.05.029 = phi i16 [ %i.v, %._crit_edge ], [ %.sroa.05.0, %.lr.ph ]
  %i.ad = trunc nuw i16 %.sroa.05.0.in31 to i8    ; 2 uses
  %.not.i19 = icmp eq i16 %.sroa.0.027, 0
  br i1 %.not.i19, label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ae = trunc nuw i16 %.sroa.0.027 to i8
  %i.af = add i8 %i.ae, -1                        ; 2 uses
  %.lobit.i20 = lshr i8 %i.af, 7
  %i.ag = zext nneg i8 %.lobit.i20 to i64
  %i.ah = and i8 %i.af, 127
  %i.ai = zext nneg i8 %i.ah to i128
  %i.aj = shl nuw i128 1, %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = load i128, ptr %i.ak, align 16, !alias.scope !299, !noundef !3
  %i.am = or i128 %i.al, %i.aj
  store i128 %i.am, ptr %i.ak, align 16, !alias.scope !299
  br label %_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22

_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet9set_range.exit22: ; preds = %.thread, %bb.g
  %.lobit1.i21 = lshr i8 %i.ad, 7
  %i.an = zext nneg i8 %.lobit1.i21 to i64
  %i.ao = and i8 %i.ad, 127
  %i.ap = zext nneg i8 %i.ao to i128
  %i.aq = shl nuw i128 1, %i.ap
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.as = load i128, ptr %i.ar, align 16, !alias.scope !299, !noundef !3
  %i.at = or i128 %i.as, %i.aq
  store i128 %i.at, ptr %i.ar, align 16, !alias.scope !299
  %i.au = icmp ult i16 %.sroa.05.0.in31, 255
  br i1 %i.au, label %.preheader, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher15is_word_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %.not.i7 = icmp ugt i64 %2, %1
  br i1 %.not.i7, label %bb.p, label %bb.b, !prof !214

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 3 uses
  %i.f = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %.sroa.09.0.i.i80 = add nsw i64 %2, -1          ; 2 uses
  %i.g = icmp ugt i64 %.sroa.09.0.i.i80, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i81, -1 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i.i, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i.i81 = phi i64 [ %.sroa.09.0.i.i, %bb.d ], [ %.sroa.09.0.i.i80, %bb.c ] ; 5 uses
  %i.i = icmp ult i64 %.sroa.09.0.i.i81, %2
  br i1 %i.i, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i.i81, %bb.e ] ; 5 uses
  %i.j = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.j, label %bb.o, label %bb.g, !prof !112

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i81
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !308, !noundef !3
  %i.m = icmp slt i8 %i.l, -64
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i81, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26, !noalias !308
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %3 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %3, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %4

4:                                                ; preds = %bb.g
  %5 = load i8, ptr %i.o, align 1, !alias.scope !312, !noundef !3 ; 6 uses
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60, label %bb.h

bb.h:                                             ; preds = %4
  %i.p = icmp samesign ult i8 %5, -64
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i8 %5, -32
  br i1 %i.q, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i8 %5, -16
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9: ; preds = %bb.j
  %i.s = icmp samesign ugt i8 %5, -9
  %i.t = icmp ult i64 %i.n, 4
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread: ; preds = %bb.i, %bb.j
  %.sroa.7.0.i.i.i10.ph = phi i64 [ 2, %bb.i ], [ 3, %bb.j ] ; 2 uses
  %i.u = icmp ugt i64 %.sroa.7.0.i.i.i10.ph, %i.n
  br i1 %i.u, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60: ; preds = %4
  %.sroa.419.4.insert.ext.i.i28 = zext nneg i8 %5 to i32
  br label %bb.q

.thread11:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9
  %.sroa.7.0.i.i.i1051013 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9 ], [ %.sroa.7.0.i.i.i10.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %.sroa.7.0.i.i.i1051013)
  %i.v = load i64, ptr %i.b, align 8, !range !313, !noalias !312, !noundef !3
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, label %bb.k

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64: ; preds = %.thread11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit

bb.k:                                             ; preds = %.thread11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !312, !nonnull !3, !noundef !3 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !312, !noundef !3 ; 4 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i8, ptr %i.y, align 1, !noalias !314, !noundef !3 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = and i8 %i.ac, 31
  %i.ag = zext nneg i8 %i.af to i32               ; 3 uses
  %i.ah = icmp samesign ne i64 %i.aa, 1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !314, !noundef !3
  %i.aj = shl nuw nsw i32 %i.ag, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i8 %i.ac to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aq = icmp samesign ne i64 %i.aa, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ap, align 1, !noalias !314, !noundef !3
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ag, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ba = icmp samesign ne i64 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.az, align 1, !noalias !314, !noundef !3
  %i.bc = shl nuw nsw i32 %i.ag, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #26, !noalias !308
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i, %bb.m
  %.sroa.4.0.i.ph = phi i32 [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i ], [ %i.bi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #26, !noalias !302
  unreachable

bb.q:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60
  %.sroa.7.sroa.0.0.i9.i.ph63 = phi i32 [ %.sroa.419.4.insert.ext.i.i28, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60 ], [ %.sroa.4.0.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i ]
  %i.bk = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i.ph63) ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !112

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9, %bb.h, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, %bb.g, %bb.b, %bb.q
  %.sroa.0.0.i21 = phi i8 [ %i.bk, %bb.q ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64 ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.bm = sub nuw nsw i64 %1, %2                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.bo = icmp eq i64 %1, %2
  br i1 %i.bo, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.s

bb.s:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !323, !noundef !3 ; 6 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = icmp samesign ult i8 %i.bp, -64
  br i1 %i.br, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp samesign ult i8 %i.bp, -32
  br i1 %i.bs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp samesign ult i8 %i.bp, -16
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i: ; preds = %bb.v
  %i.bu = icmp samesign ugt i8 %i.bp, -9
  %i.bv = icmp samesign ult i64 %i.bm, 4
  %or.cond77 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond77, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %bb.u, %bb.v
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %bb.u ], [ 3, %bb.v ] ; 2 uses
  %i.bw = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bm
  br i1 %i.bw, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

.thread69:                                        ; preds = %bb.s
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bp to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

.thread26:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i
  %.sroa.7.0.i.i.i192528 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !323
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %.sroa.7.0.i.i.i192528)
  %i.bx = load i64, ptr %i.c, align 8, !range !313, !noalias !323, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.by, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.thread26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !323, !nonnull !3, !noundef !3 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !323, !noundef !3 ; 4 uses
  %i.cd = icmp samesign eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.ca, align 1, !noalias !324, !noundef !3 ; 5 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32: ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ch = and i8 %i.ce, 31
  %i.ci = zext nneg i8 %i.ch to i32               ; 3 uses
  %i.cj = icmp samesign ne i64 %i.cc, 1
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = load i8, ptr %i.cg, align 1, !noalias !324, !noundef !3
  %i.cl = shl nuw nsw i32 %i.ci, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = icmp samesign ugt i8 %i.ce, -33
  br i1 %i.cp, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = zext nneg i8 %i.ce to i32
  br label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cs = icmp samesign ne i64 %i.cc, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load i8, ptr %i.cr, align 1, !noalias !324, !noundef !3
  %i.cu = shl nuw nsw i32 %i.cn, 6
  %i.cv = and i8 %i.ct, 63
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ci, 12
  %i.cz = or disjoint i32 %i.cx, %i.cy
  %i.da = icmp samesign ugt i8 %i.ce, -17
  br i1 %i.da, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36, label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dc = icmp samesign ne i64 %i.cc, 3
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = load i8, ptr %i.db, align 1, !noalias !324, !noundef !3
  %i.de = shl nuw nsw i32 %i.ci, 18
  %i.df = and i32 %i.de, 1835008
  %i.dg = shl nuw nsw i32 %i.cx, 6
  %i.dh = and i8 %i.dd, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = or disjoint i32 %i.dj, %i.df
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35
  %.sroa.4.0.i33.ph = phi i32 [ %i.cz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35 ], [ %i.dk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36 ], [ %i.co, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32 ], [ %i.cq, %bb.y ] ; 2 uses
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i33.ph, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

bb.ab:                                            ; preds = %.thread26, %bb.z
  %.sroa.7.sroa.0.1.i.i = phi i32 [ %.sroa.4.0.i33.ph, %bb.z ], [ 0, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !323
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ab, %.thread69
  %.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.419.4.insert.ext.i.i, %.thread69 ], [ %.sroa.7.sroa.0.1.i.i, %bb.ab ]
  %.sroa.0.0.i.i = phi i1 [ false, %.thread69 ], [ %i.by, %bb.ab ]
  br i1 %.sroa.0.0.i.i, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %i.dm = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i) ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 2
  br i1 %i.dn, label %bb.ad, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, !prof !112

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
  unreachable

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %bb.t, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %bb.ac, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %.sroa.0.0.i = phi i8 [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ], [ %i.dm, %bb.ac ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ 0, %bb.t ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %i.do = icmp ne i8 %.sroa.0.0.i21, %.sroa.0.0.i
  %i.dp = zext i1 %i.do to i8
  ret i8 %i.dp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not20 = icmp ugt i64 %2, %1
  br i1 %.not20, label %bb.n, label %bb.c, !prof !112

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, %bb.s, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54, %bb.r, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57, %bb.a
  %.sroa.06.0 = phi i1 [ false, %bb.a ], [ %i.bo, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57 ], [ false, %bb.r ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54 ], [ false, %bb.s ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread ] ; 5 uses
  %i.j = icmp ult i64 %2, %1
  br i1 %i.j, label %bb.ab, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 5 uses
  %i.l = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 4 uses
  %.sroa.09.0.i104 = add nsw i64 %2, -1           ; 2 uses
  %i.m = icmp ugt i64 %.sroa.09.0.i104, %i.k
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i = add nsw i64 %.sroa.09.0.i105, -1 ; 2 uses
  %i.n = icmp ugt i64 %.sroa.09.0.i, %i.k
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i105 = phi i64 [ %.sroa.09.0.i, %bb.d ], [ %.sroa.09.0.i104, %bb.c ] ; 5 uses
  %i.o = icmp ult i64 %.sroa.09.0.i105, %2
  br i1 %i.o, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i105, %bb.e ] ; 5 uses
  %i.p = icmp ugt i64 %.sroa.09.0.i.lcssa, %2
  br i1 %i.p, label %bb.m, label %bb.g, !prof !112

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i105
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !327, !noundef !3
  %i.s = icmp slt i8 %i.r, -64
  br i1 %i.s, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i105, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26, !noalias !327
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.t = sub nuw nsw i64 %2, %.sroa.09.0.i.lcssa  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %3 = icmp eq i64 %2, %.sroa.09.0.i.lcssa
  br i1 %3, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = load i8, ptr %i.u, align 1, !alias.scope !330, !noundef !3 ; 5 uses
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i8 %4, -64
  br i1 %i.v, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp samesign ult i8 %4, -32
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp samesign ult i8 %4, -16
  br i1 %i.x, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i: ; preds = %bb.k
  %i.y = icmp samesign ugt i8 %4, -9
  %i.z = icmp ult i64 %i.t, 4
  %or.cond49 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond49, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.j, %bb.k
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.j ], [ 3, %bb.k ] ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.7.0.i.i.ph, %i.t
  br i1 %i.aa, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread9

.thread9:                                         ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !330
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %.sroa.7.0.i.i3811)
  %i.ab = load i64, ptr %i.i, align 8, !range !313, !noalias !330, !noundef !3
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread.critedge, label %bb.l

bb.l:                                             ; preds = %.thread9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !330, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !330, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !330
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store ptr %i.ae, ptr %i.h, align 8, !noalias !330
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !330
  %i.aj = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.h)
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, label %6, !prof !107

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !330
  br label %.critedge

6:                                                ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

bb.m:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #26, !noalias !327
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #26
  unreachable

.critedge:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %.sroa.09.0.i.i108 = add nsw i64 %2, -1         ; 2 uses
  %i.am = icmp ugt i64 %.sroa.09.0.i.i108, %i.k
  br i1 %i.am, label %.lr.ph111, label %._crit_edge112

bb.o:                                             ; preds = %bb.p
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i109, -1 ; 2 uses
  %i.an = icmp ugt i64 %.sroa.09.0.i.i, %i.k
  br i1 %i.an, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.critedge, %bb.o
  %.sroa.09.0.i.i109 = phi i64 [ %.sroa.09.0.i.i, %bb.o ], [ %.sroa.09.0.i.i108, %.critedge ] ; 5 uses
  %i.ao = icmp ult i64 %.sroa.09.0.i.i109, %2
  br i1 %i.ao, label %bb.p, label %bb.q

._crit_edge112:                                   ; preds = %bb.o, %bb.p, %.critedge
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %.critedge ], [ %umin, %bb.o ], [ %.sroa.09.0.i.i109, %bb.p ] ; 5 uses
  %i.ap = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.ap, label %bb.y, label %bb.r, !prof !112

bb.p:                                             ; preds = %.lr.ph111
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i109
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !339, !noundef !3
  %i.as = icmp slt i8 %i.ar, -64
  br i1 %i.as, label %bb.o, label %._crit_edge112

bb.q:                                             ; preds = %.lr.ph111
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i109, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26, !noalias !339
  unreachable

bb.r:                                             ; preds = %._crit_edge112
  %i.at = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %7 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %7, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %8

8:                                                ; preds = %bb.r
  %9 = load i8, ptr %i.au, align 1, !alias.scope !343, !noundef !3 ; 6 uses
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %.thread, label %bb.s

bb.s:                                             ; preds = %8
  %i.av = icmp samesign ult i8 %9, -64
  br i1 %i.av, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = icmp samesign ult i8 %9, -32
  br i1 %i.aw, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = icmp samesign ult i8 %9, -16
  br i1 %i.ax, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54: ; preds = %bb.u
  %i.ay = icmp samesign ugt i8 %9, -9
  %i.az = icmp ult i64 %i.at, 4
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread: ; preds = %bb.t, %bb.u
  %.sroa.7.0.i.i.i55.ph = phi i64 [ 2, %bb.t ], [ 3, %bb.u ] ; 2 uses
  %i.ba = icmp ugt i64 %.sroa.7.0.i.i.i55.ph, %i.at
  br i1 %i.ba, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

.thread:                                          ; preds = %8
  %.sroa.419.4.insert.ext.i.i73 = zext nneg i8 %9 to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57

.thread21:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54
  %.sroa.7.0.i.i.i55142023 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54 ], [ %.sroa.7.0.i.i.i55.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !343
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %.sroa.7.0.i.i.i55142023)
  %i.bb = load i64, ptr %i.c, align 8, !range !313, !noalias !343, !noundef !3
  %i.bc = trunc nuw i64 %i.bb to i1               ; 2 uses
  br i1 %i.bc, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !343, !nonnull !3, !noundef !3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !343, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !343
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  store ptr %i.be, ptr %i.b, align 8, !noalias !343
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !343
  %i.bj = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.bk = extractvalue { i32, i32 } %i.bj, 0
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %11, label %bb.w, !prof !107

11:                                               ; preds = %bb.v
  %12 = extractvalue { i32, i32 } %i.bj, 1        ; 2 uses
  %13 = icmp ult i32 %12, 1114112
  tail call void @llvm.assume(i1 %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !343
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

bb.x:                                             ; preds = %.thread21, %11
  %.sroa.7.sroa.0.1.i.i70 = phi i32 [ %12, %11 ], [ 0, %.thread21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !343
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57: ; preds = %bb.x, %.thread
  %.sroa.7.sroa.0.0.i9.i = phi i32 [ %.sroa.419.4.insert.ext.i.i73, %.thread ], [ %.sroa.7.sroa.0.1.i.i70, %bb.x ]
  %.sroa.0.0.i10.i = phi i1 [ false, %.thread ], [ %i.bc, %bb.x ]
  br i1 %.sroa.0.0.i10.i, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.z

bb.y:                                             ; preds = %._crit_edge112
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #26, !noalias !339
  unreachable

bb.z:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57
  %i.bm = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i) ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 2
  br i1 %i.bn, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !112

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.z
  %i.bo = trunc nuw i8 %i.bm to i1
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

bb.ab:                                            ; preds = %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit
  %i.bp = sub nuw nsw i64 %1, %2                  ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !344, !noundef !3 ; 8 uses
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread, label %bb.ac

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread: ; preds = %bb.ab
  %i.bt = icmp eq i64 %1, %2
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90

bb.ac:                                            ; preds = %bb.ab
  %i.bu = icmp samesign ult i8 %i.br, -64
  br i1 %i.bu, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = icmp samesign ult i8 %i.br, -32
  br i1 %i.bv, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = icmp samesign ult i8 %i.br, -16
  br i1 %i.bw, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31: ; preds = %bb.ae
  %i.bx = icmp samesign ugt i8 %i.br, -9
  %i.by = icmp samesign ult i64 %i.bp, 4
  %or.cond50 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond50, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread33

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i32.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
  %i.bz = icmp samesign ugt i64 %.sroa.7.0.i.i32.ph, %i.bp
  br i1 %i.bz, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread33

.thread33:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31
  %.sroa.7.0.i.i32263235 = phi i64 [ %.sroa.7.0.i.i32.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !344
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %.sroa.7.0.i.i32263235)
  %i.ca = load i64, ptr %i.g, align 8, !range !313, !noalias !344, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %.split.thread.a, label %bb.af

.split.thread.a:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !344
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

bb.af:                                            ; preds = %.thread33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !344, !nonnull !3, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !344, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !344
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  store ptr %i.cd, ptr %i.f, align 8, !noalias !344
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !noalias !344
  %i.ci = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.f)
  %i.cj = extractvalue { i32, i32 } %i.ci, 0
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.split, label %bb.ag, !prof !107

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

.split:                                           ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !344
  %i.cl = icmp samesign ult i8 %i.br, -32
  br i1 %i.cl, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76 ], [ %.sroa.06.0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %i.cm = xor i1 %.sroa.013.0, true
  %i.cn = zext i1 %i.cm to i8
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

bb.ah:                                            ; preds = %.split
  %i.co = icmp samesign ult i8 %i.br, -16
  br i1 %i.co, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split ], [ 3, %bb.ah ] ; 2 uses
  %i.cp = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bp
  br i1 %i.cp, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45

.thread42:                                        ; preds = %bb.ah
  %i.cq = icmp samesign ult i64 %i.bp, 4
  br i1 %i.cq, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.br to i32
  br label %bb.ak

.thread45:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !347
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %.sroa.7.0.i.i.i384447)
  %i.cr = load i64, ptr %i.e, align 8, !range !313, !noalias !347, !noundef !3
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94, label %bb.ai

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !347
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.ai:                                            ; preds = %.thread45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !347, !nonnull !3, !noundef !3 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !347, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !347
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  store ptr %i.cu, ptr %i.d, align 8, !noalias !347
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !347
  %i.cz = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.d) ; 2 uses
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !prof !107

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #26
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.dc = extractvalue { i32, i32 } %i.cz, 1      ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 1114112
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !347
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90
  %.sroa.7.sroa.0.0.i.i93 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90 ], [ %i.dc, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ]
  %i.de = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i93) ; 2 uses
  %i.df = icmp eq i8 %i.de, 2
  br i1 %i.df, label %bb.al, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76, !prof !112

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #26
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76: ; preds = %bb.ak
  %i.dg = trunc nuw i8 %i.de to i1
  %i.dh = xor i1 %.sroa.06.0, %i.dg
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread.critedge: ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !330
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread.critedge, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, %bb.ac, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31, %.split.thread.a, %bb.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i, %bb.g, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread ], [ %i.cn, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread.critedge ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread ], [ 0, %bb.i ], [ 0, %.split.thread.a ], [ 0, %bb.g ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31 ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_5Cache14explicit_slots(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !214

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(376) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !355, !noalias !352, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !noalias !357, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = invoke noundef i32 @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noalias !357, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = shl nuw nsw i64 %i.j, 1
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.l) ; 2 uses
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1m_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.m, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.m, ptr %i.o, align 8, !alias.scope !352, !noalias !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_5Cache5reset(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(376) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call noundef i32 @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = shl nuw nsw i64 %i.i, 1
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.k) ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef 0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB4_7Builder14build_from_nfa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 6 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [128 x i8], align 8               ; 6 uses
  %i.n = alloca [128 x i8], align 8               ; 6 uses
  %i.o = alloca [128 x i8], align 8               ; 6 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [56 x i8], align 8                ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [376 x i8], align 8               ; 36 uses
  %i.w = alloca [800 x i8], align 8               ; 61 uses
  %i.x = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %2, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !184, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ab = load i8, ptr %i.aa, align 1, !range !184, !noundef !3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ad = load i8, ptr %i.ac, align 2, !range !184, !noundef !3 ; 3 uses
  %i.ae = load i64, ptr %1, align 8, !range !128, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %i.bg, %bb.p ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.ae, %bb.a ], [ 1, %bb.p ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %or.cond.not.i = icmp eq i8 %i.ad, 0
  br i1 %or.cond.not.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.ag, align 16, !noalias !363
  %.sroa.7.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load <16 x i8>, ptr %.sroa.7.0..sroa_idx299, align 16, !noalias !363
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.8.0.copyload = load <16 x i8>, ptr %.sroa.8.0..sroa_idx, align 16, !noalias !363
  %.sroa.9.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.9.0.copyload = load <16 x i8>, ptr %.sroa.9.0..sroa_idx306, align 16, !noalias !363
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.10.0.copyload = load <16 x i8>, ptr %.sroa.10.0..sroa_idx, align 16, !noalias !363
  %.sroa.11.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.11.0.copyload = load <16 x i8>, ptr %.sroa.11.0..sroa_idx313, align 16, !noalias !363
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.12.0.copyload = load <16 x i8>, ptr %.sroa.12.0..sroa_idx, align 16, !noalias !363
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.13.0.copyload = load <16 x i8>, ptr %.sroa.13.0..sroa_idx, align 16, !noalias !363
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.14.0.copyload = load <16 x i8>, ptr %.sroa.14.0..sroa_idx, align 16, !noalias !363
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.15.0.copyload = load <16 x i8>, ptr %.sroa.15.0..sroa_idx, align 16, !noalias !363
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.16.0.copyload = load <16 x i8>, ptr %.sroa.16.0..sroa_idx, align 16, !noalias !363
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.17.0.copyload = load <16 x i8>, ptr %.sroa.17.0..sroa_idx, align 16, !noalias !363
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %.sroa.18.0.copyload = load <16 x i8>, ptr %.sroa.18.0..sroa_idx, align 16, !noalias !363
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 224
  %.sroa.19.0.copyload = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 16, !noalias !363
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 240
  %.sroa.20.0.copyload = load <16 x i8>, ptr %.sroa.20.0..sroa_idx, align 16, !noalias !363
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 256
  %.sroa.21.0.copyload = load <16 x i8>, ptr %.sroa.21.0..sroa_idx, align 16, !noalias !363
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.b, %bb.c
  %.sroa.21.0 = phi <16 x i8> [ %.sroa.21.0.copyload, %bb.c ], [ <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, %bb.b ] ; 3 uses
  %.sroa.20.0 = phi <16 x i8> [ %.sroa.20.0.copyload, %bb.c ], [ <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, %bb.b ] ; 2 uses
  %.sroa.19.0 = phi <16 x i8> [ %.sroa.19.0.copyload, %bb.c ], [ <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, %bb.b ] ; 2 uses
  %.sroa.18.0 = phi <16 x i8> [ %.sroa.18.0.copyload, %bb.c ], [ <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, %bb.b ] ; 2 uses
  %.sroa.17.0 = phi <16 x i8> [ %.sroa.17.0.copyload, %bb.c ], [ <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, %bb.b ] ; 2 uses
  %.sroa.16.0 = phi <16 x i8> [ %.sroa.16.0.copyload, %bb.c ], [ <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, %bb.b ] ; 2 uses
  %.sroa.15.0 = phi <16 x i8> [ %.sroa.15.0.copyload, %bb.c ], [ <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, %bb.b ] ; 2 uses
  %.sroa.14.0 = phi <16 x i8> [ %.sroa.14.0.copyload, %bb.c ], [ <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, %bb.b ] ; 2 uses
  %.sroa.13.0 = phi <16 x i8> [ %.sroa.13.0.copyload, %bb.c ], [ <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, %bb.b ] ; 2 uses
  %.sroa.12.0 = phi <16 x i8> [ %.sroa.12.0.copyload, %bb.c ], [ <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, %bb.b ] ; 2 uses
  %.sroa.11.0 = phi <16 x i8> [ %.sroa.11.0.copyload, %bb.c ], [ <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, %bb.b ] ; 2 uses
  %.sroa.10.0 = phi <16 x i8> [ %.sroa.10.0.copyload, %bb.c ], [ <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, %bb.b ] ; 2 uses
  %.sroa.9.0 = phi <16 x i8> [ %.sroa.9.0.copyload, %bb.c ], [ <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, %bb.b ] ; 2 uses
  %.sroa.8.0 = phi <16 x i8> [ %.sroa.8.0.copyload, %bb.c ], [ <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, %bb.b ] ; 2 uses
  %.sroa.7.0 = phi <16 x i8> [ %.sroa.7.0.copyload, %bb.c ], [ <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, %bb.b ] ; 2 uses
  %.sroa.0.0347 = phi <16 x i8> [ %.sroa.0.0.copyload, %bb.c ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %bb.b ] ; 2 uses
end_hunk_0
