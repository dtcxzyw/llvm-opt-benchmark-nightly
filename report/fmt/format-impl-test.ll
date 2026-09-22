Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  %i.p = add i8 %i.o, -65
  %or.cond10.i = icmp ult i8 %i.p, 26
  %i.q = icmp eq i8 %i.d, 95
  %i.r = or i1 %i.q, %or.cond10.i
  br i1 %i.r, label %.critedge4.preheader, label %bb.k

.critedge4.preheader:                             ; preds = %bb.j
  %i.s = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.s   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not47 = icmp eq ptr %i.t, %1
  br i1 %.not47, label %.critedge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.u, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !721

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.v = phi ptr [ %i.u, %.critedge4 ], [ %i.t, %.critedge4.preheader ] ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !71    ; 3 uses
  %i.x = and i8 %i.w, -33
  %i.y = add i8 %i.x, -65
  %or.cond10.i32 = icmp ult i8 %i.y, 26
  %i.z = icmp eq i8 %i.w, 95
  %i.aa = or i1 %i.z, %or.cond10.i32
  %i.ab = add i8 %i.w, -48
  %or.cond31 = icmp ult i8 %i.ab, 10
  %or.cond33 = or i1 %or.cond31, %i.aa
  br i1 %or.cond33, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !721

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !721

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa37 = phi ptr [ %i.v, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.ac = ptrtoint ptr %.lcssa37 to i64
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.187)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ag) #30
  resume { ptr, i32 } %i.ah

_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %.critedge
  %i.ai = load ptr, ptr %2, align 8, !tbaa !722, !nonnull !83, !align !167 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 -1, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.am = and i64 %i.al, 4611686018427387904
  %.not13.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp slt i64 %i.al, 0
  %.v.i.i.i.i = select i1 %i.ap, i64 -32, i64 -16
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %.v.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !214 ; 2 uses
  %.not14.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not14.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !215
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.au = add nuw i64 %.01215.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %i.as
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.q, !llvm.loop !30

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.01215.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.au, %bb.p ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.01215.i.i.i.i ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !217 ; 2 uses
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #30 ; 2 uses
  %i.ay = tail call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ae)
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aw, ptr nonnull %0, i64 %i.ay)
  %.not.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.az = icmp eq i64 %i.ax, %i.ae
  %i.ba = select i1 %.not.i.i.i.i.i.i, i1 %i.az, i1 false
  br i1 %i.ba, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, label %bb.p

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i: ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !218 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i: ; preds = %bb.p, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %bb.o, %_ZN3fmt3v126detail11to_unsignedIlEENSt13make_unsignedIT_E4typeES4_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit
  %.sink = phi i32 [ %.021, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.bc, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %.022 = phi ptr [ %i.h, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %.lcssa37, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.be, align 8, !tbaa !132
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail14format_handlerIcE15on_format_specsEiPKcS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.97, align 8             ; 5 uses
  %5 = alloca %class.anon.97, align 8             ; 5 uses
  %6 = alloca %class.anon.80, align 8             ; 5 uses
  %7 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %8 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v12::detail::write_int_arg.71", align 16 ; 5 uses
  %10 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v12::detail::write_int_arg.71", align 16 ; 5 uses
  %12 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v12::detail::dynamic_format_specs", align 8 ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !126, !noalias !732 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %_ZNK3fmt3v127context3argEi.exit, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %1, 14
  br i1 %i.g, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %1, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread111

_ZNK3fmt3v127context3argEi.exit.thread111:        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71, !noalias !732
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %.sroa.083.0.copyload98 = load i128, ptr %i.p, align 16, !tbaa !71 ; 6 uses
  %i.q = trunc i128 %.sroa.083.0.copyload98 to i64
  %i.r = lshr i128 %.sroa.083.0.copyload98, 64
  %i.s = trunc nuw i128 %i.r to i64
  %i.t = trunc i128 %.sroa.083.0.copyload98 to i80
  %i.u = trunc i128 %.sroa.083.0.copyload98 to i32
  %i.v = trunc i128 %.sroa.083.0.copyload98 to i8
  br label %bb.e

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71, !noalias !732
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.083.0.copyload = load i128, ptr %i.z, align 16, !tbaa !71 ; 6 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !124 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0.copyload, 0
  %i.aa = trunc i128 %.sroa.083.0.copyload to i64
  %i.ab = lshr i128 %.sroa.083.0.copyload, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = trunc i128 %.sroa.083.0.copyload to i80
  %i.ae = trunc i128 %.sroa.083.0.copyload to i32
  %i.af = trunc i128 %.sroa.083.0.copyload to i8
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.e

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.b, %bb.d, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

bb.e:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread111, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.083.0..sroa.083.0..sroa.083.0.95 = phi i32 [ %i.u, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ae, %_ZNK3fmt3v127context3argEi.exit ] ; 7 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.92 = phi i64 [ %i.q, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.aa, %_ZNK3fmt3v127context3argEi.exit ] ; 13 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.84 = phi i128 [ %.sroa.083.0.copyload98, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.083.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 6 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.97 = phi i8 [ %i.v, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.af, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85.in = phi i80 [ %i.t, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ad, %_ZNK3fmt3v127context3argEi.exit ]
  %.sroa.083.8..sroa.083.8..sroa.083.8.101 = phi i64 [ %i.s, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ac, %_ZNK3fmt3v127context3argEi.exit ] ; 2 uses
  %.sroa.23.0113 = phi i32 [ %i.l, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.23.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85 = bitcast i80 %.sroa.083.0..sroa.083.0..sroa.083.0.85.in to x86_fp80
  %.sroa.083.0..sroa.083.0..sroa.083.0.88 = bitcast i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to double
  %.sroa.083.0..sroa.083.0..sroa.083.0.93 = bitcast i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95 to float
  %.sroa.083.8..sroa.083.8..sroa.083.8. = inttoptr i64 %.sroa.083.8..sroa.083.8..sroa.083.8.101 to ptr
  %.sroa.083.0..sroa.083.0..sroa.083.0.89 = inttoptr i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to ptr ; 4 uses
  %.not.i = icmp eq i32 %.sroa.23.0113, 15
  br i1 %.not.i, label %bb.f, label %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !177   ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull @.str.187)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.az, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.fw, %bb.az ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.al) #30
  br label %common.resume

bb.j:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store ptr %i.an, ptr %0, align 8, !tbaa !177
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !178
  %i.aq = sub i64 %i.ap, %i.aj
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !178
  tail call void %.sroa.083.8..sroa.083.8..sroa.083.8.(ptr noundef %.sroa.083.0..sroa.083.0..sroa.083.0.89, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !727
  %i.ar = load ptr, ptr %0, align 8, !tbaa !177
  br label %bb.ba

_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  store i32 32768, ptr %16, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 32, ptr %i.at, align 4, !tbaa !71
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.au, align 4, !tbaa !117
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !71
  %i.aw = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sroa.23.0113)
  %i.ax = load i32, ptr %16, align 8, !tbaa !110  ; 2 uses
  %i.ay = and i32 %i.ax, 960
  %.not114 = icmp eq i32 %i.ay, 0
  br i1 %.not114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ba = lshr i32 %i.ax, 6
  %i.bb = and i32 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.bd = load i32, ptr %16, align 8, !tbaa !110
  %i.be = lshr i32 %i.bd, 8
  %i.bf = and i32 %i.be, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.a, align 8, !tbaa !94 ; 23 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.bg, align 8, !tbaa !108 ; 10 uses
  switch i32 %.sroa.23.0113, label %bb.ax [
    i32 15, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit
    i32 1, label %bb.m
    i32 2, label %bb.r
    i32 3, label %bb.u
    i32 4, label %bb.z
    i32 5, label %bb.ac
    i32 6, label %bb.ah
    i32 7, label %bb.ak
    i32 8, label %bb.ao
    i32 9, label %bb.ap
    i32 10, label %bb.aq
    i32 11, label %bb.ar
    i32 12, label %bb.as
    i32 13, label %bb.aw
    i32 14, label %.preheader155
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.bh = load i32, ptr %16, align 8, !tbaa !110
  %i.bi = and i32 %i.bh, 16384
  %.not121 = icmp eq i32 %i.bi, 0
  br i1 %.not121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, ptr %15, align 16, !tbaa !71
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 1, ptr %i.bj, align 16, !tbaa !157
  %i.bk = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %15, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.bk, label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = icmp slt i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, 0
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = sub i32 0, %.sroa.083.0..sroa.083.0..sroa.083.0.95
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.q:                                             ; preds = %bb.o
  %i.bn = load i32, ptr %16, align 8, !tbaa !110
  %i.bo = lshr i32 %i.bn, 10
  %i.bp = and i32 %i.bo, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !87
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.p, %bb.q
  %.06.i = phi i64 [ 72057787311456256, %bb.p ], [ %i.bu, %bb.q ]
  %.0.i = phi i32 [ %i.bm, %bb.p ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.95, %bb.q ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.bv = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit: ; preds = %bb.n, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bw = load i32, ptr %16, align 8, !tbaa !110  ; 2 uses
  %i.bx = and i32 %i.bw, 16384
  %.not120 = icmp eq i32 %i.bx, 0
  br i1 %.not120, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, ptr %14, align 16, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 2, ptr %i.by, align 16, !tbaa !157
  %i.bz = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %14, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.bz, label %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge142

._crit_edge142:                                   ; preds = %bb.s
  %.pre143 = load i32, ptr %16, align 8, !tbaa !110
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge142, %bb.r
  %i.ca = phi i32 [ %.pre143, %._crit_edge142 ], [ %i.bw, %bb.r ]
  %i.cb = lshr i32 %i.ca, 10
  %i.cc = and i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !87
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %.sroa.0.0.insert.ext.i50 = zext i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95 to i64
  %.sroa.0.0.insert.insert.i51 = or disjoint i64 %i.ch, %.sroa.0.0.insert.ext.i50
  %i.ci = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i51, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cj = load i32, ptr %16, align 8, !tbaa !110
  %i.ck = and i32 %i.cj, 16384
  %.not119 = icmp eq i32 %i.ck, 0
  br i1 %.not119, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %13, align 16, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 3, ptr %i.cl, align 16, !tbaa !157
  %i.cm = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %13, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.cm, label %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cn = icmp slt i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, 0
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.co = sub i64 0, %.sroa.083.0..sroa.083.0..sroa.083.0.92
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %16, align 8, !tbaa !110
  %i.cq = lshr i32 %i.cp, 10
  %i.cr = and i32 %i.cq, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !87
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.x, %bb.y
  %.06.i52 = phi i32 [ 16777261, %bb.x ], [ %i.cu, %bb.y ]
  %.0.i53 = phi i64 [ %i.co, %bb.x ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.y ]
  %i.cv = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.0.i53, i32 %.06.i52, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.v, %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.cw = load i32, ptr %16, align 8, !tbaa !110  ; 2 uses
  %i.cx = and i32 %i.cw, 16384
  %.not118 = icmp eq i32 %i.cx, 0
  br i1 %.not118, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %12, align 16, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 4, ptr %i.cy, align 16, !tbaa !157
  %i.cz = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %12, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.cz, label %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.aa
  %.pre139 = load i32, ptr %16, align 8, !tbaa !110
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge138, %bb.z
  %i.da = phi i32 [ %.pre139, %._crit_edge138 ], [ %i.cw, %bb.z ]
  %i.db = lshr i32 %i.da, 10
  %i.dc = and i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !87
  %i.dg = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, i32 %i.df, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ac:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.dh = load i32, ptr %16, align 8, !tbaa !110  ; 2 uses
  %i.di = and i32 %i.dh, 16384
  %.not117 = icmp eq i32 %i.di, 0
  br i1 %.not117, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %10, align 16, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 5, ptr %i.dj, align 16, !tbaa !157
  %i.dk = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %10, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.dk, label %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge135

._crit_edge135:                                   ; preds = %bb.ad
  %.pre136 = load i32, ptr %16, align 8, !tbaa !110
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge135, %bb.ac
  %i.dl = phi i32 [ %.pre136, %._crit_edge135 ], [ %i.dh, %bb.ac ]
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.dm = icmp slt i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, 0
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = sub i128 0, %.sroa.083.0..sroa.083.0..sroa.083.0.84
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.do = lshr i32 %i.dl, 10
  %i.dp = and i32 %i.do, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !87, !noalias !733
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.af, %bb.ag
  %.06.i56 = phi i32 [ 16777261, %bb.af ], [ %i.ds, %bb.ag ]
  %.0.i57 = phi i128 [ %i.dn, %bb.af ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.84, %bb.ag ]
  store i128 %.0.i57, ptr %11, align 16, !tbaa !735, !alias.scope !733
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.06.i56, ptr %i.dt, align 16, !tbaa !736, !alias.scope !733
  %i.du = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.71") align 16 %11, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.ad, %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ah:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.dv = load i32, ptr %16, align 8, !tbaa !110  ; 2 uses
  %i.dw = and i32 %i.dv, 16384
  %.not116 = icmp eq i32 %i.dw, 0
  br i1 %.not116, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %8, align 16, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 6, ptr %i.dx, align 16, !tbaa !157
  %i.dy = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %8, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.dy, label %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load i32, ptr %16, align 8, !tbaa !110
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ah
  %i.dz = phi i32 [ %.pre, %._crit_edge ], [ %i.dv, %bb.ah ]
  %i.ea = lshr i32 %i.dz, 10
  %i.eb = and i32 %i.ea, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !737
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %9, align 16, !tbaa !735, !alias.scope !737
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.ee, ptr %i.ef, align 16, !tbaa !736, !alias.scope !737
  %i.eg = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.71") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ak:                                            ; preds = %bb.l
  %i.eh = load i32, ptr %16, align 8, !tbaa !110  ; 3 uses
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = and i8 %i.ei, 7
  switch i8 %i.ej, label %bb.al [
    i8 0, label %bb.an
    i8 2, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ek = and i32 %i.eh, 16384
  %.not.i58 = icmp eq i32 %i.ek, 0
  %.pre148 = and i8 %.sroa.083.0..sroa.083.0..sroa.083.0.97, 1 ; 2 uses
  br i1 %.not.i58, label %._crit_edge147, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = zext nneg i8 %.pre148 to i32
  store i32 %i.el, ptr %7, align 16, !tbaa !71
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.em, align 16, !tbaa !157
  %i.en = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %7, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr null)
  br i1 %i.en, label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am
  %.pre.i = load i32, ptr %16, align 8, !tbaa !110
  br label %._crit_edge147

._crit_edge147:                                   ; preds = %bb.al, %._crit_edge.i
  %i.eo = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.eh, %bb.al ]
  %i.ep = lshr i32 %i.eo, 10
  %i.eq = and i32 %i.ep, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !87
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.pre148 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.ev, %.sroa.0.0.insert.ext.i.i
  %i.ew = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i

_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i: ; preds = %._crit_edge147, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.an:                                            ; preds = %bb.ak, %bb.ak
  %i.ex = trunc nuw i8 %.sroa.083.0..sroa.083.0..sroa.083.0.97 to i1 ; 2 uses
  %i.ey = select i1 %i.ex, ptr @.str.192, ptr @.str.193
  %i.ez = select i1 %i.ex, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.ey, ptr %6, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ez, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97
  %i.fa = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.ez, i64 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ao:                                            ; preds = %bb.l
  %i.fb = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, i8 noundef signext %.sroa.083.0..sroa.083.0..sroa.083.0.97, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ap:                                            ; preds = %bb.l
  %.sroa.02.0.copyload.i20 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8
  %i.fc = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, float noundef %.sroa.083.0..sroa.083.0..sroa.083.0.93, i64 %.sroa.02.0.copyload.i20, i64 %.sroa.2.0.copyload.i22, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aq:                                            ; preds = %bb.l
  %.sroa.02.0.copyload.i25 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8
  %i.fd = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, double noundef %.sroa.083.0..sroa.083.0..sroa.083.0.88, i64 %.sroa.02.0.copyload.i25, i64 %.sroa.2.0.copyload.i27, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ar:                                            ; preds = %bb.l
  %.sroa.02.0.copyload.i30 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i32 = load i64, ptr %.sroa.2.0..sroa_idx.i31, align 8
  %i.fe = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, x86_fp80 noundef %.sroa.083.0..sroa.083.0..sroa.083.0.85, i64 %.sroa.02.0.copyload.i30, i64 %.sroa.2.0.copyload.i32, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.as:                                            ; preds = %bb.l
  %i.ff = load i32, ptr %16, align 8, !tbaa !110
  %i.fg = and i32 %i.ff, 7
  %i.fh = icmp eq i32 %i.fg, 3
  br i1 %i.fh, label %.preheader, label %bb.at

.preheader:                                       ; preds = %bb.as, %.preheader
  %.03.i.i.i.i = phi i64 [ %i.fj, %.preheader ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.as ]
  %.0.i.i.i.i = phi i32 [ %i.fi, %.preheader ], [ 0, %bb.as ] ; 2 uses
  %i.fi = add nuw nsw i32 %.0.i.i.i.i, 1          ; 2 uses
  %i.fj = lshr i64 %.03.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, label %.preheader, !llvm.loop !9

_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i: ; preds = %.preheader
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %i.fk = zext i32 %narrow.i.i to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %5, align 8, !tbaa !128
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.fi, ptr %i.fl, align 8, !tbaa !129
  %i.fm = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fk, i64 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.at:                                            ; preds = %bb.as
  %.not.i60 = icmp eq i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, 0
  br i1 %.not.i60, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.208) #32
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.083.0..sroa.083.0..sroa.083.0.89) #30
  %i.fo = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr nonnull %.sroa.083.0..sroa.083.0..sroa.083.0.89, i64 %i.fn, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aw:                                            ; preds = %bb.l
  %i.fp = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr %.sroa.083.0..sroa.083.0..sroa.083.0.89, i64 %.sroa.083.8..sroa.083.8..sroa.083.8.101, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

.preheader155:                                    ; preds = %bb.l, %.preheader155
  %.03.i.i.i.i63 = phi i64 [ %i.fr, %.preheader155 ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.l ]
  %.0.i.i.i.i64 = phi i32 [ %i.fq, %.preheader155 ], [ 0, %bb.l ] ; 2 uses
  %i.fq = add nuw nsw i32 %.0.i.i.i.i64, 1        ; 2 uses
  %i.fr = lshr i64 %.03.i.i.i.i63, 4              ; 2 uses
  %.not.i.i.i.i65 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i65, label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit, label %.preheader155, !llvm.loop !9

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %.preheader155
  %narrow.i.i67 = add nuw i32 %.0.i.i.i.i64, 3
  %i.fs = zext i32 %narrow.i.i67 to i64           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %4, align 8, !tbaa !128
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fq, ptr %i.ft, align 8, !tbaa !129
  %i.fu = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fs, i64 noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ax:                                            ; preds = %bb.l
  %i.fv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull @.str.5)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fv) #30
  br label %common.resume

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.l, %bb.av, %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, %bb.an, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i, %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.aw, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.j
  %.0 = phi ptr [ %i.ar, %bb.j ], [ %i.aw, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !104    ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !71    ; 2 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  %i.f = xor i64 %i.c, -1
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.a ; 2 uses
  %i.h = sub i64 %i.a, %i.c
  %scevgep39 = getelementptr i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.d to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not3446 = icmp eq ptr %i.k, %1
  br i1 %.not3446, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.l, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #30
  br label %.body

.preheader:                                       ; preds = %.lr.ph
  %i.n = mul i32 %i.t, 10
  %i.o = zext nneg i8 %i.u to i32
  %i.p = add i32 %i.n, -48
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not34 = icmp eq ptr %i.r, %1
  br i1 %.not34, label %.critedge, label %.lr.ph, !llvm.loop !738

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.s = phi ptr [ %i.r, %.preheader ], [ %i.k, %.preheader.preheader ] ; 4 uses
  %i.t = phi i32 [ %i.q, %.preheader ], [ %i.j, %.preheader.preheader ] ; 4 uses
  %.048 = phi ptr [ %i.s, %.preheader ], [ %i.b, %.preheader.preheader ]
  %.02747 = phi i32 [ %i.t, %.preheader ], [ 0, %.preheader.preheader ]
  %i.u = load i8, ptr %i.s, align 1, !tbaa !71    ; 2 uses
  %i.v = add i8 %i.u, -48
  %or.cond35 = icmp ult i8 %i.v, 10
  br i1 %or.cond35, label %.preheader, label %..critedge_crit_edge, !llvm.loop !738

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !738

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.027.lcssa = phi i32 [ %.02747, %..critedge_crit_edge ], [ 0, %.preheader.preheader ], [ %i.t, %.preheader ]
end_hunk_0
