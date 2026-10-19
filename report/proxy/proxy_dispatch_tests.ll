Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt8__format5_SpecIcE27_S_parse_width_or_precisionEPKcS3_RtRbRSt26basic_format_parse_contextIcE:bb.a
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
  store i8 %i.cx, ptr %i.cy, align 4, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i32 [ %i.cu, %bb.s ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i32 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
end_hunk_0
begin_hunk_1_@_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
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

bb.t:                                             ; preds = %bb.s, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i32 [ %i.ct, %bb.s ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i32 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split

end_hunk_1
