Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE:bb.a
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
  %3 = trunc i32 %.015.i.i to i1
  br i1 %3, label %.lr.ph.i42.i.prol, label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.s = trunc i32 %.045 to i8
  %i.t = and i8 %i.s, 1
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  store i8 %i.u, ptr %i.v, align 1, !tbaa !74
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
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = udiv i32 %.02329.i.i.i, 10000
  %i.au = add i32 %.030.i.i.i, 4                  ; 2 uses
  %i.av = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.av, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.as, %bb.m ], [ %i.ao, %bb.i ], [ %i.aq, %bb.k ], [ %i.au, %bb.n ] ; 4 uses
  %i.aw = icmp ugt i32 %.022.i.i.i, 32
  br i1 %i.aw, label %.thread91, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.ax = icmp ugt i32 %.045, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.ay = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.bb, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bm, %.lr.ph.i9.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = urem i32 %.020.i.i.i, 100
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !74
  %i.bg = zext i32 %.01819.i.i.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !74
  %i.bi = load i8, ptr %i.bd, align 2, !tbaa !74
  %i.bj = add i32 %.01819.i.i.i, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !74
  %i.bm = add i32 %.01819.i.i.i, -2
  %i.bn = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bn, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i32 [ %.045, %bb.o ], [ %i.bb, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bo = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.bo, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bt, ptr %i.bu, align 4, !tbaa !74
  %i.bv = load i8, ptr %i.br, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i122 = phi i32 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.045, %bb.h ]
  %.022.i.i.i116118121 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.bw = trunc nuw nsw i32 %.0.lcssa.i.i.i122 to i8
  %i.bx = or disjoint i8 %i.bw, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink109.i52 = phi i8 [ 48, %bb.g ], [ %i.bv, %bb.p ], [ %i.bx, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i116118121, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink109.i52, ptr %i.j, align 1, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i53
  br label %.thread91

bb.q:                                             ; preds = %bb.d
  %.not49 = icmp ne i32 %1, 0                     ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select96 = zext i1 %.not49 to i64         ; 2 uses
  %i.bz = icmp eq i32 %1, 0
  br i1 %i.bz, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true)
  %i.cb = trunc nuw nsw i32 %i.ca to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.cb
  %i.cc = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = icmp ugt i32 %.045, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.cc to i32
  %i.cf = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cs, %.lr.ph.i38.i ], [ %i.cf, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.cl, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cg = trunc i32 %.02830.i40.i to i8           ; 2 uses
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !74
  %i.cl = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %i.cm = lshr i8 %i.cg, 3
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = add nsw i32 %.031.i39.i, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !74
  %i.cs = add nsw i32 %.031.i39.i, -2
  %i.ct = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.ct, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %.045, %bb.r ], [ %i.cl, %.lr.ph.i38.i ] ; 4 uses
  %i.cu = icmp samesign ugt i32 %.028.lcssa.i30.i, 7
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i29.i
  %i.cv = lshr i32 %.028.lcssa.i30.i, 3
  %i.cw = trunc nuw nsw i32 %.028.lcssa.i30.i to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
end_hunk_0
begin_hunk_1_@_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE:bb.a
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEmENKUlRT_E_clIcEEDaS5_.exit, %_ZZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEmENKUlRT_E_clIbEEDaS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorEbRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i8 %i.b, ptr %i.a, align 1, !tbaa !74
  %i.f = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i8 noundef zeroext %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !114
  store i8 0, ptr %i.h, align 8, !tbaa !74
  %i.j = and i16 %i.c, 32
  %.not18 = icmp eq i16 %i.j, 0
  br i1 %.not18, label %bb.h, label %bb.e, !prof !149

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.invoke unwind label %bb.f    ; 2 uses

.invoke:                                          ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40, !noalias !66
  %. = select i1 %1, i64 40, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  %i.n = load ptr, ptr %i.m, align 8, !noalias !66
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit unwind label %bb.g, !inline_history !960

_ZNKSt7__cxx118numpunctIcE8truenameEv.exit:       ; preds = %.invoke
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #30 ; 0 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !71     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !74
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx118numpunctIcE8truenameEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.k

bb.g:                                             ; preds = %.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.w = select i1 %1, ptr @.str.39, ptr @.str.41
  %i.x = select i1 %1, i64 4, i64 5
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.w, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !114 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !71
  %i.ac = invoke ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 %i.aa, ptr %i.ab, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(7) %0, i32 noundef 1)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.j
  %i.af = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.pn20 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.k
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn20

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c, %bb.b
  %.sroa.013.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  ret ptr %.sroa.013.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [11 x i8], align 1                ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i8 %1, -1
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !74
  %i.g = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 16 uses
  %i.i = lshr i16 %i.c, 11
  %i.j = and i16 %i.i, 15
  switch i16 %i.j, label %bb.r [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.j
    i16 5, label %bb.n
    i16 6, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.k, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.l = icmp eq i8 %1, 0
  br i1 %i.l, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.m = zext i8 %1 to i32
  %i.n = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.m, i1 true) ; 4 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %.not16.i.i = icmp eq i32 %i.n, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i35.i

.lr.ph.preheader.i35.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i32 %i.n, 31                    ; 2 uses
  %i.p = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %3 = trunc i32 %.015.i.i to i1
  br i1 %3, label %.lr.ph.i36.i.prol, label %.lr.ph.i36.i.prol.loopexit

.lr.ph.i36.i.prol:                                ; preds = %.lr.ph.preheader.i35.i
  %i.q = and i8 %1, 1
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  store i8 %i.r, ptr %i.s, align 1, !tbaa !74
  %i.t = lshr i8 %1, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.p, -1
  br label %.lr.ph.i36.i.prol.loopexit

.lr.ph.i36.i.prol.loopexit:                       ; preds = %.lr.ph.i36.i.prol, %.lr.ph.preheader.i35.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.preheader.i35.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i36.i.prol ]
  %.01317.i.i.unr = phi i8 [ %1, %.lr.ph.preheader.i35.i ], [ %i.t, %.lr.ph.i36.i.prol ]
  %i.u = icmp eq i32 %i.n, 30
  br i1 %i.u, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i36.i.prol.loopexit, %.lr.ph.i36.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i36.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i36.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i8 [ %i.ad, %.lr.ph.i36.i ], [ %.01317.i.i.unr, %.lr.ph.i36.i.prol.loopexit ] ; 3 uses
  %i.v = and i8 %.01317.i.i, 1
  %i.w = or disjoint i8 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !74
  %i.y = lshr i8 %.01317.i.i, 1
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr i8, ptr %i.h, i64 %indvars.iv.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !74
  %i.ad = lshr i8 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ae = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, label %.lr.ph.i36.i, !llvm.loop !6

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit: ; preds = %.lr.ph.i36.i, %.lr.ph.i36.i.prol.loopexit
  %i.af = zext nneg i32 %i.o to i64
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.ag = icmp eq i8 %1, 0
  br i1 %i.ag, label %.thread91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %1, 10
  %i.ai = icmp ult i8 %1, 100
  %i.aj = select i1 %i.ai, i64 2, i64 3
  %i.ak = select i1 %i.ah, i64 1, i64 %i.aj       ; 2 uses
  %i.al = icmp ugt i8 %1, 99
  br i1 %i.al, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.g
  %i.am = urem i8 %1, 100
  %i.an = shl nuw i8 %i.am, 1
  %i.ao = udiv i8 %1, 100
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !74
  %.sroa.gep108.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.as, ptr %.sroa.gep108.sroa.gep110, align 1, !tbaa !74
  %i.at = load i8, ptr %i.aq, align 2, !tbaa !74
  %.sroa.gep108.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.at, ptr %.sroa.gep108.sroa.gep, align 1, !tbaa !74
  br label %bb.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  %i.au = icmp samesign ugt i8 %1, 9
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.av = shl nuw i8 %1, 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !74
  %i.bb = load i8, ptr %i.ax, align 2, !tbaa !74
  br label %.thread91

bb.i:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.0.lcssa.i.i79.i = phi i8 [ %i.ao, %._crit_edge.i.i.thread.i ], [ %1, %._crit_edge.i.i.i ]
  %i.bc = or disjoint i8 %.0.lcssa.i.i79.i, 48
  br label %.thread91

bb.j:                                             ; preds = %bb.d
  %.not48 = icmp eq i8 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %1, i1 true)
  %.lhs.trunc.i.i = sub nuw nsw i8 10, %i.bd
  %i.be = udiv i8 %.lhs.trunc.i.i, 3
  %i.bf = zext nneg i8 %i.be to i64               ; 3 uses
  %i.bg = icmp ugt i8 %1, 63
  br i1 %i.bg, label %._crit_edge.i.thread.i, label %._crit_edge.i.i

._crit_edge.i.thread.i:                           ; preds = %bb.k
  %i.bh = and i8 %1, 7
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = getelementptr i8, ptr %i.h, i64 %i.bf
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !74
  %i.bl = lshr i8 %1, 6
  %i.bm = lshr i8 %1, 3
  %i.bn = add nuw nsw i64 %i.bf, 4294967294
  %i.bo = and i64 %i.bn, 4294967295
  br label %.sink.split.i

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.bp = icmp samesign ugt i8 %1, 7
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bq = lshr i8 %1, 3
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %._crit_edge.i.thread.i
  %.sink88.i = phi i64 [ %i.bo, %._crit_edge.i.thread.i ], [ 1, %bb.l ]
  %.sink.in.in.i = phi i8 [ %i.bm, %._crit_edge.i.thread.i ], [ %1, %bb.l ]
  %storemerge.in.in.i.ph.i = phi i8 [ %i.bl, %._crit_edge.i.thread.i ], [ %i.bq, %bb.l ]
  %.sink.in.i = and i8 %.sink.in.in.i, 7
  %.sink.i = or disjoint i8 %.sink.in.i, 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink88.i
  store i8 %.sink.i, ptr %i.br, align 1, !tbaa !74
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %._crit_edge.i.i
  %storemerge.in.in.i.i = phi i8 [ %1, %._crit_edge.i.i ], [ %storemerge.in.in.i.ph.i, %.sink.split.i ]
  %storemerge.i30.i = or disjoint i8 %storemerge.in.in.i.i, 48
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d, %bb.d
  %i.bs = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.bs, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.bt = zext i8 %1 to i32                       ; 4 uses
  %i.bu = icmp eq i8 %1, 0
  br i1 %i.bu, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bw = sub nuw nsw i32 35, %i.bv
  %i.bx = lshr i32 %i.bw, 2
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = icmp ugt i8 %1, 15
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.bt, 15
  %i.cb = lshr i32 %i.bt, 4
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !74
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.in.i.i = phi i32 [ %i.cb, %bb.p ], [ %i.bt, %bb.o ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67: ; preds = %bb.q, %bb.n
  %.sink90.i68 = phi i8 [ %storemerge.i.i, %bb.q ], [ 48, %bb.n ]
  %.sink89.i69 = phi i64 [ %i.by, %bb.q ], [ 1, %bb.n ]
  store i8 %.sink90.i68, ptr %i.h, align 1, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i69 ; 3 uses
  %.not115 = icmp eq i16 %i.d, 12288
  br i1 %.not115, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, %.lr.ph
  %.0106 = phi ptr [ %i.cl, %.lr.ph ], [ %i.h, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ] ; 3 uses
  %i.ch = load i8, ptr %.0106, align 1, !tbaa !74
  %i.ci = sext i8 %i.ch to i32
  %i.cj = call i32 @toupper(i32 noundef %i.ci) #35
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %.0106, align 1, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %.0106, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.cg
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !961

bb.r:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %bb.e, %.preheader.i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, %bb.m, %bb.j
  %.sink90.i60.sink = phi i8 [ 48, %bb.j ], [ %storemerge.i30.i, %bb.m ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ 49, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sink89.i61.sink = phi i64 [ 1, %bb.j ], [ %i.bf, %bb.m ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.af, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.j ], [ @.str.112, %bb.m ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ %.str.314..str.315, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sroa.080.1.ph = phi i64 [ 0, %bb.j ], [ 1, %bb.m ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  store i8 %.sink90.i60.sink, ptr %i.h, align 1, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i61.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.080.1 = phi i64 [ %.sroa.080.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.cm, %.loopexit.sink.split ], [ %i.cg, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %i.cg, %.lr.ph ] ; 2 uses
  %i.cn = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.cn, 0
  %.not50 = icmp eq i64 %.sroa.080.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread100, label %bb.s

.thread91:                                        ; preds = %bb.i, %bb.h, %bb.f
  %.sink90.i52 = phi i8 [ 48, %bb.f ], [ %i.bb, %bb.h ], [ %i.bc, %bb.i ]
  %.sink89.i53 = phi i64 [ 1, %bb.f ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ]
  store i8 %.sink90.i52, ptr %i.h, align 1, !tbaa !74
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i53
  br label %.thread100

bb.s:                                             ; preds = %.loopexit
  %i.cp = sub nsw i64 0, %.sroa.080.1
  %i.cq = getelementptr inbounds i8, ptr %i.h, i64 %i.cp ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %.sroa.9.1, i64 %.sroa.080.1, i1 false)
  br label %.thread100

.thread100:                                       ; preds = %.thread91, %bb.s, %.loopexit
  %.sroa.033.099 = phi ptr [ %.sroa.033.0, %bb.s ], [ %i.co, %.thread91 ], [ %.sroa.033.0, %.loopexit ]
  %.046 = phi ptr [ %i.cq, %bb.s ], [ %i.h, %.thread91 ], [ %i.h, %.loopexit ] ; 2 uses
  %i.cr = lshr i16 %i.c, 2
  %i.cs = and i16 %i.cr, 3
  %i.ct = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.cs, label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.t
  ]

bb.t:                                             ; preds = %.thread100
  br label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread100, %bb.t
  %.sink = phi i8 [ 32, %bb.t ], [ 43, %.thread100 ]
  store i8 %.sink, ptr %i.ct, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split, %.thread100
  %.0.i = phi ptr [ %.046, %.thread100 ], [ %i.ct, %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.033.099 to i64
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ptrtoint ptr %i.h to i64
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.cw, ptr nonnull %.0.i, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.g, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit ], [ %i.cz, %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !71     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !135

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !74
  store i8 %i.j, ptr %i.a, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !114
  %i.m = load ptr, ptr %0, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !74
  %.pre = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !114
  store i64 %i.q, ptr %i.o, align 8, !tbaa !114
  %i.r = load i64, ptr %i.e, align 8, !tbaa !74
  store i64 %i.r, ptr %i.b, align 8, !tbaa !74
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8, !tbaa !74
  store ptr %i.d, ptr %0, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !114
  %i.w = load i64, ptr %i.e, align 8, !tbaa !74
  store i64 %i.w, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8, !tbaa !71
  store i64 %i.s, ptr %i.e, align 8, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %bb.f, %bb.g, %bb.b
  %i.x = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !114
  store i8 0, ptr %i.x, align 1, !tbaa !74
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIjNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [35 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %1, 128
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i32 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.y [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.u
    i16 6, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 4 uses
  %i.p = sub nuw nsw i32 32, %i.o
  %.not16.i.i = icmp eq i32 %i.o, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %bb.f
  %.015.i.i = xor i32 %i.o, 31                    ; 2 uses
  %i.q = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %3 = trunc i32 %.015.i.i to i1
  br i1 %3, label %.lr.ph.i42.i.prol, label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.r = trunc i32 %1 to i8
  %i.s = and i8 %i.r, 1
  %i.t = or disjoint i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  store i8 %i.t, ptr %i.u, align 1, !tbaa !74
  %i.v = lshr i32 %1, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.q, -1
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %i.q, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i32 [ %1, %.lr.ph.preheader.i41.i ], [ %i.v, %.lr.ph.i42.i.prol ]
  %i.w = icmp eq i32 %i.o, 30
  br i1 %i.w, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i32 [ %i.ah, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.x = trunc i32 %.01317.i.i to i8
  %i.y = and i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !74
  %i.ab = lshr i32 %.01317.i.i, 1
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 48
  %i.af = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !74
  %i.ah = lshr i32 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ai = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i, !llvm.loop !6

_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit: ; preds = %.lr.ph.i42.i, %.lr.ph.i42.i.prol.loopexit
  %i.aj = zext nneg i32 %i.p to i64
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ak = icmp eq i32 %1, 0
  br i1 %i.ak, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %1, 10
  br i1 %i.al, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.030.i.i.i = phi i32 [ %i.at, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.as, %bb.n ], [ %1, %bb.h ] ; 5 uses
  %i.am = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = udiv i32 %.02329.i.i.i, 10000
  %i.at = add i32 %.030.i.i.i, 4                  ; 2 uses
  %i.au = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.an, %bb.i ], [ %i.ap, %bb.k ], [ %i.at, %bb.n ] ; 4 uses
  %i.av = icmp ugt i32 %.022.i.i.i, 32
  br i1 %i.av, label %.thread97, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.aw = icmp ugt i32 %1, 99
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.ax = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.ba, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = urem i32 %.020.i.i.i, 100
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !74
  %i.bf = zext i32 %.01819.i.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !74
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !74
  %i.bi = add i32 %.01819.i.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !74
  %i.bl = add i32 %.01819.i.i.i, -2
  %i.bm = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i32 [ %1, %bb.o ], [ %i.ba, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bn = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.bn, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bs, ptr %i.bt, align 4, !tbaa !74
  %i.bu = load i8, ptr %i.bq, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i128 = phi i32 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %1, %bb.h ]
  %.022.i.i.i122124127 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.bv = trunc nuw nsw i32 %.0.lcssa.i.i.i128 to i8
  %i.bw = or disjoint i8 %i.bv, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink109.i51 = phi i8 [ 48, %bb.g ], [ %i.bu, %bb.p ], [ %i.bw, %._crit_edge.i.i.i.thread ]
  %.sink.i52.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i122124127, %._crit_edge.i.i.i.thread ]
  %.sink.i52 = zext nneg i32 %.sink.i52.shrunk to i64
  store i8 %.sink109.i51, ptr %i.i, align 1, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i52
  br label %.thread97

bb.q:                                             ; preds = %bb.d
  %.not48 = icmp eq i32 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.bz
  %i.ca = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = icmp ugt i32 %1, 63
  br i1 %i.cc, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.ca to i32
  %i.cd = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cq, %.lr.ph.i38.i ], [ %i.cd, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.cj, %.lr.ph.i38.i ], [ %1, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.ce = trunc i32 %.02830.i40.i to i8           ; 2 uses
  %i.cf = and i8 %i.ce, 7
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = zext i32 %.031.i39.i to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !74
  %i.cj = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %i.ck = lshr i8 %i.ce, 3
  %i.cl = and i8 %i.ck, 7
  %i.cm = or disjoint i8 %i.cl, 48
  %i.cn = add nsw i32 %.031.i39.i, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !74
  %i.cq = add nsw i32 %.031.i39.i, -2
  %i.cr = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.cr, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %1, %bb.r ], [ %i.cj, %.lr.ph.i38.i ] ; 4 uses
  %i.cs = icmp samesign ugt i32 %.028.lcssa.i30.i, 7
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i29.i
  %i.ct = lshr i32 %.028.lcssa.i30.i, 3
  %i.cu = trunc nuw nsw i32 %.028.lcssa.i30.i to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cw, ptr %i.cx, align 4, !tbaa !74
  br label %bb.t
end_hunk_1
begin_hunk_2_@_ZNKSt8__format15__formatter_intIcE6formatIjNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a

bb.v:                                             ; preds = %bb.u
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.db = sub nuw nsw i32 35, %i.da
  %i.dc = lshr i32 %i.db, 2                       ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = icmp ugt i32 %1, 255
  br i1 %i.de, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.df = add nsw i32 %i.dc, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.dv, %.lr.ph.i.i ], [ %i.df, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i32 [ %i.do, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.dg = and i32 %.02830.i.i, 15
  %i.dh = lshr i32 %.02830.i.i, 4
  %i.di = zext nneg i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !74
  %i.dl = zext i32 %.031.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dl
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !74
  %i.dn = and i32 %i.dh, 15
  %i.do = lshr i32 %.02830.i.i, 8                 ; 2 uses
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !74
  %i.ds = add nsw i32 %.031.i.i, -1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dt
  store i8 %i.dr, ptr %i.du, align 1, !tbaa !74
  %i.dv = add nsw i32 %.031.i.i, -2
  %i.dw = icmp ugt i32 %.02830.i.i, 65535
  br i1 %i.dw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.v
  %.028.lcssa.i.i = phi i32 [ %1, %bb.v ], [ %i.do, %.lr.ph.i.i ] ; 4 uses
  %i.dx = icmp samesign ugt i32 %.028.lcssa.i.i, 15
  br i1 %i.dx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dy = and i32 %.028.lcssa.i.i, 15
  %i.dz = lshr i32 %.028.lcssa.i.i, 4
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !74
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ec, ptr %i.ed, align 4, !tbaa !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.pn.in.i.i = phi i32 [ %i.dz, %bb.w ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64: ; preds = %bb.x, %bb.u
  %.sink109.i65 = phi i8 [ %storemerge.i.i, %bb.x ], [ 48, %bb.u ]
  %.sink.i66 = phi i64 [ %i.dd, %bb.x ], [ 1, %bb.u ]
  store i8 %.sink109.i65, ptr %i.i, align 1, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i66 ; 3 uses
  %.not120 = icmp eq i16 %i.d, 12288
  br i1 %.not120, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, %.lr.ph
  %.0109 = phi ptr [ %i.ej, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ] ; 3 uses
  %i.ef = load i8, ptr %.0109, align 1, !tbaa !74
  %i.eg = sext i8 %i.ef to i32
  %i.eh = call i32 @toupper(i32 noundef %i.eg) #35
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %.0109, align 1, !tbaa !74
  %i.ej = getelementptr inbounds nuw i8, ptr %.0109, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.ee
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !962

bb.y:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, %bb.t, %bb.q
  %.sink109.i57.sink = phi i8 [ 48, %bb.q ], [ %storemerge.i32.i, %bb.t ], [ 48, %bb.e ], [ 49, %bb.f ], [ 49, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sink.i58.sink = phi i64 [ 1, %bb.q ], [ %i.cb, %bb.t ], [ 1, %bb.e ], [ 1, %bb.f ], [ %i.aj, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.q ], [ @.str.112, %bb.t ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %bb.f ], [ %.str.314..str.315, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.077.1.ph = phi i64 [ 0, %bb.q ], [ 1, %bb.t ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  store i8 %.sink109.i57.sink, ptr %i.i, align 1, !tbaa !74
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i58.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ek, %.loopexit.sink.split ], [ %i.ee, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %i.ee, %.lr.ph ] ; 2 uses
  %i.el = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.el, 0
  %.not50 = icmp eq i64 %.sroa.077.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread97, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.em = sub nsw i64 0, %.sroa.077.1
  %i.en = getelementptr inbounds i8, ptr %i.i, i64 %i.em ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %.sroa.9.1, i64 %.sroa.077.1, i1 false)
  br label %.thread97

.thread97:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.z, %.loopexit
  %.sroa.033.096 = phi ptr [ %.sroa.033.0, %bb.z ], [ %.sroa.033.0, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.bx, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.en, %bb.z ], [ %i.i, %.loopexit ], [ %i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.eo = lshr i16 %i.c, 2
  %i.ep = and i16 %i.eo, 3
  %i.eq = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.ep, label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %.thread97
  br label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread97, %bb.aa
  %.sink = phi i8 [ 32, %bb.aa ], [ 43, %.thread97 ]
  store i8 %.sink, ptr %i.eq, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split, %.thread97
  %.0.i = phi ptr [ %.046, %.thread97 ], [ %i.eq, %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.er = ptrtoint ptr %.sroa.033.096 to i64
  %i.es = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ptrtoint ptr %i.i to i64
  %i.ev = sub i64 %i.eu, %i.es
  %i.ew = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.et, ptr nonnull %.0.i, i64 noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit ], [ %i.ew, %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [67 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 128
  %or.cond.i = icmp ult i64 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = icmp slt i64 %1, 0
  %.045 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.x [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.p
    i16 5, label %bb.t
    i16 6, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true) ; 5 uses
  %i.q = sub nuw nsw i64 64, %i.p                 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.p, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i64 %i.p, 63                    ; 3 uses
  %3 = trunc i64 %.015.i.i to i1
  br i1 %3, label %.lr.ph.i42.i.prol, label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.r = trunc i64 %.045 to i8
  %i.s = and i8 %i.r, 1
  %i.t = or disjoint i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015.i.i
  store i8 %i.t, ptr %i.u, align 1, !tbaa !74
  %i.v = lshr i64 %.045, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 62, %i.p
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i64 [ %.045, %.lr.ph.preheader.i41.i ], [ %i.v, %.lr.ph.i42.i.prol ]
  %i.w = icmp eq i64 %i.p, 62
  br i1 %i.w, label %.loopexit.sink.split, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i64 [ %i.ah, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.x = trunc i64 %.01317.i.i to i8
  %i.y = and i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !74
  %i.ab = lshr i64 %.01317.i.i, 1
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = and i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 48
  %i.af = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !74
  %i.ah = lshr i64 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ai = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i42.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.aj = icmp eq i64 %1, 0
  br i1 %i.aj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp ult i64 %.045, 10
  br i1 %i.ak, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.m
  %.029.i.i.i = phi i32 [ %i.as, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.ar, %bb.m ], [ %.045, %bb.g ] ; 5 uses
  %i.al = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.an = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = udiv i64 %.02328.i.i.i, 10000
  %i.as = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.at = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.at, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  %.022.i.i.i = phi i32 [ %i.aq, %bb.l ], [ %i.am, %bb.h ], [ %i.ao, %bb.j ], [ %i.as, %bb.m ] ; 4 uses
  %i.au = icmp ugt i32 %.022.i.i.i, 64
  br i1 %i.au, label %.thread94, label %bb.n, !prof !152

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.av = icmp ugt i64 %.045, 99
  br i1 %i.av, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.aw = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.az, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bj, %.lr.ph.i9.i.i ], [ %i.aw, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ax = urem i64 %.020.i.i.i, 100
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !74
  %i.bd = zext i32 %.01819.i.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !74
  %i.bf = load i8, ptr %i.ba, align 2, !tbaa !74
  %i.bg = add i32 %.01819.i.i.i, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !74
  %i.bj = add i32 %.01819.i.i.i, -2
  %i.bk = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.bk, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ %.045, %bb.n ], [ %i.az, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bl = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bl, label %bb.o, label %._crit_edge.i.i.i.thread

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bp, ptr %i.bq, align 4, !tbaa !74
  %i.br = load i8, ptr %i.bn, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52

._crit_edge.i.i.i.thread:                         ; preds = %bb.g, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i125 = phi i64 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.045, %bb.g ]
  %.022.i.i.i119121124 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.g ]
  %i.bs = trunc nuw nsw i64 %.0.lcssa.i.i.i125 to i8
  %i.bt = or disjoint i8 %i.bs, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52: ; preds = %._crit_edge.i.i.i.thread, %bb.o, %bb.f
  %.sink109.i53 = phi i8 [ 48, %bb.f ], [ %i.br, %bb.o ], [ %i.bt, %._crit_edge.i.i.i.thread ]
  %.sink.i54.shrunk = phi i32 [ 1, %bb.f ], [ %.022.i.i.i, %bb.o ], [ %.022.i.i.i119121124, %._crit_edge.i.i.i.thread ]
  %.sink.i54 = zext nneg i32 %.sink.i54.shrunk to i64
  store i8 %.sink109.i53, ptr %i.j, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i54
  br label %.thread94

bb.p:                                             ; preds = %bb.d
  %.not49 = icmp ne i64 %1, 0                     ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  %i.bv = icmp eq i64 %1, 0
  br i1 %i.bv, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = icmp ugt i64 %.045, 63
  br i1 %i.ca, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.by to i32
  %i.cb = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.co, %.lr.ph.i38.i ], [ %i.cb, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.ch, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cc = trunc i64 %.02830.i40.i to i8           ; 2 uses
  %i.cd = and i8 %i.cc, 7
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = zext i32 %.031.i39.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !74
  %i.ch = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %i.ci = lshr i8 %i.cc, 3
  %i.cj = and i8 %i.ci, 7
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = add nsw i32 %.031.i39.i, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !74
  %i.co = add nsw i32 %.031.i39.i, -2
  %i.cp = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.cp, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %.045, %bb.q ], [ %i.ch, %.lr.ph.i38.i ] ; 4 uses
  %i.cq = icmp samesign ugt i64 %.028.lcssa.i30.i, 7
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i29.i
  %i.cr = lshr i64 %.028.lcssa.i30.i, 3
  %i.cs = trunc nuw nsw i64 %.028.lcssa.i30.i to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cu, ptr %i.cv, align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i64 [ %i.cr, %bb.r ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
end_hunk_2
begin_hunk_3_@_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a

bb.u:                                             ; preds = %bb.t
  %i.cy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = sub nuw nsw i32 67, %i.cz
  %i.db = lshr i32 %i.da, 2                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = icmp ugt i64 %.045, 255
  br i1 %i.dd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.de = add nsw i32 %i.db, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.ds, %.lr.ph.i.i ], [ %i.de, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.df = and i64 %.02830.i.i, 15
  %i.dg = lshr i64 %.02830.i.i, 4
  %i.dh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.df
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !74
  %i.dj = zext i32 %.031.i.i to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dj
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !74
  %i.dl = and i64 %i.dg, 15
  %i.dm = lshr i64 %.02830.i.i, 8                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !74
  %i.dp = add nsw i32 %.031.i.i, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dq
  store i8 %i.do, ptr %i.dr, align 1, !tbaa !74
  %i.ds = add nsw i32 %.031.i.i, -2
  %i.dt = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.028.lcssa.i.i = phi i64 [ %.045, %bb.u ], [ %i.dm, %.lr.ph.i.i ] ; 4 uses
  %i.du = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.dv = and i64 %.028.lcssa.i.i, 15
  %i.dw = lshr i64 %.028.lcssa.i.i, 4
  %i.dx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dy, ptr %i.dz, align 4, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.dw, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68: ; preds = %bb.w, %bb.t
  %.sink109.i69 = phi i8 [ %storemerge.i.i, %bb.w ], [ 48, %bb.t ]
  %.sink.i70 = phi i64 [ %i.dc, %bb.w ], [ 1, %bb.t ]
  store i8 %.sink109.i69, ptr %i.j, align 1, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i70 ; 3 uses
  %.not117 = icmp eq i16 %i.d, 12288
  br i1 %.not117, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68, %.lr.ph
  %.0107 = phi ptr [ %i.ef, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ] ; 3 uses
  %i.eb = load i8, ptr %.0107, align 1, !tbaa !74
  %i.ec = sext i8 %i.eb to i32
  %i.ed = call i32 @toupper(i32 noundef %i.ec) #35
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %.0107, align 1, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ef, %i.ea
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !963

bb.x:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i, %bb.p, %bb.s, %bb.e, %.preheader.i.i
  %.sink109.i61.sink = phi i8 [ 48, %bb.p ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ %storemerge.i32.i, %bb.s ], [ 49, %.lr.ph.i42.i ], [ 49, %.lr.ph.i42.i.prol.loopexit ]
  %.sink.i62.sink = phi i64 [ 1, %bb.p ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.bz, %bb.s ], [ %i.q, %.lr.ph.i42.i ], [ %i.q, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.p ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ %spec.select, %bb.s ], [ %.str.314..str.315, %.lr.ph.i42.i ], [ %.str.314..str.315, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.081.1.ph = phi i64 [ %spec.select99, %bb.p ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ %spec.select99, %bb.s ], [ 2, %.lr.ph.i42.i ], [ 2, %.lr.ph.i42.i.prol.loopexit ]
  store i8 %.sink109.i61.sink, ptr %i.j, align 1, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i62.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.081.1 = phi i64 [ %.sroa.081.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.eg, %.loopexit.sink.split ], [ %i.ea, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.eh = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.eh, 0
  %.not51 = icmp eq i64 %.sroa.081.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.ei = sub nsw i64 0, %.sroa.081.1
  %i.ej = getelementptr inbounds i8, ptr %i.j, i64 %i.ei ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr align 1 %.sroa.9.1, i64 %.sroa.081.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52, %bb.y, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.y ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bu, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ]
  %.046 = phi ptr [ %i.ej, %bb.y ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %.thread94
  %i.el = lshr i16 %i.c, 2
  %i.em = and i16 %i.el, 3
  switch i16 %i.em, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.z, %.thread94, %bb.aa
  %.sink = phi i8 [ 32, %bb.aa ], [ 45, %.thread94 ], [ 43, %bb.z ]
  store i8 %.sink, ptr %i.ek, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, %bb.z
  %.0.i = phi ptr [ %.046, %bb.z ], [ %i.ek, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.en = ptrtoint ptr %.sroa.033.093 to i64
  %i.eo = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ptrtoint ptr %i.j to i64
  %i.er = sub i64 %i.eq, %i.eo
  %i.es = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.ep, ptr nonnull %.0.i, i64 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit ], [ %i.es, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [67 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %1, 128
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.x [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.p
    i16 5, label %bb.t
    i16 6, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 5 uses
  %i.p = sub nuw nsw i64 64, %i.o                 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.o, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i64 %i.o, 63                    ; 3 uses
  %3 = trunc i64 %.015.i.i to i1
  br i1 %3, label %.lr.ph.i42.i.prol, label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.q = trunc i64 %1 to i8
  %i.r = and i8 %i.q, 1
  %i.s = or disjoint i8 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %.015.i.i
  store i8 %i.s, ptr %i.t, align 1, !tbaa !74
  %i.u = lshr i64 %1, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 62, %i.o
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i64 [ %1, %.lr.ph.preheader.i41.i ], [ %i.u, %.lr.ph.i42.i.prol ]
  %i.v = icmp eq i64 %i.o, 62
  br i1 %i.v, label %.loopexit.sink.split, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i64 [ %i.ag, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.w = trunc i64 %.01317.i.i to i8
  %i.x = and i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !74
  %i.aa = lshr i64 %.01317.i.i, 1
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 1
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !74
  %i.ag = lshr i64 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ah = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i42.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.ai = icmp eq i64 %1, 0
  br i1 %i.ai, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp ult i64 %1, 10
  br i1 %i.aj, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.m
  %.029.i.i.i = phi i32 [ %i.ar, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.aq, %bb.m ], [ %1, %bb.g ] ; 5 uses
  %i.ak = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.am = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = udiv i64 %.02328.i.i.i, 10000
  %i.ar = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.as = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  %.022.i.i.i = phi i32 [ %i.ap, %bb.l ], [ %i.al, %bb.h ], [ %i.an, %bb.j ], [ %i.ar, %bb.m ] ; 4 uses
  %i.at = icmp ugt i32 %.022.i.i.i, 64
  br i1 %i.at, label %.thread100, label %bb.n, !prof !152

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.au = icmp ugt i64 %1, 99
  br i1 %i.au, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.av = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.ay, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bi, %.lr.ph.i9.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aw = urem i64 %.020.i.i.i, 100
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !74
  %i.bc = zext i32 %.01819.i.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !74
  %i.be = load i8, ptr %i.az, align 2, !tbaa !74
  %i.bf = add i32 %.01819.i.i.i, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !74
  %i.bi = add i32 %.01819.i.i.i, -2
  %i.bj = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.bj, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ %1, %bb.n ], [ %i.ay, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bk, label %bb.o, label %._crit_edge.i.i.i.thread

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !74
  %i.bq = load i8, ptr %i.bm, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51

._crit_edge.i.i.i.thread:                         ; preds = %bb.g, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i131 = phi i64 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %1, %bb.g ]
  %.022.i.i.i125127130 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.g ]
  %i.br = trunc nuw nsw i64 %.0.lcssa.i.i.i131 to i8
  %i.bs = or disjoint i8 %i.br, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51: ; preds = %._crit_edge.i.i.i.thread, %bb.o, %bb.f
  %.sink109.i52 = phi i8 [ 48, %bb.f ], [ %i.bq, %bb.o ], [ %i.bs, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.f ], [ %.022.i.i.i, %bb.o ], [ %.022.i.i.i125127130, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink109.i52, ptr %i.i, align 1, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i53
  br label %.thread100

bb.p:                                             ; preds = %bb.d
  %.not48 = icmp eq i64 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.bv
  %i.bw = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = icmp ugt i64 %1, 63
  br i1 %i.by, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.bw to i32
  %i.bz = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cm, %.lr.ph.i38.i ], [ %i.bz, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.cf, %.lr.ph.i38.i ], [ %1, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.ca = trunc i64 %.02830.i40.i to i8           ; 2 uses
  %i.cb = and i8 %i.ca, 7
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = zext i32 %.031.i39.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !74
  %i.cf = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %i.cg = lshr i8 %i.ca, 3
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = add nsw i32 %.031.i39.i, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ck
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !74
  %i.cm = add nsw i32 %.031.i39.i, -2
  %i.cn = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.cn, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %1, %bb.q ], [ %i.cf, %.lr.ph.i38.i ] ; 4 uses
  %i.co = icmp samesign ugt i64 %.028.lcssa.i30.i, 7
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i29.i
  %i.cp = lshr i64 %.028.lcssa.i30.i, 3
  %i.cq = trunc nuw nsw i64 %.028.lcssa.i30.i to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cs, ptr %i.ct, align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i64 [ %i.cp, %bb.r ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i64 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split
end_hunk_3
begin_hunk_4_@_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE:bb.a
    i8 45, label %bb.j
    i8 32, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZNSt8__format5_SpecIcE7_S_signEc.exit.i

bb.k:                                             ; preds = %bb.i
  br label %_ZNSt8__format5_SpecIcE7_S_signEc.exit.i

_ZNSt8__format5_SpecIcE7_S_signEc.exit.i:         ; preds = %bb.i, %bb.k, %bb.j
  %.0.i.ph.i = phi i16 [ 4, %bb.i ], [ 8, %bb.j ], [ 12, %bb.k ]
  %i.t = and i16 %i.q, -13
  %i.u = or disjoint i16 %i.t, %.0.i.ph.i         ; 2 uses
  store i16 %i.u, ptr %2, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit

_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit: ; preds = %bb.i, %_ZNSt8__format5_SpecIcE7_S_signEc.exit.i
  %i.w = phi i16 [ %i.u, %_ZNSt8__format5_SpecIcE7_S_signEc.exit.i ], [ %i.q, %bb.i ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNSt8__format5_SpecIcE7_S_signEc.exit.i ], [ %.3.i, %bb.i ] ; 6 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit
  %i.z = load i8, ptr %i.x, align 1, !tbaa !74
  switch i8 %i.z, label %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 35, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.aa = or i16 %i.w, 16                         ; 2 uses
  store i16 %i.aa, ptr %2, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit

_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit: ; preds = %bb.l, %bb.m
  %i.ac = phi i16 [ %i.aa, %bb.m ], [ %i.w, %bb.l ]
  %.0.i10 = phi ptr [ %i.ab, %bb.m ], [ %i.x, %bb.l ] ; 6 uses
  %i.ad = icmp eq ptr %.0.i10, %i.f
  br i1 %i.ad, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit
  %i.ae = load i8, ptr %.0.i10, align 1, !tbaa !74
  switch i8 %i.ae, label %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 48, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.af = or i16 %i.ac, 64
  store i16 %i.af, ptr %2, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i10, i64 1
  br label %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit

_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit: ; preds = %bb.n, %bb.o
  %.0.i13 = phi ptr [ %i.ag, %bb.o ], [ %.0.i10, %bb.n ] ; 6 uses
  %i.ah = icmp eq ptr %.0.i13, %i.f
  br i1 %i.ah, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit
  %i.ai = load i8, ptr %.0.i13, align 1, !tbaa !74
  switch i8 %i.ai, label %bb.q [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 46, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit17.thread112
  ]

bb.q:                                             ; preds = %bb.p
  %i.aj = call noundef ptr @_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE(ptr noundef nonnull align 4 dereferenceable(7) %2, ptr noundef nonnull %.0.i13, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 6 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !74  ; 2 uses
  switch i8 %i.al, label %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 46, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit17.thread112
  ]

_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit17.thread112: ; preds = %bb.p, %bb.r
  %.0115 = phi ptr [ %i.aj, %bb.r ], [ %.0.i13, %bb.p ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0115, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !81
  %.not16.i = icmp eq ptr %i.am, %i.f
  br i1 %.not16.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit17.thread112
  %i.an = call noundef ptr @_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE(ptr noundef nonnull %i.am, ptr noundef %i.f, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %.thread.i, label %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit

.thread.i:                                        ; preds = %bb.s, %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit17.thread112
  call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.343) #33
  unreachable

_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit: ; preds = %bb.s
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !81, !range !65, !noundef !66
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.aq, i16 1024, i16 512
  %i.as = load i16, ptr %2, align 4
  %i.at = and i16 %i.as, -1537
  %i.au = or disjoint i16 %i.at, %i.ar
  store i16 %i.au, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.av = icmp eq ptr %i.an, %i.f
  br i1 %i.av, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit._ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread_crit_edge

_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit._ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread_crit_edge: ; preds = %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit
  %.pre = load i8, ptr %i.an, align 1, !tbaa !74
  br label %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread

_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread: ; preds = %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit._ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread_crit_edge, %bb.r
  %i.aw = phi i8 [ %.pre, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit._ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread_crit_edge ], [ %i.al, %bb.r ]
  %.013.i117 = phi ptr [ %i.an, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit._ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread_crit_edge ], [ %i.aj, %bb.r ] ; 3 uses
  switch i8 %i.aw, label %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 76, label %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit
  ]

_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit: ; preds = %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread
  %i.ax = load i16, ptr %2, align 4
  %i.ay = or i16 %i.ax, 32
  store i16 %i.ay, ptr %2, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i117, i64 1 ; 3 uses
  %i.ba = icmp eq ptr %i.az, %i.f
  br i1 %i.ba, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread

_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread: ; preds = %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit
  %.0.i21137 = phi ptr [ %i.az, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit ], [ %.013.i117, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread ] ; 4 uses
  %i.bb = load i8, ptr %.0.i21137, align 1, !tbaa !74
  switch i8 %i.bb, label %bb.aa [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 97, label %.sink.split
    i8 65, label %bb.t
    i8 101, label %bb.u
    i8 69, label %bb.v
    i8 102, label %bb.w
    i8 70, label %bb.x
    i8 103, label %bb.y
    i8 71, label %bb.z
  ]

bb.t:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.u:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.v:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.w:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.x:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.y:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

bb.z:                                             ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.sink140 = phi i16 [ 16384, %bb.z ], [ 14336, %bb.y ], [ 12288, %bb.x ], [ 10240, %bb.w ], [ 8192, %bb.v ], [ 6144, %bb.u ], [ 4096, %bb.t ], [ 2048, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread ]
  %i.bc = load i16, ptr %2, align 4
  %i.bd = and i16 %i.bc, -30721
  %i.be = or disjoint i16 %i.bd, %.sink140
  store i16 %i.be, ptr %2, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i21137, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread
  %.1 = phi ptr [ %.0.i21137, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread ], [ %i.bf, %.sink.split ] ; 4 uses
  %i.bg = icmp eq ptr %.1, %i.f
  br i1 %i.bg, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = load i8, ptr %.1, align 1, !tbaa !74
  %i.bi = icmp eq i8 %i.bh, 125
  br i1 %i.bi, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit25

_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit25: ; preds = %bb.ab
  call void @_ZNSt8__format29__failed_to_parse_format_specEv() #33
  unreachable

_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread: ; preds = %bb.ab, %bb.aa, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread, %bb.q, %bb.r, %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit, %bb.p, %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit, %bb.n, %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit, %bb.l, %_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_.exit, %bb.i, %bb.a, %bb.b
  %.2 = phi ptr [ %.0.i13, %_ZNSt8__format5_SpecIcE18_M_parse_zero_fillEPKcS3_.exit ], [ %i.g, %bb.a ], [ %.3.i, %_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_.exit ], [ %i.x, %_ZNSt8__format5_SpecIcE13_M_parse_signEPKcS3_.exit ], [ %.0.i10, %_ZNSt8__format5_SpecIcE23_M_parse_alternate_formEPKcS3_.exit ], [ %i.aj, %bb.q ], [ %i.an, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit ], [ %.0.i21137, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit.thread ], [ %i.g, %bb.b ], [ %.3.i, %bb.i ], [ %i.x, %bb.l ], [ %.0.i10, %bb.n ], [ %.0.i13, %bb.p ], [ %i.aj, %bb.r ], [ %.013.i117, %_ZNSt8__format5_SpecIcE18_M_parse_precisionEPKcS3_RSt26basic_format_parse_contextIcE.exit.thread ], [ %i.az, %_ZNSt8__format5_SpecIcE15_M_parse_localeEPKcS3_.exit ], [ %.1, %bb.aa ], [ %.1, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %0, ptr noundef nonnull align 4 dereferenceable(7) %2, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %4 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i206 = alloca %union.anon.1198, align 16 ; 5 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.1198, align 16  ; 5 uses
  %i.a = alloca float, align 4                    ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %8 = alloca %"struct.std::to_chars_result", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %9 = alloca %class.anon.1221, align 8           ; 18 uses
  %10 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::locale", align 8      ; 7 uses
  store float %1, ptr %i.a, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 19 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !114
  store i8 0, ptr %i.f, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 6, ptr %i.c, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.h = load i16, ptr %0, align 4                ; 5 uses
  %i.i = and i16 %i.h, 1536
  %i.j = icmp ne i16 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1, !tbaa !81
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i16 %i.h, 9
  %i.m = and i16 %i.l, 3
  switch i16 %i.m, label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !142
  %i.p = zext i16 %i.o to i64
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !142
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = load i64, ptr %2, align 8, !noalias !977 ; 3 uses
  %i.u = and i64 %i.t, 15                         ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 4
  %i.x = mul nuw nsw i64 %i.s, 5
  %i.y = lshr i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74, !noalias !977
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = lshr exact i64 %i.t, 4
  %i.ag = icmp samesign ugt i64 %i.af, %i.s
  %or.cond.i.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74, !noalias !977
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.s ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0.copyload4.i = load i8, ptr %.sroa.5.0..sroa_idx3.i, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.5.0.i = phi i8 [ %i.aa, %bb.e ], [ %.sroa.5.0.copyload4.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.ak = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i8 noundef zeroext %.sroa.5.0.i)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.pre.pre = load i16, ptr %0, align 4
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc, %bb.c, %bb.b
  %.pre = phi i16 [ %i.h, %bb.c ], [ %.pre.pre, %.noexc ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.p, %bb.c ], [ %i.ak, %.noexc ], [ -1, %bb.b ] ; 2 uses
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !109
  %i.al = trunc i64 %.0.i to i32
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.i:                                             ; preds = %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit, %bb.a
  %i.an = phi i32 [ %i.al, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ 6, %bb.a ]
  %i.ao = phi i16 [ %.pre, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 0, ptr %i.e, align 4, !tbaa !199
  %i.ar = lshr i16 %i.ao, 11
  %i.as = and i16 %i.ar, 15
  switch i16 %i.as, label %bb.q [
    i16 2, label %bb.j
    i16 1, label %bb.r
    i16 4, label %bb.k
    i16 3, label %.thread.sink.split
    i16 6, label %bb.l
    i16 5, label %bb.m
    i16 8, label %bb.n
    i16 7, label %bb.o
    i16 0, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.d, align 1, !tbaa !81, !range !65, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.thread, label %bb.u

bb.q:                                             ; preds = %bb.i
  unreachable

.thread.sink.split:                               ; preds = %bb.n, %bb.l, %bb.i, %bb.k, %bb.o, %bb.m
  %.sink.ph = phi i32 [ 2, %bb.m ], [ 1, %bb.i ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.n ], [ 3, %bb.o ]
  %.4120.ph.ph = phi i8 [ 101, %bb.m ], [ 101, %bb.i ], [ 69, %bb.k ], [ 101, %bb.l ], [ 69, %bb.n ], [ 101, %bb.o ]
  %.0115.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.n ], [ true, %bb.o ]
  %.4114.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.n ], [ false, %bb.o ]
  store i8 1, ptr %i.d, align 1, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.p
  %.ph = phi i32 [ 3, %bb.p ], [ %.sink.ph, %.thread.sink.split ] ; 2 uses
  %.4120.ph = phi i8 [ 101, %bb.p ], [ %.4120.ph.ph, %.thread.sink.split ]
  %.0115.ph = phi i1 [ false, %bb.p ], [ %.0115.ph.ph, %.thread.sink.split ]
  %.4114.ph = phi i1 [ false, %bb.p ], [ %.4114.ph.ph, %.thread.sink.split ]
  store i32 %.ph, ptr %i.e, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.av, align 8, !tbaa !978
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.aw, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.c, ptr %i.ax, align 8, !tbaa !202
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %bb.j
  %.0116 = phi i8 [ 80, %bb.j ], [ 101, %bb.i ]
  %.0110 = phi i1 [ true, %bb.j ], [ false, %bb.i ] ; 2 uses
  %i.ay = and i16 %i.ao, 30720
  %.not = icmp eq i16 %i.ay, 4096
  %spec.select = select i1 %.not, i8 %.0116, i8 112 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !199
  %.pre299 = load i8, ptr %i.d, align 1, !tbaa !81, !range !65
  %i.az = trunc nuw i8 %.pre299 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.ba, align 8, !tbaa !978
end_hunk_4
begin_hunk_5_@_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hf, i64 %i.he, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.hg, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.he)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bv
  store i64 %i.hj, ptr %i.g, align 8, !tbaa !114
  br label %.sink.split382

bb.bx:                                            ; preds = %bb.bv, %bb.bq, %bb.bo
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.2127, i64 noundef %i.et, i8 noundef signext 48)
          to label %bb.bz unwind label %bb.bg     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  br i1 %i.er, label %.sink.split382, label %bb.ca

.sink.split382:                                   ; preds = %bb.bz, %bb.bw
  %.2127.sink = phi i64 [ %i.hj, %bb.bw ], [ %.2127, %bb.bz ]
  %.sink383 = phi i8 [ 0, %bb.bw ], [ 46, %bb.bz ]
  %i.ht = load ptr, ptr %7, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.2127.sink
  store i8 %.sink383, ptr %i.hu, align 1, !tbaa !74
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split382, %bb.bz
  %i.hv = load ptr, ptr %7, align 8, !tbaa !71
  %i.hw = load i64, ptr %i.g, align 8, !tbaa !114
  br label %bb.cb

bb.cb:                                            ; preds = %bb.as, %bb.ca, %bb.aw, %bb.aj, %bb.ai
  %.sroa.0268.1 = phi i64 [ %i.dh, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dh, %bb.as ], [ %i.hw, %bb.ca ], [ %i.fd, %bb.aw ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.1108, %bb.ai ], [ %.1108, %bb.aj ], [ %.1108, %bb.as ], [ %i.hv, %bb.ca ], [ %.1108, %bb.aw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i8 0, ptr %10, align 8, !tbaa !74
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i8 0, ptr %i.hx, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.hy, ptr %11, align 8, !tbaa !113
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !114
  store i8 0, ptr %i.hy, align 8, !tbaa !74
  %i.ia = load i16, ptr %0, align 4               ; 3 uses
  %i.ib = and i16 %i.ia, 32
  %.not152 = icmp eq i16 %i.ib, 0
  br i1 %.not152, label %bb.cm, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load float, ptr %i.a, align 4, !tbaa !193
  %i.id = call float @llvm.fabs.f32(float %i.ic)
  %i.ie = fcmp ueq float %i.id, +inf
  br i1 %i.ie, label %bb.cm, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !158, !range !65, !noalias !979, !noundef !66
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.if) #30, !noalias !979
  store i8 1, ptr %i.ig, align 8, !tbaa !158, !noalias !979
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit: ; preds = %bb.cd, %bb.ce
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.if) #30
  invoke void @_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %.sroa.0268.1, ptr %.sroa.8.1, i8 noundef signext %.4120355, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.ij = load ptr, ptr %11, align 8, !tbaa !71   ; 6 uses
  %i.ik = icmp eq ptr %i.ij, %i.hy
  %i.il = load ptr, ptr %12, align 8, !tbaa !71   ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.in = icmp eq ptr %i.il, %i.im                ; 2 uses
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !114 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  switch i64 %i.ip, label %bb.ci [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ir = load i8, ptr %i.il, align 1, !tbaa !74
  store i8 %i.ir, ptr %i.ij, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.il, i64 %i.ip, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.is = load i64, ptr %i.io, align 8, !tbaa !114 ; 2 uses
  store i64 %i.is, ptr %i.hz, align 8, !tbaa !114
  %i.it = load ptr, ptr %11, align 8, !tbaa !71
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 0, ptr %i.iu, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !tbaa !74
  store <2 x i64> %i.iw, ptr %i.hz, align 8, !tbaa !74
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194
  %i.ix = load i64, ptr %i.hy, align 8, !tbaa !74
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iz = load <2 x i64>, ptr %i.iy, align 8, !tbaa !74
  store <2 x i64> %i.iz, ptr %i.hz, align 8, !tbaa !74
  %.not.i195 = icmp eq ptr %i.ij, null
  br i1 %.not.i195, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ij, ptr %12, align 8, !tbaa !71
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.im, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196, %bb.cj, %bb.ck
  %i.ja = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196 ], [ %i.ij, %bb.cj ], [ %i.im, %bb.ck ]
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.jb, align 8, !tbaa !114
  store i8 0, ptr %i.ja, align 1, !tbaa !74
  %i.jc = load ptr, ptr %12, align 8, !tbaa !71   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !74
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jh = load i64, ptr %i.hz, align 8, !tbaa !114 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0                    ; 2 uses
  %i.jj = load ptr, ptr %11, align 8
  %spec.select285 = select i1 %i.ji, i64 %.sroa.0268.1, i64 %i.jh
  %spec.select286 = select i1 %i.ji, ptr %.sroa.8.1, ptr %i.jj
  %.pre303 = load i16, ptr %0, align 4
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.de

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cc, %bb.cb
  %i.jl = phi i16 [ %i.ia, %bb.cb ], [ %i.ia, %bb.cc ], [ %.pre303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0237.0 = phi i64 [ %.sroa.0268.1, %bb.cb ], [ %.sroa.0268.1, %bb.cc ], [ %spec.select285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %.sroa.8.1, %bb.cb ], [ %.sroa.8.1, %bb.cc ], [ %spec.select286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.jm = lshr i16 %i.jl, 7
  %i.jn = and i16 %i.jm, 3
  switch i16 %i.jn, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread [
    i16 1, label %bb.cn
    i16 2, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !141
  %i.jq = zext i16 %i.jp to i64
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i206)
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !141
  %i.jt = zext i16 %i.js to i64                   ; 5 uses
  %i.ju = load i64, ptr %2, align 8, !noalias !980 ; 3 uses
  %i.jv = and i64 %i.ju, 15                       ; 2 uses
  %i.jw = icmp samesign ugt i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.jx = lshr i64 %i.ju, 4
  %i.jy = mul nuw nsw i64 %i.jt, 5
  %i.jz = lshr i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = and i8 %i.ka, 31
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74, !noalias !980
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.ke, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cq:                                            ; preds = %bb.co
  %i.kf = icmp eq i64 %i.jv, 0
  %i.kg = lshr exact i64 %i.ju, 4
  %i.kh = icmp samesign ugt i64 %i.kg, %i.jt
  %or.cond.i.i.i204 = select i1 %i.kf, i1 %i.kh, i1 false
  br i1 %or.cond.i.i.i204, label %bb.cr, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cr:                                            ; preds = %bb.cq
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !74, !noalias !980
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %i.jt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i209 = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %.sroa.5.0.copyload4.i210 = load i8, ptr %.sroa.5.0..sroa_idx3.i209, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205: ; preds = %bb.cr, %bb.cq, %bb.cp
  %.sroa.5.0.i206 = phi i8 [ %i.kb, %bb.cp ], [ %.sroa.5.0.copyload4.i210, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.5.0.i206, ptr %.sroa.5.0..sroa_idx.i207, align 16
  %i.kl = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i8 noundef zeroext %.sroa.5.0.i206)
          to label %.noexc211 unwind label %.loopexit.split-lp

.noexc211:                                        ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i206)
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc211, %bb.cn
  %.0.i208 = phi i64 [ %i.jq, %bb.cn ], [ %i.kl, %.noexc211 ] ; 2 uses
  %.not153 = icmp ugt i64 %.0.i208, %.sroa.0237.0
  br i1 %.not153, label %bb.cu, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread: ; preds = %bb.cm, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i212 = load ptr, ptr %i.km, align 8, !tbaa !170 ; 8 uses
  %.not.i213 = icmp eq i64 %.sroa.0237.0, 0
  br i1 %.not.i213, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 24 ; 6 uses
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = sub i64 %i.kv, %i.kt                    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kt ; 2 uses
  %.not24.i.i = icmp ugt i64 %i.kw, %.sroa.0237.0
  br i1 %.not24.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cs, %.noexc216
  %i.ky = phi ptr [ %i.lh, %.noexc216 ], [ %i.kq, %bb.cs ]
  %.pn2128.i.i = phi i64 [ %i.lm, %.noexc216 ], [ %i.kw, %bb.cs ] ; 5 uses
  %.sroa.0.027.i.i = phi ptr [ %i.ln, %.noexc216 ], [ %i.kx, %bb.cs ]
  %.sroa.010.026.i.i = phi i64 [ %i.le, %.noexc216 ], [ %.sroa.0237.0, %bb.cs ]
  %.sroa.9.025.i.i = phi ptr [ %i.lf, %.noexc216 ], [ %.sroa.13.0, %bb.cs ] ; 2 uses
  %i.kz = icmp eq i64 %.pn2128.i.i, 0
  br i1 %i.kz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i, ptr align 1 %.sroa.9.025.i.i, i64 %.pn2128.i.i, i1 false)
  %.pre.i.i214 = load ptr, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.ct, %.lr.ph.i.i
  %i.la = phi ptr [ %i.ky, %.lr.ph.i.i ], [ %.pre.i.i214, %bb.ct ]
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %.pn2128.i.i
  store ptr %i.lb, ptr %i.ko, align 8, !tbaa !173
  %i.lc = load ptr, ptr %.sroa.0.0.copyload.i212, align 8, !tbaa !40
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i212)
          to label %.noexc216 unwind label %.loopexit, !inline_history !14

.noexc216:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.le = sub nuw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.lg = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.lh = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = load i64, ptr %i.ku, align 8
  %i.lm = sub i64 %i.ll, %i.lk                    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lk ; 2 uses
  %.not.i.i215 = icmp ugt i64 %i.lm, %i.le
  br i1 %.not.i.i215, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.noexc216
  %.not1.i.i = icmp eq i64 %i.le, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %bb.cs
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.ln, %._crit_edge.i.i ], [ %i.kx, %bb.cs ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.le, %._crit_edge.i.i ], [ %.sroa.0237.0, %bb.cs ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.lf, %._crit_edge.i.i ], [ %.sroa.13.0, %bb.cs ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.lcssa.i10.i, ptr align 1 %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.lo = load ptr, ptr %i.ko, align 8, !tbaa !173
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.lp, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

.loopexit:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cu:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lr = load i8, ptr %i.lq, align 2, !tbaa !209
  %i.ls = load i16, ptr %0, align 4               ; 2 uses
  %i.lt = and i16 %i.ls, 3                        ; 2 uses
  %i.lu = zext nneg i16 %i.lt to i32
  %i.lv = sub nuw i64 %.0.i208, %.sroa.0237.0
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i217 = load ptr, ptr %i.lw, align 8, !tbaa !170 ; 6 uses
  %i.lx = icmp eq i16 %i.lt, 0
  br i1 %i.lx, label %bb.cv, label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.ly = and i16 %i.ls, 64
  %.not154 = icmp eq i16 %i.ly, 0
  br i1 %.not154, label %bb.dc, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = load float, ptr %i.a, align 4, !tbaa !193
  %i.ma = call float @llvm.fabs.f32(float %i.lz)
  %i.mb = fcmp ueq float %i.ma, +inf
  br i1 %i.mb, label %bb.dc, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mc = load i8, ptr %.sroa.8.1, align 1, !tbaa !74
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !74
  %i.mg = icmp ult i8 %i.mf, 16
  br i1 %i.mg, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = load i8, ptr %.sroa.13.0, align 1, !tbaa !74
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 24 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !173 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !173
  store i8 %i.mh, ptr %i.mj, align 1, !tbaa !74
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !171
  %i.mn = load ptr, ptr %i.mi, align 8, !tbaa !171
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !185
  %i.mt = icmp eq i64 %i.mq, %i.ms
  br i1 %i.mt, label %bb.cz, label %_ZNSt8__format10_Sink_iterIcEaSEc.exit, !prof !135

bb.cz:                                            ; preds = %bb.cy
  %i.mu = load ptr, ptr %.sroa.0.0.copyload.i217, align 8, !tbaa !40
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i217)
          to label %_ZNSt8__format10_Sink_iterIcEaSEc.exit unwind label %bb.db, !inline_history !23

_ZNSt8__format10_Sink_iterIcEaSEc.exit:           ; preds = %bb.cz, %bb.cy
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 1
  %i.mx = add i64 %.sroa.0237.0, -1
  br label %bb.dc

bb.da:                                            ; preds = %bb.dc
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %bb.cz
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dc:                                            ; preds = %bb.cv, %bb.cw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit, %bb.cx, %bb.cu
  %.sroa.0237.1 = phi i64 [ %.sroa.0237.0, %bb.cv ], [ %.sroa.0237.0, %bb.cw ], [ %.sroa.0237.0, %bb.cx ], [ %i.mx, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.0237.0, %bb.cu ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.cv ], [ %.sroa.13.0, %bb.cw ], [ %.sroa.13.0, %bb.cx ], [ %i.mw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.13.0, %bb.cu ]
  %.0106 = phi i8 [ 32, %bb.cv ], [ 32, %bb.cw ], [ 48, %bb.cx ], [ 48, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lr, %bb.cu ]
  %.0105 = phi i32 [ 2, %bb.cv ], [ 2, %bb.cw ], [ 2, %bb.cx ], [ 2, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lu, %bb.cu ]
  %i.na = invoke ptr @_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmS5_(ptr %.sroa.0.0.copyload.i217, i64 %.sroa.0237.1, ptr %.sroa.13.1, i32 noundef %.0105, i64 noundef %i.lv, i8 noundef signext %.0106)
          to label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit unwind label %bb.da

_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit: ; preds = %bb.dc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, %._crit_edge.i.i, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %.sroa.096.0 = phi ptr [ %.sroa.0.0.copyload.i212, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i ], [ %.sroa.0.0.copyload.i212, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ], [ %.sroa.0.0.copyload.i212, %._crit_edge.i.i ], [ %i.na, %bb.dc ]
  %i.nb = load ptr, ptr %11, align 8, !tbaa !71   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.hy
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit
  %i.nd = load i64, ptr %i.hy, align 8, !tbaa !74
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.nf = load i8, ptr %i.hx, align 8, !tbaa !158, !range !65, !noundef !66
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.dd, label %_ZNSt8__format16_Optional_localeD2Ev.exit

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %10) #30
  br label %_ZNSt8__format16_Optional_localeD2Ev.exit

_ZNSt8__format16_Optional_localeD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.nh = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.f
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
end_hunk_5
begin_hunk_6_@_ZZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6localeENKUlPcmE_clES9_m:bb.a
  %.248.i = getelementptr inbounds nuw i8, ptr %.24878.i, i64 1 ; 2 uses
  %i.de = icmp samesign ugt i8 %.03777.i, 1
  br i1 %i.de, label %.lr.ph79.i, label %.loopexit59.i, !llvm.loop !997

.loopexit.i:                                      ; preds = %.lr.ph92.i, %middle.block103, %vec.epilog.middle.block120, %.lr.ph98.i
  %.4.lcssa.i = phi ptr [ %.397.i, %.lr.ph98.i ], [ %i.eb, %vec.epilog.middle.block120 ], [ %i.dp, %middle.block103 ], [ %i.ed, %.lr.ph92.i ]
  %.450.lcssa.i = phi ptr [ %.45088.i, %.lr.ph98.i ], [ %i.dy, %vec.epilog.middle.block120 ], [ %i.dm, %middle.block103 ], [ %.450.i, %.lr.ph92.i ] ; 2 uses
  %.not54.i = icmp eq i64 %i.df, 0
  br i1 %.not54.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i, !llvm.loop !13

.lr.ph98.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.in100.i = phi i64 [ %i.df, %.loopexit.i ], [ %.039.lcssa61.i, %.preheader.i ]
  %.397.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.144.lcssa.i, %.preheader.i ] ; 12 uses
  %.34996.i = phi ptr [ %.450.lcssa.i, %.loopexit.i ], [ %.147.lcssa.i, %.preheader.i ] ; 8 uses
  %i.df = add i64 %.in100.i, -1                   ; 3 uses
  store i8 %i.f, ptr %.34996.i, align 1, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !74  ; 7 uses
  %.45088.i = getelementptr inbounds nuw i8, ptr %.34996.i, i64 1 ; 6 uses
  %i.di = icmp sgt i8 %i.dh, 0
  br i1 %i.di, label %iter.check108, label %.loopexit.i

iter.check108:                                    ; preds = %.lr.ph98.i
  %.397.i89 = ptrtoaddr ptr %.397.i to i64
  %.34996.i88 = ptrtoaddr ptr %.34996.i to i64
  %i.dj = zext nneg i8 %i.dh to i64               ; 5 uses
  %min.iters.check91 = icmp ult i8 %i.dh, 4
  %i.dk = sub i64 %.34996.i88, %.397.i89
  %diff.check90 = icmp ult i64 %i.dk, 31
  %or.cond126 = select i1 %min.iters.check91, i1 true, i1 %diff.check90
  br i1 %or.cond126, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check92

vector.main.loop.iter.check92:                    ; preds = %iter.check108
  %min.iters.check93 = icmp ult i8 %i.dh, 32
  br i1 %min.iters.check93, label %vec.epilog.ph112, label %vector.ph94

vector.ph94:                                      ; preds = %vector.main.loop.iter.check92
  %i.dl = and i64 %i.dj, 28
  %n.vec95 = and i64 %i.dj, 96                    ; 7 uses
  %i.dm = getelementptr i8, ptr %.45088.i, i64 %n.vec95 ; 2 uses
  %i.dn = trunc nuw nsw i64 %n.vec95 to i8
  %i.do = sub nsw i8 %i.dh, %i.dn
  %i.dp = getelementptr i8, ptr %.397.i, i64 %n.vec95 ; 2 uses
  %i.dq = getelementptr i8, ptr %.397.i, i64 16
  %wide.load100 = load <16 x i8>, ptr %.397.i, align 1, !tbaa !74
  %wide.load101 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !74
  %i.dr = getelementptr i8, ptr %.34996.i, i64 17
  store <16 x i8> %wide.load100, ptr %.45088.i, align 1, !tbaa !74
  store <16 x i8> %wide.load101, ptr %i.dr, align 1, !tbaa !74
  %i.ds = icmp eq i64 %n.vec95, 32
  br i1 %i.ds, label %middle.block103, label %vector.body96.1

vector.body96.1:                                  ; preds = %vector.ph94
  %next.gep98.1 = getelementptr i8, ptr %.34996.i, i64 33
  %next.gep99.1 = getelementptr i8, ptr %.397.i, i64 32
  %i.dt = getelementptr i8, ptr %.397.i, i64 48
  %wide.load100.1 = load <16 x i8>, ptr %next.gep99.1, align 1, !tbaa !74
  %wide.load101.1 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !74
  %i.du = getelementptr i8, ptr %.34996.i, i64 49
  store <16 x i8> %wide.load100.1, ptr %next.gep98.1, align 1, !tbaa !74
  store <16 x i8> %wide.load101.1, ptr %i.du, align 1, !tbaa !74
  %i.dv = icmp eq i64 %n.vec95, 64
  br i1 %i.dv, label %middle.block103, label %vector.body96.2

vector.body96.2:                                  ; preds = %vector.body96.1
  %next.gep98.2 = getelementptr i8, ptr %.34996.i, i64 65
  %next.gep99.2 = getelementptr i8, ptr %.397.i, i64 64
  %i.dw = getelementptr i8, ptr %.397.i, i64 80
  %wide.load100.2 = load <16 x i8>, ptr %next.gep99.2, align 1, !tbaa !74
  %wide.load101.2 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !74
  %i.dx = getelementptr i8, ptr %.34996.i, i64 81
  store <16 x i8> %wide.load100.2, ptr %next.gep98.2, align 1, !tbaa !74
  store <16 x i8> %wide.load101.2, ptr %i.dx, align 1, !tbaa !74
  br label %middle.block103

middle.block103:                                  ; preds = %vector.body96.2, %vector.body96.1, %vector.ph94
  %cmp.n104 = icmp eq i64 %n.vec95, %i.dj
  br i1 %cmp.n104, label %.loopexit.i, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block103
  %min.epilog.iters.check111 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check111, label %.lr.ph92.i.preheader, label %vec.epilog.ph112, !prof !166

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check92, %vec.epilog.iter.check110
  %vec.epilog.resume.val105 = phi i64 [ %n.vec95, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check92 ]
  %n.vec113 = and i64 %i.dj, 124                  ; 5 uses
  %i.dy = getelementptr i8, ptr %.45088.i, i64 %n.vec113 ; 2 uses
  %i.dz = trunc nuw nsw i64 %n.vec113 to i8
  %i.ea = sub nsw i8 %i.dh, %i.dz
  %i.eb = getelementptr i8, ptr %.397.i, i64 %n.vec113 ; 2 uses
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph112
  %index115 = phi i64 [ %vec.epilog.resume.val105, %vec.epilog.ph112 ], [ %index.next119, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %.45088.i, i64 %index115
  %next.gep117 = getelementptr i8, ptr %.397.i, i64 %index115
  %wide.load118 = load <4 x i8>, ptr %next.gep117, align 1, !tbaa !74
  store <4 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !74
  %index.next119 = add nuw i64 %index115, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.ec, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !998

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body114
  %cmp.n121 = icmp eq i64 %n.vec113, %i.dj
  br i1 %cmp.n121, label %.loopexit.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check108, %vec.epilog.iter.check110, %vec.epilog.middle.block120
  %.45091.i.ph = phi ptr [ %.45088.i, %iter.check108 ], [ %i.dm, %vec.epilog.iter.check110 ], [ %i.dy, %vec.epilog.middle.block120 ]
  %.090.i.ph = phi i8 [ %i.dh, %iter.check108 ], [ %i.do, %vec.epilog.iter.check110 ], [ %i.ea, %vec.epilog.middle.block120 ]
  %.489.i.ph = phi ptr [ %.397.i, %iter.check108 ], [ %i.dp, %vec.epilog.iter.check110 ], [ %i.eb, %vec.epilog.middle.block120 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %.45091.i = phi ptr [ %.450.i, %.lr.ph92.i ], [ %.45091.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.090.i = phi i8 [ %i.ef, %.lr.ph92.i ], [ %.090.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.489.i = phi ptr [ %i.ed, %.lr.ph92.i ], [ %.489.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.489.i, i64 1 ; 2 uses
  %i.ee = load i8, ptr %.489.i, align 1, !tbaa !74
  store i8 %i.ee, ptr %.45091.i, align 1, !tbaa !74
  %i.ef = add nsw i8 %.090.i, -1
  %.450.i = getelementptr inbounds nuw i8, ptr %.45091.i, i64 1 ; 2 uses
  %i.eg = icmp samesign ugt i8 %.090.i, 1
  br i1 %i.eg, label %.lr.ph92.i, label %.loopexit.i, !llvm.loop !999

_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit: ; preds = %.loopexit.i, %.preheader.i
  %.349.lcssa.i = phi ptr [ %.147.lcssa.i, %.preheader.i ], [ %.450.lcssa.i, %.loopexit.i ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1008, !nonnull !66, !align !189
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109 ; 2 uses
  %.not = icmp eq i64 %i.ej, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1009, !nonnull !66, !align !189
  %i.em = load i64, ptr %i.el, align 8, !tbaa !109
  %.not8 = icmp eq i64 %i.em, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1010, !nonnull !66
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !74
  store i8 %i.ep, ptr %.349.lcssa.i, align 1, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %.349.lcssa.i, i64 1
  %i.er = load ptr, ptr %i.n, align 8, !tbaa !1006, !nonnull !66, !align !189 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !109
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !109
  %.pre = load ptr, ptr %i.eh, align 8, !tbaa !1008
  %.pre17 = load i64, ptr %.pre, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.eu = phi i64 [ %.pre17, %bb.d ], [ %i.ej, %bb.c ]
  %.0 = phi ptr [ %i.eq, %bb.d ], [ %.349.lcssa.i, %bb.c ] ; 3 uses
  %i.ev = icmp ugt i64 %i.eu, 1
  br i1 %i.ev, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !1003, !nonnull !66, !align !189 ; 2 uses
  %i.ex = load ptr, ptr %i.n, align 8, !tbaa !1006, !nonnull !66, !align !189
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !109 ; 5 uses
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !1011 ; 4 uses
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.g, label %_ZSt10__sv_checkmmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.319, i64 noundef %i.ey, i64 noundef %i.ez) #33
  unreachable

_ZSt10__sv_checkmmPKc.exit.i:                     ; preds = %bb.f
  %i.fb = sub nuw i64 %i.ez, %i.ey                ; 2 uses
  %i.fc = icmp eq i64 %i.ez, %i.ey
  br i1 %i.fc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt10__sv_checkmmPKc.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1005
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.ff, i64 %i.fb, i1 false)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit: ; preds = %_ZSt10__sv_checkmmPKc.exit.i, %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.fb
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit
  %.1 = phi ptr [ %i.fg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit ], [ %.0, %bb.e ], [ %.349.lcssa.i, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %i.fh = ptrtoint ptr %.1 to i64
  %i.fi = ptrtoint ptr %1 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  ret i64 %i.fj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %4 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i206 = alloca %union.anon.1198, align 16 ; 5 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.1198, align 16  ; 5 uses
  %i.a = alloca double, align 8                   ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %8 = alloca %"struct.std::to_chars_result", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %9 = alloca %class.anon.1225, align 8           ; 18 uses
  %10 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::locale", align 8      ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 19 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !114
  store i8 0, ptr %i.f, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 6, ptr %i.c, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.h = load i16, ptr %0, align 4                ; 5 uses
  %i.i = and i16 %i.h, 1536
  %i.j = icmp ne i16 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1, !tbaa !81
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i16 %i.h, 9
  %i.m = and i16 %i.l, 3
  switch i16 %i.m, label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !142
  %i.p = zext i16 %i.o to i64
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !142
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = load i64, ptr %2, align 8, !noalias !1024 ; 3 uses
  %i.u = and i64 %i.t, 15                         ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 4
  %i.x = mul nuw nsw i64 %i.s, 5
  %i.y = lshr i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74, !noalias !1024
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = lshr exact i64 %i.t, 4
  %i.ag = icmp samesign ugt i64 %i.af, %i.s
  %or.cond.i.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74, !noalias !1024
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.s ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0.copyload4.i = load i8, ptr %.sroa.5.0..sroa_idx3.i, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.5.0.i = phi i8 [ %i.aa, %bb.e ], [ %.sroa.5.0.copyload4.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.ak = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i8 noundef zeroext %.sroa.5.0.i)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.pre.pre = load i16, ptr %0, align 4
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc, %bb.c, %bb.b
  %.pre = phi i16 [ %i.h, %bb.c ], [ %.pre.pre, %.noexc ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.p, %bb.c ], [ %i.ak, %.noexc ], [ -1, %bb.b ] ; 2 uses
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !109
  %i.al = trunc i64 %.0.i to i32
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.i:                                             ; preds = %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit, %bb.a
  %i.an = phi i32 [ %i.al, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ 6, %bb.a ]
  %i.ao = phi i16 [ %.pre, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 0, ptr %i.e, align 4, !tbaa !199
  %i.ar = lshr i16 %i.ao, 11
  %i.as = and i16 %i.ar, 15
  switch i16 %i.as, label %bb.q [
    i16 2, label %bb.j
    i16 1, label %bb.r
    i16 4, label %bb.k
    i16 3, label %.thread.sink.split
    i16 6, label %bb.l
    i16 5, label %bb.m
    i16 8, label %bb.n
    i16 7, label %bb.o
    i16 0, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.d, align 1, !tbaa !81, !range !65, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.thread, label %bb.u

bb.q:                                             ; preds = %bb.i
  unreachable

.thread.sink.split:                               ; preds = %bb.n, %bb.l, %bb.i, %bb.k, %bb.o, %bb.m
  %.sink.ph = phi i32 [ 2, %bb.m ], [ 1, %bb.i ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.n ], [ 3, %bb.o ]
  %.4120.ph.ph = phi i8 [ 101, %bb.m ], [ 101, %bb.i ], [ 69, %bb.k ], [ 101, %bb.l ], [ 69, %bb.n ], [ 101, %bb.o ]
  %.0115.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.n ], [ true, %bb.o ]
  %.4114.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.n ], [ false, %bb.o ]
  store i8 1, ptr %i.d, align 1, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.p
  %.ph = phi i32 [ 3, %bb.p ], [ %.sink.ph, %.thread.sink.split ] ; 2 uses
  %.4120.ph = phi i8 [ 101, %bb.p ], [ %.4120.ph.ph, %.thread.sink.split ]
  %.0115.ph = phi i1 [ false, %bb.p ], [ %.0115.ph.ph, %.thread.sink.split ]
  %.4114.ph = phi i1 [ false, %bb.p ], [ %.4114.ph.ph, %.thread.sink.split ]
  store i32 %.ph, ptr %i.e, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.av, align 8, !tbaa !1025
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.aw, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.c, ptr %i.ax, align 8, !tbaa !202
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %bb.j
  %.0116 = phi i8 [ 80, %bb.j ], [ 101, %bb.i ]
  %.0110 = phi i1 [ true, %bb.j ], [ false, %bb.i ] ; 2 uses
  %i.ay = and i16 %i.ao, 30720
  %.not = icmp eq i16 %i.ay, 4096
  %spec.select = select i1 %.not, i8 %.0116, i8 112 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !199
  %.pre299 = load i8, ptr %i.d, align 1, !tbaa !81, !range !65
  %i.az = trunc nuw i8 %.pre299 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.ba, align 8, !tbaa !1025
end_hunk_6
begin_hunk_7_@_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hf, i64 %i.he, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.hg, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.he)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bv
  store i64 %i.hj, ptr %i.g, align 8, !tbaa !114
  br label %.sink.split382

bb.bx:                                            ; preds = %bb.bv, %bb.bq, %bb.bo
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.2127, i64 noundef %i.et, i8 noundef signext 48)
          to label %bb.bz unwind label %bb.bg     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  br i1 %i.er, label %.sink.split382, label %bb.ca

.sink.split382:                                   ; preds = %bb.bz, %bb.bw
  %.2127.sink = phi i64 [ %i.hj, %bb.bw ], [ %.2127, %bb.bz ]
  %.sink383 = phi i8 [ 0, %bb.bw ], [ 46, %bb.bz ]
  %i.ht = load ptr, ptr %7, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.2127.sink
  store i8 %.sink383, ptr %i.hu, align 1, !tbaa !74
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split382, %bb.bz
  %i.hv = load ptr, ptr %7, align 8, !tbaa !71
  %i.hw = load i64, ptr %i.g, align 8, !tbaa !114
  br label %bb.cb

bb.cb:                                            ; preds = %bb.as, %bb.ca, %bb.aw, %bb.aj, %bb.ai
  %.sroa.0268.1 = phi i64 [ %i.dh, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dh, %bb.as ], [ %i.hw, %bb.ca ], [ %i.fd, %bb.aw ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.1108, %bb.ai ], [ %.1108, %bb.aj ], [ %.1108, %bb.as ], [ %i.hv, %bb.ca ], [ %.1108, %bb.aw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i8 0, ptr %10, align 8, !tbaa !74
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i8 0, ptr %i.hx, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.hy, ptr %11, align 8, !tbaa !113
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !114
  store i8 0, ptr %i.hy, align 8, !tbaa !74
  %i.ia = load i16, ptr %0, align 4               ; 3 uses
  %i.ib = and i16 %i.ia, 32
  %.not152 = icmp eq i16 %i.ib, 0
  br i1 %.not152, label %bb.cm, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load double, ptr %i.a, align 8, !tbaa !195
  %i.id = call double @llvm.fabs.f64(double %i.ic)
  %i.ie = fcmp ueq double %i.id, +inf
  br i1 %i.ie, label %bb.cm, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !158, !range !65, !noalias !1026, !noundef !66
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.if) #30, !noalias !1026
  store i8 1, ptr %i.ig, align 8, !tbaa !158, !noalias !1026
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit: ; preds = %bb.cd, %bb.ce
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.if) #30
  invoke void @_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %.sroa.0268.1, ptr %.sroa.8.1, i8 noundef signext %.4120355, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.ij = load ptr, ptr %11, align 8, !tbaa !71   ; 6 uses
  %i.ik = icmp eq ptr %i.ij, %i.hy
  %i.il = load ptr, ptr %12, align 8, !tbaa !71   ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.in = icmp eq ptr %i.il, %i.im                ; 2 uses
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !114 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  switch i64 %i.ip, label %bb.ci [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ir = load i8, ptr %i.il, align 1, !tbaa !74
  store i8 %i.ir, ptr %i.ij, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.il, i64 %i.ip, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.is = load i64, ptr %i.io, align 8, !tbaa !114 ; 2 uses
  store i64 %i.is, ptr %i.hz, align 8, !tbaa !114
  %i.it = load ptr, ptr %11, align 8, !tbaa !71
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 0, ptr %i.iu, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !tbaa !74
  store <2 x i64> %i.iw, ptr %i.hz, align 8, !tbaa !74
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194
  %i.ix = load i64, ptr %i.hy, align 8, !tbaa !74
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iz = load <2 x i64>, ptr %i.iy, align 8, !tbaa !74
  store <2 x i64> %i.iz, ptr %i.hz, align 8, !tbaa !74
  %.not.i195 = icmp eq ptr %i.ij, null
  br i1 %.not.i195, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ij, ptr %12, align 8, !tbaa !71
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.im, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196, %bb.cj, %bb.ck
  %i.ja = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196 ], [ %i.ij, %bb.cj ], [ %i.im, %bb.ck ]
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.jb, align 8, !tbaa !114
  store i8 0, ptr %i.ja, align 1, !tbaa !74
  %i.jc = load ptr, ptr %12, align 8, !tbaa !71   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !74
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jh = load i64, ptr %i.hz, align 8, !tbaa !114 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0                    ; 2 uses
  %i.jj = load ptr, ptr %11, align 8
  %spec.select285 = select i1 %i.ji, i64 %.sroa.0268.1, i64 %i.jh
  %spec.select286 = select i1 %i.ji, ptr %.sroa.8.1, ptr %i.jj
  %.pre303 = load i16, ptr %0, align 4
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.de

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cc, %bb.cb
  %i.jl = phi i16 [ %i.ia, %bb.cb ], [ %i.ia, %bb.cc ], [ %.pre303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0237.0 = phi i64 [ %.sroa.0268.1, %bb.cb ], [ %.sroa.0268.1, %bb.cc ], [ %spec.select285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %.sroa.8.1, %bb.cb ], [ %.sroa.8.1, %bb.cc ], [ %spec.select286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.jm = lshr i16 %i.jl, 7
  %i.jn = and i16 %i.jm, 3
  switch i16 %i.jn, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread [
    i16 1, label %bb.cn
    i16 2, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !141
  %i.jq = zext i16 %i.jp to i64
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i206)
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !141
  %i.jt = zext i16 %i.js to i64                   ; 5 uses
  %i.ju = load i64, ptr %2, align 8, !noalias !1027 ; 3 uses
  %i.jv = and i64 %i.ju, 15                       ; 2 uses
  %i.jw = icmp samesign ugt i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.jx = lshr i64 %i.ju, 4
  %i.jy = mul nuw nsw i64 %i.jt, 5
  %i.jz = lshr i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = and i8 %i.ka, 31
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74, !noalias !1027
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.ke, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cq:                                            ; preds = %bb.co
  %i.kf = icmp eq i64 %i.jv, 0
  %i.kg = lshr exact i64 %i.ju, 4
  %i.kh = icmp samesign ugt i64 %i.kg, %i.jt
  %or.cond.i.i.i204 = select i1 %i.kf, i1 %i.kh, i1 false
  br i1 %or.cond.i.i.i204, label %bb.cr, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cr:                                            ; preds = %bb.cq
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !74, !noalias !1027
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %i.jt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i209 = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %.sroa.5.0.copyload4.i210 = load i8, ptr %.sroa.5.0..sroa_idx3.i209, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205: ; preds = %bb.cr, %bb.cq, %bb.cp
  %.sroa.5.0.i206 = phi i8 [ %i.kb, %bb.cp ], [ %.sroa.5.0.copyload4.i210, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.5.0.i206, ptr %.sroa.5.0..sroa_idx.i207, align 16
  %i.kl = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i8 noundef zeroext %.sroa.5.0.i206)
          to label %.noexc211 unwind label %.loopexit.split-lp

.noexc211:                                        ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i206)
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc211, %bb.cn
  %.0.i208 = phi i64 [ %i.jq, %bb.cn ], [ %i.kl, %.noexc211 ] ; 2 uses
  %.not153 = icmp ugt i64 %.0.i208, %.sroa.0237.0
  br i1 %.not153, label %bb.cu, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread: ; preds = %bb.cm, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i212 = load ptr, ptr %i.km, align 8, !tbaa !170 ; 8 uses
  %.not.i213 = icmp eq i64 %.sroa.0237.0, 0
  br i1 %.not.i213, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 24 ; 6 uses
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = sub i64 %i.kv, %i.kt                    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kt ; 2 uses
  %.not24.i.i = icmp ugt i64 %i.kw, %.sroa.0237.0
  br i1 %.not24.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cs, %.noexc216
  %i.ky = phi ptr [ %i.lh, %.noexc216 ], [ %i.kq, %bb.cs ]
  %.pn2128.i.i = phi i64 [ %i.lm, %.noexc216 ], [ %i.kw, %bb.cs ] ; 5 uses
  %.sroa.0.027.i.i = phi ptr [ %i.ln, %.noexc216 ], [ %i.kx, %bb.cs ]
  %.sroa.010.026.i.i = phi i64 [ %i.le, %.noexc216 ], [ %.sroa.0237.0, %bb.cs ]
  %.sroa.9.025.i.i = phi ptr [ %i.lf, %.noexc216 ], [ %.sroa.13.0, %bb.cs ] ; 2 uses
  %i.kz = icmp eq i64 %.pn2128.i.i, 0
  br i1 %i.kz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i, ptr align 1 %.sroa.9.025.i.i, i64 %.pn2128.i.i, i1 false)
  %.pre.i.i214 = load ptr, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.ct, %.lr.ph.i.i
  %i.la = phi ptr [ %i.ky, %.lr.ph.i.i ], [ %.pre.i.i214, %bb.ct ]
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %.pn2128.i.i
  store ptr %i.lb, ptr %i.ko, align 8, !tbaa !173
  %i.lc = load ptr, ptr %.sroa.0.0.copyload.i212, align 8, !tbaa !40
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i212)
          to label %.noexc216 unwind label %.loopexit, !inline_history !14

.noexc216:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.le = sub nuw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.lg = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.lh = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = load i64, ptr %i.ku, align 8
  %i.lm = sub i64 %i.ll, %i.lk                    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lk ; 2 uses
  %.not.i.i215 = icmp ugt i64 %i.lm, %i.le
  br i1 %.not.i.i215, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.noexc216
  %.not1.i.i = icmp eq i64 %i.le, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %bb.cs
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.ln, %._crit_edge.i.i ], [ %i.kx, %bb.cs ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.le, %._crit_edge.i.i ], [ %.sroa.0237.0, %bb.cs ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.lf, %._crit_edge.i.i ], [ %.sroa.13.0, %bb.cs ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.lcssa.i10.i, ptr align 1 %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.lo = load ptr, ptr %i.ko, align 8, !tbaa !173
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.lp, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

.loopexit:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cu:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lr = load i8, ptr %i.lq, align 2, !tbaa !209
  %i.ls = load i16, ptr %0, align 4               ; 2 uses
  %i.lt = and i16 %i.ls, 3                        ; 2 uses
  %i.lu = zext nneg i16 %i.lt to i32
  %i.lv = sub nuw i64 %.0.i208, %.sroa.0237.0
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i217 = load ptr, ptr %i.lw, align 8, !tbaa !170 ; 6 uses
  %i.lx = icmp eq i16 %i.lt, 0
  br i1 %i.lx, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.ly = and i16 %i.ls, 64
  %.not154 = icmp eq i16 %i.ly, 0
  br i1 %.not154, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = load double, ptr %i.a, align 8, !tbaa !195
  %i.ma = call double @llvm.fabs.f64(double %i.lz)
  %i.mb = fcmp ueq double %i.ma, +inf
  br i1 %i.mb, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mc = load i8, ptr %.sroa.8.1, align 1, !tbaa !74
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !74
  %i.mg = icmp ult i8 %i.mf, 16
  br i1 %i.mg, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = load i8, ptr %.sroa.13.0, align 1, !tbaa !74
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 24 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !173 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !173
  store i8 %i.mh, ptr %i.mj, align 1, !tbaa !74
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !171
  %i.mn = load ptr, ptr %i.mi, align 8, !tbaa !171
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !185
  %i.mt = icmp eq i64 %i.mq, %i.ms
  br i1 %i.mt, label %bb.cz, label %_ZNSt8__format10_Sink_iterIcEaSEc.exit, !prof !135

bb.cz:                                            ; preds = %bb.cy
  %i.mu = load ptr, ptr %.sroa.0.0.copyload.i217, align 8, !tbaa !40
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i217)
          to label %_ZNSt8__format10_Sink_iterIcEaSEc.exit unwind label %bb.da, !inline_history !23

_ZNSt8__format10_Sink_iterIcEaSEc.exit:           ; preds = %bb.cz, %bb.cy
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 1
  %i.mx = add i64 %.sroa.0237.0, -1
  br label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %bb.cv, %bb.cw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit, %bb.cx, %bb.cu
  %.sroa.0237.1 = phi i64 [ %.sroa.0237.0, %bb.cv ], [ %.sroa.0237.0, %bb.cw ], [ %.sroa.0237.0, %bb.cx ], [ %i.mx, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.0237.0, %bb.cu ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.cv ], [ %.sroa.13.0, %bb.cw ], [ %.sroa.13.0, %bb.cx ], [ %i.mw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.13.0, %bb.cu ]
  %.0106 = phi i8 [ 32, %bb.cv ], [ 32, %bb.cw ], [ 48, %bb.cx ], [ 48, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lr, %bb.cu ]
  %.0105 = phi i32 [ 2, %bb.cv ], [ 2, %bb.cw ], [ 2, %bb.cx ], [ 2, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lu, %bb.cu ]
  %i.mz = invoke ptr @_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmS5_(ptr %.sroa.0.0.copyload.i217, i64 %.sroa.0237.1, ptr %.sroa.13.1, i32 noundef %.0105, i64 noundef %i.lv, i8 noundef signext %.0106)
          to label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit: ; preds = %bb.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, %._crit_edge.i.i, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %.sroa.096.0 = phi ptr [ %.sroa.0.0.copyload.i212, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i ], [ %.sroa.0.0.copyload.i212, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ], [ %.sroa.0.0.copyload.i212, %._crit_edge.i.i ], [ %i.mz, %bb.db ]
  %i.nb = load ptr, ptr %11, align 8, !tbaa !71   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.hy
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit
  %i.nd = load i64, ptr %i.hy, align 8, !tbaa !74
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.nf = load i8, ptr %i.hx, align 8, !tbaa !158, !range !65, !noundef !66
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.dd, label %_ZNSt8__format16_Optional_localeD2Ev.exit

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %10) #30
  br label %_ZNSt8__format16_Optional_localeD2Ev.exit

_ZNSt8__format16_Optional_localeD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.nh = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.f
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
end_hunk_7
begin_hunk_8_@_ZNSt8__format14__formatter_fpIcE23_S_resize_and_overwriteIcZNKS1_6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS8_EUlPcmE_EEvRNSt7__cxx1112basic_stringISA_St11char_traitsISA_ESaISA_EEEmS7_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114  ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.344) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !74
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !74
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !114
  %i.p = load ptr, ptr %0, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.g, %.sink.split.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %1
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 3 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !1029, !nonnull !66
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81, !range !65, !noundef !66
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1030, !nonnull !66, !align !189
  %i.aa = load double, ptr %i.z, align 8, !tbaa !195
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1031, !nonnull !66, !align !210
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1032, !nonnull !66, !align !189
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !109
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = tail call { ptr, i32 } @_ZSt8to_charsPcS_dSt12chars_formati(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, double noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ah) #30
  br label %_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1031, !nonnull !66, !align !210
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !199 ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1030, !nonnull !66, !align !189
  %i.ao = load double, ptr %i.an, align 8, !tbaa !195 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call { ptr, i32 } @_ZSt8to_charsPcS_dSt12chars_format(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, double noundef %i.ao, i32 noundef %i.al) #30
  br label %_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call { ptr, i32 } @_ZSt8to_charsPcS_d(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, double noundef %i.ao) #30
  br label %_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit

_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %.pn.i.i, 0   ; 2 uses
  %i.as = extractvalue { ptr, i32 } %.pn.i.i, 1   ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !171
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !204
  %i.at = icmp eq i32 %i.as, 0
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.r to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = select i1 %i.at, i64 %i.aw, i64 0       ; 6 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !114 ; 7 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit
  %i.ba = sub nuw i64 %i.ax, %i.ay                ; 4 uses
  %i.bb = sub i64 9223372036854775807, %i.ay
  %i.bc = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i5

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.344) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i5: ; preds = %bb.l
  %i.bd = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i5
  %i.bg = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i5
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !74
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i6 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12 ]
  %.not.i.i.i.i8 = icmp ugt i64 %i.ax, %i.bi
  br i1 %.not.i.i.i.i8, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i9

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef %i.ba)
  %.pre.i.i11 = load ptr, ptr %0, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i9: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7
  %i.bj = phi ptr [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i7 ], [ %.pre.i.i11, %bb.n ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ay ; 2 uses
  %cond.i.i.i.i10 = icmp eq i64 %i.ba, 1
  br i1 %cond.i.i.i.i10, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i9
  store i8 0, ptr %i.bk, align 1, !tbaa !74
  br label %.sink.split.i.i4

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i9
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.ba, i1 false)
  br label %.sink.split.i.i4

bb.q:                                             ; preds = %_ZZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_ENKUlPcmE_clESB_m.exit
  %i.bl = icmp ult i64 %i.ax, %i.ay
  br i1 %i.bl, label %.sink.split.i.i4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13

.sink.split.i.i4:                                 ; preds = %bb.q, %bb.p, %bb.o
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !114
  %i.bm = load ptr, ptr %0, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ax
  store i8 0, ptr %i.bn, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13: ; preds = %bb.q, %.sink.split.i.i4
  ret void
}

; Function Attrs: nounwind
declare { ptr, i32 } @_ZSt8to_charsPcS_dSt12chars_formati(ptr noundef, ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare { ptr, i32 } @_ZSt8to_charsPcS_dSt12chars_format(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare { ptr, i32 } @_ZSt8to_charsPcS_d(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, x86_fp80 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %4 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i206 = alloca %union.anon.1198, align 16 ; 5 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.1198, align 16  ; 5 uses
  %i.a = alloca x86_fp80, align 16                ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %8 = alloca %"struct.std::to_chars_result", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %9 = alloca %class.anon.1228, align 8           ; 18 uses
  %10 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::locale", align 8      ; 7 uses
  store x86_fp80 %1, ptr %i.a, align 16, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 19 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !114
  store i8 0, ptr %i.f, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 6, ptr %i.c, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.h = load i16, ptr %0, align 4                ; 5 uses
  %i.i = and i16 %i.h, 1536
  %i.j = icmp ne i16 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1, !tbaa !81
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i16 %i.h, 9
  %i.m = and i16 %i.l, 3
  switch i16 %i.m, label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !142
  %i.p = zext i16 %i.o to i64
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !142
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = load i64, ptr %2, align 8, !noalias !1045 ; 3 uses
  %i.u = and i64 %i.t, 15                         ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 4
  %i.x = mul nuw nsw i64 %i.s, 5
  %i.y = lshr i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74, !noalias !1045
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = lshr exact i64 %i.t, 4
  %i.ag = icmp samesign ugt i64 %i.af, %i.s
  %or.cond.i.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74, !noalias !1045
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.s ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0.copyload4.i = load i8, ptr %.sroa.5.0..sroa_idx3.i, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.5.0.i = phi i8 [ %i.aa, %bb.e ], [ %.sroa.5.0.copyload4.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.ak = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i8 noundef zeroext %.sroa.5.0.i)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.pre.pre = load i16, ptr %0, align 4
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc, %bb.c, %bb.b
  %.pre = phi i16 [ %i.h, %bb.c ], [ %.pre.pre, %.noexc ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.p, %bb.c ], [ %i.ak, %.noexc ], [ -1, %bb.b ] ; 2 uses
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !109
  %i.al = trunc i64 %.0.i to i32
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.i:                                             ; preds = %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit, %bb.a
  %i.an = phi i32 [ %i.al, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ 6, %bb.a ]
  %i.ao = phi i16 [ %.pre, %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 0, ptr %i.e, align 4, !tbaa !199
  %i.ar = lshr i16 %i.ao, 11
  %i.as = and i16 %i.ar, 15
  switch i16 %i.as, label %bb.q [
    i16 2, label %bb.j
    i16 1, label %bb.r
    i16 4, label %bb.k
    i16 3, label %.thread.sink.split
    i16 6, label %bb.l
    i16 5, label %bb.m
    i16 8, label %bb.n
    i16 7, label %bb.o
    i16 0, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.i
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.d, align 1, !tbaa !81, !range !65, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.thread, label %bb.u

bb.q:                                             ; preds = %bb.i
  unreachable

.thread.sink.split:                               ; preds = %bb.n, %bb.l, %bb.i, %bb.k, %bb.o, %bb.m
  %.sink.ph = phi i32 [ 2, %bb.m ], [ 1, %bb.i ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.n ], [ 3, %bb.o ]
  %.4120.ph.ph = phi i8 [ 101, %bb.m ], [ 101, %bb.i ], [ 69, %bb.k ], [ 101, %bb.l ], [ 69, %bb.n ], [ 101, %bb.o ]
  %.0115.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.n ], [ true, %bb.o ]
  %.4114.ph.ph = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.n ], [ false, %bb.o ]
  store i8 1, ptr %i.d, align 1, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.p
  %.ph = phi i32 [ 3, %bb.p ], [ %.sink.ph, %.thread.sink.split ] ; 2 uses
  %.4120.ph = phi i8 [ 101, %bb.p ], [ %.4120.ph.ph, %.thread.sink.split ]
  %.0115.ph = phi i1 [ false, %bb.p ], [ %.0115.ph.ph, %.thread.sink.split ]
  %.4114.ph = phi i1 [ false, %bb.p ], [ %.4114.ph.ph, %.thread.sink.split ]
  store i32 %.ph, ptr %i.e, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.av, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.aw, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.c, ptr %i.ax, align 8, !tbaa !202
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %bb.j
  %.0116 = phi i8 [ 80, %bb.j ], [ 101, %bb.i ]
  %.0110 = phi i1 [ true, %bb.j ], [ false, %bb.i ] ; 2 uses
  %i.ay = and i16 %i.ao, 30720
  %.not = icmp eq i16 %i.ay, 4096
  %spec.select = select i1 %.not, i8 %.0116, i8 112 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !199
  %.pre299 = load i8, ptr %i.d, align 1, !tbaa !81, !range !65
  %i.az = trunc nuw i8 %.pre299 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.d, ptr %9, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.ba, align 8, !tbaa !1046
end_hunk_8
begin_hunk_9_@_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hf, i64 %i.he, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.hg, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.he)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bv
  store i64 %i.hj, ptr %i.g, align 8, !tbaa !114
  br label %.sink.split382

bb.bx:                                            ; preds = %bb.bv, %bb.bq, %bb.bo
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.2127, i64 noundef %i.et, i8 noundef signext 48)
          to label %bb.bz unwind label %bb.bg     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  br i1 %i.er, label %.sink.split382, label %bb.ca

.sink.split382:                                   ; preds = %bb.bz, %bb.bw
  %.2127.sink = phi i64 [ %i.hj, %bb.bw ], [ %.2127, %bb.bz ]
  %.sink383 = phi i8 [ 0, %bb.bw ], [ 46, %bb.bz ]
  %i.ht = load ptr, ptr %7, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.2127.sink
  store i8 %.sink383, ptr %i.hu, align 1, !tbaa !74
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split382, %bb.bz
  %i.hv = load ptr, ptr %7, align 8, !tbaa !71
  %i.hw = load i64, ptr %i.g, align 8, !tbaa !114
  br label %bb.cb

bb.cb:                                            ; preds = %bb.as, %bb.ca, %bb.aw, %bb.aj, %bb.ai
  %.sroa.0268.1 = phi i64 [ %i.dh, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dh, %bb.as ], [ %i.hw, %bb.ca ], [ %i.fd, %bb.aw ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.1108, %bb.ai ], [ %.1108, %bb.aj ], [ %.1108, %bb.as ], [ %i.hv, %bb.ca ], [ %.1108, %bb.aw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i8 0, ptr %10, align 8, !tbaa !74
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i8 0, ptr %i.hx, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.hy, ptr %11, align 8, !tbaa !113
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !114
  store i8 0, ptr %i.hy, align 8, !tbaa !74
  %i.ia = load i16, ptr %0, align 4               ; 3 uses
  %i.ib = and i16 %i.ia, 32
  %.not152 = icmp eq i16 %i.ib, 0
  br i1 %.not152, label %bb.cm, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load x86_fp80, ptr %i.a, align 16, !tbaa !197
  %i.id = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ic)
  %i.ie = fcmp ueq x86_fp80 %i.id, +inf
  br i1 %i.ie, label %bb.cm, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !158, !range !65, !noalias !1047, !noundef !66
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.if) #30, !noalias !1047
  store i8 1, ptr %i.ig, align 8, !tbaa !158, !noalias !1047
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit: ; preds = %bb.cd, %bb.ce
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.if) #30
  invoke void @_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %.sroa.0268.1, ptr %.sroa.8.1, i8 noundef signext %.4120355, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.ij = load ptr, ptr %11, align 8, !tbaa !71   ; 6 uses
  %i.ik = icmp eq ptr %i.ij, %i.hy
  %i.il = load ptr, ptr %12, align 8, !tbaa !71   ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.in = icmp eq ptr %i.il, %i.im                ; 2 uses
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194: ; preds = %bb.cf
  br i1 %i.in, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !114 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  switch i64 %i.ip, label %bb.ci [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ir = load i8, ptr %i.il, align 1, !tbaa !74
  store i8 %i.ir, ptr %i.ij, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.il, i64 %i.ip, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.is = load i64, ptr %i.io, align 8, !tbaa !114 ; 2 uses
  store i64 %i.is, ptr %i.hz, align 8, !tbaa !114
  %i.it = load ptr, ptr %11, align 8, !tbaa !71
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 0, ptr %i.iu, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i197
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !tbaa !74
  store <2 x i64> %i.iw, ptr %i.hz, align 8, !tbaa !74
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194
  %i.ix = load i64, ptr %i.hy, align 8, !tbaa !74
  store ptr %i.il, ptr %11, align 8, !tbaa !71
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.iz = load <2 x i64>, ptr %i.iy, align 8, !tbaa !74
  store <2 x i64> %i.iz, ptr %i.hz, align 8, !tbaa !74
  %.not.i195 = icmp eq ptr %i.ij, null
  br i1 %.not.i195, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ij, ptr %12, align 8, !tbaa !71
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.im, ptr %12, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196, %bb.cj, %bb.ck
  %i.ja = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196 ], [ %i.ij, %bb.cj ], [ %i.im, %bb.ck ]
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.jb, align 8, !tbaa !114
  store i8 0, ptr %i.ja, align 1, !tbaa !74
  %i.jc = load ptr, ptr %12, align 8, !tbaa !71   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !74
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jh = load i64, ptr %i.hz, align 8, !tbaa !114 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0                    ; 2 uses
  %i.jj = load ptr, ptr %11, align 8
  %spec.select285 = select i1 %i.ji, i64 %.sroa.0268.1, i64 %i.jh
  %spec.select286 = select i1 %i.ji, ptr %.sroa.8.1, ptr %i.jj
  %.pre303 = load i16, ptr %0, align 4
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.de

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cc, %bb.cb
  %i.jl = phi i16 [ %i.ia, %bb.cb ], [ %i.ia, %bb.cc ], [ %.pre303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0237.0 = phi i64 [ %.sroa.0268.1, %bb.cb ], [ %.sroa.0268.1, %bb.cc ], [ %spec.select285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %.sroa.8.1, %bb.cb ], [ %.sroa.8.1, %bb.cc ], [ %spec.select286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.jm = lshr i16 %i.jl, 7
  %i.jn = and i16 %i.jm, 3
  switch i16 %i.jn, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread [
    i16 1, label %bb.cn
    i16 2, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !141
  %i.jq = zext i16 %i.jp to i64
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i206)
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !141
  %i.jt = zext i16 %i.js to i64                   ; 5 uses
  %i.ju = load i64, ptr %2, align 8, !noalias !1048 ; 3 uses
  %i.jv = and i64 %i.ju, 15                       ; 2 uses
  %i.jw = icmp samesign ugt i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.jx = lshr i64 %i.ju, 4
  %i.jy = mul nuw nsw i64 %i.jt, 5
  %i.jz = lshr i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = and i8 %i.ka, 31
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74, !noalias !1048
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.ke, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cq:                                            ; preds = %bb.co
  %i.kf = icmp eq i64 %i.jv, 0
  %i.kg = lshr exact i64 %i.ju, 4
  %i.kh = icmp samesign ugt i64 %i.kg, %i.jt
  %or.cond.i.i.i204 = select i1 %i.kf, i1 %i.kh, i1 false
  br i1 %or.cond.i.i.i204, label %bb.cr, label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

bb.cr:                                            ; preds = %bb.cq
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !74, !noalias !1048
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %i.jt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, ptr noundef nonnull align 16 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !156
  %.sroa.5.0..sroa_idx3.i209 = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %.sroa.5.0.copyload4.i210 = load i8, ptr %.sroa.5.0..sroa_idx3.i209, align 16, !tbaa !155
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205

_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205: ; preds = %bb.cr, %bb.cq, %bb.cp
  %.sroa.5.0.i206 = phi i8 [ %i.kb, %bb.cp ], [ %.sroa.5.0.copyload4.i210, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i206, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.5.0.i206, ptr %.sroa.5.0..sroa_idx.i207, align 16
  %i.kl = invoke noundef i64 @_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitINS1_17_WidthPrecVisitorEEEDcOT_NS1_6_Arg_tE(ptr noundef nonnull align 16 dereferenceable(17) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i8 noundef zeroext %.sroa.5.0.i206)
          to label %.noexc211 unwind label %.loopexit.split-lp

.noexc211:                                        ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i206)
  br label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit: ; preds = %.noexc211, %bb.cn
  %.0.i208 = phi i64 [ %i.jq, %bb.cn ], [ %i.kl, %.noexc211 ] ; 2 uses
  %.not153 = icmp ugt i64 %.0.i208, %.sroa.0237.0
  br i1 %.not153, label %bb.cu, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread

_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread: ; preds = %bb.cm, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i212 = load ptr, ptr %i.km, align 8, !tbaa !170 ; 8 uses
  %.not.i213 = icmp eq i64 %.sroa.0237.0, 0
  br i1 %.not.i213, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 24 ; 6 uses
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i212, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = sub i64 %i.kv, %i.kt                    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kt ; 2 uses
  %.not24.i.i = icmp ugt i64 %i.kw, %.sroa.0237.0
  br i1 %.not24.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cs, %.noexc216
  %i.ky = phi ptr [ %i.lh, %.noexc216 ], [ %i.kq, %bb.cs ]
  %.pn2128.i.i = phi i64 [ %i.lm, %.noexc216 ], [ %i.kw, %bb.cs ] ; 5 uses
  %.sroa.0.027.i.i = phi ptr [ %i.ln, %.noexc216 ], [ %i.kx, %bb.cs ]
  %.sroa.010.026.i.i = phi i64 [ %i.le, %.noexc216 ], [ %.sroa.0237.0, %bb.cs ]
  %.sroa.9.025.i.i = phi ptr [ %i.lf, %.noexc216 ], [ %.sroa.13.0, %bb.cs ] ; 2 uses
  %i.kz = icmp eq i64 %.pn2128.i.i, 0
  br i1 %i.kz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i, ptr align 1 %.sroa.9.025.i.i, i64 %.pn2128.i.i, i1 false)
  %.pre.i.i214 = load ptr, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.ct, %.lr.ph.i.i
  %i.la = phi ptr [ %i.ky, %.lr.ph.i.i ], [ %.pre.i.i214, %bb.ct ]
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %.pn2128.i.i
  store ptr %i.lb, ptr %i.ko, align 8, !tbaa !173
  %i.lc = load ptr, ptr %.sroa.0.0.copyload.i212, align 8, !tbaa !40
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i212)
          to label %.noexc216 unwind label %.loopexit, !inline_history !14

.noexc216:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.le = sub nuw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.lg = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.lh = load ptr, ptr %i.ko, align 8, !tbaa !171 ; 2 uses
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = load i64, ptr %i.ku, align 8
  %i.lm = sub i64 %i.ll, %i.lk                    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lk ; 2 uses
  %.not.i.i215 = icmp ugt i64 %i.lm, %i.le
  br i1 %.not.i.i215, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.noexc216
  %.not1.i.i = icmp eq i64 %i.le, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %bb.cs
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.ln, %._crit_edge.i.i ], [ %i.kx, %bb.cs ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.le, %._crit_edge.i.i ], [ %.sroa.0237.0, %bb.cs ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.lf, %._crit_edge.i.i ], [ %.sroa.13.0, %bb.cs ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.lcssa.i10.i, ptr align 1 %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.lo = load ptr, ptr %i.ko, align 8, !tbaa !173
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.lp, ptr %i.ko, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

.loopexit:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i205
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cu:                                            ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lr = load i8, ptr %i.lq, align 2, !tbaa !209
  %i.ls = load i16, ptr %0, align 4               ; 2 uses
  %i.lt = and i16 %i.ls, 3                        ; 2 uses
  %i.lu = zext nneg i16 %i.lt to i32
  %i.lv = sub nuw i64 %.0.i208, %.sroa.0237.0
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i217 = load ptr, ptr %i.lw, align 8, !tbaa !170 ; 6 uses
  %i.lx = icmp eq i16 %i.lt, 0
  br i1 %i.lx, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.ly = and i16 %i.ls, 64
  %.not154 = icmp eq i16 %i.ly, 0
  br i1 %.not154, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = load x86_fp80, ptr %i.a, align 16, !tbaa !197
  %i.ma = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.lz)
  %i.mb = fcmp ueq x86_fp80 %i.ma, +inf
  br i1 %i.mb, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mc = load i8, ptr %.sroa.8.1, align 1, !tbaa !74
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !74
  %i.mg = icmp ult i8 %i.mf, 16
  br i1 %i.mg, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = load i8, ptr %.sroa.13.0, align 1, !tbaa !74
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 24 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !173 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !173
  store i8 %i.mh, ptr %i.mj, align 1, !tbaa !74
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !171
  %i.mn = load ptr, ptr %i.mi, align 8, !tbaa !171
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i217, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !185
  %i.mt = icmp eq i64 %i.mq, %i.ms
  br i1 %i.mt, label %bb.cz, label %_ZNSt8__format10_Sink_iterIcEaSEc.exit, !prof !135

bb.cz:                                            ; preds = %bb.cy
  %i.mu = load ptr, ptr %.sroa.0.0.copyload.i217, align 8, !tbaa !40
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i217)
          to label %_ZNSt8__format10_Sink_iterIcEaSEc.exit unwind label %bb.da, !inline_history !23

_ZNSt8__format10_Sink_iterIcEaSEc.exit:           ; preds = %bb.cz, %bb.cy
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 1
  %i.mx = add i64 %.sroa.0237.0, -1
  br label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %bb.cv, %bb.cw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit, %bb.cx, %bb.cu
  %.sroa.0237.1 = phi i64 [ %.sroa.0237.0, %bb.cv ], [ %.sroa.0237.0, %bb.cw ], [ %.sroa.0237.0, %bb.cx ], [ %i.mx, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.0237.0, %bb.cu ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.cv ], [ %.sroa.13.0, %bb.cw ], [ %.sroa.13.0, %bb.cx ], [ %i.mw, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %.sroa.13.0, %bb.cu ]
  %.0106 = phi i8 [ 32, %bb.cv ], [ 32, %bb.cw ], [ 48, %bb.cx ], [ 48, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lr, %bb.cu ]
  %.0105 = phi i32 [ 2, %bb.cv ], [ 2, %bb.cw ], [ 2, %bb.cx ], [ 2, %_ZNSt8__format10_Sink_iterIcEaSEc.exit ], [ %i.lu, %bb.cu ]
  %i.mz = invoke ptr @_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmS5_(ptr %.sroa.0.0.copyload.i217, i64 %.sroa.0237.1, ptr %.sroa.13.1, i32 noundef %.0105, i64 noundef %i.lv, i8 noundef signext %.0106)
          to label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit: ; preds = %bb.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, %._crit_edge.i.i, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %.sroa.096.0 = phi ptr [ %.sroa.0.0.copyload.i212, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i ], [ %.sroa.0.0.copyload.i212, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ], [ %.sroa.0.0.copyload.i212, %._crit_edge.i.i ], [ %i.mz, %bb.db ]
  %i.nb = load ptr, ptr %11, align 8, !tbaa !71   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.hy
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit
  %i.nd = load i64, ptr %i.hy, align 8, !tbaa !74
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.nf = load i8, ptr %i.hx, align 8, !tbaa !158, !range !65, !noundef !66
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.dd, label %_ZNSt8__format16_Optional_localeD2Ev.exit

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %10) #30
  br label %_ZNSt8__format16_Optional_localeD2Ev.exit

_ZNSt8__format16_Optional_localeD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.nh = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.f
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
end_hunk_9
begin_hunk_10_@_ZNKSt9formatterIPKvcE6formatINSt8__format10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorES1_RS9_:bb.a
  %.pn2128.i.i = phi i64 [ %i.cr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i ], [ %i.cb, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ] ; 5 uses
  %.sroa.0.027.i.i = phi ptr [ %i.cs, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i ], [ %i.cc, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ]
  %.sroa.010.026.i.i = phi i64 [ %i.ci, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i ], [ %sext, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ]
  %.sroa.9.025.i.i = phi ptr [ %i.ch, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i ], [ %i.a, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ] ; 2 uses
  %i.ce = icmp eq i64 %.pn2128.i.i, 0
  br i1 %i.ce, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i, ptr align 1 %.sroa.9.025.i.i, i64 %.pn2128.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.bt, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.cf = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.pre.i.i, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pn2128.i.i
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !173
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.ci = sub nuw nsw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.cj = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i), !inline_history !16
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !171 ; 2 uses
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !171 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = load i64, ptr %i.bz, align 8
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cr, %i.ci
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %.not1.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.cs, %._crit_edge.i.i ], [ %i.cc, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.ci, %._crit_edge.i.i ], [ %sext, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.ch, %._crit_edge.i.i ], [ %i.a, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit.thread ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.lcssa.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.ct = load ptr, ptr %i.bt, align 8, !tbaa !173
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.cu, ptr %i.bt, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

bb.l:                                             ; preds = %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i33 = load ptr, ptr %i.cv, align 8, !tbaa !170 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i33, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i33, i64 24 ; 6 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !171 ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !171 ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i33, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = sub i64 %i.de, %i.dc                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %.not24.i.i35 = icmp ugt i64 %i.df, 2
  br i1 %.not24.i.i35, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i46, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42
  %i.dh = phi ptr [ %i.dq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42 ], [ %i.cz, %bb.l ]
  %.pn2128.i.i37 = phi i64 [ %i.dv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42 ], [ %i.df, %bb.l ] ; 5 uses
  %.sroa.0.027.i.i38 = phi ptr [ %i.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42 ], [ %i.dg, %bb.l ]
  %.sroa.010.026.i.i39 = phi i64 [ %i.dm, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42 ], [ 2, %bb.l ]
  %.sroa.9.025.i.i40 = phi ptr [ %i.dl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42 ], [ %i.a, %bb.l ] ; 2 uses
  %i.di = icmp eq i64 %.pn2128.i.i37, 0
  br i1 %i.di, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i38, ptr align 1 %.sroa.9.025.i.i40, i64 %.pn2128.i.i37, i1 false)
  %.pre.i.i41 = load ptr, ptr %i.cx, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42: ; preds = %bb.m, %.lr.ph.i.i36
  %i.dj = phi ptr [ %i.dh, %.lr.ph.i.i36 ], [ %.pre.i.i41, %bb.m ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.pn2128.i.i37
  store ptr %i.dk, ptr %i.cx, align 8, !tbaa !173
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i40, i64 %.pn2128.i.i37 ; 2 uses
  %i.dm = sub nuw nsw i64 %.sroa.010.026.i.i39, %.pn2128.i.i37 ; 4 uses
  %i.dn = load ptr, ptr %.sroa.0.0.copyload.i33, align 8, !tbaa !40
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i33), !inline_history !16
  %i.dp = load ptr, ptr %i.cw, align 8, !tbaa !171 ; 2 uses
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !171 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 2 uses
  %i.du = load i64, ptr %i.dd, align 8
  %i.dv = sub i64 %i.du, %i.dt                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dt ; 2 uses
  %.not.i.i43 = icmp ugt i64 %i.dv, %i.dm
  br i1 %.not.i.i43, label %._crit_edge.i.i44, label %.lr.ph.i.i36, !llvm.loop !15

._crit_edge.i.i44:                                ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i42
  %.not1.i.i45 = icmp eq i64 %i.dm, 0
  br i1 %.not1.i.i45, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit50, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i46

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i46: ; preds = %._crit_edge.i.i44, %bb.l
  %.sroa.0.0.lcssa.i10.i47 = phi ptr [ %i.dw, %._crit_edge.i.i44 ], [ %i.dg, %bb.l ]
  %.sroa.010.0.lcssa.i9.i48 = phi i64 [ %i.dm, %._crit_edge.i.i44 ], [ 2, %bb.l ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i49 = phi ptr [ %i.dl, %._crit_edge.i.i44 ], [ %i.a, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.lcssa.i10.i47, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.9.0.lcssa.i8.i49, i64 %.sroa.010.0.lcssa.i9.i48, i1 false)
  %i.dx = load ptr, ptr %i.cx, align 8, !tbaa !173
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.010.0.lcssa.i9.i48
  store ptr %i.dy, ptr %i.cx, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit50

_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit50: ; preds = %._crit_edge.i.i44, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i46
  %i.dz = sub nuw i64 %.0.i, %sext
  %i.ea = call ptr @_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmS5_(ptr nonnull %.sroa.0.0.copyload.i33, i64 %.sink.i, ptr nonnull %i.c, i32 noundef 2, i64 noundef %i.dz, i8 noundef signext 48)
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

bb.n:                                             ; preds = %.loopexit
  %i.eb = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 %sext, ptr nonnull %i.a, i64 noundef %sext, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(7) %0, i32 noundef 2)
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, %._crit_edge.i.i, %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit50, %bb.n
  %.sroa.029.1 = phi ptr [ %i.eb, %bb.n ], [ %i.ea, %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit50 ], [ %.sroa.0.0.copyload.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i ], [ %.sroa.0.0.copyload.i, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.sroa.029.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [131 x i8], align 16              ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i128 %1, 128
  %or.cond.i = icmp ult i128 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i128 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = icmp slt i128 %1, 0
  %.045 = tail call i128 @llvm.abs.i128(i128 %1, i1 false) ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.aa [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.v
    i16 6, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.o = icmp eq i128 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i128 %.045, 64                      ; 2 uses
  %.not.i.i.i.i46.i = icmp eq i128 %i.p, 0
  br i1 %.not.i.i.i.i46.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread: ; preds = %bb.f
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true) ; 2 uses
  %i.s = sub nuw nsw i64 128, %i.r
  br label %.lr.ph.preheader.i49.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i: ; preds = %bb.f
  %i.t = trunc nuw i128 %.045 to i64
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true) ; 3 uses
  %i.v = or disjoint i64 %i.u, 64
  %i.w = sub nuw nsw i64 64, %i.u
  %.not16.i.i = icmp eq i64 %i.u, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i49.i

.lr.ph.preheader.i49.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i
  %i.x = phi i64 [ %i.s, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.w, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 2 uses
  %.1.i.i.i.i48.i85 = phi i64 [ %i.r, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.v, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 4 uses
  %.015.i.i = sub nuw nsw i64 127, %.1.i.i.i.i48.i85 ; 2 uses
  %3 = trunc i64 %.1.i.i.i.i48.i85 to i1
  br i1 %3, label %.lr.ph.i50.i.prol.loopexit, label %.lr.ph.i50.i.prol

.lr.ph.i50.i.prol:                                ; preds = %.lr.ph.preheader.i49.i
  %i.y = trunc i128 %.045 to i8
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015.i.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !74
  %i.ac = lshr i128 %.045, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 126, %.1.i.i.i.i48.i85
  br label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol.loopexit:                       ; preds = %.lr.ph.i50.i.prol, %.lr.ph.preheader.i49.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i49.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i50.i.prol ]
  %.01317.i.i.unr = phi i128 [ %.045, %.lr.ph.preheader.i49.i ], [ %i.ac, %.lr.ph.i50.i.prol ]
  %i.ad = icmp eq i64 %.1.i.i.i.i48.i85, 126
  br i1 %i.ad, label %.loopexit.sink.split, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i50.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i128 [ %i.ao, %.lr.ph.i50.i ], [ %.01317.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %i.ae = trunc i128 %.01317.i.i to i8
  %i.af = and i8 %i.ae, 1
  %i.ag = or disjoint i8 %i.af, 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !74
  %i.ai = lshr i128 %.01317.i.i, 1
  %i.aj = trunc i128 %i.ai to i8
  %i.ak = and i8 %i.aj, 1
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  store i8 %i.al, ptr %i.an, align 1, !tbaa !74
  %i.ao = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ap = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !24

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.aq = icmp eq i128 %1, 0
  br i1 %i.aq, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp ult i128 %.045, 10
  %extract.t134 = trunc i128 %.045 to i8
  br i1 %i.ar, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.029.i.i.i = phi i32 [ %i.az, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i.i = phi i128 [ %i.ay, %bb.n ], [ %.045, %bb.h ] ; 5 uses
  %i.as = icmp ult i128 %.02328.i.i.i, 100
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.au = icmp ult i128 %.02328.i.i.i, 1000
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp ult i128 %.02328.i.i.i, 10000
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = udiv i128 %.02328.i.i.i, 10000
  %i.az = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.ba = icmp ult i128 %.02328.i.i.i, 100000
  br i1 %i.ba, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.ax, %bb.m ], [ %i.at, %bb.i ], [ %i.av, %bb.k ], [ %i.az, %bb.n ] ; 4 uses
  %i.bb = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.bb, label %.thread94, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i
  %i.bc = icmp ugt i128 %.045, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.bd = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i128 [ %i.be, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01819.i.i.i = phi i32 [ %i.bq, %.lr.ph.i9.i.i ], [ %i.bd, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.020.i.i.i.frozen = freeze i128 %.020.i.i.i    ; 2 uses
  %i.be = udiv i128 %.020.i.i.i.frozen, 100       ; 3 uses
  %i.bf = mul i128 %i.be, 100
  %.decomposed = sub i128 %.020.i.i.i.frozen, %i.bf
  %.tr.i.i.i = trunc nuw nsw i128 %.decomposed to i64
  %i.bg = shl nuw nsw i64 %.tr.i.i.i, 1
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !74
  %i.bk = zext i32 %.01819.i.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !74
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !74
  %i.bn = add i32 %.01819.i.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !74
  %i.bq = add i32 %.01819.i.i.i, -2
  %i.br = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.br, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i128 [ %.045, %bb.o ], [ %i.be, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bs = icmp samesign ugt i128 %.0.lcssa.i.i.i, 9
  %extract.t = trunc i128 %.0.lcssa.i.i.i to i8
  br i1 %i.bs, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %.0.tr.i.i.i = trunc nuw nsw i128 %.0.lcssa.i.i.i to i64
  %i.bt = shl nuw nsw i64 %.0.tr.i.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bw, ptr %i.bx, align 4, !tbaa !74
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i127.off0 = phi i8 [ %extract.t, %._crit_edge.i.i.i ], [ %extract.t134, %bb.h ]
  %.022.i.i.i121123126 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.bz = or disjoint i8 %.0.lcssa.i.i.i127.off0, 48
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink120.i52 = phi i8 [ 48, %bb.g ], [ %i.by, %bb.p ], [ %i.bz, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i121123126, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink120.i52, ptr %i.j, align 1, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i53
  br label %.thread94

bb.q:                                             ; preds = %bb.d
  %.not49 = icmp ne i128 %1, 0                    ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  %i.cb = icmp eq i128 %1, 0
  br i1 %i.cb, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.cc, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.cg = trunc nuw i128 %.045 to i64
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.cj, %bb.t ], [ %i.cf, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.ck = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = icmp ugt i128 %.045, 63
  br i1 %i.cm, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.ck to i32
  %i.cn = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.da, %.lr.ph.i42.i ], [ %i.cn, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.ct, %.lr.ph.i42.i ], [ %.045, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.co = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.cp = and i8 %i.co, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = zext i32 %.031.i43.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !74
  %i.ct = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.cu = lshr i8 %i.co, 3
  %i.cv = and i8 %i.cu, 7
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = add nsw i32 %.031.i43.i, -1
  %i.cy = zext i32 %i.cx to i64
end_hunk_10
begin_hunk_11_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %.031.i.i = phi i32 [ %i.ek, %.lr.ph.i.i ], [ %i.dv, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.ec, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dw = trunc i128 %.02830.i.i to i64           ; 2 uses
  %i.dx = and i64 %i.dw, 15
  %i.dy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !74
  %i.ea = zext i32 %.031.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !74
  %i.ec = lshr i128 %.02830.i.i, 8                ; 2 uses
  %i.ed = lshr i64 %i.dw, 4
  %i.ee = and i64 %i.ed, 15
  %i.ef = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !74
  %i.eh = add nsw i32 %.031.i.i, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !74
  %i.ek = add nsw i32 %.031.i.i, -2
  %i.el = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ec, %.lr.ph.i.i ] ; 3 uses
  %i.em = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.em, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.en = lshr i128 %.028.lcssa.i.i, 4
  %i.eo = and i64 %extract.t37.i.i, 15
  %i.ep = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eq, ptr %i.er, align 4, !tbaa !74
  %extract.t.i.i = trunc i128 %i.en to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i66 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i67 = phi i64 [ %i.dt, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i66, ptr %i.j, align 1, !tbaa !74
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not119 = icmp eq i16 %i.d, 12288
  br i1 %.not119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0107 = phi ptr [ %i.ex, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.et = load i8, ptr %.0107, align 1, !tbaa !74
  %i.eu = sext i8 %i.et to i32
  %i.ev = call i32 @toupper(i32 noundef %i.eu) #35
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %.0107, align 1, !tbaa !74
  %i.ex = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.es
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1066

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i58.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.cl, %._crit_edge.thread.i34.i ], [ %i.x, %.lr.ph.i50.i ], [ %i.x, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.q ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select, %._crit_edge.thread.i34.i ], [ %.str.314..str.315, %.lr.ph.i50.i ], [ %.str.314..str.315, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.078.1.ph = phi i64 [ %spec.select99, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select99, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i58.sink, ptr %i.j, align 1, !tbaa !74
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i59.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.078.1 = phi i64 [ %.sroa.078.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ey, %.loopexit.sink.split ], [ %i.es, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %i.es, %.lr.ph ] ; 2 uses
  %i.ez = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.ez, 0
  %.not51 = icmp eq i64 %.sroa.078.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.fa = sub nsw i64 0, %.sroa.078.1
  %i.fb = getelementptr inbounds i8, ptr %i.j, i64 %i.fa ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %.sroa.9.1, i64 %.sroa.078.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.ab, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.ab ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.ca, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.fb, %bb.ab ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %.thread94
  %i.fd = lshr i16 %i.c, 2
  %i.fe = and i16 %i.fd, 3
  switch i16 %i.fe, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.ac, %.thread94, %bb.ad
  %.sink = phi i8 [ 32, %bb.ad ], [ 45, %.thread94 ], [ 43, %bb.ac ]
  store i8 %.sink, ptr %i.fc, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, %bb.ac
  %.0.i = phi ptr [ %.046, %bb.ac ], [ %i.fc, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.033.093 to i64
  %i.fg = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ptrtoint ptr %i.j to i64
  %i.fj = sub i64 %i.fi, %i.fg
  %i.fk = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.fh, ptr nonnull %.0.i, i64 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit ], [ %i.fk, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [131 x i8], align 16              ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i128 %1, 128
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i128 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.aa [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.v
    i16 6, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.n = icmp eq i128 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i128 %1, 64                         ; 2 uses
  %.not.i.i.i.i46.i = icmp eq i128 %i.o, 0
  br i1 %.not.i.i.i.i46.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread: ; preds = %bb.f
  %i.p = trunc nuw i128 %i.o to i64
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true) ; 2 uses
  %i.r = sub nuw nsw i64 128, %i.q
  br label %.lr.ph.preheader.i49.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i: ; preds = %bb.f
  %i.s = trunc nuw i128 %1 to i64
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true) ; 3 uses
  %i.u = or disjoint i64 %i.t, 64
  %i.v = sub nuw nsw i64 64, %i.t
  %.not16.i.i = icmp eq i64 %i.t, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i49.i

.lr.ph.preheader.i49.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i
  %i.w = phi i64 [ %i.r, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.v, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 2 uses
  %.1.i.i.i.i48.i84 = phi i64 [ %i.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.u, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 4 uses
  %.015.i.i = sub nuw nsw i64 127, %.1.i.i.i.i48.i84 ; 2 uses
  %3 = trunc i64 %.1.i.i.i.i48.i84 to i1
  br i1 %3, label %.lr.ph.i50.i.prol.loopexit, label %.lr.ph.i50.i.prol

.lr.ph.i50.i.prol:                                ; preds = %.lr.ph.preheader.i49.i
  %i.x = trunc i128 %1 to i8
  %i.y = and i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %.015.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !74
  %i.ab = lshr i128 %1, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 126, %.1.i.i.i.i48.i84
  br label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol.loopexit:                       ; preds = %.lr.ph.i50.i.prol, %.lr.ph.preheader.i49.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i49.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i50.i.prol ]
  %.01317.i.i.unr = phi i128 [ %1, %.lr.ph.preheader.i49.i ], [ %i.ab, %.lr.ph.i50.i.prol ]
  %i.ac = icmp eq i64 %.1.i.i.i.i48.i84, 126
  br i1 %i.ac, label %.loopexit.sink.split, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i50.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i128 [ %i.an, %.lr.ph.i50.i ], [ %.01317.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %i.ad = trunc i128 %.01317.i.i to i8
  %i.ae = and i8 %i.ad, 1
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !74
  %i.ah = lshr i128 %.01317.i.i, 1
  %i.ai = trunc i128 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !74
  %i.an = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ao = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !24

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ap = icmp eq i128 %1, 0
  br i1 %i.ap, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ult i128 %1, 10
  %extract.t138 = trunc i128 %1 to i8
  br i1 %i.aq, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.029.i.i.i = phi i32 [ %i.ay, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i.i = phi i128 [ %i.ax, %bb.n ], [ %1, %bb.h ] ; 5 uses
  %i.ar = icmp ult i128 %.02328.i.i.i, 100
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.as = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.at = icmp ult i128 %.02328.i.i.i, 1000
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = icmp ult i128 %.02328.i.i.i, 10000
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = udiv i128 %.02328.i.i.i, 10000
  %i.ay = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.az = icmp ult i128 %.02328.i.i.i, 100000
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.as, %bb.i ], [ %i.au, %bb.k ], [ %i.ay, %bb.n ] ; 4 uses
  %i.ba = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.ba, label %.thread98, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i
  %i.bb = icmp ugt i128 %1, 99
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.bc = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i128 [ %i.bd, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01819.i.i.i = phi i32 [ %i.bp, %.lr.ph.i9.i.i ], [ %i.bc, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.020.i.i.i.frozen = freeze i128 %.020.i.i.i    ; 2 uses
  %i.bd = udiv i128 %.020.i.i.i.frozen, 100       ; 3 uses
  %i.be = mul i128 %i.bd, 100
  %.decomposed = sub i128 %.020.i.i.i.frozen, %i.be
  %.tr.i.i.i = trunc nuw nsw i128 %.decomposed to i64
  %i.bf = shl nuw nsw i64 %.tr.i.i.i, 1
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !74
  %i.bj = zext i32 %.01819.i.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !74
  %i.bl = load i8, ptr %i.bg, align 2, !tbaa !74
  %i.bm = add i32 %.01819.i.i.i, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !74
  %i.bp = add i32 %.01819.i.i.i, -2
  %i.bq = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.bq, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i128 [ %1, %bb.o ], [ %i.bd, %.lr.ph.i9.i.i ] ; 3 uses
  %i.br = icmp samesign ugt i128 %.0.lcssa.i.i.i, 9
  %extract.t = trunc i128 %.0.lcssa.i.i.i to i8
  br i1 %i.br, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %.0.tr.i.i.i = trunc nuw nsw i128 %.0.lcssa.i.i.i to i64
  %i.bs = shl nuw nsw i64 %.0.tr.i.i.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !74
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bv, ptr %i.bw, align 4, !tbaa !74
  %i.bx = load i8, ptr %i.bt, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i131.off0 = phi i8 [ %extract.t, %._crit_edge.i.i.i ], [ %extract.t138, %bb.h ]
  %.022.i.i.i125127130 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.by = or disjoint i8 %.0.lcssa.i.i.i131.off0, 48
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink120.i51 = phi i8 [ 48, %bb.g ], [ %i.bx, %bb.p ], [ %i.by, %._crit_edge.i.i.i.thread ]
  %.sink.i52.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i125127130, %._crit_edge.i.i.i.thread ]
  %.sink.i52 = zext nneg i32 %.sink.i52.shrunk to i64
  store i8 %.sink120.i51, ptr %i.i, align 1, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i52
  br label %.thread98

bb.q:                                             ; preds = %bb.d
  %.not48 = icmp eq i128 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = lshr i128 %1, 64                        ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.ca, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.ce = trunc nuw i128 %1 to i64
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.ch, %bb.t ], [ %i.cd, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.ci = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = icmp ugt i128 %1, 63
  br i1 %i.ck, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.ci to i32
  %i.cl = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.cy, %.lr.ph.i42.i ], [ %i.cl, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.cr, %.lr.ph.i42.i ], [ %1, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.cm = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = zext i32 %.031.i43.i to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !74
  %i.cr = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.cs = lshr i8 %i.cm, 3
  %i.ct = and i8 %i.cs, 7
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = add nsw i32 %.031.i43.i, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !74
  %i.cy = add nsw i32 %.031.i43.i, -2
end_hunk_11
