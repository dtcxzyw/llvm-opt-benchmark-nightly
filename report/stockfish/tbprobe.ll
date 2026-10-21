Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish12_GLOBAL__N_18TBTables3addERKSt6vectorINS_9PieceTypeESaIS3_EE:bb.a

_ZN9Stockfish12_GLOBAL__N_18TBTables6insertEmPNS0_7TBTableILNS0_6TBTypeE0EEEPNS2_ILS3_1EEE.exit48: ; preds = %bb.bl, %bb.bm
  store i64 %.sroa.0.017.i31, ptr %i.nq, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %.sroa.6.016.i32, ptr %.sroa.6.0..sroa_idx.i46, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store ptr %.sroa.7.015.i33, ptr %.sroa.7.0..sroa_idx.i47, align 8, !tbaa !61
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN9Stockfish12_GLOBAL__N_18TBTables6insertEmPNS0_7TBTableILNS0_6TBTypeE0EEEPNS2_ILS3_1EEE.exit48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %4, align 8, !tbaa !102
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.nz, align 8, !tbaa !102
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !130 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bq
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !125
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit:      ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %4, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.nz, align 8, !tbaa !102
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.og, align 8, !tbaa !102
  %i.oh = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.og) #26, !inline_history !6 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bv) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.og, align 8, !tbaa !102
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oi) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %4, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.nz, align 8, !tbaa !102
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.oj, align 8, !tbaa !156
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.nz) #26, !inline_history !157
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %2, align 8, !tbaa !102
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.ok, align 8, !tbaa !102
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !130 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit
  %i.op = load i64, ptr %i.on, align 8, !tbaa !125
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #30, !inline_history !6
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51:    ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %2, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.ok, align 8, !tbaa !102
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.or, align 8, !tbaa !102
  %i.os = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.or) #26, !inline_history !6 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.aa) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.or, align 8, !tbaa !102
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ot) #26, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %2, align 8, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.ok, align 8, !tbaa !102
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ou, align 8, !tbaa !156
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ok) #26, !inline_history !157
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ov = load ptr, ptr %1, align 8, !tbaa !130   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.a
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51
  %i.ox = load i64, ptr %i.a, align 8, !tbaa !125
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !159
  %i.a = tail call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %3 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.b = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %3) #26 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !162
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 1
  %.not73 = icmp eq ptr %3, %i.b
  br i1 %.not73, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 622
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04476 = phi i32 [ -2, %.lr.ph ], [ %.246.ph, %bb.f ] ; 3 uses
  %.05075 = phi ptr [ %3, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %.05174 = phi i64 [ 0, %.lr.ph ], [ %.152.ph, %bb.f ] ; 2 uses
  %.sroa.04.0.copyload = load i16, ptr %.05075, align 2, !tbaa !164 ; 6 uses
  %i.j = and i16 %.sroa.04.0.copyload, 63
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !166
  %i.n = icmp ne i8 %i.m, 0
  %.not.i = icmp ult i16 %.sroa.04.0.copyload, -16384
  %or.cond.not.i = and i1 %.not.i, %i.n
  %i.o = icmp slt i16 %.sroa.04.0.copyload, -16384
  %spec.select.i = or i1 %i.o, %or.cond.not.i
  br i1 %spec.select.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %.05174, 1                       ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !168
  %i.q = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 1 dereferenceable(7) %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.g, ptr noundef null, ptr noundef null) #26
  %i.r = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) ; 2 uses
  %i.s = sub nsw i32 0, %i.r                      ; 3 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload) #26
  %i.t = load i32, ptr %1, align 4, !tbaa !159
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i32 %.04476, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %i.r, -1
  br i1 %i.w, label %.thread64.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.152.ph = phi i64 [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %.05174, %bb.b ] ; 2 uses
  %.246.ph = phi i32 [ %.04476, %bb.d ], [ %i.s, %bb.e ], [ %.04476, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05075, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.y = icmp eq i64 %.152.ph, %i.f
  br i1 %i.y, label %.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.044.lcssa84 = phi i32 [ %.246.ph, %._crit_edge ], [ -2, %bb.a ] ; 2 uses
  %i.z = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !159
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread64, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %.not55 = icmp slt i32 %.044.lcssa84, %i.z
  br i1 %.not55, label %.thread64.sink.split, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.g
  %.044.lcssa8589 = phi i32 [ %.044.lcssa84, %bb.g ], [ %.246.ph, %._crit_edge ] ; 2 uses
  %i.ac = phi i1 [ false, %bb.g ], [ true, %._crit_edge ]
  %i.ad = icmp sgt i32 %.044.lcssa8589, 0
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = select i1 %i.ae, i32 2, i32 1
  br label %.thread64.sink.split

.thread64.sink.split:                             ; preds = %bb.e, %bb.g, %.thread
  %.sink = phi i32 [ 1, %bb.g ], [ %i.af, %.thread ], [ 2, %bb.e ]
  %.4.ph = phi i32 [ %i.z, %bb.g ], [ %.044.lcssa8589, %.thread ], [ %i.s, %bb.e ]
  store i32 %.sink, ptr %1, align 4, !tbaa !159
  br label %.thread64

.thread64:                                        ; preds = %bb.c, %.thread64.sink.split, %._crit_edge.thread
  %.4 = phi i32 [ 0, %._crit_edge.thread ], [ %.4.ph, %.thread64.sink.split ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 75 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [7 x i8], align 1                 ; 19 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.Stockfish::(anonymous namespace)::TBFile", align 8 ; 14 uses
  %12 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %13 = alloca %"struct.Stockfish::MoveList", align 8 ; 10 uses
  %14 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %15 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  %16 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  store i32 1, ptr %1, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 512
  %i.g = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %13) #26 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !162
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %13 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 1
  %.not76.i = icmp eq ptr %13, %i.g
  br i1 %.not76.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 622
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.04779.i = phi i32 [ -2, %.lr.ph.i ], [ %.249.ph.i, %bb.g ] ; 3 uses
  %.05378.i = phi ptr [ %13, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.05477.i = phi i64 [ 0, %.lr.ph.i ], [ %.155.ph.i, %bb.g ] ; 2 uses
  %.sroa.05.0.copyload.i = load i16, ptr %.05378.i, align 2, !tbaa !164 ; 7 uses
  %i.o = and i16 %.sroa.05.0.copyload.i, 63
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !166
  %i.s = icmp ne i8 %i.r, 0
  %.not.i.i = icmp ult i16 %.sroa.05.0.copyload.i, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.s
  %i.t = icmp slt i16 %.sroa.05.0.copyload.i, -16384
  %spec.select.i.i = or i1 %i.t, %or.cond.not.i.i
  br i1 %spec.select.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i16 %.sroa.05.0.copyload.i, 6
  %i.v = and i16 %i.u, 63
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !166
  %i.z = and i8 %i.y, 7
  %.not58.i = icmp eq i8 %i.z, 1
  br i1 %.not58.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = add i64 %.05477.i, 1                    ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !168
  %i.ab = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(192) %12, i1 noundef zeroext %i.ab, ptr noundef nonnull align 1 dereferenceable(7) %i.n, ptr noundef nonnull align 8 dereferenceable(416) %i.l, ptr noundef null, ptr noundef null) #26
  %i.ac = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1) ; 2 uses
  %i.ad = sub nsw i32 0, %i.ac                    ; 2 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i) #26
  %i.ae = load i32, ptr %1, align 4, !tbaa !159
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp slt i32 %.04779.i, %i.ad
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp slt i32 %i.ac, -1
  br i1 %i.ah, label %.thread104, label %bb.g

.thread104:                                       ; preds = %bb.f
  store i32 2, ptr %1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.155.ph.i = phi i64 [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %.05477.i, %bb.c ] ; 2 uses
  %.249.ph.i = phi i32 [ %.04779.i, %bb.e ], [ %i.ad, %bb.f ], [ %.04779.i, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05378.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.g
  %i.aj = icmp eq i64 %.155.ph.i, %i.k
  br i1 %i.aj, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.047.lcssa86.i = phi i32 [ %.249.ph.i, %._crit_edge.i ], [ -2, %bb.a ] ; 2 uses
  %i.ak = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1) ; 3 uses
  %i.al = load i32, ptr %1, align 4, !tbaa !159
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i
  %.not59.i = icmp slt i32 %.047.lcssa86.i, %i.ak
  br i1 %.not59.i, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread: ; preds = %bb.d, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit: ; preds = %._crit_edge.i, %bb.h
  %.047.lcssa8791.i = phi i32 [ %.047.lcssa86.i, %bb.h ], [ %.249.ph.i, %._crit_edge.i ] ; 6 uses
  %i.an = phi i1 [ false, %bb.h ], [ true, %._crit_edge.i ]
  %i.ao = icmp sgt i32 %.047.lcssa8791.i, 0
  %i.ap = or i1 %i.an, %i.ao                      ; 2 uses
  %i.aq = select i1 %i.ap, i32 2, i32 1
  store i32 %i.aq, ptr %1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ar = icmp eq i32 %.047.lcssa8791.i, 0
  br i1 %i.ar, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit, label %bb.i

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83: ; preds = %bb.h
  store i32 1, ptr %1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.as = icmp eq i32 %i.ak, 0
  br i1 %i.as, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit, label %.thread

bb.i:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit
  br i1 %i.ap, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  switch i32 %.047.lcssa8791.i, label %bb.k [
    i32 2, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
    i32 1, label %.fold.split.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.at = icmp eq i32 %.047.lcssa8791.i, -1
  %i.au = icmp eq i32 %.047.lcssa8791.i, -2
  %i.av = sext i1 %i.au to i32
  %i.aw = select i1 %i.at, i32 -101, i32 %i.av
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

.fold.split.i:                                    ; preds = %bb.j
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

.thread:                                          ; preds = %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, %bb.i
  %.4.ph.i8891 = phi i32 [ %.047.lcssa8791.i, %bb.i ], [ %i.ak, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83 ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !81
  %i.bb = add nsw i32 %i.ba, %i.ay
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %bb.dr, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !177
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !179 ; 3 uses
  %i.bg = and i64 %i.bf, 4095
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !152
  %i.bj = icmp eq i64 %i.bi, %i.bf
  br i1 %i.bj, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.01.i.i = phi ptr [ %i.bl, %bb.m ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bk = getelementptr i8, ptr %.01.i.i, i64 16
  %.0.val6.i.i = load ptr, ptr %i.bk, align 8, !tbaa !379
  %.not.i.i74 = icmp eq ptr %.0.val6.i.i, null
  br i1 %.not.i.i74, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 24 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !152
  %i.bn = icmp eq i64 %i.bm, %i.bf
  br i1 %i.bn, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %.lr.ph.i.i, !llvm.loop !331

_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i: ; preds = %bb.m, %.lr.ph.i.i, %bb.l
  %.0.lcssa.i.i = phi ptr [ %i.bh, %bb.l ], [ %.01.i.i, %.lr.ph.i.i ], [ %i.bl, %bb.m ]
  %i.bo = getelementptr i8, ptr %.0.lcssa.i.i, i64 16
  %.0.val.i.i = load ptr, ptr %i.bo, align 8, !tbaa !379 ; 99 uses
  %.0.val.i.i281 = ptrtoaddr ptr %.0.val.i.i to i64
  %.not.i75 = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i75, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i
  %i.bp = load atomic i8, ptr %.0.val.i.i acquire, align 1, !range !145, !noundef !146
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !140
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bt = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bt) #31
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i:   ; preds = %bb.p
  %i.bu = load atomic i8, ptr %.0.val.i.i monotonic, align 1, !range !145, !noundef !146
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !140
  br label %bb.bs

bb.s:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.by, ptr %2, align 8, !tbaa !129
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !85
  store i8 0, ptr %i.by, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ca, ptr %3, align 8, !tbaa !129
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !85
  store i8 0, ptr %i.ca, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !129
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !85
  store i8 0, ptr %i.cc, align 8, !tbaa !125
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !380
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !177
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !179
  %.not25.i.i = icmp eq i64 %i.cm, %i.co          ; 2 uses
  br i1 %.not25.i.i, label %bb.x, label %bb.ac

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i, %bb.s
  %indvars.iv.i.i = phi i64 [ 6, %bb.s ], [ %indvars.iv.next.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cp = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !45
  %i.cs = and i64 %i.cr, %i.cp
  %i.ct = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr @.str.11, i64 %indvars.iv.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !125 ; 2 uses
  store ptr %i.cg, ptr %5, align 8, !tbaa !129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ct, i8 noundef signext %i.cv) #26
  %i.cw = load i64, ptr %i.ch, align 8, !tbaa !85 ; 2 uses
  %i.cx = load i64, ptr %i.cb, align 8, !tbaa !85
  %i.cy = sub i64 4611686018427387903, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.cw
  br i1 %i.cz, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %bb.u
  %i.da = load ptr, ptr %5, align 8, !tbaa !130
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.da, i64 noundef %i.cw) #26 ; 0 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !130   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cg
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  %i.de = load i64, ptr %i.cg, align 8, !tbaa !125
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.dg = load i64, ptr %i.ci, align 8, !tbaa !45
  %i.dh = load i64, ptr %i.cq, align 8, !tbaa !45
  %i.di = and i64 %i.dh, %i.dg
  %i.dj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.di)
  store ptr %i.cj, ptr %6, align 8, !tbaa !129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.dj, i8 noundef signext %i.cv) #26
  %i.dk = load i64, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !85
  %i.dm = sub i64 4611686018427387903, %i.dl
  %i.dn = icmp ult i64 %i.dm, %i.dk
  br i1 %i.dn, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.do = load ptr, ptr %6, align 8, !tbaa !130
  %i.dp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.do, i64 noundef %i.dk) #26 ; 0 uses
  %i.dq = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cj
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i.i
  %i.ds = load i64, ptr %i.cj, align 8, !tbaa !125
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %.not.i12.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i12.i, label %bb.t, label %bb.u, !llvm.loop !332

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 118, ptr %i.e, align 1, !tbaa !125, !noalias !381
  %i.du = load ptr, ptr %3, align 8, !tbaa !130, !noalias !381
  %i.dv = load i64, ptr %i.cb, align 8, !tbaa !85, !noalias !381 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.dw, ptr %9, align 8, !tbaa !129, !alias.scope !382
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !85, !alias.scope !382
  store i8 0, ptr %i.dw, align 8, !tbaa !125, !alias.scope !382
  %i.dy = add i64 %i.dv, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dy) #26
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !85, !alias.scope !382
  %i.ea = sub i64 4611686018427387903, %i.dz
  %i.eb = icmp ult i64 %i.ea, %i.dv
  br i1 %i.eb, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %bb.x
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.du, i64 noundef %i.dv) #26 ; 0 uses
  %i.ed = load i64, ptr %i.dx, align 8, !tbaa !85, !alias.scope !382
  %i.ee = icmp eq i64 %i.ed, 4611686018427387903
  br i1 %i.ee, label %bb.z, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
bb.bt:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.bgg = load i64, ptr %i.bgf, align 8, !tbaa !380 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 40
  %i.bgi = load i64, ptr %i.bgh, align 8, !tbaa !389
  %i.bgj = icmp eq i64 %i.bgg, %i.bgi             ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bgl = load i8, ptr %i.bgk, align 4           ; 2 uses
  %i.bgm = icmp ne i8 %i.bgl, 0
  %i.bgn = select i1 %i.bgj, i1 %i.bgm, i1 false
  %i.bgo = load ptr, ptr %i.bd, align 8, !tbaa !177
  %i.bgp = load i64, ptr %i.bgo, align 8, !tbaa !179
  %i.bgq = icmp ne i64 %i.bgp, %i.bgg
  %i.bgr = select i1 %i.bgn, i1 true, i1 %i.bgq   ; 3 uses
  %i.bgs = select i1 %i.bgr, i32 8, i32 0         ; 2 uses
  %i.bgt = select i1 %i.bgr, i32 56, i32 0        ; 2 uses
  %i.bgu = zext i1 %i.bgr to i8
  %i.bgv = xor i8 %i.bgl, %i.bgu
  %i.bgw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 3 uses
  %i.bgx = load i8, ptr %i.bgw, align 4, !tbaa !147, !range !145, !noundef !146
  %i.bgy = trunc nuw i8 %i.bgx to i1              ; 3 uses
  br i1 %i.bgy, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 184
  %i.bha = load i8, ptr %i.bgz, align 8, !tbaa !166
  %i.bhb = trunc nuw nsw i32 %i.bgs to i8
  %i.bhc = xor i8 %i.bha, %i.bhb
  %i.bhd = lshr i8 %i.bhc, 3
  %i.bhe = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bhf = zext nneg i8 %i.bhd to i64
  %i.bhg = getelementptr inbounds nuw [8 x i8], ptr %i.bhe, i64 %i.bhf
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !45
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !45
  %i.bhk = and i64 %i.bhj, %i.bhh                 ; 2 uses
  %i.bhl = trunc nuw nsw i32 %i.bgt to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %indvars.iv.i17.i = phi i64 [ %indvars.iv.next.i18.i, %bb.bv ], [ 0, %bb.bu ] ; 5 uses
  %.0159.i.i = phi i64 [ %i.bhp, %bb.bv ], [ %i.bhk, %bb.bu ] ; 3 uses
  %i.bhm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0159.i.i, i1 true)
  %i.bhn = trunc nuw nsw i64 %i.bhm to i8
  %i.bho = add i64 %.0159.i.i, -1
  %i.bhp = and i64 %i.bho, %.0159.i.i             ; 2 uses
  %i.bhq = xor i8 %i.bhn, %i.bhl
  %indvars.iv.next.i18.i = add nuw nsw i64 %indvars.iv.i17.i, 1 ; 3 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i17.i
  store i8 %i.bhq, ptr %i.bhr, align 1, !tbaa !87
  %.not.i19.i = icmp eq i64 %i.bhp, 0
  br i1 %.not.i19.i, label %bb.bw, label %bb.bv, !llvm.loop !355

bb.bw:                                            ; preds = %bb.bv
  %i.bhs = trunc nuw i64 %indvars.iv.next.i18.i to i32
  %i.bht = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i18.i
  %.not17.i.i.i.i = icmp eq i64 %indvars.iv.i17.i, 0
  %.pre298.i.i = load i8, ptr %i.a, align 1, !tbaa !87 ; 3 uses
  br i1 %.not17.i.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bw
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i.i = zext i8 %.pre298.i.i to i64
  %.phi.trans.insert296.i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i.i
  %.pre297.i.i = load i32, ptr %.phi.trans.insert296.i.i, align 4, !tbaa !81 ; 2 uses
  %xtraiter504 = and i64 %indvars.iv.i17.i, 7     ; 2 uses
  %lcmp.mod505.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod505.not, label %.lr.ph.i.i.i20.i.prol.loopexit, label %.lr.ph.i.i.i20.i.prol

.lr.ph.i.i.i20.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i20.i.prol
  %i.bhv = phi i32 [ %i.bid, %.lr.ph.i.i.i20.i.prol ], [ %.pre297.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bhw = phi ptr [ %i.bic, %.lr.ph.i.i.i20.i.prol ], [ %i.bhu, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.018.i.i.i.i.prol = phi ptr [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ], [ %i.a, %.lr.ph.i.i.preheader.i.i ]
  %prol.iter506 = phi i64 [ %prol.iter506.next, %.lr.ph.i.i.i20.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !87
  %i.bhy = zext i8 %i.bhx to i64
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhy
  %i.bia = load i32, ptr %i.bhz, align 4, !tbaa !81 ; 2 uses
  %i.bib = icmp slt i32 %i.bhv, %i.bia
  %spec.select.i.i.i.i.prol = select i1 %i.bib, ptr %i.bhw, ptr %.018.i.i.i.i.prol ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhw, i64 1 ; 2 uses
  %i.bid = call i32 @llvm.smax.i32(i32 %i.bhv, i32 %i.bia) ; 2 uses
  %prol.iter506.next = add i64 %prol.iter506, 1   ; 2 uses
  %prol.iter506.cmp.not = icmp eq i64 %prol.iter506.next, %xtraiter504
  br i1 %prol.iter506.cmp.not, label %.lr.ph.i.i.i20.i.prol.loopexit, label %.lr.ph.i.i.i20.i.prol, !llvm.loop !356

.lr.ph.i.i.i20.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i20.i.prol, %.lr.ph.i.i.preheader.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ]
  %.unr = phi i32 [ %.pre297.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.bid, %.lr.ph.i.i.i20.i.prol ]
  %.unr507 = phi ptr [ %i.bhu, %.lr.ph.i.i.preheader.i.i ], [ %i.bic, %.lr.ph.i.i.i20.i.prol ]
  %.018.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i20.i.prol ]
  %i.bie = icmp samesign ult i64 %indvars.iv.i17.i, 8
  br i1 %i.bie, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i20.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i.i.i20.i.prol.loopexit, %.lr.ph.i.i.i20.i
  %i.bif = phi i32 [ %i.bkk, %.lr.ph.i.i.i20.i ], [ %.unr, %.lr.ph.i.i.i20.i.prol.loopexit ] ; 2 uses
  %i.big = phi ptr [ %i.bkj, %.lr.ph.i.i.i20.i ], [ %.unr507, %.lr.ph.i.i.i20.i.prol.loopexit ] ; 10 uses
  %.018.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.7, %.lr.ph.i.i.i20.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i20.i.prol.loopexit ]
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !87
  %i.bii = zext i8 %i.bih to i64
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bii
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !81 ; 2 uses
  %i.bil = icmp slt i32 %i.bif, %i.bik
  %spec.select.i.i.i.i = select i1 %i.bil, ptr %i.big, ptr %.018.i.i.i.i
  %i.bim = getelementptr inbounds nuw i8, ptr %i.big, i64 1 ; 2 uses
  %i.bin = call i32 @llvm.smax.i32(i32 %i.bif, i32 %i.bik) ; 2 uses
  %i.bio = load i8, ptr %i.bim, align 1, !tbaa !87
  %i.bip = zext i8 %i.bio to i64
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bip
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !81 ; 2 uses
  %i.bis = icmp slt i32 %i.bin, %i.bir
  %spec.select.i.i.i.i.1 = select i1 %i.bis, ptr %i.bim, ptr %spec.select.i.i.i.i
  %i.bit = getelementptr inbounds nuw i8, ptr %i.big, i64 2 ; 2 uses
  %i.biu = call i32 @llvm.smax.i32(i32 %i.bin, i32 %i.bir) ; 2 uses
  %i.biv = load i8, ptr %i.bit, align 1, !tbaa !87
  %i.biw = zext i8 %i.biv to i64
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.biw
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !81 ; 2 uses
  %i.biz = icmp slt i32 %i.biu, %i.biy
  %spec.select.i.i.i.i.2 = select i1 %i.biz, ptr %i.bit, ptr %spec.select.i.i.i.i.1
  %i.bja = getelementptr inbounds nuw i8, ptr %i.big, i64 3 ; 2 uses
  %i.bjb = call i32 @llvm.smax.i32(i32 %i.biu, i32 %i.biy) ; 2 uses
  %i.bjc = load i8, ptr %i.bja, align 1, !tbaa !87
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bjd
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !81 ; 2 uses
  %i.bjg = icmp slt i32 %i.bjb, %i.bjf
  %spec.select.i.i.i.i.3 = select i1 %i.bjg, ptr %i.bja, ptr %spec.select.i.i.i.i.2
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.big, i64 4 ; 2 uses
  %i.bji = call i32 @llvm.smax.i32(i32 %i.bjb, i32 %i.bjf) ; 2 uses
  %i.bjj = load i8, ptr %i.bjh, align 1, !tbaa !87
  %i.bjk = zext i8 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bjk
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !81 ; 2 uses
  %i.bjn = icmp slt i32 %i.bji, %i.bjm
  %spec.select.i.i.i.i.4 = select i1 %i.bjn, ptr %i.bjh, ptr %spec.select.i.i.i.i.3
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.big, i64 5 ; 2 uses
  %i.bjp = call i32 @llvm.smax.i32(i32 %i.bji, i32 %i.bjm) ; 2 uses
  %i.bjq = load i8, ptr %i.bjo, align 1, !tbaa !87
  %i.bjr = zext i8 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bjr
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !81 ; 2 uses
  %i.bju = icmp slt i32 %i.bjp, %i.bjt
  %spec.select.i.i.i.i.5 = select i1 %i.bju, ptr %i.bjo, ptr %spec.select.i.i.i.i.4
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.big, i64 6 ; 2 uses
  %i.bjw = call i32 @llvm.smax.i32(i32 %i.bjp, i32 %i.bjt) ; 2 uses
  %i.bjx = load i8, ptr %i.bjv, align 1, !tbaa !87
  %i.bjy = zext i8 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bjy
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !81 ; 2 uses
  %i.bkb = icmp slt i32 %i.bjw, %i.bka
  %spec.select.i.i.i.i.6 = select i1 %i.bkb, ptr %i.bjv, ptr %spec.select.i.i.i.i.5
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.big, i64 7 ; 2 uses
  %i.bkd = call i32 @llvm.smax.i32(i32 %i.bjw, i32 %i.bka) ; 2 uses
  %i.bke = load i8, ptr %i.bkc, align 1, !tbaa !87
  %i.bkf = zext i8 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bkf
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !81 ; 2 uses
  %i.bki = icmp slt i32 %i.bkd, %i.bkh
  %spec.select.i.i.i.i.7 = select i1 %i.bki, ptr %i.bkc, ptr %spec.select.i.i.i.i.6 ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.big, i64 8 ; 2 uses
  %.not.i.i.i21.i.7 = icmp eq ptr %i.bkj, %i.bht
  %i.bkk = call i32 @llvm.smax.i32(i32 %i.bkd, i32 %i.bkh)
  br i1 %.not.i.i.i21.i.7, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i20.i, !llvm.loop !7

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i20.i, %.lr.ph.i.i.i20.i.prol.loopexit
  %spec.select.i.i.i.i.lcssa = phi ptr [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i20.i.prol.loopexit ], [ %spec.select.i.i.i.i.7, %.lr.ph.i.i.i20.i ] ; 2 uses
  %.pre.i22.i = load i8, ptr %spec.select.i.i.i.i.lcssa, align 1, !tbaa !87
  br label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i: ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, %bb.bw
  %i.bkl = phi i8 [ %.pre298.i.i, %bb.bw ], [ %.pre.i22.i, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i ]
  %.011.i.i.i.i = phi ptr [ %i.a, %bb.bw ], [ %spec.select.i.i.i.i.lcssa, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i ]
  store i8 %i.bkl, ptr %i.a, align 1, !tbaa !87
  store i8 %.pre298.i.i, ptr %.011.i.i.i.i, align 1, !tbaa !87
  %i.bkm = load i8, ptr %i.a, align 1, !tbaa !87
  %i.bkn = and i8 %i.bkm, 7                       ; 2 uses
  %i.bko = xor i8 %i.bkn, 7
  %.sroa.speculated.i.i.i = call i8 @llvm.umin.i8(i8 %i.bko, i8 %i.bkn)
  %i.bkp = zext nneg i8 %.sroa.speculated.i.i.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, %bb.bt
  %.0132.i.i = phi i64 [ %i.bhk, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ]
  %.0131.i.i = phi i64 [ %i.bkp, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ] ; 2 uses
  %.1119.i.i = phi i32 [ %i.bhs, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ] ; 8 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56 ; 2 uses
  %i.bkr = getelementptr inbounds nuw [240 x i8], ptr %i.bkq, i64 %.0131.i.i ; 7 uses
  %i.bks = load i8, ptr %i.bkr, align 8, !tbaa !198
  %i.bkt = and i8 %i.bks, 1
  %i.bku = icmp eq i8 %i.bgv, %i.bkt
  %i.bkv = xor i1 %i.bgy, true
  %spec.select.i.i.i = and i1 %i.bgj, %i.bkv
  %or.cond.i.i = select i1 %i.bku, i1 true, i1 %spec.select.i.i.i
  br i1 %or.cond.i.i, label %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 -1, ptr %1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ds

_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i: ; preds = %bb.bx
  %i.bkw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bkx = load i64, ptr %i.bkw, align 8, !tbaa !45
  %i.bky = xor i64 %i.bkx, %.0132.i.i
  %i.bkz = trunc nuw nsw i32 %i.bgt to i8
  %i.bla = trunc nuw nsw i32 %i.bgs to i8
  %i.blb = sext i32 %.1119.i.i to i64             ; 7 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i
  %indvars.iv238.i.i = phi i64 [ %indvars.iv.next239.i.i, %bb.bz ], [ %i.blb, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i ] ; 8 uses
  %.1.i13.i = phi i64 [ %i.blf, %bb.bz ], [ %i.bky, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i ] ; 3 uses
  %indvars.iv.next239.i.i = add i64 %indvars.iv238.i.i, 1 ; 10 uses
  %i.blc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i13.i, i1 true) ; 2 uses
  %i.bld = trunc nuw nsw i64 %i.blc to i8
  %i.ble = add i64 %.1.i13.i, -1
  %i.blf = and i64 %i.ble, %.1.i13.i              ; 2 uses
  %i.blg = xor i8 %i.bld, %i.bkz
  %i.blh = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv238.i.i
  store i8 %i.blg, ptr %i.blh, align 1, !tbaa !87
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 %i.blc
  %i.blj = load i8, ptr %i.bli, align 1, !tbaa !166
  %i.blk = xor i8 %i.blj, %i.bla
  %i.bll = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv238.i.i
  store i8 %i.blk, ptr %i.bll, align 1, !tbaa !166
  %.not134.i.i = icmp eq i64 %i.blf, 0
  br i1 %.not134.i.i, label %bb.ca, label %bb.bz, !llvm.loop !357

bb.ca:                                            ; preds = %bb.bz
  %indvars67.le.i = trunc i64 %indvars.iv.next239.i.i to i32 ; 5 uses
  %indvars66.i = trunc i64 %indvars.iv238.i.i to i32
  %i.blm = icmp slt i32 %.1119.i.i, %indvars66.i
  br i1 %i.blm, label %.lr.ph182.i.i, label %._crit_edge.i.i

.lr.ph182.i.i:                                    ; preds = %bb.ca
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bkr, i64 128 ; 5 uses
  %sext.i = shl i64 %indvars.iv238.i.i, 32
  %wide.trip.count.i.i = ashr exact i64 %sext.i, 32 ; 2 uses
  %i.blo = sub i64 %indvars.iv238.i.i, %i.blb
  %xtraiter508 = and i64 %i.blo, 3                ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph.i16.i.prol.loopexit, label %.lr.ph.i16.i.prol

.lr.ph.i16.i.prol:                                ; preds = %.lr.ph182.i.i, %.loopexit169.i.i.prol
  %indvars.iv248.i.i.prol = phi i64 [ %indvars.iv.next249.i.i.prol, %.loopexit169.i.i.prol ], [ %i.blb, %.lr.ph182.i.i ] ; 4 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.loopexit169.i.i.prol ], [ 0, %.lr.ph182.i.i ]
  %indvars.iv.next249.i.i.prol = add nsw i64 %indvars.iv248.i.i.prol, 1 ; 3 uses
  %i.blp = getelementptr inbounds i8, ptr %i.bln, i64 %indvars.iv248.i.i.prol
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !166 ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.i16.i.prol
  %indvars.iv243.i.i.prol = phi i64 [ %indvars.iv.next249.i.i.prol, %.lr.ph.i16.i.prol ], [ %indvars.iv.next244.i.i.prol, %bb.cc ] ; 4 uses
  %i.blr = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.prol
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !166
  %i.blt = icmp eq i8 %i.blq, %i.bls
  br i1 %i.blt, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next244.i.i.prol = add nsw i64 %indvars.iv243.i.i.prol, 1 ; 2 uses
  %lftr.wideiv.i.i.prol = trunc i64 %indvars.iv.next244.i.i.prol to i32
  %exitcond.not.i.i.prol = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.prol
  br i1 %exitcond.not.i.i.prol, label %.loopexit169.i.i.prol, label %bb.cb, !llvm.loop !358

bb.cd:                                            ; preds = %bb.cb
  %i.blu = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.prol
  %i.blv = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv248.i.i.prol ; 2 uses
  %i.blw = load i8, ptr %i.blv, align 1, !tbaa !166
  store i8 %i.blq, ptr %i.blv, align 1, !tbaa !166
  store i8 %i.blw, ptr %i.blu, align 1, !tbaa !166
  %i.blx = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv248.i.i.prol ; 2 uses
  %i.bly = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv243.i.i.prol ; 2 uses
  %i.blz = load i8, ptr %i.blx, align 1, !tbaa !87
  %i.bma = load i8, ptr %i.bly, align 1, !tbaa !87
  store i8 %i.bma, ptr %i.blx, align 1, !tbaa !87
  store i8 %i.blz, ptr %i.bly, align 1, !tbaa !87
  br label %.loopexit169.i.i.prol

.loopexit169.i.i.prol:                            ; preds = %bb.cc, %bb.cd
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.lr.ph.i16.i.prol.loopexit, label %.lr.ph.i16.i.prol, !llvm.loop !359

.lr.ph.i16.i.prol.loopexit:                       ; preds = %.loopexit169.i.i.prol, %.lr.ph182.i.i
  %indvars.iv248.i.i.unr = phi i64 [ %i.blb, %.lr.ph182.i.i ], [ %indvars.iv.next249.i.i.prol, %.loopexit169.i.i.prol ]
  %i.bmb = sub nsw i64 %i.blb, %wide.trip.count.i.i
  %i.bmc = icmp ugt i64 %i.bmb, -4
  br i1 %i.bmc, label %._crit_edge.i.i, label %.lr.ph.i16.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i16.i.prol.loopexit, %.loopexit169.i.i.3, %bb.ca
  %i.bmd = load i8, ptr %i.a, align 1, !tbaa !87
  %i.bme = and i8 %i.bmd, 4
  %.not160.i.i = icmp eq i8 %i.bme, 0
  %.not135183.i.i = icmp slt i64 %indvars.iv238.i.i, 0 ; 2 uses
  %or.cond215.i.i = or i1 %.not135183.i.i, %.not160.i.i
  br i1 %or.cond215.i.i, label %.loopexit168.i.i, label %.lr.ph185.preheader.i.i

.lr.ph185.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %wide.trip.count258.i.i = and i64 %indvars.iv.next239.i.i, 4294967295
  %i.bmf = add nsw i64 %wide.trip.count258.i.i, -1
  %xtraiter511 = and i64 %indvars.iv.next239.i.i, 7 ; 3 uses
  %i.bmg = icmp ult i64 %i.bmf, 7
  br i1 %i.bmg, label %.lr.ph185.i.i.epil.preheader, label %.lr.ph185.preheader.i.i.new

.lr.ph185.preheader.i.i.new:                      ; preds = %.lr.ph185.preheader.i.i
  %unroll_iter = and i64 %indvars.iv.next239.i.i, 4294967288
  br label %.lr.ph185.i.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i.prol.loopexit, %.loopexit169.i.i.3
  %indvars.iv248.i.i = phi i64 [ %indvars.iv.next249.i.i.3, %.loopexit169.i.i.3 ], [ %indvars.iv248.i.i.unr, %.lr.ph.i16.i.prol.loopexit ] ; 7 uses
  %indvars.iv.next249.i.i = add nsw i64 %indvars.iv248.i.i, 1 ; 4 uses
  %i.bmh = getelementptr inbounds i8, ptr %i.bln, i64 %indvars.iv248.i.i
  %i.bmi = load i8, ptr %i.bmh, align 1, !tbaa !166 ; 2 uses
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next244.i.i = add nsw i64 %indvars.iv243.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next244.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.loopexit169.i.i, label %bb.cf, !llvm.loop !358

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i16.i
  %indvars.iv243.i.i = phi i64 [ %indvars.iv.next249.i.i, %.lr.ph.i16.i ], [ %indvars.iv.next244.i.i, %bb.ce ] ; 4 uses
  %i.bmj = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !166
  %i.bml = icmp eq i8 %i.bmi, %i.bmk
  br i1 %i.bml, label %bb.cg, label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  %i.bmm = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i
  %i.bmn = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv248.i.i ; 2 uses
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !166
  store i8 %i.bmi, ptr %i.bmn, align 1, !tbaa !166
  store i8 %i.bmo, ptr %i.bmm, align 1, !tbaa !166
  %i.bmp = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv248.i.i ; 2 uses
  %i.bmq = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv243.i.i ; 2 uses
  %i.bmr = load i8, ptr %i.bmp, align 1, !tbaa !87
  %i.bms = load i8, ptr %i.bmq, align 1, !tbaa !87
  store i8 %i.bms, ptr %i.bmp, align 1, !tbaa !87
  store i8 %i.bmr, ptr %i.bmq, align 1, !tbaa !87
  br label %.loopexit169.i.i

.loopexit169.i.i:                                 ; preds = %bb.ce, %bb.cg
  %indvars.iv.next249.i.i.1 = add nsw i64 %indvars.iv248.i.i, 2 ; 4 uses
  %i.bmt = getelementptr inbounds i8, ptr %i.bln, i64 %indvars.iv.next249.i.i
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !166 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.loopexit169.i.i
  %indvars.iv243.i.i.1 = phi i64 [ %indvars.iv.next249.i.i.1, %.loopexit169.i.i ], [ %indvars.iv.next244.i.i.1, %bb.ci ] ; 4 uses
  %i.bmv = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.1
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !166
  %i.bmx = icmp eq i8 %i.bmu, %i.bmw
  br i1 %i.bmx, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %indvars.iv.next244.i.i.1 = add nsw i64 %indvars.iv243.i.i.1, 1 ; 2 uses
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next244.i.i.1 to i32
  %exitcond.not.i.i.1 = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.1
  br i1 %exitcond.not.i.i.1, label %.loopexit169.i.i.1, label %bb.ch, !llvm.loop !358

bb.cj:                                            ; preds = %bb.ch
  %i.bmy = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.1
  %i.bmz = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next249.i.i ; 2 uses
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !166
  store i8 %i.bmu, ptr %i.bmz, align 1, !tbaa !166
  store i8 %i.bna, ptr %i.bmy, align 1, !tbaa !166
  %i.bnb = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next249.i.i ; 2 uses
  %i.bnc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv243.i.i.1 ; 2 uses
  %i.bnd = load i8, ptr %i.bnb, align 1, !tbaa !87
  %i.bne = load i8, ptr %i.bnc, align 1, !tbaa !87
  store i8 %i.bne, ptr %i.bnb, align 1, !tbaa !87
  store i8 %i.bnd, ptr %i.bnc, align 1, !tbaa !87
  br label %.loopexit169.i.i.1

.loopexit169.i.i.1:                               ; preds = %bb.ci, %bb.cj
  %indvars.iv.next249.i.i.2 = add nsw i64 %indvars.iv248.i.i, 3 ; 4 uses
  %i.bnf = getelementptr inbounds i8, ptr %i.bln, i64 %indvars.iv.next249.i.i.1
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !166 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.loopexit169.i.i.1
  %indvars.iv243.i.i.2 = phi i64 [ %indvars.iv.next249.i.i.2, %.loopexit169.i.i.1 ], [ %indvars.iv.next244.i.i.2, %bb.cl ] ; 4 uses
  %i.bnh = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.2
  %i.bni = load i8, ptr %i.bnh, align 1, !tbaa !166
  %i.bnj = icmp eq i8 %i.bng, %i.bni
  br i1 %i.bnj, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next244.i.i.2 = add nsw i64 %indvars.iv243.i.i.2, 1 ; 2 uses
  %lftr.wideiv.i.i.2 = trunc i64 %indvars.iv.next244.i.i.2 to i32
  %exitcond.not.i.i.2 = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.2
  br i1 %exitcond.not.i.i.2, label %.loopexit169.i.i.2, label %bb.ck, !llvm.loop !358

bb.cm:                                            ; preds = %bb.ck
  %i.bnk = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv243.i.i.2
  %i.bnl = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next249.i.i.1 ; 2 uses
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !166
  store i8 %i.bng, ptr %i.bnl, align 1, !tbaa !166
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader: ; preds = %iter.check397, %vec.epilog.iter.check399, %vec.epilog.middle.block418
  %indvars.iv288.i.i.ph = phi i64 [ 0, %iter.check397 ], [ %n.vec359, %vec.epilog.iter.check399 ], [ %n.vec402, %vec.epilog.middle.block418 ]
  %.0122199.us.i.i.ph = phi i64 [ 0, %iter.check397 ], [ %i.cap, %vec.epilog.iter.check399 ], [ %i.cay, %vec.epilog.middle.block418 ]
  br label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i: ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i
  %indvars.iv288.i.i = phi i64 [ %indvars.iv.next289.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %indvars.iv288.i.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader ] ; 2 uses
  %.0122199.us.i.i = phi i64 [ %i.cbh, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %.0122199.us.i.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader ]
  %indvars.iv.next289.i.i = add nuw nsw i64 %indvars.iv288.i.i, 1 ; 3 uses
  %i.caz = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv.next289.i.i
  %i.cba = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv288.i.i
  %i.cbb = load i8, ptr %i.cba, align 1, !tbaa !87
  %i.cbc = zext i8 %i.cbb to i64
  %i.cbd = sub nsw i64 %i.cbc, %.0123209.i.i
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbd
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !81
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = add i64 %.0122199.us.i.i, %i.cbg       ; 2 uses
  %exitcond292.not.i.i = icmp eq i64 %indvars.iv.next289.i.i, %wide.trip.count291.i.i
  br i1 %exitcond292.not.i.i, label %._crit_edge202.i.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i, !llvm.loop !373

._crit_edge202.i.i:                               ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i, %middle.block390, %vec.epilog.middle.block418, %.lr.ph212.i.i
  %.0122.lcssa.i.i = phi i64 [ 0, %.lr.ph212.i.i ], [ %i.cbh, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %i.cay, %vec.epilog.middle.block418 ], [ %i.cap, %middle.block390 ], [ %i.ccz, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ]
  %i.cbi = getelementptr inbounds nuw [8 x i8], ptr %i.byq, i64 %indvars.iv293.i.i
  %i.cbj = load i64, ptr %i.cbi, align 8, !tbaa !45
  %i.cbk = mul i64 %i.cbj, %.0122.lcssa.i.i
  %i.cbl = add i64 %i.cbk, %.3210.i.i             ; 2 uses
  %i.cbm = sext i32 %i.bzj to i64
  %i.cbn = getelementptr inbounds i8, ptr %.0158207.i.i, i64 %i.cbm
  %indvars.iv.next294.i.i = add nuw nsw i64 %indvars.iv293.i.i, 1 ; 2 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.byt, i64 %indvars.iv.next294.i.i ; 2 uses
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !81 ; 2 uses
  %.not142.i.i = icmp eq i32 %i.cbp, 0
  br i1 %.not142.i.i, label %._crit_edge213.loopexit.i.i, label %.lr.ph212.i.i, !llvm.loop !374

iter.check450:                                    ; preds = %.lr.ph.i.i146.i.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i
  %indvars.iv283.i.i = phi i64 [ %indvars.iv.next284.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ], [ 0, %.lr.ph.i.i146.i.i.preheader ] ; 2 uses
  %.0122199.i.i = phi i64 [ %i.ccz, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ], [ 0, %.lr.ph.i.i146.i.i.preheader ]
  %i.cbq = getelementptr inbounds nuw i8, ptr %.0158207.i.i, i64 %indvars.iv283.i.i
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !87 ; 4 uses
  br i1 %min.iters.check423, label %vec.epilog.scalar.ph451.preheader, label %vector.main.loop.iter.check424

vector.main.loop.iter.check424:                   ; preds = %iter.check450
  br i1 %min.iters.check425, label %vec.epilog.ph454, label %vector.ph426

vector.ph426:                                     ; preds = %vector.main.loop.iter.check424
  %broadcast.splatinsert428 = insertelement <8 x i8> poison, i8 %i.cbr, i64 0
  %broadcast.splat429 = shufflevector <8 x i8> %broadcast.splatinsert428, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.ph426, %vector.body430
  %index431 = phi i64 [ 0, %vector.ph426 ], [ %index.next441, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <8 x i64> [ zeroinitializer, %vector.ph426 ], [ %i.ccd, %vector.body430 ]
  %vec.phi433 = phi <8 x i64> [ zeroinitializer, %vector.ph426 ], [ %i.cce, %vector.body430 ]
  %vec.phi434 = phi <8 x i64> [ zeroinitializer, %vector.ph426 ], [ %i.ccf, %vector.body430 ]
  %vec.phi435 = phi <8 x i64> [ zeroinitializer, %vector.ph426 ], [ %i.ccg, %vector.body430 ]
  %next.gep436 = getelementptr i8, ptr %i.a, i64 %index431 ; 4 uses
  %i.cbs = getelementptr i8, ptr %next.gep436, i64 8
  %i.cbt = getelementptr i8, ptr %next.gep436, i64 16
  %i.cbu = getelementptr i8, ptr %next.gep436, i64 24
  %wide.load437 = load <8 x i8>, ptr %next.gep436, align 1, !tbaa !87
  %wide.load438 = load <8 x i8>, ptr %i.cbs, align 1, !tbaa !87
  %wide.load439 = load <8 x i8>, ptr %i.cbt, align 1, !tbaa !87
  %wide.load440 = load <8 x i8>, ptr %i.cbu, align 1, !tbaa !87
  %i.cbv = icmp ugt <8 x i8> %broadcast.splat429, %wide.load437
  %i.cbw = icmp ugt <8 x i8> %broadcast.splat429, %wide.load438
  %i.cbx = icmp ugt <8 x i8> %broadcast.splat429, %wide.load439
  %i.cby = icmp ugt <8 x i8> %broadcast.splat429, %wide.load440
  %i.cbz = zext <8 x i1> %i.cbv to <8 x i64>
  %i.cca = zext <8 x i1> %i.cbw to <8 x i64>
  %i.ccb = zext <8 x i1> %i.cbx to <8 x i64>
  %i.ccc = zext <8 x i1> %i.cby to <8 x i64>
  %i.ccd = add <8 x i64> %vec.phi432, %i.cbz      ; 2 uses
  %i.cce = add <8 x i64> %vec.phi433, %i.cca      ; 2 uses
  %i.ccf = add <8 x i64> %vec.phi434, %i.ccb      ; 2 uses
  %i.ccg = add <8 x i64> %vec.phi435, %i.ccc      ; 2 uses
  %index.next441 = add nuw i64 %index431, 32      ; 2 uses
  %i.cch = icmp eq i64 %index.next441, %n.vec427
  br i1 %i.cch, label %middle.block442, label %vector.body430, !llvm.loop !375

middle.block442:                                  ; preds = %vector.body430
  %bin.rdx443 = add <8 x i64> %i.cce, %i.ccd
  %bin.rdx444 = add <8 x i64> %i.ccf, %bin.rdx443
  %bin.rdx445 = add <8 x i64> %i.ccg, %bin.rdx444
  %i.cci = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx445) ; 3 uses
  br i1 %cmp.n446, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i, label %vec.epilog.iter.check452

vec.epilog.iter.check452:                         ; preds = %middle.block442
  br i1 %min.epilog.iters.check453, label %vec.epilog.scalar.ph451.preheader, label %vec.epilog.ph454, !prof !91

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check424, %vec.epilog.iter.check452
  %vec.epilog.resume.val447 = phi i64 [ %n.vec427, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check424 ]
  %bc.merge.rdx448 = phi i64 [ %i.cci, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check424 ]
  %i.ccj = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx448, i64 0
  %broadcast.splatinsert456 = insertelement <8 x i8> poison, i8 %i.cbr, i64 0
  %broadcast.splat457 = shufflevector <8 x i8> %broadcast.splatinsert456, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body458

vec.epilog.vector.body458:                        ; preds = %vec.epilog.vector.body458, %vec.epilog.ph454
  %index459 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph454 ], [ %index.next463, %vec.epilog.vector.body458 ] ; 2 uses
  %vec.phi460 = phi <8 x i64> [ %i.ccj, %vec.epilog.ph454 ], [ %i.ccm, %vec.epilog.vector.body458 ]
  %next.gep461 = getelementptr i8, ptr %i.a, i64 %index459
  %wide.load462 = load <8 x i8>, ptr %next.gep461, align 1, !tbaa !87
  %i.cck = icmp ugt <8 x i8> %broadcast.splat457, %wide.load462
  %i.ccl = zext <8 x i1> %i.cck to <8 x i64>
  %i.ccm = add <8 x i64> %vec.phi460, %i.ccl      ; 2 uses
  %index.next463 = add nuw i64 %index459, 8       ; 2 uses
  %i.ccn = icmp eq i64 %index.next463, %n.vec455
  br i1 %i.ccn, label %vec.epilog.middle.block464, label %vec.epilog.vector.body458, !llvm.loop !376

vec.epilog.middle.block464:                       ; preds = %vec.epilog.vector.body458
  %i.cco = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ccm) ; 2 uses
  br i1 %cmp.n465, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i, label %vec.epilog.scalar.ph451.preheader

vec.epilog.scalar.ph451.preheader:                ; preds = %iter.check450, %vec.epilog.iter.check452, %vec.epilog.middle.block464
  %.09.i.i.i.i.ph = phi i64 [ 0, %iter.check450 ], [ %i.cci, %vec.epilog.iter.check452 ], [ %i.cco, %vec.epilog.middle.block464 ]
  %.058.i.i.i.i.ph = phi ptr [ %i.a, %iter.check450 ], [ %i.bzn, %vec.epilog.iter.check452 ], [ %i.bzo, %vec.epilog.middle.block464 ]
  br label %vec.epilog.scalar.ph451

vec.epilog.scalar.ph451:                          ; preds = %vec.epilog.scalar.ph451.preheader, %vec.epilog.scalar.ph451
  %.09.i.i.i.i = phi i64 [ %spec.select.i.i147.i.i, %vec.epilog.scalar.ph451 ], [ %.09.i.i.i.i.ph, %vec.epilog.scalar.ph451.preheader ]
  %.058.i.i.i.i = phi ptr [ %i.ccr, %vec.epilog.scalar.ph451 ], [ %.058.i.i.i.i.ph, %vec.epilog.scalar.ph451.preheader ] ; 2 uses
  %.05.val.i.i.i.i = load i8, ptr %.058.i.i.i.i, align 1, !tbaa !87
  %i.ccp = icmp ugt i8 %i.cbr, %.05.val.i.i.i.i
  %i.ccq = zext i1 %i.ccp to i64
  %spec.select.i.i147.i.i = add nuw nsw i64 %.09.i.i.i.i, %i.ccq ; 2 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %.058.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i148.i.i = icmp eq ptr %i.ccr, %.0158207.i.i
  br i1 %.not.i.i148.i.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i, label %vec.epilog.scalar.ph451, !llvm.loop !377

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i: ; preds = %vec.epilog.scalar.ph451, %vec.epilog.middle.block464, %middle.block442
  %spec.select.i.i147.i.i.lcssa = phi i64 [ %i.cco, %vec.epilog.middle.block464 ], [ %i.cci, %middle.block442 ], [ %spec.select.i.i147.i.i, %vec.epilog.scalar.ph451 ]
  %indvars.iv.next284.i.i = add nuw nsw i64 %indvars.iv283.i.i, 1 ; 3 uses
  %i.ccs = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv.next284.i.i
  %i.cct = zext i8 %i.cbr to i64
  %i.ccu = add i64 %.0123209.i.i, %spec.select.i.i147.i.i.lcssa
  %i.ccv = sub i64 %i.cct, %i.ccu
  %i.ccw = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.ccv
  %i.ccx = load i32, ptr %i.ccw, align 4, !tbaa !81
  %i.ccy = sext i32 %i.ccx to i64
  %i.ccz = add i64 %.0122199.i.i, %i.ccy          ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %indvars.iv.next284.i.i, %wide.trip.count291.i.i
  br i1 %exitcond287.not.i.i, label %._crit_edge202.i.i, label %iter.check450, !llvm.loop !378

._crit_edge213.loopexit.i.i:                      ; preds = %._crit_edge202.i.i
  %.pre299.i.i = load i8, ptr %i.bgw, align 4, !tbaa !147, !range !145
  %.pre300.i.i = trunc nuw i8 %.pre299.i.i to i1
  br label %._crit_edge213.i.i

._crit_edge213.i.i:                               ; preds = %._crit_edge213.loopexit.i.i, %bb.dj
  %.pre-phi.i.i = phi i1 [ %.pre300.i.i, %._crit_edge213.loopexit.i.i ], [ %i.byy, %bb.dj ]
  %.3.lcssa.i.i = phi i64 [ %i.cbl, %._crit_edge213.loopexit.i.i ], [ %i.bys, %bb.dj ]
  %i.cda = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_116decompress_pairsEPNS0_9PairsDataEm(ptr noundef readonly %i.bkr, i64 noundef %.3.lcssa.i.i) ; 2 uses
  %i.cdb = select i1 %.pre-phi.i.i, i64 %.0131.i.i, i64 0
  %i.cdc = getelementptr inbounds nuw [240 x i8], ptr %i.bkq, i64 %i.cdb ; 2 uses
  %i.cdd = load i8, ptr %i.cdc, align 8, !tbaa !198
  %i.cde = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 16
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !388 ; 2 uses
  %i.cdg = zext i8 %i.cdd to i32                  ; 4 uses
  %i.cdh = and i32 %i.cdg, 2
  %.not.i.i14.i = icmp eq i32 %i.cdh, 0
  br i1 %.not.i.i14.i, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge213.i.i
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdc, i64 232
  %i.cdj = and i32 %i.cdg, 16
  %.not25.i.i.i = icmp eq i32 %i.cdj, 0
  %i.cdk = sext i32 %.4.ph.i8891 to i64
  %i.cdl = getelementptr [4 x i8], ptr @__const._ZN9Stockfish12_GLOBAL__N_19map_scoreEPNS0_7TBTableILNS0_6TBTypeE1EEENS_4FileEiNS_10Tablebases8WDLScoreE.WDLMap, i64 %i.cdk
  %i.cdm = getelementptr i8, ptr %i.cdl, i64 8
  %i.cdn = load i32, ptr %i.cdm, align 4, !tbaa !81
  %i.cdo = sext i32 %i.cdn to i64
  %i.cdp = getelementptr inbounds [2 x i8], ptr %i.cdi, i64 %i.cdo
  %i.cdq = load i16, ptr %i.cdp, align 2, !tbaa !164
  %i.cdr = zext i16 %i.cdq to i32
  %i.cds = add nuw nsw i32 %i.cda, %i.cdr
  %i.cdt = zext nneg i32 %i.cds to i64            ; 2 uses
  br i1 %.not25.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.cdf, i64 %i.cdt
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !164
  %i.cdw = zext i16 %i.cdv to i32
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdf, i64 %i.cdt
  %i.cdy = load i8, ptr %i.cdx, align 1, !tbaa !125
  %i.cdz = zext i8 %i.cdy to i32
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %._crit_edge213.i.i
  %.0.i.i.i = phi i32 [ %i.cdw, %bb.dl ], [ %i.cdz, %bb.dm ], [ %i.cda, %._crit_edge213.i.i ] ; 3 uses
  %i.cea = icmp eq i32 %.4.ph.i8891, 2
  %i.ceb = and i32 %i.cdg, 4
  %.not26.i.i.i = icmp eq i32 %i.ceb, 0
  %or.cond.i.i15.i = and i1 %i.cea, %.not26.i.i.i
  br i1 %or.cond.i.i15.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  switch i32 %.4.ph.i8891, label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i [
    i32 -2, label %bb.dp
    i32 1, label %bb.dq
    i32 -1, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.cec = and i32 %i.cdg, 8
  %i.ced = icmp eq i32 %i.cec, 0
  br i1 %i.ced, label %bb.dq, label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.do, %bb.dn
  %i.cee = shl nuw nsw i32 %.0.i.i.i, 1
  br label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i

_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i: ; preds = %bb.do, %bb.dp, %bb.dq
  %.1.i.i.i = phi i32 [ %i.cee, %bb.dq ], [ %.0.i.i.i, %bb.dp ], [ %.0.i.i.i, %bb.do ]
  %17 = add nuw nsw i32 %.1.i.i.i, 1
  %.pr.pre.pre = load i32, ptr %1, align 4, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  switch i32 %.pr.pre.pre, label %bb.dr [
    i32 0, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
    i32 -1, label %bb.ds
  ]

bb.dr:                                            ; preds = %.thread, %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i
  %.1.i.ph232 = phi i32 [ %17, %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i ], [ 0, %.thread ]
  %i.cef = icmp eq i32 %.4.ph.i8891, -1
  %i.ceg = icmp eq i32 %.4.ph.i8891, 1
  %i.ceh = or i1 %i.cef, %i.ceg
  %i.cei = select i1 %i.ceh, i32 100, i32 0
  %i.cej = add nuw nsw i32 %.1.i.ph232, %i.cei
  %.lobit.neg.i = ashr i32 %.4.ph.i8891, 31
  %i.cek = or i32 %.lobit.neg.i, 1
  %i.cel = mul nsw i32 %i.cej, %i.cek
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.ds:                                            ; preds = %bb.by, %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.cem = getelementptr inbounds nuw i8, ptr %15, i64 512
  %i.cen = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %15) #26 ; 3 uses
  store ptr %i.cen, ptr %i.cem, align 8, !tbaa !162
  %.not70130 = icmp eq ptr %15, %i.cen
  br i1 %.not70130, label %.thread234, label %.lr.ph

.thread234:                                       ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.eg

.lr.ph:                                           ; preds = %bb.ds
  %i.ceo = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cep = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ceq = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.cer = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.lobit.neg.i80 = ashr i32 %.4.ph.i8891, 31
  %i.ces = or i32 %.lobit.neg.i80, 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ef, %.lr.ph
  %.062132 = phi ptr [ %15, %.lr.ph ], [ %i.cge, %bb.ef ] ; 2 uses
  %.063131 = phi i32 [ 65535, %.lr.ph ], [ %.265, %bb.ef ] ; 2 uses
  %.sroa.08.0.copyload = load i16, ptr %.062132, align 2, !tbaa !164 ; 7 uses
  %i.cet = and i16 %.sroa.08.0.copyload, 63
  %i.ceu = zext nneg i16 %i.cet to i64
  %i.cev = getelementptr inbounds nuw i8, ptr %0, i64 %i.ceu
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !166
  %i.cex = icmp ne i8 %i.cew, 0
  %.not.i76 = icmp ult i16 %.sroa.08.0.copyload, -16384
  %or.cond.not.i = and i1 %.not.i76, %i.cex
  %i.cey = icmp slt i16 %.sroa.08.0.copyload, -16384
  %spec.select.i77 = or i1 %i.cey, %or.cond.not.i
  br i1 %spec.select.i77, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.cez = lshr i16 %.sroa.08.0.copyload, 6
  %i.cfa = and i16 %i.cez, 63
  %i.cfb = zext nneg i16 %i.cfa to i64
  %i.cfc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cfb
  %i.cfd = load i8, ptr %i.cfc, align 1, !tbaa !166
  %i.cfe = and i8 %i.cfd, 7
  %i.cff = icmp eq i8 %i.cfe, 1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.cfg = phi i1 [ true, %bb.dt ], [ %i.cff, %bb.du ] ; 2 uses
  store i64 0, ptr %i.cep, align 8, !tbaa !168
  %i.cfh = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.08.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %14, i1 noundef zeroext %i.cfh, ptr noundef nonnull align 1 dereferenceable(7) %i.ceq, ptr noundef nonnull align 8 dereferenceable(416) %i.ceo, ptr noundef null, ptr noundef null) #26
  br i1 %i.cfg, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.cfi = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1) ; 3 uses
  switch i32 %i.cfi, label %bb.dx [
    i32 2, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread
    i32 1, label %.fold.split.i78
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.cfj = icmp eq i32 %i.cfi, -1
  %i.cfk = icmp eq i32 %i.cfi, -2
  %i.cfl = sext i1 %i.cfk to i32
  br i1 %i.cfj, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79

.fold.split.i78:                                  ; preds = %bb.dw
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread

bb.dy:                                            ; preds = %bb.dv
  %i.cfm = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1)
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread: ; preds = %bb.dw, %.fold.split.i78, %bb.dx
  %.pn.ph = phi i32 [ 1, %bb.dw ], [ 101, %.fold.split.i78 ], [ -101, %bb.dx ] ; 2 uses
  %i.cfn = sub nsw i32 0, %.pn.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  br label %.critedge

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79: ; preds = %bb.dx, %bb.dy
  %.pn = phi i32 [ %i.cfm, %bb.dy ], [ %i.cfl, %bb.dx ] ; 3 uses
  %i.cfo = sub nsw i32 0, %.pn
  %i.cfp = icmp eq i32 %.pn, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  br i1 %i.cfp, label %bb.dz, label %.critedge

bb.dz:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79
  %i.cfq = load ptr, ptr %i.cer, align 8, !tbaa !177
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfq, i64 72
  %i.cfs = load i64, ptr %i.cfr, align 8, !tbaa !207
  %.not71 = icmp eq i64 %i.cfs, 0
  br i1 %.not71, label %.critedge, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.cft = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %16) #26
  %i.cfu = icmp eq ptr %i.cft, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %spec.select = select i1 %i.cfu, i32 1, i32 %.063131
  br label %bb.eb

.critedge:                                        ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79, %bb.dz
  %i.cfv = phi i32 [ %i.cfn, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread ], [ %i.cfo, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79 ], [ 1, %bb.dz ]
  %.pn96 = phi i32 [ %.pn.ph, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79.thread ], [ %.pn, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit79 ], [ -1, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.critedge
  %i.cfw = phi i32 [ %i.cfv, %.critedge ], [ 1, %bb.ea ] ; 2 uses
  %.pn95 = phi i32 [ %.pn96, %.critedge ], [ -1, %bb.ea ]
  %.164 = phi i32 [ %.063131, %.critedge ], [ %spec.select, %bb.ea ] ; 3 uses
  br i1 %i.cfg, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.cfx = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.cfw, i32 0)
  %i.cfy = sub nsw i32 %i.cfx, %.pn95
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.061 = phi i32 [ %i.cfw, %bb.eb ], [ %i.cfy, %bb.ec ] ; 3 uses
  %i.cfz = icmp slt i32 %.061, %.164
  br i1 %i.cfz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.cga = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.061, i32 0)
  %i.cgb = icmp eq i32 %i.cga, %i.ces
  %spec.select73 = select i1 %i.cgb, i32 %.061, i32 %.164
  %i.cgc = freeze i32 %spec.select73
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.265 = phi i32 [ %.164, %bb.ed ], [ %i.cgc, %bb.ee ] ; 3 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.08.0.copyload) #26
  %i.cgd = load i32, ptr %1, align 4, !tbaa !159
  %.not72.not.not = icmp eq i32 %i.cgd, 0         ; 2 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %.062132, i64 2 ; 2 uses
  %.not70 = icmp eq ptr %i.cge, %i.cen
  %or.cond = select i1 %.not72.not.not, i1 true, i1 %.not70
  br i1 %or.cond, label %._crit_edge, label %bb.dt

._crit_edge:                                      ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.cgf = icmp eq i32 %.265, 65535
  %..265.lcssa = select i1 %i.cgf, i32 -1, i32 %.265
  %spec.select260 = select i1 %.not72.not.not, i32 0, i32 %..265.lcssa
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge, %.thread234
  %i.cgg = phi i32 [ %spec.select260, %._crit_edge ], [ -1, %.thread234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit: ; preds = %.thread104, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, %.fold.split.i, %bb.k, %bb.j, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, %bb.dr, %bb.eg, %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit
  %.5 = phi i32 [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit ], [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83 ], [ %i.cgg, %bb.eg ], [ %i.cel, %bb.dr ], [ %.pr.pre.pre, %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i ], [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread ], [ 1, %bb.j ], [ %i.aw, %bb.k ], [ 101, %.fold.split.i ], [ 0, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread ], [ 1, %.thread104 ]
  ret i32 %.5
}

declare void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish10Tablebases10root_probeERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS5_EEbbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %6 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !390  ; 3 uses
  %i.f = tail call noundef zeroext i1 @_ZNK9Stockfish8Position12has_repeatedEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) #26
  %.neg = select i1 %2, i32 -130972, i32 -1
  %i.g = select i1 %2, i32 130972, i32 1
  %i.h = load ptr, ptr %1, align 8, !tbaa !209    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209  ; 2 uses
  %.not9295 = icmp eq ptr %i.h, %i.j
  br i1 %.not9295, label %.critedge71, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = add i32 %i.e, -131072
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.082.096 = phi ptr [ %i.h, %.lr.ph ], [ %i.by, %bb.y ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211
  %.sroa.014.0.copyload = load i16, ptr %i.r, align 2, !tbaa !164 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !168
  %i.s = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.014.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.s, ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 8 dereferenceable(416) %i.k, ptr noundef null, ptr noundef null) #26
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !390
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 4, !tbaa !159
  %i.x = call fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a) ; 3 uses
  switch i32 %i.x, label %bb.d [
    i32 -2, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread
    i32 -1, label %.fold.split.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.x, 1
  %i.z = icmp eq i32 %i.x, 2
  %i.aa = sext i1 %i.z to i32
  %i.ab = select i1 %i.y, i32 -101, i32 %i.aa
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread

.fold.split.i:                                    ; preds = %bb.c
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread

bb.e:                                             ; preds = %bb.b
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.ac, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = call noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.ad, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread: ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %.fold.split.i
  %.063.ph = phi i32 [ 101, %.fold.split.i ], [ %i.ab, %bb.d ], [ 1, %bb.c ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br label %.critedge

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit: ; preds = %bb.g
  %i.ae = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a) ; 4 uses
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = sub i32 1, %i.ae
  %.not = icmp eq i32 %i.ae, 0
  %i.ah = xor i32 %i.ae, -1
  %i.ai = select i1 %.not, i32 0, i32 %i.ah
  %i.aj = select i1 %i.af, i32 %i.ag, i32 %i.ai   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !207
  %i.an = icmp ne i64 %i.am, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ao = icmp eq i32 %i.aj, 2
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
  %i.ap = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %6) #26
  %i.aq = icmp eq ptr %i.ap, %6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %spec.select = select i1 %i.aq, i32 1, i32 2
  br label %bb.i

.critedge:                                        ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
  %.06387 = phi i32 [ %.063.ph, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread ], [ %i.aj, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %.164 = phi i32 [ %.06387, %.critedge ], [ %spec.select, %bb.h ] ; 7 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !211
  %.sroa.0.0.copyload = load i16, ptr %i.ar, align 2, !tbaa !164
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload) #26
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFbvEEclEv.exit:                   ; preds = %bb.i
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !215
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %4) #26, !inline_history !9
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = icmp eq i32 %i.av, 0
  %or.cond4 = select i1 %i.au, i1 true, i1 %i.aw  ; 2 uses
  br i1 %or.cond4, label %.critedge71.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  %i.ax = icmp sgt i32 %.164, 0
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %.164, %i.e                 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 99
  %or.cond6 = or i1 %i.f, %i.az
  br i1 %or.cond6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = sub nsw i32 262144, %.164
  %i.bb = select i1 %3, i32 %i.ba, i32 262144
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bc = sub nsw i32 131072, %i.ay
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  %i.bd = icmp slt i32 %.164, 0
  br i1 %i.bd, label %bb.p, label %.thread90

.thread90:                                        ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 36
  store i32 0, ptr %i.be, align 4, !tbaa !220
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bf = shl i32 %.164, 1
  %i.bg = sub i32 %i.e, %i.bf
  %i.bh = icmp slt i32 %i.bg, 100
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = sub nsw i32 -262144, %.164
  %i.bj = select i1 %3, i32 %i.bi, i32 -262144
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bk = sub i32 %i.p, %.164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m, %bb.n
  %i.bl = phi i32 [ %i.bc, %bb.n ], [ %i.bb, %bb.m ], [ %i.bk, %bb.r ], [ %i.bj, %bb.q ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 36
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !220
  %.not69 = icmp slt i32 %i.bl, %i.g
  br i1 %.not69, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp sgt i32 %i.bl, 0
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = call i32 @llvm.umax.i32(i32 %i.bl, i32 130875)
  %i.bp = mul nuw nsw i32 %i.bo, 26
  %i.bq = add nsw i32 %i.bp, -3402672
  %i.br = udiv i32 %i.bq, 25
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bs = icmp eq i32 %i.bl, 0
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_2
