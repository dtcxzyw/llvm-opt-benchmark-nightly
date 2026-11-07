Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE:bb.a
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %bb.b
  %.09.i = phi ptr [ %0, %bb.b ], [ %i.t, %.critedge.i.i ] ; 3 uses
  %.08.i = phi i16 [ 0, %bb.b ], [ %.1.i, %.critedge.i.i ] ; 4 uses
  %.02238.i.i = phi i32 [ 16, %bb.b ], [ %i.k, %.critedge.i.i ]
  %i.h = load i8, ptr %.09.i, align 1, !tbaa !74
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = zext i8 %i.i to i16                      ; 2 uses
  %.not31.i.i = icmp ult i8 %i.i, 10
  br i1 %.not31.i.i, label %bb.c, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add i32 %.02238.i.i, -4                  ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !149

bb.d:                                             ; preds = %bb.c
  %i.m = mul i16 %.08.i, 10
  %i.n = add i16 %i.m, %i.j
  br label %.critedge.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i16 %.08.i, 6553
  br i1 %i.o, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.split.i.i, !prof !131

.split.i.i:                                       ; preds = %bb.e
  %i.p = mul nuw i16 %.08.i, 10
  %i.q = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %i.p, i16 %i.j) ; 2 uses
  %i.r = extractvalue { i16, i1 } %i.q, 1
  %i.s = extractvalue { i16, i1 } %i.q, 0
  br i1 %i.r, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.critedge.i.i, !prof !135

.critedge.i.i:                                    ; preds = %.split.i.i, %bb.d
  %.1.i = phi i16 [ %i.n, %bb.d ], [ %i.s, %.split.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i.i, %.lr.ph.i.i
  %.110.i = phi ptr [ %.09.i, %.lr.ph.i.i ], [ %scevgep.i, %.critedge.i.i ] ; 3 uses
  %.3.i = phi i16 [ %.08.i, %.lr.ph.i.i ], [ %.1.i, %.critedge.i.i ]
  %.not.i = icmp eq ptr %.110.i, %0
  %.not32 = icmp eq ptr %.110.i, null
  %or.cond51 = or i1 %.not.i, %.not32
  br i1 %or.cond51, label %_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread, label %bb.f, !prof !150

_ZNSt8__format15__parse_integerIcEESt4pairItPKT_ES4_S4_.exit.thread: ; preds = %.split.i.i, %bb.e, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.309) #33
  unreachable

bb.f:                                             ; preds = %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i
  store i16 %.3.i, ptr %2, align 2, !tbaa !125
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %i.a, 123
  br i1 %i.u, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %3, align 1, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt8__format39__unmatched_left_brace_in_format_stringEv() #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.v, align 1, !tbaa !74    ; 3 uses
  switch i8 %i.x, label %bb.n [
    i8 125, label %bb.k
    i8 48, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !148
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #33
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.k
  store i32 2, ptr %i.y, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !151 ; 2 uses
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !151
  %i.ae = trunc i64 %i.ac to i16
  br label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit

bb.n:                                             ; preds = %bb.j
  %i.ag = add i8 %i.x, -49
  %or.cond.i = icmp ult i8 %i.ag, 9
  br i1 %or.cond.i, label %bb.o, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ah = zext nneg i8 %i.x to i16
  %i.ai = add nsw i16 %i.ah, -48                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !74
  %i.am = add i8 %i.al, -48
  %or.cond14.i = icmp ult i8 %i.am, 10
  br i1 %or.cond14.i, label %bb.q, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.an = ptrtoaddr ptr %i.v to i64
  %i.ao = ptrtoaddr ptr %1 to i64
  %i.ap = sub i64 %i.ao, %i.an
  %scevgep.i.i = getelementptr i8, ptr %i.v, i64 %i.ap
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %bb.q
  %.09.i.i = phi ptr [ %i.v, %bb.q ], [ %i.bc, %.critedge.i.i.i ] ; 3 uses
  %.08.i.i = phi i16 [ 0, %bb.q ], [ %.1.i.i, %.critedge.i.i.i ] ; 4 uses
  %.02238.i.i.i = phi i32 [ 16, %bb.q ], [ %i.at, %.critedge.i.i.i ]
  %i.aq = load i8, ptr %.09.i.i, align 1, !tbaa !74
  %i.ar = add i8 %i.aq, -48                       ; 2 uses
  %i.as = zext i8 %i.ar to i16                    ; 2 uses
  %.not31.i.i.i = icmp ult i8 %i.ar, 10
  br i1 %.not31.i.i.i, label %bb.r, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add i32 %.02238.i.i.i, -4               ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %bb.s, label %bb.t, !prof !149

bb.s:                                             ; preds = %bb.r
  %i.av = mul i16 %.08.i.i, 10
  %i.aw = add i16 %i.av, %i.as
  br label %.critedge.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp ugt i16 %.08.i.i, 6553
  br i1 %i.ax, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.split.i.i.i, !prof !131

.split.i.i.i:                                     ; preds = %bb.t
  %i.ay = mul nuw i16 %.08.i.i, 10
  %i.az = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %i.ay, i16 %i.as) ; 2 uses
  %i.ba = extractvalue { i16, i1 } %i.az, 1
  %i.bb = extractvalue { i16, i1 } %i.az, 0
  br i1 %i.ba, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %.critedge.i.i.i, !prof !135

.critedge.i.i.i:                                  ; preds = %.split.i.i.i, %bb.s
  %.1.i.i = phi i16 [ %i.aw, %bb.s ], [ %i.bb, %.split.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i, label %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i.i.i, %.lr.ph.i.i.i
  %.110.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i.i ], [ %scevgep.i.i, %.critedge.i.i.i ] ; 2 uses
  %.3.i.i = phi i16 [ %.08.i.i, %.lr.ph.i.i.i ], [ %.1.i.i, %.critedge.i.i.i ]
  %.not.i.i36 = icmp eq ptr %.110.i.i, %i.v
  br i1 %.not.i.i36, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit, !prof !854

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit: ; preds = %bb.m, %bb.o, %bb.p, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i
  %.sroa.0.1.i33 = phi i16 [ 0, %bb.m ], [ %i.ai, %bb.o ], [ %.3.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ], [ %i.ai, %bb.p ]
  %.sroa.5.1.i = phi ptr [ %i.af, %bb.m ], [ %i.aj, %bb.o ], [ %.110.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i ], [ %i.aj, %bb.p ] ; 4 uses
  %i.bd = icmp eq ptr %.sroa.5.1.i, null
  %i.be = icmp eq ptr %.sroa.5.1.i, %1
  %or.cond = or i1 %i.bd, %i.be
  br i1 %or.cond, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit
  %i.bf = load i8, ptr %.sroa.5.1.i, align 1, !tbaa !74
  %.not = icmp eq i8 %i.bf, 125
  br i1 %.not, label %bb.v, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread: ; preds = %bb.t, %.split.i.i.i, %_ZNSt8__detail18__from_chars_alnumILb1EtEEbRPKcS2_RT0_i.exit.i.i, %bb.n, %bb.u, %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit
  tail call void @_ZNSt8__format33__invalid_arg_id_in_format_stringEv() #33
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !148
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.w, label %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #33
  unreachable

_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit: ; preds = %bb.v
  store i32 1, ptr %i.bg, align 8, !tbaa !148
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit
  %storemerge = phi i16 [ %.sroa.0.1.i33, %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit ], [ %i.ae, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit ]
  %.0 = phi ptr [ %.sroa.5.1.i, %_ZNSt26basic_format_parse_contextIcE12check_arg_idEm.exit ], [ %i.v, %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit ]
  store i16 %storemerge, ptr %2, align 2, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.g, %bb.x, %bb.f
  %.1 = phi ptr [ %.110.i, %bb.f ], [ %i.bj, %bb.x ], [ %0, %bb.g ]
  ret ptr %.1
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12format_error, i64 16), ptr %0, align 8, !tbaa !40
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt8__format39__unmatched_left_brace_in_format_stringEv() local_unnamed_addr #21 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.310) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt8__format33__invalid_arg_id_in_format_stringEv() local_unnamed_addr #21 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.312) #33
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.uadd.with.overflow.i16(i16, i16) #24

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() local_unnamed_addr #21 comdat {
bb.a:
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.311) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIiNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [35 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %1, 128
  %or.cond.i = icmp ult i32 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i32 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = icmp slt i32 %1, 0
  %.045 = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.y [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.u
    i16 6, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true) ; 4 uses
  %i.q = sub nuw nsw i32 32, %i.p
  %.not16.i.i = icmp eq i32 %i.p, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %bb.f
  %.015.i.i = xor i32 %i.p, 31                    ; 2 uses
  %i.r = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.s = trunc i32 %.045 to i8
  %i.t = and i8 %i.s, 1
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  store i8 %i.u, ptr %i.v, align 2, !tbaa !74
  %i.w = lshr i32 %.045, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.r, -1
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %i.r, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i32 [ %.045, %.lr.ph.preheader.i41.i ], [ %i.w, %.lr.ph.i42.i.prol ]
  %i.x = icmp eq i32 %i.p, 30
  br i1 %i.x, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i32 [ %i.ai, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.y = trunc i32 %.01317.i.i to i8
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !74
  %i.ac = lshr i32 %.01317.i.i, 1
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !74
  %i.ai = lshr i32 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aj = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.1, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i, !llvm.loop !6

_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit: ; preds = %.lr.ph.i42.i, %.lr.ph.i42.i.prol.loopexit
  %i.ak = zext nneg i32 %i.q to i64
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.al = icmp eq i32 %1, 0
  br i1 %i.al, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ult i32 %.045, 10
  br i1 %i.am, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.030.i.i.i = phi i32 [ %i.au, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.at, %bb.n ], [ %.045, %bb.h ] ; 5 uses
  %i.an = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp ult i32 %.02329.i.i.i, 10000
end_hunk_0
