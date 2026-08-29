Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast?download=true
inline.NumInlined: 4960
inline.NumDeleted: 1839
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE:bb.a
bb.q:                                             ; preds = %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit16
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.166) #41
  unreachable

bb.r:                                             ; preds = %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit16
  %i.aq = call noundef ptr @_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE(ptr noundef nonnull %.0.i14, ptr noundef %i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 7 uses
  %.not.i17 = icmp eq ptr %i.aq, %.0.i14
  br i1 %.not.i17, label %_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !53, !range !59, !noundef !60
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, i16 256, i16 128
  %i.au = load i16, ptr %3, align 4
  %i.av = and i16 %i.au, -385
  %i.aw = or disjoint i16 %i.av, %i.at
  store i16 %i.aw, ptr %3, align 4
  br label %_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit

_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.ax = icmp eq ptr %i.aq, %i.i
  br i1 %i.ax, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !72
  switch i8 %i.ay, label %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit [
    i8 125, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread
    i8 76, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.az = load i16, ptr %3, align 4
  %i.ba = or i16 %i.az, 32
  store i16 %i.ba, ptr %3, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  br label %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit

_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit: ; preds = %bb.t, %bb.u
  %.0.i20 = phi ptr [ %i.bb, %bb.u ], [ %i.aq, %bb.t ] ; 8 uses
  %i.bc = icmp eq ptr %.0.i20, %i.i
  br i1 %i.bc, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit
  %i.bd = load i8, ptr %.0.i20, align 1, !tbaa !72
  switch i8 %i.bd, label %bb.ag [
    i8 125, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread
    i8 98, label %bb.w
    i8 66, label %bb.x
    i8 99, label %bb.y
    i8 100, label %bb.aa
    i8 111, label %bb.ab
    i8 120, label %bb.ac
    i8 88, label %bb.ad
    i8 115, label %bb.ae
  ]

bb.w:                                             ; preds = %bb.v
  %i.be = load i16, ptr %3, align 4
  %i.bf = and i16 %i.be, -30721
  %i.bg = or disjoint i16 %i.bf, 4096
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.bh = load i16, ptr %3, align 4
  %i.bi = and i16 %i.bh, -30721
  %i.bj = or disjoint i16 %i.bi, 6144
  br label %.sink.split

bb.y:                                             ; preds = %bb.v
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = load i16, ptr %3, align 4
  %i.bl = and i16 %i.bk, -30721
  %i.bm = or disjoint i16 %i.bl, 14336
  br label %.sink.split

bb.aa:                                            ; preds = %bb.v
  %i.bn = load i16, ptr %3, align 4
  %i.bo = and i16 %i.bn, -30721
  %i.bp = or disjoint i16 %i.bo, 2048
  br label %.sink.split

bb.ab:                                            ; preds = %bb.v
  %i.bq = load i16, ptr %3, align 4
  %i.br = and i16 %i.bq, -30721
  %i.bs = or disjoint i16 %i.br, 8192
  br label %.sink.split

bb.ac:                                            ; preds = %bb.v
  %i.bt = load i16, ptr %3, align 4
  %i.bu = and i16 %i.bt, -30721
  %i.bv = or disjoint i16 %i.bu, 10240
  br label %.sink.split

bb.ad:                                            ; preds = %bb.v
  %i.bw = load i16, ptr %3, align 4
  %i.bx = and i16 %i.bw, -30721
  %i.by = or disjoint i16 %i.bx, 12288
  br label %.sink.split

bb.ae:                                            ; preds = %bb.v
  %i.bz = icmp eq i32 %2, 0
  br i1 %i.bz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i16, ptr %3, align 4
  %i.cb = and i16 %i.ca, -30721
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.z, %bb.af
  %.sink = phi i16 [ %i.cb, %bb.af ], [ %i.bm, %bb.z ], [ %i.by, %bb.ad ], [ %i.bv, %bb.ac ], [ %i.bs, %bb.ab ], [ %i.bp, %bb.aa ], [ %i.bj, %bb.x ], [ %i.bg, %bb.w ]
  store i16 %.sink, ptr %3, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i20, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.v, %bb.ae, %bb.y
  %.0 = phi ptr [ %.0.i20, %bb.v ], [ %.0.i20, %bb.y ], [ %.0.i20, %bb.ae ], [ %i.cc, %.sink.split ] ; 4 uses
  %i.cd = icmp eq ptr %.0, %i.i
  br i1 %i.cd, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = load i8, ptr %.0, align 1, !tbaa !72
  %i.cf = icmp eq i8 %i.ce, 125
  br i1 %i.cf, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread, label %_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit24

_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit24: ; preds = %bb.ah
  call void @_ZNSt8__format29__failed_to_parse_format_specEv() #41
  unreachable

_ZZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeEENKUlvE0_clEv.exit.thread: ; preds = %bb.ah, %bb.ag, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit, %bb.v, %_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit, %bb.t, %bb.p, %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit, %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit, %bb.n, %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit, %bb.l, %_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_.exit, %bb.i, %bb.a, %bb.b
  %.1 = phi ptr [ %.0.i20, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit ], [ %i.j, %bb.a ], [ %.3.i, %_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_.exit ], [ %i.ab, %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit ], [ %.0.i11, %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit ], [ %.0.i14, %bb.p ], [ %i.aq, %_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.exit ], [ %i.j, %bb.b ], [ %.3.i, %bb.i ], [ %i.ab, %bb.l ], [ %.0.i11, %bb.n ], [ %.0.i14, %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit ], [ %i.aq, %bb.t ], [ %.0.i20, %bb.v ], [ %.0, %bb.ag ], [ %.0, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %0, ptr noundef nonnull align 4 dereferenceable(7) %3, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE(ptr noundef nonnull align 4 dereferenceable(7) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i8 0, ptr %i.a, align 1, !tbaa !53
  %i.b = load i8, ptr %1, align 1, !tbaa !72
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.166) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = call noundef ptr @_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 2 uses
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.a, align 1, !tbaa !53, !range !59, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, i16 256, i16 128
  %i.i = load i16, ptr %0, align 4
  %i.j = and i16 %i.i, -385
  %i.k = or disjoint i16 %i.j, %i.h
  store i16 %i.k, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNSt8__format29__failed_to_parse_format_specEv() local_unnamed_addr #30 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.170) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !72      ; 2 uses
  %i.b = add i8 %i.a, -48
  %i.c = icmp ult i8 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = icmp ne ptr %0, %1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i64 %i.e, %i.d
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %bb.b
  %.09.i = phi ptr [ %0, %bb.b ], [ %i.r, %.critedge.i.i ] ; 3 uses
  %.08.i = phi i16 [ 0, %bb.b ], [ %.1.i, %.critedge.i.i ] ; 4 uses
  %.02238.i.i = phi i32 [ 16, %bb.b ], [ %i.k, %.critedge.i.i ]
  %i.h = load i8, ptr %.09.i, align 1, !tbaa !72
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = zext i8 %i.i to i16                      ; 2 uses
  %.not31.i.i = icmp ult i8 %i.i, 10
  br i1 %.not31.i.i, label %bb.c, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add i32 %.02238.i.i, -4                  ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !845

bb.d:                                             ; preds = %bb.c
  %i.m = mul i16 %.08.i, 10
  br label %.critedge.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp ugt i16 %.08.i, 6553
  br i1 %i.n, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.split.i.i, !prof !846

.split.i.i:                                       ; preds = %bb.e
  %i.o = mul nuw i16 %.08.i, 10                   ; 2 uses
  %i.p = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %i.o, i16 %i.j)
  %i.q = extractvalue { i16, i1 } %i.p, 1
  br i1 %i.q, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.critedge.i.i, !prof !341

.critedge.i.i:                                    ; preds = %.split.i.i, %bb.d
  %.1.i.a = phi i16 [ %i.m, %bb.d ], [ %i.o, %.split.i.i ]
  %.1.i = add i16 %.1.i.a, %i.j                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i.i, !llvm.loop !847

_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i.i, %.lr.ph.i.i
  %.110.i = phi ptr [ %.09.i, %.lr.ph.i.i ], [ %scevgep.i, %.critedge.i.i ] ; 3 uses
  %.3.i = phi i16 [ %.08.i, %.lr.ph.i.i ], [ %.1.i, %.critedge.i.i ]
  %.not.i = icmp eq ptr %.110.i, %0
  %.not32 = icmp eq ptr %.110.i, null
  %or.cond51 = or i1 %.not.i, %.not32
  br i1 %or.cond51, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %bb.f, !prof !848

_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread: ; preds = %.split.i.i, %bb.e, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.167) #41
  unreachable

bb.f:                                             ; preds = %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i
  store i16 %.3.i, ptr %2, align 2, !tbaa !849
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.a, 123
  br i1 %i.s, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %3, align 1, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt8__format39__unmatched_left_brace_in_format_stringEv() #41
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.t, align 1, !tbaa !72    ; 3 uses
  switch i8 %i.v, label %bb.n [
    i8 125, label %bb.k
    i8 48, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !797
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #41
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.k
  store i32 2, ptr %i.w, align 8, !tbaa !797
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !798 ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !798
  %i.ac = trunc i64 %i.aa to i16
  br label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit

bb.n:                                             ; preds = %bb.j
  %i.ae = add i8 %i.v, -49
  %or.cond.i = icmp ult i8 %i.ae, 9
  br i1 %or.cond.i, label %bb.o, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.af = zext nneg i8 %i.v to i16
  %i.ag = add nsw i16 %i.af, -48                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !72
  %i.ak = add i8 %i.aj, -48
  %or.cond14.i = icmp ult i8 %i.ak, 10
  br i1 %or.cond14.i, label %bb.q, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.al = ptrtoaddr ptr %i.t to i64
  %i.am = ptrtoaddr ptr %1 to i64
  %i.an = sub i64 %i.am, %i.al
  %scevgep.i.i = getelementptr i8, ptr %i.t, i64 %i.an
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %bb.q
  %.09.i.i = phi ptr [ %i.t, %bb.q ], [ %i.ay, %.critedge.i.i.i ] ; 3 uses
  %.08.i.i = phi i16 [ 0, %bb.q ], [ %.1.i.i, %.critedge.i.i.i ] ; 4 uses
  %.02238.i.i.i = phi i32 [ 16, %bb.q ], [ %i.ar, %.critedge.i.i.i ]
  %i.ao = load i8, ptr %.09.i.i, align 1, !tbaa !72
  %i.ap = add i8 %i.ao, -48                       ; 2 uses
  %i.aq = zext i8 %i.ap to i16                    ; 2 uses
  %.not31.i.i.i = icmp ult i8 %i.ap, 10
  br i1 %.not31.i.i.i, label %bb.r, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = add i32 %.02238.i.i.i, -4               ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.s, label %bb.t, !prof !845

bb.s:                                             ; preds = %bb.r
  %i.at = mul i16 %.08.i.i, 10
  br label %.critedge.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.au = icmp ugt i16 %.08.i.i, 6553
  br i1 %i.au, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.split.i.i.i, !prof !846

.split.i.i.i:                                     ; preds = %bb.t
  %i.av = mul nuw i16 %.08.i.i, 10                ; 2 uses
  %i.aw = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %i.av, i16 %i.aq)
  %i.ax = extractvalue { i16, i1 } %i.aw, 1
  br i1 %i.ax, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.critedge.i.i.i, !prof !341

.critedge.i.i.i:                                  ; preds = %.split.i.i.i, %bb.s
  %.1.i.i.a = phi i16 [ %i.at, %bb.s ], [ %i.av, %.split.i.i.i ]
  %.1.i.i = add i16 %.1.i.i.a, %i.aq              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i.i, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !847

_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %.110.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i.i ], [ %scevgep.i.i, %.critedge.i.i.i ] ; 2 uses
  %.3.i.i = phi i16 [ %.08.i.i, %.lr.ph.i.i.i ], [ %.1.i.i, %.critedge.i.i.i ]
  %.not.i.i36 = icmp eq ptr %.110.i.i, %i.t
  br i1 %.not.i.i36, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit, !prof !850

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit: ; preds = %bb.m, %bb.o, %bb.p, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i
  %.sroa.0.1.i33 = phi i16 [ 0, %bb.m ], [ %i.ag, %bb.o ], [ %.3.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ], [ %i.ag, %bb.p ]
  %.sroa.5.1.i = phi ptr [ %i.ad, %bb.m ], [ %i.ah, %bb.o ], [ %.110.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ], [ %i.ah, %bb.p ] ; 4 uses
  %i.az = icmp eq ptr %.sroa.5.1.i, null
  %i.ba = icmp eq ptr %.sroa.5.1.i, %1
  %or.cond = or i1 %i.az, %i.ba
  br i1 %or.cond, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit
  %i.bb = load i8, ptr %.sroa.5.1.i, align 1, !tbaa !72
  %.not = icmp eq i8 %i.bb, 125
  br i1 %.not, label %bb.v, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread: ; preds = %bb.t, %.split.i.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, %bb.n, %bb.u, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit
  tail call void @_ZNSt8__format33__invalid_arg_id_in_format_stringEv() #41
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !797
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.w, label %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #41
  unreachable

_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit: ; preds = %bb.v
  store i32 1, ptr %i.bc, align 8, !tbaa !797
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit
  %storemerge = phi i16 [ %.sroa.0.1.i33, %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit ], [ %i.ac, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit ]
  %.0 = phi ptr [ %.sroa.5.1.i, %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit ], [ %i.t, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit ]
  store i16 %storemerge, ptr %2, align 2, !tbaa !849
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.g, %bb.x, %bb.f
  %.1 = phi ptr [ %.110.i, %bb.f ], [ %i.bf, %bb.x ], [ %0, %bb.g ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNSt8__format39__unmatched_left_brace_in_format_stringEv() local_unnamed_addr #30 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.168) #41
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.uadd.with.overflow.i16(i16, i16) #32

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() local_unnamed_addr #30 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.169) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNKSt8__format15__formatter_intIcE6formatINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorEbRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = zext i1 %1 to i8                         ; 2 uses
  %i.c = load i16, ptr %0, align 4                ; 2 uses
  %i.d = lshr i16 %i.c, 11
  %i.e = and i16 %i.d, 15
  switch i16 %i.e, label %bb.c [
    i16 7, label %bb.b
    i16 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %i.a, align 1, !tbaa !72
  %i.f = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i8 noundef zeroext %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !323
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !71
  store i8 0, ptr %i.h, align 8, !tbaa !72
  %i.j = and i16 %i.c, 32
  %.not18 = icmp eq i16 %i.j, 0
  br i1 %.not18, label %bb.h, label %bb.e, !prof !845

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.invoke unwind label %bb.f    ; 2 uses

.invoke:                                          ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48, !noalias !60
  %. = select i1 %1, i64 40, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  %i.n = load ptr, ptr %i.m, align 8, !noalias !60
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit unwind label %bb.g, !inline_history !851

_ZNKSt7__cxx118numpunctIcE8truenameEv.exit:       ; preds = %.invoke
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #39 ; 0 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !72
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.k

bb.g:                                             ; preds = %.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.w = select i1 %1, ptr @.str.68, ptr @.str.69
  %i.x = select i1 %1, i64 4, i64 5
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.w, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !68
  %i.ac = invoke ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 %i.aa, ptr %i.ab, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(7) %0, i32 noundef 1)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.j
  %i.af = load i64, ptr %i.h, align 8, !tbaa !72
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.pn20 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.k
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !72
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn20

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %i.eh = add nsw i32 %.031.i.i, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !72
  %i.ek = add nsw i32 %.031.i.i, -2
  %i.el = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1030

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ec, %.lr.ph.i.i ] ; 3 uses
  %i.em = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.em, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.en = lshr i128 %.028.lcssa.i.i, 4
  %i.eo = and i64 %extract.t37.i.i, 15
  %i.ep = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eq, ptr %i.er, align 4, !tbaa !72
  %extract.t.i.i = trunc i128 %i.en to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !72
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i65 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i66 = phi i64 [ %i.dt, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i65, ptr %i.i, align 1, !tbaa !72
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i66 ; 3 uses
  %.not123 = icmp eq i16 %i.d, 12288
  br i1 %.not123, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, %.lr.ph
  %.0110 = phi ptr [ %i.ex, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ] ; 3 uses
  %i.et = load i8, ptr %.0110, align 1, !tbaa !72
  %i.eu = sext i8 %i.et to i32
  %i.ev = call i32 @toupper(i32 noundef %i.eu) #43
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %.0110, align 1, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %.0110, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.es
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1032

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i57.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i58.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.cl, %._crit_edge.thread.i34.i ], [ %i.w, %.lr.ph.i50.i ], [ %i.w, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.q ], [ %.str.171..str.172, %bb.e ], [ %.str.171..str.172, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ @.str.173, %._crit_edge.thread.i34.i ], [ %.str.171..str.172, %.lr.ph.i50.i ], [ %.str.171..str.172, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.077.1.ph = phi i64 [ 0, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ 1, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i57.sink, ptr %i.i, align 1, !tbaa !72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i58.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.174..str.175, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %.str.174..str.175, %.lr.ph ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ey, %.loopexit.sink.split ], [ %i.es, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %i.es, %.lr.ph ] ; 2 uses
  %i.ez = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.ez, 0
  %.not50 = icmp eq i64 %.sroa.077.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread98, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.fa = sub nsw i64 0, %.sroa.077.1
  %i.fb = getelementptr inbounds i8, ptr %i.i, i64 %i.fa ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %.sroa.9.1, i64 %.sroa.077.1, i1 false)
  br label %.thread98

.thread98:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.ab, %.loopexit
  %.sroa.033.097 = phi ptr [ %.sroa.033.0, %bb.ab ], [ %.sroa.033.0, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.cb, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.fb, %bb.ab ], [ %i.i, %.loopexit ], [ %i.i, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.fc = lshr i16 %i.c, 2
  %i.fd = and i16 %i.fc, 3
  %i.fe = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.fd, label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %.thread98
  br label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread98, %bb.ac
  %.sink = phi i8 [ 32, %bb.ac ], [ 43, %.thread98 ]
  store i8 %.sink, ptr %i.fe, align 1, !tbaa !72
  br label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split, %.thread98
  %.0.i = phi ptr [ %.046, %.thread98 ], [ %i.fe, %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.033.097 to i64
  %i.fg = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ptrtoint ptr %i.i to i64
  %i.fj = sub i64 %i.fi, %i.fg
  %i.fk = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.fh, ptr nonnull %.0.i, i64 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit ], [ %i.fk, %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__format8_ScannerIcE23_M_on_replacement_fieldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !793  ; 9 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72    ; 4 uses
  switch i8 %i.c, label %bb.f [
    i8 125, label %bb.b
    i8 58, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !797
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #41
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !797
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !798  ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !798
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !797
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #41
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15: ; preds = %bb.d
  store i32 2, ptr %i.j, align 8, !tbaa !797
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !798  ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !798
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.p, ptr %i.a, align 8, !tbaa !793
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !796  ; 4 uses
  %i.s = icmp ne ptr %i.b, %i.r
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i8 %i.c, 48
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.v = add i8 %i.c, -49
  %or.cond.i = icmp ult i8 %i.v, 9
  br i1 %or.cond.i, label %bb.i, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i8 %i.c to i16
  %i.x = add nsw i16 %i.w, -48                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !72   ; 2 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond14.i = icmp ult i8 %i.ab, 10
  br i1 %or.cond14.i, label %bb.k, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = ptrtoaddr ptr %i.b to i64
  %i.ad = ptrtoaddr ptr %i.r to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.ae
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %bb.k
  %.09.i.i = phi ptr [ %i.b, %bb.k ], [ %i.ap, %.critedge.i.i.i ] ; 3 uses
  %.08.i.i = phi i16 [ 0, %bb.k ], [ %.1.i.i, %.critedge.i.i.i ] ; 4 uses
  %.02238.i.i.i = phi i32 [ 16, %bb.k ], [ %i.ai, %.critedge.i.i.i ]
  %i.af = load i8, ptr %.09.i.i, align 1, !tbaa !72
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %i.ah = zext i8 %i.ag to i16                    ; 2 uses
  %.not31.i.i.i = icmp ult i8 %i.ag, 10
  br i1 %.not31.i.i.i, label %bb.l, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i32 %.02238.i.i.i, -4               ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !845

bb.m:                                             ; preds = %bb.l
  %i.ak = mul i16 %.08.i.i, 10
  br label %.critedge.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = icmp ugt i16 %.08.i.i, 6553
  br i1 %i.al, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26, label %.split.i.i.i, !prof !846

.split.i.i.i:                                     ; preds = %bb.n
  %i.am = mul nuw i16 %.08.i.i, 10                ; 2 uses
  %i.an = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %i.am, i16 %i.ah)
  %i.ao = extractvalue { i16, i1 } %i.an, 1
  br i1 %i.ao, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26, label %.critedge.i.i.i, !prof !341

.critedge.i.i.i:                                  ; preds = %.split.i.i.i, %bb.m
  %.1.i.i.a = phi i16 [ %i.ak, %bb.m ], [ %i.am, %.split.i.i.i ]
  %.1.i.i = add i16 %.1.i.i.a, %i.ah              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.r
  br i1 %.not.i.i.i, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !847

_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %.110.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i.i ], [ %scevgep.i.i, %.critedge.i.i.i ] ; 3 uses
  %.3.i.i = phi i16 [ %.08.i.i, %.lr.ph.i.i.i ], [ %.1.i.i, %.critedge.i.i.i ]
  %.not.i.i = icmp eq ptr %.110.i.i, %i.b
  %.not = icmp eq ptr %.110.i.i, null
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split, !prof !848

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split: ; preds = %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, %bb.g, %bb.i
  %.sroa.5.1.i24.ph = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.i ], [ %.110.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ] ; 2 uses
  %.sroa.0.1.i23.ph = phi i16 [ 0, %bb.g ], [ %i.x, %bb.i ], [ %.3.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ]
  %.pr = load i8, ptr %.sroa.5.1.i24.ph, align 1, !tbaa !72
  br label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread: ; preds = %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split, %bb.j
  %i.aq = phi i8 [ %.pr, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split ], [ %i.aa, %bb.j ]
  %.sroa.5.1.i24 = phi ptr [ %.sroa.5.1.i24.ph, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split ], [ %i.y, %bb.j ] ; 3 uses
  %.sroa.0.1.i23 = phi i16 [ %.sroa.0.1.i23.ph, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split ], [ %i.x, %bb.j ]
  switch i8 %i.aq, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26 [
    i8 125, label %bb.o
    i8 58, label %bb.o
  ]

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26: ; preds = %bb.n, %.split.i.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, %bb.h, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread
  tail call void @_ZNSt8__format33__invalid_arg_id_in_format_stringEv() #41
  unreachable

bb.o:                                             ; preds = %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread
  %i.ar = zext i16 %.sroa.0.1.i23 to i64          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !797
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.p, label %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #41
  unreachable

_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit: ; preds = %bb.o
  store i32 1, ptr %i.as, align 8, !tbaa !797
  %i.av = load i8, ptr %.sroa.5.1.i24, align 1, !tbaa !72
  %i.aw = icmp eq i8 %i.av, 58
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i24, i64 1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !793
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit
  store ptr %.sroa.5.1.i24, ptr %i.a, align 8, !tbaa !793
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit
  %.0 = phi i64 [ %i.h, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit ], [ %i.n, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15 ], [ %i.ar, %bb.r ], [ %i.ar, %bb.q ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.0)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !793 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !796
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !72
  %.not14 = icmp eq i8 %i.bf, 125
  br i1 %.not14, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_ZNSt8__format39__unmatched_left_brace_in_format_stringEv() #41
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !793
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNSt8__format40__unmatched_right_brace_in_format_stringEv() local_unnamed_addr #30 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.186) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13string_bufferILj64EE6appendEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i32 %.02329.i.i, 10000
  %i.j = add i32 %.030.i.i, 4                     ; 2 uses
  %i.k = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !892

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.l = add i32 %.022.i.i, %.lobit.i             ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !323, !alias.scope !1033
  %i.o = icmp ugt i32 %i.l, 15
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42
          to label %.noexc.i unwind label %bb.o   ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr %i.q, ptr %2, align 8, !tbaa !68, !alias.scope !1033
  store i64 %i.m, ptr %i.n, align 8, !tbaa !72, !alias.scope !1033
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.l, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.n, align 8, !tbaa !72, !alias.scope !1033
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.noexc.i
  %i.r = phi ptr [ %i.q, %.noexc.i ], [ %i.n, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 45, i64 %i.m, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.s = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.k ], [ %i.n, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.t, align 8, !tbaa !71, !alias.scope !1033
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.u, align 1, !tbaa !72
  %i.v = zext nneg i32 %.lobit.i to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !68, !alias.scope !1033
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v ; 4 uses
  %i.y = icmp ugt i32 %i.a, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.z = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ac, %.lr.ph.i11.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.an, %.lr.ph.i11.i ], [ %i.z, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aa = urem i32 %.020.i.i, 100
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !72, !noalias !1033
  %i.ah = zext i32 %.01819.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !72
  %i.aj = load i8, ptr %i.ae, align 2, !tbaa !72, !noalias !1033
  %i.ak = add i32 %.01819.i.i, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !72
  %i.an = add i32 %.01819.i.i, -2
  %i.ao = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ao, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !894

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %bb.l
end_hunk_1
