Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/bundled_fmtlib_format?download=true
inline.NumInlined: 2819
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !575, !nonnull !148, !align !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !63
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.16) #35
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !63
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.11) #35
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.at, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !574

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.au = phi ptr [ %i.at, %.critedge4 ], [ %i.as, %.critedge4.preheader ] ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68  ; 3 uses
  %i.aw = and i8 %i.av, -33
  %i.ax = add i8 %i.aw, -65
  %or.cond10.i32 = icmp ult i8 %i.ax, 26
  %i.ay = icmp eq i8 %i.av, 95
  %i.az = or i1 %i.ay, %or.cond10.i32
  %i.ba = add i8 %i.av, -48
  %or.cond31 = icmp ult i8 %i.ba, 10
  %or.cond38 = or i1 %or.cond31, %i.az
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !574

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !574

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa44 = phi ptr [ %i.au, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bb = ptrtoint ptr %.lcssa44 to i64
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !575, !nonnull !148, !align !149 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 -1, ptr %i.bf, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !118 ; 2 uses
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
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !227 ; 2 uses
  %.not14.not.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not14.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !228
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bq = add nuw i64 %.01215.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bq, %i.bo
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %bb.q, !llvm.loop !34

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.01215.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.01215.i.i.i.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58 ; 2 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #33 ; 2 uses
  %i.bu = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bd)
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bs, ptr nonnull %0, i64 %i.bu)
  %.not.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.bv = icmp eq i64 %i.bt, %i.bd
  %i.bw = select i1 %.not.i.i.i.i.i.i, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, label %bb.p

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i: ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !59 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit

_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.thread.i.i: ; preds = %bb.p, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %bb.o, %.critedge
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #35
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter7on_nameENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit
  %.sink = phi i32 [ %.021, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %i.by, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %.022 = phi ptr [ %.037, %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit ], [ %.lcssa44, %_ZNK3fmt3v127context6arg_idENS0_17basic_string_viewIcEE.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.ca, align 8, !tbaa !128
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail14format_handlerIcE15on_format_specsEiPKcS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.75, align 8             ; 5 uses
  %5 = alloca %class.anon.75, align 8             ; 5 uses
  %6 = alloca %class.anon.56, align 8             ; 5 uses
  %7 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %8 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v12::detail::write_int_arg.45", align 16 ; 5 uses
  %10 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v12::detail::write_int_arg.45", align 16 ; 5 uses
  %12 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v12::loc_value", align 16 ; 5 uses
  %16 = alloca %"struct.fmt::v12::detail::dynamic_format_specs", align 8 ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !585 ; 3 uses
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
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread116

_ZNK3fmt3v127context3argEi.exit.thread116:        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !585
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %.sroa.088.0.copyload103 = load i128, ptr %i.p, align 16, !tbaa !68 ; 6 uses
  %i.q = trunc i128 %.sroa.088.0.copyload103 to i64
  %i.r = lshr i128 %.sroa.088.0.copyload103, 64
  %i.s = trunc nuw i128 %i.r to i64
  %i.t = trunc i128 %.sroa.088.0.copyload103 to i80
  %i.u = trunc i128 %.sroa.088.0.copyload103 to i32
  %i.v = trunc i128 %.sroa.088.0.copyload103 to i8
  br label %bb.e

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68, !noalias !585
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.088.0.copyload = load i128, ptr %i.z, align 16, !tbaa !68 ; 6 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !56 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0.copyload, 0
  %i.aa = trunc i128 %.sroa.088.0.copyload to i64
  %i.ab = lshr i128 %.sroa.088.0.copyload, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = trunc i128 %.sroa.088.0.copyload to i80
  %i.ae = trunc i128 %.sroa.088.0.copyload to i32
  %i.af = trunc i128 %.sroa.088.0.copyload to i8
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.e

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.b, %bb.d, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #35
  unreachable

bb.e:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread116, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.088.0..sroa.088.0..sroa.088.0.100 = phi i32 [ %i.u, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %i.ae, %_ZNK3fmt3v127context3argEi.exit ] ; 7 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0.97 = phi i64 [ %i.q, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %i.aa, %_ZNK3fmt3v127context3argEi.exit ] ; 13 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0.89 = phi i128 [ %.sroa.088.0.copyload103, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %.sroa.088.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 6 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0.102 = phi i8 [ %i.v, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %i.af, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0.90.in = phi i80 [ %i.t, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %i.ad, %_ZNK3fmt3v127context3argEi.exit ]
  %.sroa.088.8..sroa.088.8..sroa.088.8.106 = phi i64 [ %i.s, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %i.ac, %_ZNK3fmt3v127context3argEi.exit ] ; 2 uses
  %.sroa.23.0118 = phi i32 [ %i.l, %_ZNK3fmt3v127context3argEi.exit.thread116 ], [ %.sroa.23.0.copyload, %_ZNK3fmt3v127context3argEi.exit ] ; 3 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0.90 = bitcast i80 %.sroa.088.0..sroa.088.0..sroa.088.0.90.in to x86_fp80
  %.sroa.088.0..sroa.088.0..sroa.088.0.93 = bitcast i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97 to double
  %.sroa.088.0..sroa.088.0..sroa.088.0.98 = bitcast i32 %.sroa.088.0..sroa.088.0..sroa.088.0.100 to float
  %.sroa.088.0..sroa.088.0..sroa.088.0.94 = inttoptr i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97 to ptr ; 4 uses
  %.not.i = icmp eq i32 %.sroa.23.0118, 15
  br i1 %.not.i, label %bb.f, label %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.088.8..sroa.088.8..sroa.088.8. = inttoptr i64 %.sroa.088.8..sroa.088.8..sroa.088.8.106 to ptr
  %i.ag = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store ptr %i.ak, ptr %0, align 8, !tbaa !143
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !144
  %i.an = sub i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !144
  tail call void %.sroa.088.8..sroa.088.8..sroa.088.8.(ptr noundef %.sroa.088.0..sroa.088.0..sroa.088.0.94, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !580
  %i.ao = load ptr, ptr %0, align 8, !tbaa !143
  br label %bb.an

_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i32 32768, ptr %16, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 32, ptr %i.aq, align 4, !tbaa !68
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.at = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sroa.23.0118)
  %i.au = load i32, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.av = and i32 %i.au, 960
  %.not119 = icmp eq i32 %i.av, 0
  br i1 %.not119, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ax = lshr i32 %i.au, 6
  %i.ay = and i32 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.ba = load i32, ptr %16, align 8, !tbaa !120
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.bb, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3fmt3v1216basic_format_argINS0_7contextEE13format_customEPKcRNS0_13parse_contextIcEERS2_.exit
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.a, align 8, !tbaa !70 ; 23 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 10 uses
  switch i32 %.sroa.23.0118, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit [
    i32 14, label %.preheader
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.o
    i32 4, label %bb.s
    i32 5, label %bb.u
    i32 6, label %bb.y
    i32 7, label %bb.aa
    i32 8, label %bb.ae
    i32 9, label %bb.af
    i32 10, label %bb.ag
    i32 11, label %bb.ah
    i32 12, label %bb.ai
    i32 13, label %bb.am
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.be = load i32, ptr %16, align 8, !tbaa !120
  %i.bf = and i32 %i.be, 16384
  %.not126 = icmp eq i32 %i.bf, 0
  br i1 %.not126, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.sroa.088.0..sroa.088.0..sroa.088.0.100, ptr %15, align 16, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 1, ptr %i.bg, align 16, !tbaa !100
  %i.bh = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %15, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.bh, label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.j, %bb.i
  %i.bi = icmp slt i32 %.sroa.088.0..sroa.088.0..sroa.088.0.100, 0
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.i.i
  %i.bj = sub i32 0, %.sroa.088.0..sroa.088.0..sroa.088.0.100
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.bk = load i32, ptr %16, align 8, !tbaa !120
  %i.bl = lshr i32 %i.bk, 10
  %i.bm = and i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !101
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bq, 32
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.k, %bb.l
  %.06.i = phi i64 [ 72057787311456256, %bb.k ], [ %i.br, %bb.l ]
  %.0.i = phi i32 [ %i.bj, %bb.k ], [ %.sroa.088.0..sroa.088.0..sroa.088.0.100, %bb.l ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.bs = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit: ; preds = %bb.j, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bt = load i32, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.bu = and i32 %i.bt, 16384
  %.not125 = icmp eq i32 %i.bu, 0
  br i1 %.not125, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.sroa.088.0..sroa.088.0..sroa.088.0.100, ptr %14, align 16, !tbaa !68
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 2, ptr %i.bv, align 16, !tbaa !100
  %i.bw = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %14, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.bw, label %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.n
  %.pre144 = load i32, ptr %16, align 8, !tbaa !120
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge.i_crit_edge, %bb.m
  %i.bx = phi i32 [ %.pre144, %..critedge.i_crit_edge ], [ %i.bt, %bb.m ]
  %i.by = lshr i32 %i.bx, 10
  %i.bz = and i32 %i.by, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !101
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %.sroa.0.0.insert.ext.i54 = zext i32 %.sroa.088.0..sroa.088.0..sroa.088.0.100 to i64
  %.sroa.0.0.insert.insert.i55 = or disjoint i64 %i.ce, %.sroa.0.0.insert.ext.i54
  %i.cf = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, i64 %.sroa.0.0.insert.insert.i55, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.n, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.cg = load i32, ptr %16, align 8, !tbaa !120
  %i.ch = and i32 %i.cg, 16384
  %.not124 = icmp eq i32 %i.ch, 0
  br i1 %.not124, label %.critedge.i45, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, ptr %13, align 16, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 3, ptr %i.ci, align 16, !tbaa !100
  %i.cj = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %13, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.cj, label %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %.critedge.i45

.critedge.i45:                                    ; preds = %bb.p, %bb.o
  %i.ck = icmp slt i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, 0
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge.i45
  %i.cl = sub i64 0, %.sroa.088.0..sroa.088.0..sroa.088.0.97
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.r:                                             ; preds = %.critedge.i45
  %i.cm = load i32, ptr %16, align 8, !tbaa !120
  %i.cn = lshr i32 %i.cm, 10
  %i.co = and i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !101
  br label %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.q, %bb.r
  %.06.i56 = phi i32 [ 16777261, %bb.q ], [ %i.cr, %bb.r ]
  %.0.i57 = phi i64 [ %i.cl, %bb.q ], [ %.sroa.088.0..sroa.088.0..sroa.088.0.97, %bb.r ]
  %i.cs = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, i64 %.0.i57, i32 %.06.i56, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.p, %_ZN3fmt3v126detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ct = load i32, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.cu = and i32 %i.ct, 16384
  %.not123 = icmp eq i32 %i.cu, 0
  br i1 %.not123, label %.critedge.i47, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, ptr %12, align 16, !tbaa !68
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 4, ptr %i.cv, align 16, !tbaa !100
  %i.cw = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %12, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.cw, label %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %..critedge.i47_crit_edge

..critedge.i47_crit_edge:                         ; preds = %bb.t
  %.pre141 = load i32, ptr %16, align 8, !tbaa !120
  br label %.critedge.i47

.critedge.i47:                                    ; preds = %..critedge.i47_crit_edge, %bb.s
  %i.cx = phi i32 [ %.pre141, %..critedge.i47_crit_edge ], [ %i.ct, %bb.s ]
  %i.cy = lshr i32 %i.cx, 10
  %i.cz = and i32 %i.cy, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !101
  %i.dd = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, i32 %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.t, %.critedge.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.de = load i32, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.df = and i32 %i.de, 16384
  %.not122 = icmp eq i32 %i.df, 0
  br i1 %.not122, label %.critedge.i49, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i128 %.sroa.088.0..sroa.088.0..sroa.088.0.89, ptr %10, align 16, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 5, ptr %i.dg, align 16, !tbaa !100
  %i.dh = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %10, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.dh, label %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %..critedge.i49_crit_edge

..critedge.i49_crit_edge:                         ; preds = %bb.v
  %.pre139 = load i32, ptr %16, align 8, !tbaa !120
  br label %.critedge.i49

.critedge.i49:                                    ; preds = %..critedge.i49_crit_edge, %bb.u
  %i.di = phi i32 [ %.pre139, %..critedge.i49_crit_edge ], [ %i.de, %bb.u ]
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.dj = icmp slt i128 %.sroa.088.0..sroa.088.0..sroa.088.0.89, 0
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge.i49
  %i.dk = sub i128 0, %.sroa.088.0..sroa.088.0..sroa.088.0.89
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.x:                                             ; preds = %.critedge.i49
  %i.dl = lshr i32 %i.di, 10
  %i.dm = and i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !101, !noalias !586
  br label %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.w, %bb.x
  %.06.i60 = phi i32 [ 16777261, %bb.w ], [ %i.dp, %bb.x ]
  %.0.i61 = phi i128 [ %i.dk, %bb.w ], [ %.sroa.088.0..sroa.088.0..sroa.088.0.89, %bb.x ]
  store i128 %.0.i61, ptr %11, align 16, !tbaa !588, !alias.scope !586
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.06.i60, ptr %i.dq, align 16, !tbaa !589, !alias.scope !586
  %i.dr = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.45") align 16 %11, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.v, %_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ds = load i32, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.dt = and i32 %i.ds, 16384
  %.not121 = icmp eq i32 %i.dt, 0
  br i1 %.not121, label %.critedge.i50, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i128 %.sroa.088.0..sroa.088.0..sroa.088.0.89, ptr %8, align 16, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 6, ptr %i.du, align 16, !tbaa !100
  %i.dv = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %8, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53)
  br i1 %i.dv, label %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %..critedge.i50_crit_edge

..critedge.i50_crit_edge:                         ; preds = %bb.z
  %.pre = load i32, ptr %16, align 8, !tbaa !120
  br label %.critedge.i50

.critedge.i50:                                    ; preds = %..critedge.i50_crit_edge, %bb.y
  %i.dw = phi i32 [ %.pre, %..critedge.i50_crit_edge ], [ %i.ds, %bb.y ]
  %i.dx = lshr i32 %i.dw, 10
  %i.dy = and i32 %i.dx, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !101, !noalias !590
  store i128 %.sroa.088.0..sroa.088.0..sroa.088.0.89, ptr %9, align 16, !tbaa !588, !alias.scope !590
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.eb, ptr %i.ec, align 16, !tbaa !589, !alias.scope !590
  %i.ed = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"struct.fmt::v12::detail::write_int_arg.45") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.z, %.critedge.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aa:                                            ; preds = %bb.h
  %i.ee = load i32, ptr %16, align 8, !tbaa !120  ; 3 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = and i8 %i.ef, 7
  switch i8 %i.eg, label %bb.ab [
    i8 0, label %bb.ad
    i8 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.eh = and i32 %i.ee, 16384
  %.not.i62 = icmp eq i32 %i.eh, 0
  %.pre149 = and i8 %.sroa.088.0..sroa.088.0..sroa.088.0.102, 1 ; 2 uses
  br i1 %.not.i62, label %.critedge.i.i63, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = zext nneg i8 %.pre149 to i32
  store i32 %i.ei, ptr %7, align 16, !tbaa !68
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.ej, align 16, !tbaa !100
  %i.ek = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %7, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr null)
  br i1 %i.ek, label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i, label %..critedge.i_crit_edge.i

..critedge.i_crit_edge.i:                         ; preds = %bb.ac
  %.pre.i = load i32, ptr %16, align 8, !tbaa !120
  br label %.critedge.i.i63

.critedge.i.i63:                                  ; preds = %bb.ab, %..critedge.i_crit_edge.i
  %i.el = phi i32 [ %.pre.i, %..critedge.i_crit_edge.i ], [ %i.ee, %bb.ab ]
  %i.em = lshr i32 %i.el, 10
  %i.en = and i32 %i.em, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !101
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.pre149 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.es, %.sroa.0.0.insert.ext.i.i
  %i.et = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i

_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i: ; preds = %.critedge.i.i63, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ad:                                            ; preds = %bb.aa, %bb.aa
  %i.eu = trunc nuw i8 %.sroa.088.0..sroa.088.0..sroa.088.0.102 to i1 ; 2 uses
  %i.ev = select i1 %i.eu, ptr @.str.34, ptr @.str.35
  %i.ew = select i1 %i.eu, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %i.ev, ptr %6, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !54
  %i.ex = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.ew, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ae:                                            ; preds = %bb.h
  %i.ey = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, i8 noundef signext %.sroa.088.0..sroa.088.0..sroa.088.0.102, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr %.sroa.0.0.copyload.i53) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.af:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i20 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8
  %i.ez = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, float noundef %.sroa.088.0..sroa.088.0..sroa.088.0.98, i64 %.sroa.02.0.copyload.i20, i64 %.sroa.2.0.copyload.i22, ptr %.sroa.0.0.copyload.i53) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ag:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i25 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8
  %i.fa = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, double noundef %.sroa.088.0..sroa.088.0..sroa.088.0.93, i64 %.sroa.02.0.copyload.i25, i64 %.sroa.2.0.copyload.i27, ptr %.sroa.0.0.copyload.i53) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ah:                                            ; preds = %bb.h
  %.sroa.02.0.copyload.i30 = load i64, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0.copyload.i32 = load i64, ptr %.sroa.2.0..sroa_idx.i31, align 8
  %i.fb = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i52, x86_fp80 noundef %.sroa.088.0..sroa.088.0..sroa.088.0.90, i64 %.sroa.02.0.copyload.i30, i64 %.sroa.2.0.copyload.i32, ptr %.sroa.0.0.copyload.i53) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ai:                                            ; preds = %bb.h
  %i.fc = load i32, ptr %16, align 8, !tbaa !120
  %i.fd = and i32 %i.fc, 7
  %i.fe = icmp eq i32 %i.fd, 3
  br i1 %i.fe, label %.preheader155, label %bb.aj

.preheader155:                                    ; preds = %bb.ai, %.preheader155
  %.03.i.i.i.i = phi i64 [ %i.fg, %.preheader155 ], [ %.sroa.088.0..sroa.088.0..sroa.088.0.97, %bb.ai ]
  %.0.i.i.i.i = phi i32 [ %i.ff, %.preheader155 ], [ 0, %bb.ai ] ; 2 uses
  %i.ff = add nuw nsw i32 %.0.i.i.i.i, 1          ; 2 uses
  %i.fg = lshr i64 %.03.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, label %.preheader155, !llvm.loop !6

_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i: ; preds = %.preheader155
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %i.fh = zext i32 %narrow.i.i to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, ptr %5, align 8, !tbaa !124
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ff, ptr %i.fi, align 8, !tbaa !125
  %i.fj = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fh, i64 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aj:                                            ; preds = %bb.ai
  %.not.i65 = icmp eq i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, 0
  br i1 %.not.i65, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.32) #35
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.088.0..sroa.088.0..sroa.088.0.94) #33
  %i.fl = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, ptr nonnull %.sroa.088.0..sroa.088.0..sroa.088.0.94, i64 %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.am:                                            ; preds = %bb.h
  %i.fm = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i52, ptr %.sroa.088.0..sroa.088.0..sroa.088.0.94, i64 %.sroa.088.8..sroa.088.8..sroa.088.8.106, ptr noundef nonnull align 4 dereferenceable(16) %16) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

.preheader:                                       ; preds = %bb.h, %.preheader
  %.03.i.i.i.i68 = phi i64 [ %i.fo, %.preheader ], [ %.sroa.088.0..sroa.088.0..sroa.088.0.97, %bb.h ]
  %.0.i.i.i.i69 = phi i32 [ %i.fn, %.preheader ], [ 0, %bb.h ] ; 2 uses
  %i.fn = add nuw nsw i32 %.0.i.i.i.i69, 1        ; 2 uses
  %i.fo = lshr i64 %.03.i.i.i.i68, 4              ; 2 uses
  %.not.i.i.i.i70 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i70, label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit, label %.preheader, !llvm.loop !6

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %.preheader
  %narrow.i.i72 = add nuw i32 %.0.i.i.i.i69, 3
  %i.fp = zext i32 %narrow.i.i72 to i64           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i64 %.sroa.088.0..sroa.088.0..sroa.088.0.97, ptr %4, align 8, !tbaa !124
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fn, ptr %i.fq, align 8, !tbaa !125
  %i.fr = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i52, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef %i.fp, i64 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.h, %bb.al, %_ZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, %bb.ad, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit.i, %_ZN3fmt3v126detail13arg_formatterIcEclIiTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, %_ZN3fmt3v126detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.am, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS0_10locale_refE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.an

bb.an:                                            ; preds = %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.f
  %.0 = phi ptr [ %i.ao, %bb.f ], [ %i.at, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !68     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !599 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68, !noalias !599
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK3fmt3v127context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.a, 14
  br i1 %i.k, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.a, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !599
  br label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !118, !noalias !600 ; 5 uses
  %i.u = and i64 %i.t, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !600 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !227, !noalias !600 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !228, !noalias !600
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !34

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58, !noalias !600 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #33, !noalias !600 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !600
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
end_hunk_0
