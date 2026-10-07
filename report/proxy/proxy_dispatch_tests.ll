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
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

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
  %.not49 = icmp ne i32 %1, 0                     ; 3 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select96 = zext i1 %.not49 to i64         ; 2 uses
  br i1 %.not49, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true)
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.ca
  %i.cb = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = icmp ugt i32 %.045, 63
  br i1 %i.cd, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.cb to i32
  %i.ce = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cr, %.lr.ph.i38.i ], [ %i.ce, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.ck, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cf = trunc i32 %.02830.i40.i to i8           ; 2 uses
  %i.cg = and i8 %i.cf, 7
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = zext i32 %.031.i39.i to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ci
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !74
  %i.ck = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %i.cl = lshr i8 %i.cf, 3
  %i.cm = and i8 %i.cl, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = add nsw i32 %.031.i39.i, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !74
  %i.cr = add nsw i32 %.031.i39.i, -2
  %i.cs = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.cs, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %.045, %bb.r ], [ %i.ck, %.lr.ph.i38.i ] ; 4 uses
  %i.ct = icmp samesign ugt i32 %.028.lcssa.i30.i, 7
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i29.i
  %i.cu = lshr i32 %.028.lcssa.i30.i, 3
  %i.cv = trunc nuw nsw i32 %.028.lcssa.i30.i to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
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
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.i.prol.loopexit, label %.lr.ph.i36.i.prol

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
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

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
  %3 = trunc nuw nsw i64 %.015.i.i to i32
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

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
  %.not49 = icmp ne i64 %1, 0                     ; 3 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  br i1 %.not49, label %bb.q, label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.bw
  %i.bx = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = icmp ugt i64 %.045, 63
  br i1 %i.bz, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.bx to i32
  %i.ca = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cn, %.lr.ph.i38.i ], [ %i.ca, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.cg, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cb = trunc i64 %.02830.i40.i to i8           ; 2 uses
  %i.cc = and i8 %i.cb, 7
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = zext i32 %.031.i39.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !74
  %i.cg = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %i.ch = lshr i8 %i.cb, 3
  %i.ci = and i8 %i.ch, 7
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = add nsw i32 %.031.i39.i, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !74
  %i.cn = add nsw i32 %.031.i39.i, -2
  %i.co = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.co, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %.045, %bb.q ], [ %i.cg, %.lr.ph.i38.i ] ; 4 uses
  %i.cp = icmp samesign ugt i64 %.028.lcssa.i30.i, 7
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i29.i
  %i.cq = lshr i64 %.028.lcssa.i30.i, 3
  %i.cr = trunc nuw nsw i64 %.028.lcssa.i30.i to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ct, ptr %i.cu, align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i64 [ %i.cq, %bb.r ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i64 %storemerge.in.in.i.i to i8
end_hunk_2
begin_hunk_3_@_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = sub nuw nsw i32 67, %i.cy
  %i.da = lshr i32 %i.cz, 2                       ; 2 uses
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = icmp ugt i64 %.045, 255
  br i1 %i.dc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.dd = add nsw i32 %i.da, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.dr, %.lr.ph.i.i ], [ %i.dd, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.dl, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.de = and i64 %.02830.i.i, 15
  %i.df = lshr i64 %.02830.i.i, 4
  %i.dg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !74
  %i.di = zext i32 %.031.i.i to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !74
  %i.dk = and i64 %i.df, 15
  %i.dl = lshr i64 %.02830.i.i, 8                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !74
  %i.do = add nsw i32 %.031.i.i, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !74
  %i.dr = add nsw i32 %.031.i.i, -2
  %i.ds = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.ds, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.028.lcssa.i.i = phi i64 [ %.045, %bb.u ], [ %i.dl, %.lr.ph.i.i ] ; 4 uses
  %i.dt = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.du = and i64 %.028.lcssa.i.i, 15
  %i.dv = lshr i64 %.028.lcssa.i.i, 4
  %i.dw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dx, ptr %i.dy, align 4, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.dv, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68: ; preds = %bb.w, %bb.t
  %.sink109.i69 = phi i8 [ %storemerge.i.i, %bb.w ], [ 48, %bb.t ]
  %.sink.i70 = phi i64 [ %i.db, %bb.w ], [ 1, %bb.t ]
  store i8 %.sink109.i69, ptr %i.j, align 1, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i70 ; 3 uses
  %.not117 = icmp eq i16 %i.d, 12288
  br i1 %.not117, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68, %.lr.ph
  %.0107 = phi ptr [ %i.ee, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ] ; 3 uses
  %i.ea = load i8, ptr %.0107, align 1, !tbaa !74
  %i.eb = sext i8 %i.ea to i32
  %i.ec = call i32 @toupper(i32 noundef %i.eb) #35
  %i.ed = trunc i32 %i.ec to i8
  store i8 %i.ed, ptr %.0107, align 1, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ee, %i.dz
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !963

bb.x:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i, %bb.p, %bb.s, %bb.e, %.preheader.i.i
  %.sink109.i61.sink = phi i8 [ 48, %bb.p ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ %storemerge.i32.i, %bb.s ], [ 49, %.lr.ph.i42.i ], [ 49, %.lr.ph.i42.i.prol.loopexit ]
  %.sink.i62.sink = phi i64 [ 1, %bb.p ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.by, %bb.s ], [ %i.q, %.lr.ph.i42.i ], [ %i.q, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.p ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ %spec.select, %bb.s ], [ %.str.314..str.315, %.lr.ph.i42.i ], [ %.str.314..str.315, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.081.1.ph = phi i64 [ %spec.select99, %bb.p ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ %spec.select99, %bb.s ], [ 2, %.lr.ph.i42.i ], [ 2, %.lr.ph.i42.i.prol.loopexit ]
  store i8 %.sink109.i61.sink, ptr %i.j, align 1, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i62.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.081.1 = phi i64 [ %.sroa.081.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ef, %.loopexit.sink.split ], [ %i.dz, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %i.dz, %.lr.ph ] ; 2 uses
  %i.eg = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.eg, 0
  %.not51 = icmp eq i64 %.sroa.081.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.eh = sub nsw i64 0, %.sroa.081.1
  %i.ei = getelementptr inbounds i8, ptr %i.j, i64 %i.eh ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr align 1 %.sroa.9.1, i64 %.sroa.081.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52, %bb.y, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.y ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bu, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ]
  %.046 = phi ptr [ %i.ei, %bb.y ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ] ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %.thread94
  %i.ek = lshr i16 %i.c, 2
  %i.el = and i16 %i.ek, 3
  switch i16 %i.el, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.z, %.thread94, %bb.aa
  %.sink = phi i8 [ 32, %bb.aa ], [ 45, %.thread94 ], [ 43, %bb.z ]
  store i8 %.sink, ptr %i.ej, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, %bb.z
  %.0.i = phi ptr [ %.046, %bb.z ], [ %i.ej, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.033.093 to i64
  %i.en = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ptrtoint ptr %i.j to i64
  %i.eq = sub i64 %i.ep, %i.en
  %i.er = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.eo, ptr nonnull %.0.i, i64 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit ], [ %i.er, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit ]
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
  %3 = trunc nuw nsw i64 %.015.i.i to i32
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

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
begin_hunk_4_@_ZNKSt9formatterIPKvcE6formatINSt8__format10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorES1_RS9_:bb.a
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
  %3 = trunc nsw i64 %.1.i.i.i.i48.i85 to i32
  %4 = and i32 %3, 1
  %lcmp.mod.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i50.i.prol, label %.lr.ph.i50.i.prol.loopexit

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
  %.not49 = icmp ne i128 %1, 0                    ; 3 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  br i1 %.not49, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.cb = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.cb, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc nuw i128 %i.cb to i64
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.cf = trunc nuw i128 %.045 to i64
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = or disjoint i8 %i.ch, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.ci, %bb.t ], [ %i.ce, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.cj = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = icmp ugt i128 %.045, 63
  br i1 %i.cl, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.cj to i32
  %i.cm = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.cz, %.lr.ph.i42.i ], [ %i.cm, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.cs, %.lr.ph.i42.i ], [ %.045, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.cn = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.co = and i8 %i.cn, 7
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = zext i32 %.031.i43.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cq
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !74
  %i.cs = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.ct = lshr i8 %i.cn, 3
  %i.cu = and i8 %i.ct, 7
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = add nsw i32 %.031.i43.i, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cx
end_hunk_4
begin_hunk_5_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %.031.i.i = phi i32 [ %i.ej, %.lr.ph.i.i ], [ %i.du, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.eb, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dv = trunc i128 %.02830.i.i to i64           ; 2 uses
  %i.dw = and i64 %i.dv, 15
  %i.dx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74
  %i.dz = zext i32 %.031.i.i to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dz
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !74
  %i.eb = lshr i128 %.02830.i.i, 8                ; 2 uses
  %i.ec = lshr i64 %i.dv, 4
  %i.ed = and i64 %i.ec, 15
  %i.ee = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !74
  %i.eg = add nsw i32 %.031.i.i, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eh
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !74
  %i.ej = add nsw i32 %.031.i.i, -2
  %i.ek = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.ek, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.eb, %.lr.ph.i.i ] ; 3 uses
  %i.el = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.el, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.em = lshr i128 %.028.lcssa.i.i, 4
  %i.en = and i64 %extract.t37.i.i, 15
  %i.eo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ep, ptr %i.eq, align 4, !tbaa !74
  %extract.t.i.i = trunc i128 %i.em to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i66 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i67 = phi i64 [ %i.ds, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i66, ptr %i.j, align 1, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not119 = icmp eq i16 %i.d, 12288
  br i1 %.not119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0107 = phi ptr [ %i.ew, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.es = load i8, ptr %.0107, align 1, !tbaa !74
  %i.et = sext i8 %i.es to i32
  %i.eu = call i32 @toupper(i32 noundef %i.et) #35
  %i.ev = trunc i32 %i.eu to i8
  store i8 %i.ev, ptr %.0107, align 1, !tbaa !74
  %i.ew = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ew, %i.er
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1067

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i58.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.ck, %._crit_edge.thread.i34.i ], [ %i.x, %.lr.ph.i50.i ], [ %i.x, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.q ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select, %._crit_edge.thread.i34.i ], [ %.str.314..str.315, %.lr.ph.i50.i ], [ %.str.314..str.315, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.078.1.ph = phi i64 [ %spec.select99, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select99, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i58.sink, ptr %i.j, align 1, !tbaa !74
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i59.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.078.1 = phi i64 [ %.sroa.078.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ex, %.loopexit.sink.split ], [ %i.er, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %i.er, %.lr.ph ] ; 2 uses
  %i.ey = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.ey, 0
  %.not51 = icmp eq i64 %.sroa.078.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.ez = sub nsw i64 0, %.sroa.078.1
  %i.fa = getelementptr inbounds i8, ptr %i.j, i64 %i.ez ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr align 1 %.sroa.9.1, i64 %.sroa.078.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.ab, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.ab ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.ca, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.fa, %bb.ab ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %.thread94
  %i.fc = lshr i16 %i.c, 2
  %i.fd = and i16 %i.fc, 3
  switch i16 %i.fd, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.ac, %.thread94, %bb.ad
  %.sink = phi i8 [ 32, %bb.ad ], [ 45, %.thread94 ], [ 43, %bb.ac ]
  store i8 %.sink, ptr %i.fb, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, %bb.ac
  %.0.i = phi ptr [ %.046, %bb.ac ], [ %i.fb, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.033.093 to i64
  %i.ff = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ptrtoint ptr %i.j to i64
  %i.fi = sub i64 %i.fh, %i.ff
  %i.fj = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.fg, ptr nonnull %.0.i, i64 noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit ], [ %i.fj, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit ]
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
  %3 = trunc nsw i64 %.1.i.i.i.i48.i84 to i32
  %4 = and i32 %3, 1
  %lcmp.mod.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i50.i.prol, label %.lr.ph.i50.i.prol.loopexit

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
end_hunk_5
