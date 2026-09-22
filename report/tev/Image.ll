Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !3401, !nonnull !175, !align !773
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !404
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.190) #47
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !404
  br label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

bb.m:                                             ; preds = %bb.a
  %i.an = and i8 %i.c, -33
  %i.ao = add i8 %i.an, -65
  %or.cond10.i = icmp ult i8 %i.ao, 26
  %i.ap = icmp eq i8 %i.c, 95
  %i.aq = or i1 %i.ap, %or.cond10.i
  br i1 %i.aq, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.ar = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.ar  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not57 = icmp eq ptr %i.as, %1
  br i1 %.not57, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.186) #47
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.at, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3400

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.au = phi ptr [ %i.at, %.critedge4 ], [ %i.as, %.critedge4.preheader ] ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !126 ; 3 uses
  %i.aw = and i8 %i.av, -33
  %i.ax = add i8 %i.aw, -65
  %or.cond10.i32 = icmp ult i8 %i.ax, 26
  %i.ay = icmp eq i8 %i.av, 95
  %i.az = or i1 %i.ay, %or.cond10.i32
  %i.ba = add i8 %i.av, -48
  %or.cond31 = icmp ult i8 %i.ba, 10
  %or.cond38 = or i1 %or.cond31, %i.az
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !3400

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3400

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa44 = phi ptr [ %i.au, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bb = ptrtoint ptr %.lcssa44 to i64
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !3401, !nonnull !175, !align !773 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 -1, ptr %i.bf, align 8, !tbaa !404
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !800 ; 2 uses
  %i.bi = and i64 %i.bh, 4611686018427387904
  %.not13.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not13.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp slt i64 %i.bh, 0
  %.v.i.i.i.i = select i1 %i.bl, i64 -32, i64 -16
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %.v.i.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !881 ; 2 uses
  %.not14.not.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not14.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !882
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bq = add nuw i64 %.01215.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bq, %i.bo
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.q, !llvm.loop !96

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.01215.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.01215.i.i.i.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !884 ; 2 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #44 ; 2 uses
  %i.bu = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bd)
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bs, ptr nonnull %0, i64 %i.bu)
  %.not.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.bv = icmp eq i64 %i.bt, %i.bd
  %i.bw = select i1 %.not.i.i.i.i.i.i, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, label %bb.p

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i: ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !885 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i: ; preds = %bb.p, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %bb.o, %.critedge
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.184) #47
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit
  %.sink = phi i32 [ %.021, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.by, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %.022 = phi ptr [ %.037, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %.lcssa44, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.ca, align 8, !tbaa !810
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail14format_handlerIcE15on_format_specsEiPKcS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.886, align 8            ; 5 uses
  %5 = alloca %class.anon.886, align 8            ; 5 uses
  %6 = alloca %class.anon.868, align 8            ; 5 uses
  %7 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %8 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v12::detail::write_int_arg.859", align 16 ; 5 uses
  %10 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v12::detail::write_int_arg.859", align 16 ; 5 uses
  %12 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v12::detail::dynamic_format_specs", align 8 ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !800, !noalias !3411 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %1, %i.e
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126, !noalias !3411
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %.sroa.083.0.copyload98 = load i128, ptr %i.p, align 16, !tbaa !126 ; 6 uses
  %i.q = trunc i128 %.sroa.083.0.copyload98 to i64
  %i.r = lshr i128 %.sroa.083.0.copyload98, 64
  %i.s = trunc nuw i128 %i.r to i64
  %i.t = trunc i128 %.sroa.083.0.copyload98 to i80
  %i.u = trunc i128 %.sroa.083.0.copyload98 to i32
  %i.v = trunc i128 %.sroa.083.0.copyload98 to i8
  br label %bb.e

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126, !noalias !3411
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.083.0.copyload = load i128, ptr %i.z, align 16, !tbaa !126 ; 6 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !798 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0.copyload, 0
  %i.aa = trunc i128 %.sroa.083.0.copyload to i64
  %i.ab = lshr i128 %.sroa.083.0.copyload, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = trunc i128 %.sroa.083.0.copyload to i80
  %i.ae = trunc i128 %.sroa.083.0.copyload to i32
  %i.af = trunc i128 %.sroa.083.0.copyload to i8
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.e

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.b, %bb.d, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.184) #47
  unreachable

bb.e:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread111, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.083.0..sroa.083.0..sroa.083.0.95 = phi i32 [ %i.u, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ae, %_ZNK3fmt3v127context3argEi.exit ] ; 7 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.92 = phi i64 [ %i.q, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.aa, %_ZNK3fmt3v127context3argEi.exit ] ; 13 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.84 = phi i128 [ %.sroa.083.0.copyload98, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.083.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 6 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.97 = phi i8 [ %i.v, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.af, %_ZNK3fmt3v127context3argEi.exit ] ; 4 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85.in = phi i80 [ %i.t, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ad, %_ZNK3fmt3v127context3argEi.exit ]
  %.sroa.083.8..sroa.083.8..sroa.083.8.101 = phi i64 [ %i.s, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %i.ac, %_ZNK3fmt3v127context3argEi.exit ] ; 2 uses
  %.sroa.23.0113 = phi i32 [ %i.l, %_ZNK3fmt3v127context3argEi.exit.thread111 ], [ %.sroa.23.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.083.0..sroa.083.0..sroa.083.0.85 = bitcast i80 %.sroa.083.0..sroa.083.0..sroa.083.0.85.in to x86_fp80
  %.sroa.083.0..sroa.083.0..sroa.083.0.88 = bitcast i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to double
  %.sroa.083.0..sroa.083.0..sroa.083.0.93 = bitcast i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95 to float
  %.sroa.083.0..sroa.083.0..sroa.083.0.89 = inttoptr i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92 to ptr ; 4 uses
  %.not.i = icmp eq i32 %.sroa.23.0113, 15
  br i1 %.not.i, label %bb.f, label %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.083.8..sroa.083.8..sroa.083.8. = inttoptr i64 %.sroa.083.8..sroa.083.8..sroa.083.8.101 to ptr
  %i.ag = load ptr, ptr %0, align 8, !tbaa !838   ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store ptr %i.ak, ptr %0, align 8, !tbaa !838
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !839
  %i.an = sub i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !839
  tail call void %.sroa.083.8..sroa.083.8..sroa.083.8.(ptr noundef %.sroa.083.0..sroa.083.0..sroa.083.0.89, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !3406
  %i.ao = load ptr, ptr %0, align 8, !tbaa !838
  br label %bb.at

_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #44
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i32 32768, ptr %16, align 8, !tbaa !802
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 32, ptr %i.aq, align 4, !tbaa !126
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !804
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !126
  %i.at = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sroa.23.0113)
  %i.au = load i32, ptr %16, align 8, !tbaa !802  ; 2 uses
  %i.av = and i32 %i.au, 960
  %.not114 = icmp eq i32 %i.av, 0
  br i1 %.not114, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ax = lshr i32 %i.au, 6
  %i.ay = and i32 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.ba = load i32, ptr %16, align 8, !tbaa !802
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.bb, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.a, align 8, !tbaa !406 ; 23 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.bd, align 8, !tbaa !201 ; 10 uses
  switch i32 %.sroa.23.0113, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit [
    i32 14, label %.preheader
    i32 1, label %bb.i
    i32 2, label %bb.n
    i32 3, label %bb.q
    i32 4, label %bb.v
    i32 5, label %bb.y
    i32 6, label %bb.ad
    i32 7, label %bb.ag
    i32 8, label %bb.ak
    i32 9, label %bb.al
    i32 10, label %bb.am
    i32 11, label %bb.an
    i32 12, label %bb.ao
    i32 13, label %bb.as
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.be = load i32, ptr %16, align 8, !tbaa !802
  %i.bf = and i32 %i.be, 16384
  %.not121 = icmp eq i32 %i.bf, 0
  br i1 %.not121, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, ptr %15, align 16, !tbaa !126
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 1, ptr %i.bg, align 16, !tbaa !821
  %i.bh = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %15, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.bh, label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = icmp slt i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = sub i32 0, %.sroa.083.0..sroa.083.0..sroa.083.0.95
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %16, align 8, !tbaa !802
  %i.bl = lshr i32 %i.bk, 10
  %i.bm = and i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !286
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bq, 32
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit: ; preds = %bb.l, %bb.m
  %.06.i = phi i64 [ 72057787311456256, %bb.l ], [ %i.br, %bb.m ]
  %.0.i = phi i32 [ %i.bj, %bb.l ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.95, %bb.m ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.bs = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_.exit

_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_.exit: ; preds = %bb.j, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bt = load i32, ptr %16, align 8, !tbaa !802  ; 2 uses
  %i.bu = and i32 %i.bt, 16384
  %.not120 = icmp eq i32 %i.bu, 0
  br i1 %.not120, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95, ptr %14, align 16, !tbaa !126
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 2, ptr %i.bv, align 16, !tbaa !821
  %i.bw = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %14, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.bw, label %_ZN3fmt3v126detail5writeIcjTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge141

._crit_edge141:                                   ; preds = %bb.o
  %.pre142 = load i32, ptr %16, align 8, !tbaa !802
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge141, %bb.n
  %i.bx = phi i32 [ %.pre142, %._crit_edge141 ], [ %i.bt, %bb.n ]
  %i.by = lshr i32 %i.bx, 10
  %i.bz = and i32 %i.by, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !286
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %.sroa.0.0.insert.ext.i50 = zext i32 %.sroa.083.0..sroa.083.0..sroa.083.0.95 to i64
  %.sroa.0.0.insert.insert.i51 = or disjoint i64 %i.ce, %.sroa.0.0.insert.ext.i50
  %i.cf = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i51, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcjTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcjTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cg = load i32, ptr %16, align 8, !tbaa !802
  %i.ch = and i32 %i.cg, 16384
  %.not119 = icmp eq i32 %i.ch, 0
  br i1 %.not119, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %13, align 16, !tbaa !126
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 3, ptr %i.ci, align 16, !tbaa !821
  %i.cj = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %13, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.cj, label %_ZN3fmt3v126detail5writeIcxTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = icmp slt i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, 0
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = sub i64 0, %.sroa.083.0..sroa.083.0..sroa.083.0.92
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

bb.u:                                             ; preds = %bb.s
  %i.cm = load i32, ptr %16, align 8, !tbaa !802
  %i.cn = lshr i32 %i.cm, 10
  %i.co = and i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !286
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit: ; preds = %bb.t, %bb.u
  %.06.i52 = phi i32 [ 16777261, %bb.t ], [ %i.cr, %bb.u ]
  %.0.i53 = phi i64 [ %i.cl, %bb.t ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.u ]
  %i.cs = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.0.i53, i32 %.06.i52, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcxTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcxTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.r, %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.v:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ct = load i32, ptr %16, align 8, !tbaa !802  ; 2 uses
  %i.cu = and i32 %i.ct, 16384
  %.not118 = icmp eq i32 %i.cu, 0
  br i1 %.not118, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %12, align 16, !tbaa !126
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 4, ptr %i.cv, align 16, !tbaa !821
  %i.cw = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %12, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.cw, label %_ZN3fmt3v126detail5writeIcyTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge137

._crit_edge137:                                   ; preds = %bb.w
  %.pre138 = load i32, ptr %16, align 8, !tbaa !802
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge137, %bb.v
  %i.cx = phi i32 [ %.pre138, %._crit_edge137 ], [ %i.ct, %bb.v ]
  %i.cy = lshr i32 %i.cx, 10
  %i.cz = and i32 %i.cy, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !286
  %i.dd = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, i32 %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcyTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcyTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.de = load i32, ptr %16, align 8, !tbaa !802  ; 2 uses
  %i.df = and i32 %i.de, 16384
  %.not117 = icmp eq i32 %i.df, 0
  br i1 %.not117, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %10, align 16, !tbaa !126
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 5, ptr %i.dg, align 16, !tbaa !821
  %i.dh = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %10, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.dh, label %_ZN3fmt3v126detail5writeIcnTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.z
  %.pre135 = load i32, ptr %16, align 8, !tbaa !802
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge134, %bb.y
  %i.di = phi i32 [ %.pre135, %._crit_edge134 ], [ %i.de, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.dj = icmp slt i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, 0
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = sub i128 0, %.sroa.083.0..sroa.083.0..sroa.083.0.84
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dl = lshr i32 %i.di, 10
  %i.dm = and i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !286, !noalias !3412
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit: ; preds = %bb.ab, %bb.ac
  %.06.i56 = phi i32 [ 16777261, %bb.ab ], [ %i.dp, %bb.ac ]
  %.0.i57 = phi i128 [ %i.dk, %bb.ab ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.84, %bb.ac ]
  store i128 %.0.i57, ptr %11, align 16, !tbaa !3414, !alias.scope !3412
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.06.i56, ptr %i.dq, align 16, !tbaa !3415, !alias.scope !3412
  %i.dr = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.859") align 16 %11, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcnTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcnTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.z, %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ad:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ds = load i32, ptr %16, align 8, !tbaa !802  ; 2 uses
  %i.dt = and i32 %i.ds, 16384
  %.not116 = icmp eq i32 %i.dt, 0
  br i1 %.not116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %8, align 16, !tbaa !126
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 6, ptr %i.du, align 16, !tbaa !821
  %i.dv = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %8, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49)
  br i1 %i.dv, label %_ZN3fmt3v126detail5writeIcoTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae
  %.pre = load i32, ptr %16, align 8, !tbaa !802
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %bb.ad
  %i.dw = phi i32 [ %.pre, %._crit_edge ], [ %i.ds, %bb.ad ]
  %i.dx = lshr i32 %i.dw, 10
  %i.dy = and i32 %i.dx, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !286, !noalias !3416
  store i128 %.sroa.083.0..sroa.083.0..sroa.083.0.84, ptr %9, align 16, !tbaa !3414, !alias.scope !3416
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.eb, ptr %i.ec, align 16, !tbaa !3415, !alias.scope !3416
  %i.ed = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.859") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcoTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcoTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ag:                                            ; preds = %bb.h
  %i.ee = load i32, ptr %16, align 8, !tbaa !802  ; 3 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = and i8 %i.ef, 7
  switch i8 %i.eg, label %bb.ah [
    i8 0, label %bb.aj
    i8 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.eh = and i32 %i.ee, 16384
  %.not.i58 = icmp eq i32 %i.eh, 0
  br i1 %.not.i58, label %._crit_edge147, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = zext nneg i8 %.sroa.083.0..sroa.083.0..sroa.083.0.97 to i32
  store i32 %i.ei, ptr %7, align 16, !tbaa !126
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.ej, align 16, !tbaa !821
  %i.ek = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %7, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr null)
  br i1 %i.ek, label %_ZN3fmt3v126detail5writeIciTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ai
  %.pre.i = load i32, ptr %16, align 8, !tbaa !802
  br label %._crit_edge147

._crit_edge147:                                   ; preds = %._crit_edge.i, %bb.ah
  %i.el = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ee, %bb.ah ]
  %i.em = lshr i32 %i.el, 10
  %i.en = and i32 %i.em, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !286
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.sroa.083.0..sroa.083.0..sroa.083.0.97 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.es, %.sroa.0.0.insert.ext.i.i
  %i.et = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIciTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit.i

_ZN3fmt3v126detail5writeIciTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit.i: ; preds = %._crit_edge147, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aj:                                            ; preds = %bb.ag, %bb.ag
  %i.eu = trunc nuw i8 %.sroa.083.0..sroa.083.0..sroa.083.0.97 to i1 ; 2 uses
  %i.ev = select i1 %i.eu, ptr @.str.165, ptr @.str.166
  %i.ew = select i1 %i.eu, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store ptr %i.ev, ptr %6, align 8, !tbaa !181
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !183
  %i.ex = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.ew, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ak:                                            ; preds = %bb.h
  %i.ey = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, i8 noundef signext %.sroa.083.0..sroa.083.0..sroa.083.0.97, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.al:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i20 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8
  %i.ez = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt3__19enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_SA_S7_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, float noundef %.sroa.083.0..sroa.083.0..sroa.083.0.93, i64 %.sroa.02.0.copyload.i20, i64 %.sroa.2.0.copyload.i22, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.am:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i25 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8
  %i.fa = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt3__19enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_SA_S7_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, double noundef %.sroa.083.0..sroa.083.0..sroa.083.0.88, i64 %.sroa.02.0.copyload.i25, i64 %.sroa.2.0.copyload.i27, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.an:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i30 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i32 = load i64, ptr %.sroa.2.0..sroa_idx.i31, align 8
  %i.fb = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt3__19enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_SA_S7_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i48, x86_fp80 noundef %.sroa.083.0..sroa.083.0..sroa.083.0.85, i64 %.sroa.02.0.copyload.i30, i64 %.sroa.2.0.copyload.i32, ptr %.sroa.0.0.copyload.i49) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ao:                                            ; preds = %bb.h
  %i.fc = load i32, ptr %16, align 8, !tbaa !802
  %i.fd = and i32 %i.fc, 7
  %i.fe = icmp eq i32 %i.fd, 3
  br i1 %i.fe, label %.preheader154, label %bb.ap

.preheader154:                                    ; preds = %bb.ao, %.preheader154
  %.03.i.i.i.i = phi i64 [ %i.fg, %.preheader154 ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.ao ]
  %.0.i.i.i.i = phi i32 [ %i.ff, %.preheader154 ], [ 0, %bb.ao ] ; 2 uses
  %i.ff = add nuw nsw i32 %.0.i.i.i.i, 1          ; 2 uses
  %i.fg = lshr i64 %.03.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, label %.preheader154, !llvm.loop !67

_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i: ; preds = %.preheader154
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %i.fh = zext i32 %narrow.i.i to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %5, align 8, !tbaa !806
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ff, ptr %i.fi, align 8, !tbaa !807
  %i.fj = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fh, i64 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ap:                                            ; preds = %bb.ao
  %.not.i60 = icmp eq i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, 0
  br i1 %.not.i60, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.183) #47
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.083.0..sroa.083.0..sroa.083.0.89) #44
  %i.fl = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr nonnull %.sroa.083.0..sroa.083.0..sroa.083.0.89, i64 %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.as:                                            ; preds = %bb.h
  %i.fm = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i48, ptr %.sroa.083.0..sroa.083.0..sroa.083.0.89, i64 %.sroa.083.8..sroa.083.8..sroa.083.8.101, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

.preheader:                                       ; preds = %bb.h, %.preheader
  %.03.i.i.i.i63 = phi i64 [ %i.fo, %.preheader ], [ %.sroa.083.0..sroa.083.0..sroa.083.0.92, %bb.h ]
  %.0.i.i.i.i64 = phi i32 [ %i.fn, %.preheader ], [ 0, %bb.h ] ; 2 uses
  %i.fn = add nuw nsw i32 %.0.i.i.i.i64, 1        ; 2 uses
  %i.fo = lshr i64 %.03.i.i.i.i63, 4              ; 2 uses
  %.not.i.i.i.i65 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i65, label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt3__19enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_SA_PKS7_RKNS0_12format_specsENS0_10locale_refE.exit, label %.preheader, !llvm.loop !67

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt3__19enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_SA_PKS7_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %.preheader
  %narrow.i.i67 = add nuw i32 %.0.i.i.i.i64, 3
  %i.fp = zext i32 %narrow.i.i67 to i64           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store i64 %.sroa.083.0..sroa.083.0..sroa.083.0.92, ptr %4, align 8, !tbaa !806
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fn, ptr %i.fq, align 8, !tbaa !807
  %i.fr = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i48, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fp, i64 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.h, %bb.ar, %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, %bb.aj, %_ZN3fmt3v126detail5writeIciTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit.i, %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_.exit, %_ZN3fmt3v126detail5writeIcjTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcxTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcyTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcnTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcoTnNSt3__19enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS6_EESA_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.as, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt3__19enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_SA_PKS7_RKNS0_12format_specsENS0_10locale_refE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br label %bb.at

bb.at:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.f
  %.0 = phi ptr [ %i.ao, %bb.f ], [ %i.at, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !126
  switch i8 %i.f, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 62, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 94, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit155, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split

_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split: ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !126
  br label %_ZN3fmt3v126detail11parse_alignEc.exit.thread

_ZN3fmt3v126detail11parse_alignEc.exit.thread:    ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split, %bb.b, %bb.b, %bb.b
  %.045 = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.h, %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split ]
  %i.i = add i32 %4, -1
  %i.j = icmp ult i32 %i.i, 11                    ; 3 uses
  %i.k = lshr i32 15872, %4
  %i.l = trunc i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.r = lshr i32 3626, %4
  %i.s = trunc i32 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 7
  br label %bb.d

bb.d:                                             ; preds = %bb.bl, %_ZN3fmt3v126detail11parse_alignEc.exit.thread
  %.0145 = phi ptr [ %0, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %.1146, %bb.bl ] ; 17 uses
  %.sroa.0113.0 = phi i32 [ 0, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %.sroa.0113.1, %bb.bl ] ; 8 uses
  %.146 = phi i8 [ %.045, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %i.fs, %bb.bl ] ; 3 uses
  switch i8 %.146, label %bb.bb [
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 94, label %bb.e
    i8 43, label %bb.j
    i8 32, label %bb.j
    i8 45, label %bb.k
    i8 35, label %bb.m
    i8 48, label %bb.o
    i8 49, label %bb.u
    i8 50, label %bb.u
    i8 51, label %bb.u
    i8 52, label %bb.u
    i8 53, label %bb.u
    i8 54, label %bb.u
    i8 55, label %bb.u
    i8 56, label %bb.u
    i8 57, label %bb.u
    i8 123, label %bb.u
    i8 46, label %bb.w
    i8 76, label %bb.z
    i8 100, label %bb.ab
    i8 88, label %bb.ad
    i8 120, label %.loopexit
    i8 111, label %bb.af
    i8 66, label %bb.ah
    i8 98, label %.loopexit150
    i8 69, label %bb.aj
    i8 101, label %.loopexit151
    i8 70, label %bb.al
    i8 102, label %.loopexit152
    i8 71, label %bb.an
    i8 103, label %.loopexit153
    i8 65, label %bb.ap
    i8 97, label %.loopexit154
end_hunk_0
