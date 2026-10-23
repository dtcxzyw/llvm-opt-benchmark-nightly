Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker19iterative_deepeningEv:iter.check
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.adu = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = ptrtoint ptr %i.adt to i64
  %i.adx = sub i64 %i.adv, %i.adw
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef %i.adx) #37
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EED2Ev.exit:  ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

declare void @_ZN9Stockfish14TimeManagement4initERNS_6Search10LimitsTypeENS_5ColorEiRKNS_10OptionsMapERd(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(113), i8 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN9Stockfish18TranspositionTable10new_searchEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

declare void @_ZN9Stockfish5ScoreC1EiRKNS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, ptr noundef nonnull align 8 dereferenceable(1048)) unnamed_addr #6

declare void @_ZN9Stockfish10ThreadPool15start_searchingEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZNK9Stockfish10ThreadPool24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish14TimeManagement18advance_nodes_timeEl(ptr noundef nonnull align 8 dereferenceable(33), i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

declare noundef ptr @_ZNK9Stockfish10ThreadPool15get_best_threadEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search13SearchManager2pvERNS0_6WorkerERKNS_10ThreadPoolERKNS_18TranspositionTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 64 dereferenceable(14279296) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(17) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"struct.Stockfish::Search::InfoFull", align 8 ; 19 uses
  %12 = alloca %"class.Stockfish::Score", align 4 ; 4 uses
  %i.b = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 11421080 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 11419840 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 11419784
  %i.f = load i64, ptr %i.e, align 8, !tbaa !255
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 11422200 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178, !nonnull !72, !align !73
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.j, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.k, align 1, !tbaa !143
  %i.l = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  %i.m = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.l) #32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11421088 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 32, !tbaa !198
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 72
  %.sroa.speculated127 = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.n) ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !229    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.x = load i64, ptr %i.i, align 8, !tbaa !143
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.z = call noundef i64 @_ZNK9Stockfish10ThreadPool7tb_hitsEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 11422188 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !479, !range !223, !noundef !72
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.o, align 32, !tbaa !198
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 72
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.aj = phi i64 [ %i.ai, %bb.a ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ak = add i64 %i.aj, %i.z
  %.not142 = icmp eq i64 %.sroa.speculated127, 0
  br i1 %.not142, label %._crit_edge141, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.b
  %i.al = icmp eq i32 %4, 1
  %i.am = call i32 @llvm.smax.i32(i32 %4, i32 2)
  %.sroa.speculated122 = add nsw i32 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11419664
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11420461
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bj = mul i64 %i.b, 1000
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 27
  br label %bb.c

._crit_edge141:                                   ; preds = %bb.t, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph140, %bb.t
  %.082138 = phi i64 [ 0, %.lr.ph140 ], [ %.pre-phi, %bb.t ] ; 7 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !232 ; 4 uses
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bp, i64 %.082138 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !237
  %i.bt = icmp eq i32 %i.bs, -32001               ; 4 uses
  %or.cond.not85 = select i1 %i.al, i1 %i.bt, i1 false
  %i.bu = icmp ne i64 %.082138, 0
  %or.cond3 = and i1 %i.bu, %or.cond.not85
  br i1 %or.cond3, label %._crit_edge144, label %bb.d

._crit_edge144:                                   ; preds = %bb.c
  %.pre145 = add nuw i64 %.082138, 1
  br label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %. = select i1 %i.bt, i64 12, i64 24
  %.sroa.speculated122. = select i1 %i.bt, i32 %.sroa.speculated122, i32 %4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !150 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -32001
  %spec.store.select = select i1 %i.bx, i32 0, i32 %i.bw ; 2 uses
  store i32 %spec.store.select, ptr %i.a, align 4, !tbaa !150
  %i.by = load i8, ptr %i.aa, align 4, !tbaa !479, !range !223, !noundef !72
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = add i32 %spec.store.select, 31753
  %i.cb = icmp ult i32 %i.ca, 63507
  %i.cc = select i1 %i.bz, i1 %i.cb, i1 false     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %spec.select = select i1 %i.cc, ptr %i.cd, ptr %i.a
  %i.ce = load i32, ptr %spec.select, align 4, !tbaa !150 ; 3 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !150
  %i.cf = icmp ne i64 %.082138, %i.f
  %or.cond5 = or i1 %i.cf, %i.cc
  %i.cg = select i1 %or.cond5, i1 true, i1 %i.bt  ; 3 uses
  %i.ch = add i32 %i.ce, -31507
  %spec.select.i = icmp ult i32 %i.ch, -63013
  %i.ci = add i32 %i.ce, 31753
  %i.cj = icmp ult i32 %i.ci, 63507
  %or.cond = and i1 %spec.select.i, %i.cj
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !190, !range !223, !noundef !72
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 29
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !191, !range !223, !noundef !72
  %13 = trunc nuw i8 %i.co to i1
  %.not = xor i1 %13, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.cg
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !178, !nonnull !72, !align !73
  call void @_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(113) %i.an, ptr noundef nonnull align 8 dereferenceable(1048) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %i.cq = phi ptr [ %i.bp, %bb.f ], [ %.pre, %bb.h ], [ %i.bp, %bb.g ], [ %i.bp, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.ao, ptr %6, align 8, !tbaa !226
  store i64 0, ptr %i.ap, align 8, !tbaa !228
  store i8 0, ptr %i.ao, align 8, !tbaa !143
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %.082138 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !262 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !262 ; 2 uses
  %.not135136 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not135136, label %._crit_edge.i.i96, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pre143 = load i64, ptr %i.ap, align 8, !tbaa !228 ; 2 uses
  %i.cw = icmp eq i64 %.pre143, 0
  br i1 %i.cw, label %._crit_edge.i.i96, label %bb.m

.lr.ph:                                           ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.sroa.0119.0137 = phi ptr [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ct, %bb.i ] ; 2 uses
  %.sroa.014.0.copyload = load i16, ptr %.sroa.0119.0137, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cx = load i8, ptr %i.aq, align 1, !tbaa !242, !range !223, !noundef !72
  %i.cy = trunc nuw i8 %i.cx to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i16 %.sroa.014.0.copyload, i1 noundef zeroext %i.cy) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.cz = load i64, ptr %i.ar, align 8, !tbaa !228, !noalias !480
  %i.da = icmp eq i64 %i.cz, 4611686018427387903
  br i1 %i.da, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %.lr.ph
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #36, !noalias !480
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, i64 noundef 1) #32, !noalias !480 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !226, !alias.scope !480
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !229 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 5 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !228 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i64 %i.di, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.dc, ptr %7, align 8, !tbaa !229, !alias.scope !480
  %i.dj = load i64, ptr %i.dd, align 8, !tbaa !143
  store i64 %i.dj, ptr %i.as, align 8, !tbaa !143, !alias.scope !480
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !228
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.dk = phi i64 [ %i.dg, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dk, ptr %i.at, align 8, !tbaa !228, !alias.scope !480
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !229
  store i64 0, ptr %i.dl, align 8, !tbaa !228
  store i8 0, ptr %i.dd, align 8, !tbaa !143
  %i.dm = load i64, ptr %i.at, align 8, !tbaa !228 ; 2 uses
  %i.dn = load i64, ptr %i.ap, align 8, !tbaa !228
  %i.do = sub i64 4611686018427387903, %i.dn
  %i.dp = icmp ult i64 %i.do, %i.dm
  br i1 %i.dp, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.dq = load ptr, ptr %7, align 8, !tbaa !229
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.dq, i64 noundef %i.dm) #32 ; 0 uses
  %i.ds = load ptr, ptr %7, align 8, !tbaa !229   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.as
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.du = load i64, ptr %i.as, align 8, !tbaa !143
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.dw = load ptr, ptr %8, align 8, !tbaa !229   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.au
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.dy = load i64, ptr %i.au, align 8, !tbaa !143
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0119.0137, i64 2 ; 2 uses
  %.not135 = icmp eq ptr %i.ea, %i.cv
  br i1 %.not135, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  %i.eb = add i64 %.pre143, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.eb, i64 noundef 1) #32
  br label %._crit_edge.i.i96

._crit_edge.i.i96:                                ; preds = %bb.i, %bb.m, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !178, !nonnull !72, !align !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %i.av, ptr %10, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.av, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  store i64 11, ptr %i.aw, align 8, !tbaa !228
  store i8 0, ptr %i.bo, align 1, !tbaa !143
  %i.ed = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  %i.ee = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ed) #32
  %.not87 = icmp eq i32 %i.ee, 0
  br i1 %.not87, label %._crit_edge.i.i98, label %bb.n

._crit_edge.i.i98:                                ; preds = %._crit_edge.i.i96
  store ptr %i.ax, ptr %9, align 8, !tbaa !226
  store i64 0, ptr %i.ay, align 8, !tbaa !228
  store i8 0, ptr %i.ax, align 8, !tbaa !143
  br label %.critedge

bb.n:                                             ; preds = %._crit_edge.i.i96
  %i.ef = load i32, ptr %i.a, align 4, !tbaa !150
  call void @_ZN9Stockfish9UCIEngine3wdlB5cxx11EiRKNS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(1048) %i.d) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %._crit_edge.i.i98
  %i.eg = load ptr, ptr %10, align 8, !tbaa !229  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.av
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.critedge
  %i.ei = load i64, ptr %i.av, align 8, !tbaa !143
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.el = getelementptr inbounds nuw [72 x i8], ptr %i.ek, i64 %.082138 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  %i.en = load i8, ptr %i.em, align 4, !tbaa !190, !range !223, !noundef !72
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 29
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !191, !range !223, !noundef !72
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = select i1 %i.er, ptr @.str.12, ptr @.str.10
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.o
  %i.et = phi ptr [ %i.es, %bb.o ], [ @.str.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 0, ptr %i.az, align 4
  store i8 0, ptr %i.ba, align 4, !tbaa !481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  store i32 %.sroa.speculated122., ptr %11, align 8, !tbaa !217
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !192
  store i32 %i.ev, ptr %i.bd, align 8, !tbaa !483
  %i.ew = add nuw i64 %.082138, 1                 ; 2 uses
  store i64 %i.ew, ptr %i.be, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ex = load i32, ptr %i.a, align 4, !tbaa !150
  call void @_ZN9Stockfish5ScoreC1EiRKNS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %12, i32 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(1048) %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.ey = load ptr, ptr %9, align 8, !tbaa !229
  %i.ez = load i64, ptr %i.ay, align 8, !tbaa !228
  store i64 %i.ez, ptr %i.bb, align 8, !tbaa !55
  store ptr %i.ey, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !264
  br i1 %i.cg, label %bb.r, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.ae, %bb.ag
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.gl, %bb.ag ], [ %i.gi, %bb.ae ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !142
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.gp = load i8, ptr %i.p, align 4, !tbaa !177
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !150
  %i.gt = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.gm, ptr noundef nonnull align 64 dereferenceable(327680) %i.gn, i32 noundef %i.gs) #32
  %.pre = load i32, ptr %i.co, align 4, !tbaa !281
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.ad
  %i.gu = phi i32 [ %i.cn, %bb.ad ], [ %.pre, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %.0397 = phi i32 [ %i.gc, %bb.ad ], [ %i.gt, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %i.gv = sdiv i32 %i.ft, 131072
  %i.gw = add nsw i32 %.0397, %i.gv
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i, ptr %i.gx, align 8, !tbaa !248
  %.not920 = icmp eq i32 %i.gu, 32002
  br i1 %.not920, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !289
  %i.ha = zext i8 %i.gz to i32
  %i.hb = icmp sgt i32 %i.gu, %.sroa.speculated.i
  %i.hc = select i1 %i.hb, i32 2, i32 1
  %i.hd = and i32 %i.hc, %i.ha
  %.not420 = icmp eq i32 %i.hd, 0
  %spec.select = select i1 %.not420, i32 %.sroa.speculated.i, i32 %i.gu
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i477 = load i64, ptr %i.hg, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hf, i64 noundef %.sroa.0.0.copyload.i477)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !138
  %i.hj = getelementptr inbounds nuw [160 x i8], ptr %i.hi, i64 %.sroa.0.0.copyload.i477 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !140
  switch i8 %i.hl, label %bb.an [
    i8 -1, label %bb.al
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  call void @abort() #36
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480

bb.an:                                            ; preds = %bb.ak
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480: ; preds = %bb.ak, %bb.am
  %.0.i.i.i.in.i.i.i478 = phi ptr [ %i.hm, %bb.am ], [ %i.hj, %bb.ak ]
  %.0.i.i.i.i.i.i479 = load ptr, ptr %.0.i.i.i.in.i.i.i478, align 8, !tbaa !142
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.hq = load i8, ptr %i.p, align 4, !tbaa !177
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !150
  %i.hu = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i479, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.hn, ptr noundef nonnull align 64 dereferenceable(327680) %i.ho, i32 noundef %i.ht) #32 ; 3 uses
  %i.hv = sdiv i32 %i.ft, 131072
  %i.hw = add nsw i32 %i.hu, %i.hv
  %.sroa.speculate.load.false.sroa.speculated.i481 = call i32 @llvm.smax.i32(i32 %i.hw, i32 -31506)
  %.sroa.speculated.i482 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i481, i32 31506) ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %.sroa.speculated.i482, ptr %i.hx, align 8, !tbaa !248
  %i.hy = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ib = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ia) #32
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef 32002, i1 noundef zeroext %i.hz, i8 noundef zeroext 0, i32 noundef -2, i16 0, i32 noundef %i.hu, i8 noundef zeroext %i.ib) #32
  %.pre1061 = load i32, ptr %i.hx, align 8, !tbaa !248
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.ab, %bb.ai, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480, %bb.z
  %i.ic = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.pre1061, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.sroa.speculated.i, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 3 uses
  %.1398 = phi i32 [ 32002, %bb.z ], [ %i.ga, %bb.ab ], [ %i.hu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.0397, %bb.aj ], [ %.0397, %bb.ai ] ; 2 uses
  %.0387 = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.sroa.speculated.i482, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %spec.select, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.ie = getelementptr inbounds i8, ptr %2, i64 -80
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !248
  %i.ig = icmp sgt i32 %i.ic, %i.if               ; 4 uses
  %i.ih = zext i1 %i.ig to i8
  %i.ii = getelementptr inbounds i8, ptr %2, i64 -24 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !248 ; 2 uses
  %i.ik = sub nsw i32 0, %i.ij
  %i.il = icmp sle i32 %i.ic, %i.ik               ; 2 uses
  %i.im = icmp sgt i32 %i.al, 2
  %or.cond.not = select i1 %i.im, i1 %i.il, i1 false
  %i.in = zext i1 %or.cond.not to i32
  %spec.select892 = add nuw nsw i32 %.sroa.speculated672, %i.in ; 2 uses
  %i.io = icmp sgt i32 %i.al, 1
  %i.ip = icmp samesign ugt i32 %spec.select892, 1
  %or.cond6 = select i1 %i.io, i1 %i.ip, i1 false
  %i.iq = add nsw i32 %i.ij, %i.ic                ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 173
  %or.cond894 = select i1 %or.cond6, i1 %i.ir, i1 false
  %i.is = sext i1 %or.cond894 to i32
  %.1 = add nsw i32 %spec.select892, %i.is        ; 12 uses
  %i.it = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.bo, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iv = load i16, ptr %i.af, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.iv, label %bb.aq [
    i16 65, label %bb.au
    i16 0, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -12
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !270, !range !223, !noundef !72
  %i.iy = or i8 %i.ix, %i.n
  %or.cond8.not = icmp eq i8 %i.iy, 0
  br i1 %or.cond8.not, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.iz = sub nsw i32 0, %i.iq
  %i.ja = icmp slt i32 %i.iq, -167
  %.sroa.speculate.load.false586.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.iz, i32 -209)
  %i.jb = add nsw i32 %.sroa.speculate.load.false586.sroa.speculated, 59
  %i.jc = select i1 %i.ja, i32 226, i32 %i.jb     ; 2 uses
  %i.jd = xor i8 %i.q, 1
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.je
  %i.jg = zext i16 %i.iv to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jg ; 2 uses
  %i.ji = mul nsw i32 %i.jc, 9
  %.sroa.speculated.i486 = call i32 @llvm.smin.i32(i32 %i.ji, i32 7183) ; 2 uses
  %i.jj = load i16, ptr %i.jh, align 2, !tbaa !147
  %i.jk = sext i16 %i.jj to i32                   ; 2 uses
  %i.jl = add nsw i32 %.sroa.speculated.i486, %i.jk
  %i.jm = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i486, i1 true)
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %.neg.i = sdiv i32 %i.jn, -7183
  %i.jo = add nsw i32 %i.jl, %.neg.i
  %i.jp = trunc i32 %i.jo to i16
  store i16 %i.jp, ptr %i.jh, align 2, !tbaa !147
  %i.jq = load i8, ptr %i.bf, align 4, !tbaa !267, !range !223, !noundef !72
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.js = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !283 ; 2 uses
  %i.jv = and i8 %i.ju, 7
  %.not421 = icmp eq i8 %i.jv, 1
  %i.jw = and i16 %i.iv, -16384
  %.not422 = icmp eq i16 %i.jw, 16384
  %or.cond895 = or i1 %.not422, %.not421
  br i1 %or.cond895, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jx = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.jy = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !286
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !290
  %i.kd = and i64 %i.kc, %i.ka
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !170
  %i.kg = getelementptr inbounds nuw [2048 x i8], ptr %i.kf, i64 %i.kd
  %i.kh = zext i8 %i.ju to i64
  %i.ki = getelementptr inbounds nuw [128 x i8], ptr %i.kg, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.js ; 2 uses
  %i.kk = mul nsw i32 %i.jc, 13
  %.sroa.speculated.i488 = call i32 @llvm.smin.i32(i32 %i.kk, i32 8192) ; 2 uses
  %i.kl = load atomic i16, ptr %i.kj monotonic, align 2
  %i.km = sext i16 %i.kl to i32                   ; 2 uses
  %i.kn = add nsw i32 %.sroa.speculated.i488, %i.km
  %i.ko = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i488, i1 true)
  %i.kp = mul nsw i32 %i.ko, %i.km
  %.neg.i489 = sdiv i32 %i.kp, -8192
  %i.kq = add nsw i32 %i.kn, %.neg.i489
  %i.kr = trunc i32 %i.kq to i16
  store atomic i16 %i.kr, ptr %i.kj monotonic, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq
  %i.ks = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %16 = trunc nuw i8 %i.ks to i1
  %17 = icmp samesign ugt i32 %.1, 13
  %or.cond10.not = select i1 %16, i1 true, i1 %17
  br i1 %or.cond10.not, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kt = load i8, ptr %i.bi, align 2, !tbaa !278, !range !223, !noundef !72
  %i.ku = xor i8 %i.kt, 1
  %narrow.neg.i = mul nuw nsw i8 %i.ku, -23
  %narrow3.i = add nsw i8 %narrow.neg.i, 76
  %i.kv = zext nneg i8 %narrow3.i to i32          ; 2 uses
  %i.kw = mul nuw nsw i32 %.1, %i.kv
  %i.kx = select i1 %i.ig, i32 2474, i32 0
  %i.ky = select i1 %i.il, i32 0, i32 331
  %i.kz = add nuw nsw i32 %i.ky, %i.kx
  %i.la = mul nuw nsw i32 %i.kz, %i.kv
  %i.lb = lshr i32 %i.la, 10
  %i.lc = call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.ld = udiv i32 %i.lc, 174665
  %i.le = add nuw nsw i32 %i.ld, %i.kw
  %.neg921 = sub i32 %.0387, %i.le
  %i.lf = add i32 %.neg921, %i.lb
  %.not.a = icmp slt i32 %i.lf, %4
  %.not424 = icmp slt i32 %.0387, %4
  %or.cond467 = or i1 %.not424, %.not.a
  br i1 %or.cond467, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lg = load i16, ptr %i.bg, align 8, !tbaa !234
  %.not922 = icmp eq i16 %i.lg, 0
  %or.cond13 = or i1 %i.dd, %.not922
  %or.cond13.not = xor i1 %or.cond13, true
  %i.lh = icmp slt i32 %4, -31506
  %or.cond896 = or i1 %i.lh, %or.cond13.not
  %i.li = icmp sgt i32 %.0387, 31506
  %or.cond897 = select i1 %or.cond896, i1 true, i1 %i.li
  br i1 %or.cond897, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lj = shl nsw i32 %4, 1
  %i.lk = add nsw i32 %.0387, %i.lj
  %i.ll = sdiv i32 %i.lk, 3
  br label %.thread851

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.pre1063 = load i32, ptr %i.id, align 8, !tbaa !248 ; 5 uses
  br i1 %6, label %bb.az, label %.thread848

bb.az:                                            ; preds = %bb.ay
  %.neg = mul nsw i32 %.1, -18
  %i.lm = add i32 %4, 350
  %i.ln = add i32 %i.lm, %.neg
  %.not425 = icmp slt i32 %.pre1063, %i.ln
  %brmerge = or i1 %i.cp, %.not425
  br i1 %brmerge, label %.thread848, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.lq = zext i8 %i.q to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !150
  %.not426 = icmp eq i32 %i.ls, 0
  br i1 %.not426, label %.thread848, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lt = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !291
  %.not427 = icmp slt i32 %i.lt, %i.lv
  %i.lw = icmp slt i32 %4, -31506
  %or.cond898 = or i1 %i.lw, %.not427
  br i1 %or.cond898, label %.thread848, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.lhs.trunc = trunc nuw i32 %.1 to i8
  %i.lx = udiv i8 %.lhs.trunc, 3
  %narrow923 = add nuw nsw i8 %i.lx, 7
  %i.ly = zext nneg i8 %narrow923 to i32
  %i.lz = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.lz) #32
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i16 65, ptr %i.ma, align 4, !tbaa !196
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !246
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.md, ptr %i.me, align 8, !tbaa !247
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mg = sub nsw i32 0, %4
  %i.mh = sub nsw i32 1, %4
  %i.mi = sub nsw i32 %.1, %i.ly                  ; 3 uses
  %i.mj = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.mf, i32 noundef %i.mg, i32 noundef %i.mh, i32 noundef %i.mi, i1 noundef zeroext false) ; 2 uses
  %i.mk = sub nsw i32 0, %i.mj                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #32
  %.not428 = icmp sgt i32 %4, %i.mk
  %i.ml = icmp slt i32 %i.mj, -31506
  %or.cond899 = or i1 %.not428, %i.ml
  br i1 %or.cond899, label %..thread848_crit_edge, label %bb.bd

..thread848_crit_edge:                            ; preds = %bb.bc
  %.pre1062 = load i32, ptr %i.id, align 8, !tbaa !248
  br label %.thread848

bb.bd:                                            ; preds = %bb.bc
  %i.mm = load i32, ptr %i.lu, align 4, !tbaa !291
  %i.mn = icmp ne i32 %i.mm, 0
  %i.mo = icmp samesign ult i32 %.1, 16
  %or.cond15 = select i1 %i.mn, i1 true, i1 %i.mo
  br i1 %or.cond15, label %.thread851, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mp = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.mq = trunc nsw i32 %i.mi to i16
  %.lhs.trunc891 = mul nsw i16 %i.mq, 3
  %i.mr = sdiv i16 %.lhs.trunc891, 4
  %.sext = sext i16 %i.mr to i32
  %i.ms = add nsw i32 %i.mp, %.sext
  store i32 %i.ms, ptr %i.lu, align 4, !tbaa !291
  %i.mt = add nsw i32 %4, -1
  %i.mu = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %2, i32 noundef %i.mt, i32 noundef %4, i32 noundef %i.mi, i1 noundef zeroext false)
  store i32 0, ptr %i.lu, align 4, !tbaa !291
  %.not429 = icmp slt i32 %i.mu, %4
  br i1 %.not429, label %.thread854, label %.thread851

.thread854:                                       ; preds = %bb.be
  %i.mv = load i32, ptr %i.id, align 8, !tbaa !248 ; 2 uses
  %i.mw = icmp sge i32 %i.mv, %4
  %i.mx = or i1 %i.ig, %i.mw
  %i.my = zext i1 %i.mx to i8
  br label %.thread859

.thread848:                                       ; preds = %..thread848_crit_edge, %bb.az, %bb.bb, %bb.ba, %bb.ay
  %i.mz = phi i32 [ %.pre1062, %..thread848_crit_edge ], [ %.pre1063, %bb.az ], [ %.pre1063, %bb.bb ], [ %.pre1063, %bb.ba ], [ %.pre1063, %bb.ay ] ; 3 uses
  %i.na = icmp sge i32 %i.mz, %4
  %i.nb = or i1 %i.ig, %i.na                      ; 2 uses
  %i.nc = zext i1 %i.nb to i8                     ; 3 uses
  %i.nd = icmp samesign ugt i32 %.1, 5
  br i1 %i.nd, label %.thread859, label %bb.bf

.thread859:                                       ; preds = %.thread854, %.thread848
  %i.ne = phi i8 [ %i.my, %.thread854 ], [ %i.nc, %.thread848 ] ; 2 uses
  %i.nf = phi i32 [ %i.mv, %.thread854 ], [ %i.mz, %.thread848 ]
  %i.ng = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.nh = icmp eq i16 %i.ng, 0
  %i.ni = icmp slt i32 %i.al, 4
  %or.cond18.not.not = select i1 %i.nh, i1 %i.ni, i1 false
  %i.nj = sext i1 %or.cond18.not.not to i32
  %spec.select900 = add nsw i32 %.1, %i.nj
  %i.nk = add nsw i32 %4, 235
  %narrow862 = mul nuw nsw i8 %i.ne, 63
  %i.nl = zext nneg i8 %narrow862 to i32
  %i.nm = sub nsw i32 %i.nk, %i.nl
  br label %bb.bg

bb.bf:                                            ; preds = %.thread848
  %i.nn = add nsw i32 %4, 235
  %.neg924 = select i1 %i.nb, i32 -63, i32 0
  %i.no = add nsw i32 %i.nn, %.neg924
  %i.np = icmp samesign ugt i32 %.1, 2
  br i1 %i.np, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %.thread859, %bb.bf
  %i.nq = phi i32 [ %i.nm, %.thread859 ], [ %i.no, %bb.bf ] ; 7 uses
  %.2864 = phi i32 [ %spec.select900, %.thread859 ], [ %.1, %bb.bf ] ; 5 uses
  %i.nr = phi i32 [ %i.nf, %.thread859 ], [ %i.mz, %bb.bf ]
  %i.ns = phi i8 [ %i.ne, %.thread859 ], [ %i.nc, %bb.bf ] ; 3 uses
  %i.nt = sub nsw i32 0, %i.nq                    ; 2 uses
  %i.nu = add i32 %4, -31507
  %spec.select.i490 = icmp ult i32 %i.nu, -63013
  br i1 %spec.select.i490, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nv = load i32, ptr %i.co, align 4, !tbaa !281 ; 2 uses
  %i.nw = icmp ne i32 %i.nv, 32002
  %i.nx = icmp slt i32 %i.nv, %i.nq
  %or.cond901 = select i1 %i.nw, i1 %i.nx, i1 false
  br i1 %or.cond901, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %.sroa.0121.0.copyload = load i16, ptr %i.bg, align 8, !tbaa !196
  %i.ny = sub nsw i32 %i.nq, %i.nr
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %12, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0121.0.copyload, i32 noundef %i.ny, ptr noundef nonnull %i.nz) #32
  %i.oa = add nsw i32 %.2864, -5
  %i.ob = load i32, ptr %i.id, align 8, !tbaa !248
  %i.oc = sub nsw i32 %i.ob, %4
  %.neg431 = sdiv i32 %i.oc, -315
  %i.od = add nsw i32 %i.oa, %.neg431
  %i.oe = call i32 @llvm.smax.i32(i32 %i.od, i32 0)
  %.sroa.speculated706 = call i32 @llvm.umin.i32(i32 %.2864, i32 %i.oe) ; 3 uses
  %i.of = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %12) #32 ; 2 uses
  %.not929988 = icmp eq i16 %i.of, 0
  br i1 %.not929988, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 9322496
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_:bb.a
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aq = udiv i64 %.02328.i.i, 10000
  %i.ar = add i32 %.029.i.i, 4                    ; 2 uses
  %i.as = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread, %bb.h, %bb.f, %bb.d, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit
  %storemerge.lcssa.i94 = phi i64 [ %storemerge6.i, %bb.h ], [ %storemerge6.i, %bb.d ], [ %storemerge6.i, %bb.f ], [ %storemerge6.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 0, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %storemerge6.i, %bb.i ] ; 3 uses
  %.022.i.i = phi i32 [ %i.ap, %bb.h ], [ %i.al, %bb.d ], [ %i.an, %bb.f ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %i.ar, %bb.i ]
  %i.at = zext i32 %.022.i.i to i64
  store ptr %i.g, ptr %11, align 8, !tbaa !226, !alias.scope !636
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.at, i8 noundef signext 0) #32
  %i.au = load ptr, ptr %11, align 8, !tbaa !229, !alias.scope !636 ; 4 uses
  %i.av = icmp ugt i64 %storemerge.lcssa.i94, 99
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !228, !alias.scope !636
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i2.i ], [ %storemerge.lcssa.i94, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i2.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !143, !noalias !636
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !143
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !143, !noalias !636
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !143
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %storemerge.lcssa.i94, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bb, %.lr.ph.i2.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !143, !noalias !636
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !143
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !143, !noalias !636
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.j, %bb.k
  %storemerge.i.i = phi i8 [ %i.bv, %bb.k ], [ %i.bt, %bb.j ]
  store i8 %storemerge.i.i, ptr %i.au, align 1, !tbaa !143
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 27) #32, !noalias !637 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !226, !alias.scope !637
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !229 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !228 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  store ptr %i.bx, ptr %10, align 8, !tbaa !229, !alias.scope !637
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !143
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !143, !alias.scope !637
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !228
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = phi i64 [ %i.cb, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cf, ptr %i.j, align 8, !tbaa !228, !alias.scope !637
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !229
  store i64 0, ptr %i.cg, align 8, !tbaa !228
  store i8 0, ptr %i.by, align 8, !tbaa !143
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !228, !noalias !638
  %i.ci = add i64 %i.ch, -4611686018427387875
  %i.cj = icmp ult i64 %i.ci, 29
  br i1 %i.cj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #36, !noalias !638
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.20, i64 noundef 29) #32, !noalias !638 ; 6 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !226, !alias.scope !638
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !229 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !228 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cl, ptr %9, align 8, !tbaa !229, !alias.scope !638
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !143
  store i64 %i.cs, ptr %i.k, align 8, !tbaa !143, !alias.scope !638
  %.phi.trans.insert.i9 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !228
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ct = phi i64 [ %i.cp, %bb.n ], [ %.pre.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.ct, ptr %i.l, align 8, !tbaa !228, !alias.scope !638
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !229
  store i64 0, ptr %i.cu, align 8, !tbaa !228
  store i8 0, ptr %i.cm, align 8, !tbaa !143
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.336") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  %i.cv = load ptr, ptr %9, align 8, !tbaa !229   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.k
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !143
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.cz = load ptr, ptr %10, align 8, !tbaa !229  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.i
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.i, align 8, !tbaa !143
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.dd = load ptr, ptr %11, align 8, !tbaa !229  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.g
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.df = load i64, ptr %i.g, align 8, !tbaa !143
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.dh = load i8, ptr %i.m, align 8, !tbaa !365, !range !223, !noundef !72 ; 2 uses
  %15 = trunc nuw i8 %i.dh to i1
  %i.di = load i64, ptr %i.n, align 8
  %i.dj = icmp ne i64 %i.di, 0
  %or.cond.not = select i1 %15, i1 %i.dj, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 32, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !63
  store ptr %i.o, ptr %i.q, align 8, !tbaa !64
  store i64 0, ptr %i.r, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.120") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.dk = load ptr, ptr %13, align 8, !tbaa !367  ; 3 uses
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !367 ; 2 uses
  %.not113 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not113, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.pre = load ptr, ptr %13, align 8, !tbaa !369
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.dm = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.dk, %bb.o ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dn = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.dr = load i64, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.y

.lr.ph:                                           ; preds = %bb.o, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.sroa.085.0114 = phi ptr [ %i.fw, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62 ], [ %i.dk, %bb.o ] ; 2 uses
  %i.dt = load i64, ptr %.sroa.085.0114, align 8, !tbaa !55 ; 12 uses
  %i.du = load i8, ptr %3, align 8, !tbaa !359, !range !223, !noundef !72
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.q, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

bb.q:                                             ; preds = %.lr.ph
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !371, !nonnull !72, !align !73 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !62 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %.not10.i.i.i.i19 = icmp eq ptr %i.dy, null
  br i1 %.not10.i.i.i.i19, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %.1.i.i.i.i26, %.lr.ph.i.i.i.i20 ], [ %i.dy, %bb.q ] ; 3 uses
  %.0811.i.i.i.i22 = phi ptr [ %.19.i.i.i.i23, %.lr.ph.i.i.i.i20 ], [ %i.dz, %bb.q ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !55
  %i.ec = icmp ult i64 %i.eb, %i.dt               ; 2 uses
  %.19.i.i.i.i23 = select i1 %i.ec, ptr %.0811.i.i.i.i22, ptr %.012.i.i.i.i21 ; 3 uses
  %.1.in.v.i.i.i.i24 = select i1 %i.ec, i64 24, i64 16
  %.1.in.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 %.1.in.v.i.i.i.i24
  %.1.i.i.i.i26 = load ptr, ptr %.1.in.i.i.i.i25, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i26, null
  br i1 %.not.i.i.i.i27, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, label %.lr.ph.i.i.i.i20, !llvm.loop !12

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28: ; preds = %.lr.ph.i.i.i.i20
  %i.ed = icmp eq ptr %.19.i.i.i.i23, %i.dz
  br i1 %i.ed, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i23, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !55
  %.not99 = icmp ult i64 %i.dt, %i.ef
  br i1 %.not99, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95: ; preds = %.lr.ph, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !62  ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %i.eg, null
  br i1 %.not10.i.i.i.i29, label %.critedge.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %.1.i.i.i.i36, %.lr.ph.i.i.i.i30 ], [ %i.eg, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 5 uses
  %.0811.i.i.i.i32 = phi ptr [ %.19.i.i.i.i33, %.lr.ph.i.i.i.i30 ], [ %i.v, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !55
  %i.ej = icmp ult i64 %i.ei, %i.dt               ; 4 uses
  %.19.i.i.i.i33 = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31 ; 2 uses
  %.1.in.v.i.i.i.i34 = select i1 %i.ej, i64 24, i64 16
  %.1.in.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 %.1.in.v.i.i.i.i34
  %.1.i.i.i.i36 = load ptr, ptr %.1.in.i.i.i.i35, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.1.i.i.i.i36, null
  br i1 %.not.i.i.i.i37, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i30, !llvm.loop !13

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i30
  %i.ek = icmp eq ptr %.19.i.i.i.i33, %i.v
  br i1 %i.ek, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.el = load i64, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.em = icmp ult i64 %i.dt, %i.el
  br i1 %i.em, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.16) #36
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit: ; preds = %bb.r
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.en = load i64, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  store i64 %i.en, ptr %12, align 8, !tbaa !376
  %.02022.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !55 ; 2 uses
  %i.eq = icmp ult i64 %i.dt, %i.ep               ; 2 uses
  %.in.v.i.i.i = select i1 %i.eq, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i38, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.eq, label %._crit_edge.thread.i.i.i, label %bb.t

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.es = icmp eq ptr %.019.lcssa29.i.i.i, %i.er
  br i1 %i.es, label %select.unfold.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.et = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %i.eu = phi i64 [ %.pre.i.i, %bb.s ], [ %i.ep, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.s ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ev = icmp ult i64 %i.eu, %i.dt
  br i1 %i.ev, label %select.unfold.i.i, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

select.unfold.i.i:                                ; preds = %bb.t, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.t ] ; 3 uses
  %i.ew = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.o
  br i1 %i.ew, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !55
  %i.ez = icmp ult i64 %i.dt, %i.ey
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.u, %select.unfold.i.i
  %i.fa = phi i1 [ %i.ez, %bb.u ], [ true, %select.unfold.i.i ]
  %i.fb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store i64 %i.dt, ptr %i.fc, align 8, !tbaa !55
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fa, ptr noundef nonnull %i.fb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #32
  %i.fd = load i64, ptr %i.r, align 8, !tbaa !65
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.r, align 8, !tbaa !65
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.t, %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, %bb.q, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %.02022.i.i.i39 = load ptr, ptr %i.c, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i.i40 = icmp eq ptr %.02022.i.i.i39, null
  br i1 %.not23.i.i.i40, label %._crit_edge.thread.i.i.i57, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, %.lr.ph.i.i.i41
  %.02024.i.i.i42 = phi ptr [ %.020.i.i.i45, %.lr.ph.i.i.i41 ], [ %.02022.i.i.i39, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !55 ; 2 uses
  %i.fh = icmp ult i64 %i.dt, %i.fg               ; 2 uses
  %.in.v.i.i.i43 = select i1 %i.fh, i64 16, i64 24
  %.in.i.i.i44 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 %.in.v.i.i.i43
  %.020.i.i.i45 = load ptr, ptr %.in.i.i.i44, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.020.i.i.i45, null
  br i1 %.not.i.i.i46, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41, !llvm.loop !0

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41
  br i1 %i.fh, label %._crit_edge.thread.i.i.i57, label %bb.w

._crit_edge.thread.i.i.i57:                       ; preds = %._crit_edge.i.i.i47, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.019.lcssa29.i.i.i58 = phi ptr [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ], [ %i.b, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.fj = icmp eq ptr %.019.lcssa29.i.i.i58, %i.fi
  br i1 %i.fj, label %select.unfold.i.i54, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i.i57
  %i.fk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i58) #34
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
end_hunk_2
begin_hunk_3_@_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_:bb.a
  %.sink = phi i64 [ 0, %bb.ai ], [ %i.ho, %bb.ah ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.ai ], [ %i.hg, %bb.ah ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink128.a, ptr %i.hq, align 8, !tbaa !63
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink127, ptr %i.hr, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink, ptr %i.hs, align 8, !tbaa !65
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hc, align 8, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ht, ptr noundef nonnull align 8 dereferenceable(9) %i.hu, i64 9, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.hv, align 8, !tbaa !362
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, ptr noundef null)
  %i.hx = load ptr, ptr %14, align 16, !tbaa !328 ; 3 uses
  %i.hy = load ptr, ptr %i.gx, align 8, !tbaa !327 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %.lr.ph.i.i.i.i64
  %.05.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i64 ], [ %i.hx, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i.i.i.i65, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i64, !llvm.loop !10

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i64
  %.pr.i.i = load ptr, ptr %14, align 16, !tbaa !328
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %i.ic = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.hx, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.id = load ptr, ptr %i.ha, align 16, !tbaa !341
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #37
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.ih, align 8, !tbaa !362
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN9Stockfish10NumaConfigD2Ev.exit
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ij = load ptr, ptr %6, align 8, !tbaa !382   ; 3 uses
  %i.ik = load ptr, ptr %i.z, align 8, !tbaa !379 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ij, %i.ik
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.al, %.lr.ph.i.i.i66
  %.05.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i66 ], [ %i.ij, %bb.al ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.il, ptr noundef %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.io, %i.ik
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i66, !llvm.loop !14

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i66
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !382
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, %bb.al
  %i.ip = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i ], [ %i.ij, %bb.al ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i
  %i.iq = load ptr, ptr %i.aa, align 8, !tbaa !380
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.it) #37
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iv = load ptr, ptr %i.u, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noundef %i.iv)
  %i.iw = load ptr, ptr %4, align 8, !tbaa !328   ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !327 ; 2 uses
  %.not4.i.i.i.i68 = icmp eq ptr %i.iw, %i.iy
  br i1 %.not4.i.i.i.i68, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i69
  %.05.i.i.i.i70 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i69 ], [ %i.iw, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i70, ptr noundef %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 48 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.jb, %i.iy
  br i1 %.not.i.i.i.i71, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, label %.lr.ph.i.i.i.i69, !llvm.loop !10

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72: ; preds = %.lr.ph.i.i.i.i69
  %.pr.i.i73 = load ptr, ptr %4, align 8, !tbaa !328
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit
  %i.jc = phi ptr [ %.pr.i.i73, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72 ], [ %i.iw, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i75 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i1.i.i75, label %_ZN9Stockfish10NumaConfigD2Ev.exit76, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !341
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #37
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit76

_ZN9Stockfish10NumaConfigD2Ev.exit76:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.383, align 8            ; 6 uses
  %4 = alloca %"class.std::optional.336", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.120", align 8   ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::optional.336", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.120", align 8  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !648
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !61, !alias.scope !648
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !62, !alias.scope !648
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.f, align 8, !tbaa !63, !alias.scope !648
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.g, align 8, !tbaa !64, !alias.scope !648
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false), !alias.scope !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i8 0, ptr %i.c, align 1, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.c, ptr %3, align 8, !tbaa !384
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 31, ptr %i.b, align 8, !tbaa !55
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #32 ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !229
  %i.l = load i64, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.k, ptr noundef nonnull align 1 dereferenceable(31) @.str.28, i64 31, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !228
  %i.n = load ptr, ptr %5, align 8, !tbaa !229
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.336") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  %i.p = load ptr, ptr %5, align 8, !tbaa !229    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !143
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !365, !range !223, !noundef !72
  %13 = trunc nuw i8 %i.u to i1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %14 = icmp ne i64 %i.w, 0
  %or.cond.not = select i1 %13, i1 %14, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.y

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.120") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.x = load ptr, ptr %6, align 8, !tbaa !367    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !367  ; 2 uses
  %.not76 = icmp eq ptr %i.x, %i.z
  br i1 %.not76, label %._crit_edge78, label %._crit_edge.i.i18.lr.ph

._crit_edge.i.i18.lr.ph:                          ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %._crit_edge.i.i18.lr.ph
  %.sroa.058.077 = phi ptr [ %i.x, %._crit_edge.i.i18.lr.ph ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 2 uses
  %i.an = load i64, ptr %.sroa.058.077, align 8, !tbaa !55 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr %i.aa, ptr %9, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 29, ptr %i.a, align 8, !tbaa !55
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !229
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ao, ptr noundef nonnull align 1 dereferenceable(29) @.str.29, i64 29, i1 false)
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !228
  %i.aq = load ptr, ptr %9, align 8, !tbaa !229
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.as = icmp ult i64 %i.an, 10
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i18, %bb.h
  %.029.i.i = phi i32 [ %i.ba, %bb.h ], [ 1, %._crit_edge.i.i18 ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.az, %bb.h ], [ %i.an, %._crit_edge.i.i18 ] ; 5 uses
  %i.at = icmp ult i64 %.02328.i.i, 100
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.au = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.av = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ax = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.az = udiv i64 %.02328.i.i, 10000
  %i.ba = add i32 %.029.i.i, 4                    ; 2 uses
  %i.bb = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bb, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %._crit_edge.i.i18
  %.022.i.i = phi i32 [ %i.ay, %bb.g ], [ %i.au, %bb.c ], [ %i.aw, %bb.e ], [ 1, %._crit_edge.i.i18 ], [ %i.ba, %bb.h ]
  %i.bc = zext i32 %.022.i.i to i64
  store ptr %i.ac, ptr %10, align 8, !tbaa !226, !alias.scope !649
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.bc, i8 noundef signext 0) #32
  %i.bd = load ptr, ptr %10, align 8, !tbaa !229, !alias.scope !649 ; 4 uses
  %i.be = icmp ugt i64 %i.an, 99
  br i1 %i.be, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i20

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bf = load i64, ptr %i.ad, align 8, !tbaa !228, !alias.scope !649
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.bg, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bk, %.lr.ph.i2.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bu, %.lr.ph.i2.i ], [ %i.bh, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bi = urem i64 %.020.i.i, 100
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !143, !noalias !649
  %i.bo = zext i32 %.01819.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !143
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !143, !noalias !649
  %i.br = add i32 %.01819.i.i, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !143
  %i.bu = add i32 %.01819.i.i, -2
  %i.bv = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i2.i, label %._crit_edge.i.i20, !llvm.loop !8

._crit_edge.i.i20:                                ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.an, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bk, %.lr.ph.i2.i ] ; 3 uses
  %i.bw = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i20
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !143, !noalias !649
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !143
  %i.cc = load i8, ptr %i.by, align 2, !tbaa !143, !noalias !649
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i20
  %i.cd = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.ce, %bb.j ], [ %i.cc, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.bd, align 1, !tbaa !143
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !228, !noalias !650 ; 4 uses
  %i.cg = load i64, ptr %i.ad, align 8, !tbaa !228, !noalias !650 ; 4 uses
  %i.ch = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !229, !noalias !650 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aa
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ck = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.cl = load i64, ptr %i.aa, align 8, !tbaa !143, !noalias !650
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.co = load ptr, ptr %10, align 8, !tbaa !229, !noalias !650
  %i.cp = icmp eq ptr %i.co, %i.ac
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.k
  %i.cq = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.k
  %i.cr = load i64, ptr %i.ac, align 8, !tbaa !143, !noalias !650
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ch, %i.cs
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.cf) #32, !noalias !650 ; 5 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !226, !alias.scope !650
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !229 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.l:                                             ; preds = %.critedge.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !228 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
end_hunk_3
begin_hunk_4_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !739
  %i.v = load ptr, ptr %1, align 8, !tbaa !229, !noalias !739 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !228, !noalias !739 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !143, !noalias !739
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !143, !noalias !739
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !143, !noalias !739
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !143, !noalias !739
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !143, !noalias !739
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !143, !noalias !739
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !143, !noalias !739
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !143, !noalias !739
  %i.bq = sext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211            ; 3 uses
  %i.bt = add nuw i64 %.09.i.i.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bz, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.by, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !143, !noalias !739
  %i.bw = sext i8 %i.bv to i64
  %i.bx = xor i64 %.078.i.i.i.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %i.bz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !738

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.i.i.i.epil ]
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.38, i64 noundef %.07.lcssa.i.i.i) #32, !noalias !739 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !226, !alias.scope !739
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #32, !noalias !739 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !739
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !55, !noalias !739
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #32 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !tbaa !229, !alias.scope !739
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !739
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !143, !alias.scope !739
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cg = phi ptr [ %i.ce, %bb.e ], [ %i.cb, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.cc, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.b, align 16, !tbaa !143, !noalias !739
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !143
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.b, i64 %i.cc, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !739 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !228, !alias.scope !739
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !229, !alias.scope !739
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !739
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !226
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !228
  store i8 0, ptr %i.cn, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %class.anon.390, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv, ptr %3, align 8, !tbaa !135
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !135
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !135
  %i.c = call noundef i32 @pthread_once(ptr noundef nonnull @_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E, ptr noundef nonnull @__once_proxy) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #36
  unreachable

_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !135
  store ptr null, ptr %i.b, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit
  %.020 = phi i1 [ false, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit ], [ true, %.backedge.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !347
  %.not.i = icmp eq i32 %i.m, -1
  %i.n = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit: ; preds = %.backedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !394
  %.not74 = icmp eq ptr %i.o, null
  br i1 %.not74, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %.thread70

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %.backedge, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.q = call i32 @shm_open(ptr noundef %i.p, i32 noundef 194, i32 noundef 438) #32 ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !347
  %i.r = icmp ne i32 %i.q, -1                     ; 7 uses
  br i1 %i.r, label %.preheader.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.t = call i32 @shm_open(ptr noundef %i.s, i32 noundef 2, i32 noundef 438) #32 ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !347
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.thread70, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %bb.c
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %i.v = load i32, ptr %i.d, align 8, !tbaa !347
  %i.w = call i32 @flock(i32 noundef %i.v, i32 noundef 2) #32
  %.not.i30 = icmp eq i32 %i.w, -1
  br i1 %.not.i30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.x = tail call ptr @__errno_location() #39
  %i.y = load i32, ptr %i.x, align 4, !tbaa !150
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, !llvm.loop !17

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %bb.d
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !347
  %i.ab = call i32 @close(i32 noundef %i.aa) #32  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !347
  store i64 0, ptr %i.l, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !229
  store i8 0, ptr %i.ac, align 1, !tbaa !143
  br label %.thread70

bb.e:                                             ; preds = %.preheader.i
  br i1 %i.r, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.ad = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #32
  br i1 %i.ad, label %bb.n, label %.thread57

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !347
  %i.af = call i32 @fstat(i32 noundef %i.ae, ptr noundef nonnull %2) #32 ; 0 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !742
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.thread61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !347
  %i.ak = call ptr @mmap(ptr noundef null, i64 noundef %i.ah, i32 noundef 3, i32 noundef 1, i32 noundef %i.aj, i64 noundef 0) #32 ; 5 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !395
  %i.al = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %i.al, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !394
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849344
  store ptr %i.am, ptr %i.j, align 8, !tbaa !348
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849388
  %i.ao = load atomic i8, ptr %i.an acquire, align 1, !range !223, !noundef !72
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !399
  %.not.i33 = icmp eq i32 %i.as, -1386276334
  br i1 %.not.i33, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !395 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i31, label %.thread61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.i, align 8, !tbaa !393
  %i.av = call i32 @munmap(ptr noundef nonnull %i.at, i64 noundef %i.au) #32 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread61

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.preheader.i37.preheader

.thread61:                                        ; preds = %bb.f, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.thread57

bb.l:                                             ; preds = %bb.g
  store ptr null, ptr %i.e, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.thread64

.thread57:                                        ; preds = %.split, %.thread61
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.ax = call i32 @shm_unlink(ptr noundef %i.aw) #32 ; 0 uses
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !395  ; 2 uses
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %.thread64, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit: ; preds = %.thread57
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !393
  %i.az = call i32 @munmap(ptr noundef nonnull %.pr, i64 noundef %i.ay) #32 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread64

.thread64:                                        ; preds = %bb.l, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit, %.thread57
  %.not26 = phi i1 [ %i.r, %.thread57 ], [ %i.r, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit ], [ true, %bb.l ]
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !347
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, label %.preheader.i35

.preheader.i35:                                   ; preds = %.thread64, %bb.m
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !347
  %i.bd = call i32 @flock(i32 noundef %i.bc, i32 noundef 8) #32
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.m, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit

bb.m:                                             ; preds = %.preheader.i35
  %i.bf = tail call ptr @__errno_location() #39
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !150
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %.preheader.i35, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, !llvm.loop !18

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit: ; preds = %bb.m, %.preheader.i35
  %.pre = load i32, ptr %i.d, align 8, !tbaa !347
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, %.thread64
  %i.bi = phi i32 [ %.pre, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit ], [ -1, %.thread64 ]
  %i.bj = call i32 @close(i32 noundef %i.bi) #32  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !347
  store i64 0, ptr %i.l, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !229
  store i8 0, ptr %i.bk, align 1, !tbaa !143
  %or.cond5 = or i1 %.not26, %.020
  br i1 %or.cond5, label %.thread70, label %.backedge.backedge

bb.n:                                             ; preds = %.split
  %.pre96 = load ptr, ptr %i.j, align 8, !tbaa !348
  %.not.i36 = icmp eq ptr %.pre96, null
  br i1 %.not.i36, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %.preheader.i37.preheader

.preheader.i37.preheader:                         ; preds = %.thread, %bb.n
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %.preheader.i37.preheader, %.preheader.i37
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef %i.bl) #32
  switch i32 %i.bm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread [
    i32 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
    i32 130, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
    i32 4, label %.preheader.i37
  ]

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit: ; preds = %.preheader.i37
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.bo = call i32 @pthread_mutex_consistent(ptr noundef %i.bn) #32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread: ; preds = %.preheader.i37, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
  br i1 %i.r, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %bb.o

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread: ; preds = %bb.n, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.br = call i32 @shm_unlink(ptr noundef %i.bq) #32 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !395 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.p, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39: ; preds = %bb.o
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !393
  %i.bu = call i32 @munmap(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #32 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39, %bb.o
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !347
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.loopexit, label %.preheader.i40

.preheader.i40:                                   ; preds = %bb.p, %bb.q
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !347
  %i.by = call i32 @flock(i32 noundef %i.bx, i32 noundef 8) #32
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.q, label %.loopexit.loopexit

bb.q:                                             ; preds = %.preheader.i40
  %i.ca = tail call ptr @__errno_location() #39
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !150
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %.preheader.i40, label %.loopexit.loopexit, !llvm.loop !18

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit, %.preheader.i37
  %i.cd = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE27create_sentinel_file_lockedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #32
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !348 ; 3 uses
  br i1 %i.cd, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %.not.i42 = icmp eq ptr %i.ce, null
  br i1 %.not.i42, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ce) #32 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit: ; preds = %bb.r, %bb.s
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !395 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cg, null
  br i1 %.not.i43, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !393
  %i.ci = call i32 @munmap(ptr noundef nonnull %i.cg, i64 noundef %i.ch) #32 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, %bb.t
  br i1 %i.r, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.ck = call i32 @shm_unlink(ptr noundef %i.cj) #32 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cl = load i32, ptr %i.d, align 8, !tbaa !347
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.v, %bb.w
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !347
  %i.co = call i32 @flock(i32 noundef %i.cn, i32 noundef 8) #32
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit

bb.w:                                             ; preds = %.preheader.i45
  %i.cq = tail call ptr @__errno_location() #39
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !150
  %i.cs = icmp eq i32 %i.cr, 4
  br i1 %i.cs, label %.preheader.i45, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, !llvm.loop !18

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit: ; preds = %bb.w, %.preheader.i45
  %.pre97 = load i32, ptr %i.d, align 8, !tbaa !347
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, %bb.v
  %i.ct = phi i32 [ %.pre97, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit ], [ -1, %bb.v ]
  %i.cu = call i32 @close(i32 noundef %i.ct) #32  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !347
  store i64 0, ptr %i.l, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !229
  store i8 0, ptr %i.cv, align 1, !tbaa !143
  br label %.thread70

bb.x:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cx = atomicrmw add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !348 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i47, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cy) #32 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48: ; preds = %bb.x, %bb.y
  %i.da = load i32, ptr %i.d, align 8, !tbaa !347
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, label %.preheader.i49

.preheader.i49:                                   ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, %bb.z
  %i.dc = load i32, ptr %i.d, align 8, !tbaa !347
  %i.dd = call i32 @flock(i32 noundef %i.dc, i32 noundef 8) #32
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.z, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50

bb.z:                                             ; preds = %.preheader.i49
  %i.df = tail call ptr @__errno_location() #39
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !150
  %i.dh = icmp eq i32 %i.dg, 4
  br i1 %i.dh, label %.preheader.i49, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, !llvm.loop !18

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50: ; preds = %.preheader.i49, %bb.z, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  br label %.thread70

.loopexit.loopexit:                               ; preds = %.preheader.i40, %bb.q
  %.pre98 = load i32, ptr %i.d, align 8, !tbaa !347
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p
  %i.di = phi i32 [ %.pre98, %.loopexit.loopexit ], [ -1, %bb.p ]
  %i.dj = call i32 @close(i32 noundef %i.di) #32  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !347
  store i64 0, ptr %i.l, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !229
  store i8 0, ptr %i.dk, align 1, !tbaa !143
  %or.cond7 = or i1 %i.r, %.020
  br i1 %or.cond7, label %.thread70, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit
  br label %.backedge

.thread70:                                        ; preds = %bb.c, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit, %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit
  %.3 = phi i1 [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50 ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit ], [ false, %.loopexit ], [ false, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !274
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !143
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_4
begin_hunk_5_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bm, label %.thread1063

bb.bm:                                            ; preds = %bb.bl
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !412
  %i.lw = and i32 %i.lv, 15
  %.not1175.a = icmp eq i32 %i.lw, 0
  br i1 %.not1175.a, label %bb.bn, label %.thread1063

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.lx = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.e) #32 ; 3 uses
  %i.ly = load i64, ptr %i.ai, align 64, !tbaa !131
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.mb = load ptr, ptr %i.ma, align 32, !tbaa !134
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  store i32 0, ptr %i.mc, align 8, !tbaa !300
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.md = load i32, ptr %i.e, align 4, !tbaa !414
  %.not574 = icmp eq i32 %i.md, 0
  br i1 %.not574, label %.thread1067, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 11419808 ; 2 uses
  %i.mf = load atomic i64, ptr %i.me monotonic, align 32
  %i.mg = add i64 %i.mf, 1
  store atomic i64 %i.mg, ptr %i.me monotonic, align 32
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 11422189
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !415, !range !223, !noundef !72
  %i.mj = zext nneg i8 %i.mi to i32               ; 3 uses
  %i.mk = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !249 ; 4 uses
  %i.mn = sub nsw i32 0, %i.mj
  %.not1176 = icmp slt i32 %i.lx, %i.mn
  br i1 %.not1176, label %.thread1061, label %bb.br

.thread1061:                                      ; preds = %bb.bq
  %.neg575 = add nsw i32 %i.mm, -31753            ; 2 uses
  %.not576 = icmp sgt i32 %.neg575, %.sroa.speculated824
  br i1 %.not576, label %.thread1067, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.mo = icmp sgt i32 %i.lx, %i.mj
  %i.mp = shl nsw i32 %i.lx, 1
  %i.mq = mul nuw nsw i32 %i.mp, %i.mj
  br i1 %i.mo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mr = sub nsw i32 31753, %i.mm                ; 2 uses
  %.not577 = icmp slt i32 %i.mr, %.sroa.speculated819
  br i1 %.not577, label %.thread1067, label %bb.bt

.thread1067:                                      ; preds = %bb.bp, %.thread1061, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %.thread1063

bb.bt:                                            ; preds = %bb.br, %bb.bs, %.thread1061
  %i.ms = phi i8 [ 1, %.thread1061 ], [ 2, %bb.bs ], [ 3, %bb.br ]
  %i.mt = phi i32 [ %.neg575, %.thread1061 ], [ %i.mr, %bb.bs ], [ %i.mq, %bb.br ] ; 4 uses
  %i.mu = icmp sgt i32 %i.mt, 31506
  %i.mv = icmp slt i32 %i.mt, -31506
  %i.mw = select i1 %i.mv, i32 %i.mm, i32 0
  %i.mx = sub i32 0, %i.mw
  %.p.i = select i1 %i.mu, i32 %i.mm, i32 %i.mx
  %i.my = add i32 %.p.i, %i.mt
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mk, i64 45
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !282, !range !223, !noundef !72
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = call i32 @llvm.umin.i32(i32 %.11035, i32 239)
  %.sroa.speculated805 = add nuw nsw i32 %i.nc, 6
  %i.nd = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ne = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.nd) #32
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.my, i1 noundef zeroext %i.nb, i8 noundef zeroext %i.ms, i32 noundef %.sroa.speculated805, i16 0, i32 noundef 32002, i8 noundef zeroext %i.ne) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %.thread1079

.thread1063:                                      ; preds = %bb.bi, %bb.bk, %bb.bl, %bb.bm, %.thread1067, %bb.an, %bb.bh
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 44
  %i.nh = load i8, ptr %i.ng, align 4, !tbaa !270, !range !223, !noundef !72
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.cw, label %bb.bu

bb.bu:                                            ; preds = %.thread1063
  %i.nj = getelementptr inbounds i8, ptr %i.nf, i64 -28
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.nk, label %bb.bv [
    i16 65, label %bb.bz
    i16 0, label %bb.bz
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.nl = getelementptr inbounds i8, ptr %i.nf, i64 -12
  %i.nm = load i8, ptr %i.nl, align 4, !tbaa !270, !range !223, !noundef !72
  %i.nn = or i8 %i.nm, %i.ad
  %or.cond21.not = icmp eq i8 %i.nn, 0
  br i1 %or.cond21.not, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.no = getelementptr inbounds i8, ptr %i.nf, i64 -24
  %i.np = load i32, ptr %i.no, align 8, !tbaa !248
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !248
  %i.ns = add nsw i32 %i.nr, %i.np                ; 2 uses
  %i.nt = sub nsw i32 0, %i.ns
  %i.nu = icmp slt i32 %i.ns, -167
  %.sroa.speculate.load.false.sroa.speculated798 = call i32 @llvm.smax.i32(i32 %i.nt, i32 -209)
  %i.nv = add nsw i32 %.sroa.speculate.load.false.sroa.speculated798, 59
  %i.nw = select i1 %i.nu, i32 226, i32 %i.nv     ; 2 uses
  %i.nx = xor i8 %i.ag, 1
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.ny
  %i.oa = zext i16 %i.nk to i64
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %i.oa ; 2 uses
  %i.oc = mul nsw i32 %i.nw, 9
  %.sroa.speculated.i680 = call i32 @llvm.smin.i32(i32 %i.oc, i32 7183) ; 2 uses
  %i.od = load i16, ptr %i.ob, align 2, !tbaa !147
  %i.oe = sext i16 %i.od to i32                   ; 2 uses
  %i.of = add nsw i32 %.sroa.speculated.i680, %i.oe
  %i.og = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i680, i1 true)
  %i.oh = mul nsw i32 %i.og, %i.oe
  %.neg.i = sdiv i32 %i.oh, -7183
  %i.oi = add nsw i32 %i.of, %.neg.i
  %i.oj = trunc i32 %i.oi to i16
  store i16 %i.oj, ptr %i.ob, align 2, !tbaa !147
  %i.ok = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.om = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !283 ; 2 uses
  %i.op = and i8 %i.oo, 7
  %.not578 = icmp eq i8 %i.op, 1
  %i.oq = and i16 %i.nk, -16384
  %.not579 = icmp eq i16 %i.oq, 16384
  %or.cond1147.a = or i1 %.not579, %.not578
  br i1 %or.cond1147.a, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.or = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.os = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !286
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !290
  %i.ox = and i64 %i.ow, %i.ou
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !170
  %i.pa = getelementptr inbounds nuw [2048 x i8], ptr %i.oz, i64 %i.ox
  %i.pb = zext i8 %i.oo to i64
  %i.pc = getelementptr inbounds nuw [128 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %i.om ; 2 uses
  %i.pe = mul nsw i32 %i.nw, 13
  %.sroa.speculated.i682 = call i32 @llvm.smin.i32(i32 %i.pe, i32 8192) ; 2 uses
  %i.pf = load atomic i16, ptr %i.pd monotonic, align 2
  %i.pg = sext i16 %i.pf to i32                   ; 2 uses
  %i.ph = add nsw i32 %.sroa.speculated.i682, %i.pg
  %i.pi = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i682, i1 true)
  %i.pj = mul nsw i32 %i.pi, %i.pg
  %.neg.i683 = sdiv i32 %i.pj, -8192
  %i.pk = add nsw i32 %i.ph, %.neg.i683
  %i.pl = trunc i32 %i.pk to i16
  store atomic i16 %i.pl, ptr %i.pd monotonic, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.bv
  %i.pm = add nsw i32 %.sroa.speculated824, -485
  %.neg580 = mul nsw i32 %.11035, -281
  %.neg581 = mul nsw i32 %.neg580, %.11035
  %i.pn = add i32 %i.pm, %.neg581
  %i.po = icmp slt i32 %.0524, %i.pn
  br i1 %i.po, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.pq = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.pp, i32 noundef %.sroa.speculated824, i32 noundef %.sroa.speculated819)
  br label %.thread1079

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr %i.a, ptr %12, align 8, !tbaa !417
  %i.pr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.pr, align 8, !tbaa !384
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.ps, align 8, !tbaa !384
  %i.pt = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.pt, align 8, !tbaa !304
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 45
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !282, !range !223, !noundef !72
  %15 = trunc nuw i8 %i.pw to i1
  %16 = icmp samesign ugt i32 %.11035, 13
  %or.cond23.not = select i1 %15, i1 true, i1 %16
  br i1 %or.cond23.not, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.px = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.11035)
  %i.py = sub nsw i32 %.0524, %i.px
  %.not.a = icmp slt i32 %i.py, %.sroa.speculated819
  %.not583 = icmp slt i32 %.0524, %.sroa.speculated819
  %or.cond654 = or i1 %.not583, %.not.a
  br i1 %or.cond654, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pz = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1178 = icmp eq i16 %i.pz, 0
  %or.cond26 = or i1 %i.ei, %.not1178
  %or.cond26.not = xor i1 %or.cond26, true
  %i.qa = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1148.a = or i1 %i.qa, %or.cond26.not
  %i.qb = icmp sgt i32 %.0524, 31506
  %or.cond1149.a = select i1 %or.cond1148.a, i1 true, i1 %i.qb
  br i1 %or.cond1149.a, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qc = shl nsw i32 %.sroa.speculated819, 1
  %i.qd = add nsw i32 %.0524, %i.qc
  %i.qe = sdiv i32 %i.qd, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.thread1079

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br i1 %6, label %bb.cg, label %.thread1076

bb.cg:                                            ; preds = %bb.cf
  %i.qf = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !248
  %.neg584 = mul nsw i32 %.11035, -18
  %i.qi = add i32 %.sroa.speculated819, 350
  %i.qj = add i32 %i.qi, %.neg584
  %.not585 = icmp slt i32 %i.qh, %i.qj
  %brmerge = or i1 %i.eh, %.not585
  br i1 %brmerge, label %.thread1076, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qk = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %i.qm = zext i8 %i.ag to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !150
  %.not586 = icmp eq i32 %i.qo, 0
  br i1 %.not586, label %.thread1076, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !249
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !291
  %.not587 = icmp slt i32 %i.qq, %i.qs
  %i.qt = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1150.a = or i1 %i.qt, %.not587
  br i1 %or.cond1150.a, label %.thread1076, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.lhs.trunc1139.a = trunc nuw i32 %.11035 to i8
  %i.qu = udiv i8 %.lhs.trunc1139.a, 3
  %narrow1179 = add nuw nsw i8 %i.qu, 7
  %i.qv = zext nneg i8 %narrow1179 to i32
  %i.qw = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef nonnull align 8 dereferenceable(17) %i.qw) #32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store i16 65, ptr %i.qx, align 4, !tbaa !196
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !246
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !247
  %i.rc = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.re = sub nsw i32 0, %.sroa.speculated819
  %i.rf = sub nsw i32 1, %.sroa.speculated819
  %i.rg = sub nsw i32 %.11035, %i.qv              ; 3 uses
  %i.rh = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.rd, i32 noundef %i.re, i32 noundef %i.rf, i32 noundef %i.rg, i1 noundef zeroext false) ; 2 uses
  %i.ri = sub nsw i32 0, %i.rh                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #32
  %.not588 = icmp sgt i32 %.sroa.speculated819, %i.ri
  %i.rj = icmp slt i32 %i.rh, -31506
  %or.cond1151 = or i1 %.not588, %i.rj
  br i1 %or.cond1151, label %.thread1076, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rk = load i32, ptr %i.qr, align 4, !tbaa !291
  %i.rl = icmp ne i32 %i.rk, 0
  %i.rm = icmp samesign ult i32 %.11035, 16
  %or.cond28 = select i1 %i.rl, i1 true, i1 %i.rm
  br i1 %or.cond28, label %.thread1079, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rn = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !249
  %i.rq = trunc nsw i32 %i.rg to i16
  %.lhs.trunc1140 = mul nsw i16 %i.rq, 3
  %i.rr = sdiv i16 %.lhs.trunc1140, 4
  %.sext1141 = sext i16 %i.rr to i32
  %i.rs = add nsw i32 %i.rp, %.sext1141
  store i32 %i.rs, ptr %i.qr, align 4, !tbaa !291
  %i.rt = add nsw i32 %.sroa.speculated819, -1
  %i.ru = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.rn, i32 noundef %i.rt, i32 noundef %.sroa.speculated819, i32 noundef %i.rg, i1 noundef zeroext false)
  store i32 0, ptr %i.qr, align 4, !tbaa !291
  %.not589 = icmp slt i32 %i.ru, %.sroa.speculated819
  br i1 %.not589, label %.thread1076, label %.thread1079

.thread1076:                                      ; preds = %bb.cg, %bb.cj, %bb.cl, %bb.ci, %bb.ch, %bb.cf
  %i.rv = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !248
  %i.ry = icmp sge i32 %i.rx, %.sroa.speculated819
  %i.rz = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72
  %i.sa = zext i1 %i.ry to i8
  %i.sb = or i8 %i.rz, %i.sa                      ; 3 uses
  store i8 %i.sb, ptr %i.b, align 1, !tbaa !267
  %i.sc = icmp samesign ugt i32 %.11035, 5
  %or.cond31 = select i1 %6, i1 %i.sc, i1 false
  br i1 %or.cond31, label %.thread1083, label %bb.cm

.thread1083:                                      ; preds = %.thread1076
  %i.sd = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.se = icmp eq i16 %i.sd, 0
  %i.sf = icmp slt i32 %i.ci, 4
  %or.cond34.not.not = select i1 %i.se, i1 %i.sf, i1 false
  %i.sg = sext i1 %or.cond34.not.not to i32
  %spec.select1152 = add nsw i32 %.11035, %i.sg
  %i.sh = add nsw i32 %.sroa.speculated819, 235
  %narrow1085 = mul nuw nsw i8 %i.sb, 63
  %i.si = zext nneg i8 %narrow1085 to i32
  %i.sj = sub nsw i32 %i.sh, %i.si
  br label %bb.cn

bb.cm:                                            ; preds = %.thread1076
  %i.sk = add nsw i32 %.sroa.speculated819, 235
  %narrow = mul nuw nsw i8 %i.sb, 63
  %i.sl = zext nneg i8 %narrow to i32
  %i.sm = sub nsw i32 %i.sk, %i.sl
  %i.sn = icmp samesign ugt i32 %.11035, 2
  br i1 %i.sn, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %.thread1083, %bb.cm
  %i.so = phi i32 [ %i.sj, %.thread1083 ], [ %i.sm, %bb.cm ] ; 7 uses
  %.210361086 = phi i32 [ %spec.select1152, %.thread1083 ], [ %.11035, %bb.cm ] ; 5 uses
  %i.sp = sub nsw i32 0, %i.so                    ; 2 uses
  %i.sq = add i32 %.sroa.speculated819, -31507
  %spec.select.i684 = icmp ult i32 %i.sq, -63013
  br i1 %spec.select.i684, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sr = load i32, ptr %i.di, align 4, !tbaa !281 ; 2 uses
  %i.ss = icmp ne i32 %i.sr, 32002
  %i.st = icmp slt i32 %i.sr, %i.so
  %or.cond1153 = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %or.cond1153, label %bb.cw, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %.sroa.0144.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.su = load i32, ptr %i.rw, align 8, !tbaa !248
  %i.sv = sub nsw i32 %i.so, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0144.0.copyload, i32 noundef %i.sv, ptr noundef nonnull %i.sw) #32
  %i.sx = add nsw i32 %.210361086, -5
  %i.sy = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !248
  %i.tb = sub nsw i32 %i.ta, %.sroa.speculated819
  %.neg591 = sdiv i32 %i.tb, -315
  %i.tc = add nsw i32 %i.sx, %.neg591
  %i.td = call i32 @llvm.smax.i32(i32 %i.tc, i32 0)
  %.sroa.speculated933 = call i32 @llvm.umin.i32(i32 %.210361086, i32 %i.td) ; 3 uses
  %i.te = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #32 ; 2 uses
  %.not11841232 = icmp eq i16 %i.te, 0
  br i1 %.not11841232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cp
  %i.tf = sub nsw i32 1, %i.so                    ; 2 uses
  %i.tg = icmp ne i32 %.sroa.speculated933, 0
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ti = add nuw nsw i32 %.sroa.speculated933, 1
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %.backedge1206
  %i.tj = phi i16 [ %i.te, %.lr.ph ], [ %i.tm, %.backedge1206 ] ; 5 uses
  %i.tk = icmp eq i16 %i.tj, %i.cm
  br i1 %i.tk, label %.backedge1206, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tl = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tj) #32
  br i1 %i.tl, label %bb.cs, label %.backedge1206

.backedge1206:                                    ; preds = %bb.cu, %bb.cv, %bb.cq, %bb.cr
  %i.tm = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #32 ; 2 uses
  %.not1184 = icmp eq i16 %i.tm, 0
end_hunk_5
begin_hunk_6_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a

.backedge:                                        ; preds = %bb.da, %bb.db
  %i.wj = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #32 ; 2 uses
  %.not1189.a = icmp eq i16 %i.wj, 0
  br i1 %.not1189.a, label %.loopexit.loopexit, label %bb.da, !llvm.loop !782

bb.db:                                            ; preds = %bb.da
  %i.wk = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wh) #32
  br i1 %i.wk, label %bb.dc, label %.backedge

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.wl = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 40
  %i.wn = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.wn, ptr %i.wm, align 8, !tbaa !272
  %i.wo = and i16 %i.wh, 63
  %i.wp = zext nneg i16 %i.wo to i64              ; 10 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 %i.wp ; 3 uses
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !283
  %i.ws = icmp ne i8 %i.wr, 0
  %.not.i.i691 = icmp ult i16 %i.wh, -16384       ; 2 uses
  %or.cond.not.i.i692 = and i1 %.not.i.i691, %i.ws
  %i.wt = icmp slt i16 %i.wh, -16384              ; 2 uses
  %spec.select.i.i693 = or i1 %i.wt, %or.cond.not.i.i692
  %i.wu = and i16 %i.wh, 12288
  %i.wv = icmp eq i16 %i.wu, 12288                ; 2 uses
  %i.ww = or i1 %i.wv, %spec.select.i.i693        ; 3 uses
  %i.wx = lshr i16 %i.wh, 6
  %i.wy = and i16 %i.wx, 63
  %i.wz = zext nneg i16 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !283 ; 4 uses
  %i.xc = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wh) #32 ; 3 uses
  %i.xd = add nsw i32 %.41038.ph1246, -1          ; 3 uses
  %i.xe = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.xf = trunc nuw i8 %i.xe to i1
  %i.xg = sext i32 %.41038.ph1246 to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !150
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %indvars.iv.next
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !150
  %i.xl = load i32, ptr %i.vv, align 8, !tbaa !258
  %i.xm = sub nsw i32 %.sroa.speculated819, %.11031.ph1247
  %i.xn = mul nsw i32 %i.xk, %i.xi                ; 2 uses
  %i.xo = insertelement <2 x i32> poison, i32 %i.xm, i64 0
  %i.xp = insertelement <2 x i32> %i.xo, i32 %i.xn, i64 1
  %i.xq = mul nsw <2 x i32> %i.xp, <i32 608, i32 119>
  %i.xr = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.xl, i64 0
  %i.xs = sdiv <2 x i32> %i.xq, %i.xr             ; 2 uses
  %i.xt = extractelement <2 x i32> %i.xs, i64 1
  %i.xu = select i1 %i.xf, i32 0, i32 %i.xt
  %i.xv = add i32 %i.xn, 1182
  %i.xw = extractelement <2 x i32> %i.xs, i64 0
  %i.xx = sub i32 %i.xv, %i.xw
  %i.xy = add i32 %i.xx, %i.xu                    ; 2 uses
  %i.xz = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 45
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !282, !range !223, !noundef !72
  %i.yc = trunc nuw i8 %i.yb to i1
  %i.yd = add nsw i32 %i.xy, 946
  %spec.select655 = select i1 %i.yc, i32 %i.yd, i32 %i.xy ; 3 uses
  %i.ye = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.vw
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !150
  %.not597 = icmp eq i32 %i.yh, 0
  %i.yi = icmp slt i32 %.0506.ph1249, -31506
  %or.cond1157.a = select i1 %.not597, i1 true, i1 %i.yi
  br i1 %or.cond1157.a, label %.thread1101, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yj = mul nsw i32 %.41038.ph1246, %.41038.ph1246
  %i.yk = add nuw nsw i32 %i.yj, 3
  %narrow598 = sub nuw nsw i8 2, %i.xe
  %i.yl = zext nneg i8 %narrow598 to i32
  %i.ym = udiv i32 %i.yk, %i.yl
  %i.yn = zext nneg i32 %i.ym to i64
  %.not599 = icmp samesign ult i64 %indvars.iv.next, %i.yn
  br i1 %.not599, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #32
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.neg600 = sdiv i32 %spec.select655, -1024
  %i.yo = add i32 %.neg600, %i.xd                 ; 3 uses
  %or.cond38 = or i1 %i.xc, %i.ww
  %i.yp = zext i8 %i.xb to i64                    ; 5 uses
  br i1 %or.cond38, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.yq = load i8, ptr %i.wq, align 1, !tbaa !283 ; 2 uses
  %i.yr = getelementptr inbounds nuw [1024 x i8], ptr %i.vp, i64 %i.yp
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.wp
  %i.yt = and i8 %i.yq, 7
  %i.yu = zext nneg i8 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !296 ; 2 uses
  %i.yx = icmp sgt i32 %i.yo, 6
  %or.cond41.not = select i1 %i.xc, i1 true, i1 %i.yx
  br i1 %or.cond41.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yy = sext i16 %i.yw to i32
  %i.yz = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !248
  %i.zc = mul nsw i32 %i.yo, 217
  %i.zd = zext i8 %i.yq to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !150
  %i.zg = mul nsw i32 %i.yy, 131
  %i.zh = sdiv i32 %i.zg, 1024
  %i.zi = add nsw i32 %i.zc, 232
  %i.zj = add i32 %i.zi, %i.zh
  %i.zk = add i32 %i.zj, %i.zb
  %i.zl = add i32 %i.zk, %i.zf
  %.not605.a = icmp sgt i32 %i.zl, %.11031.ph1247
  br i1 %.not605.a, label %bb.di, label %.thread1092

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zm = mul nsw i32 %.41038.ph1246, 166
  %i.zn = sdiv i16 %i.yw, 29
  %.sext = sext i16 %i.zn to i32
  %i.zo = add nsw i32 %i.zm, %.sext
  %.sroa.speculated779 = call i32 @llvm.smax.i32(i32 %i.zo, i32 0)
  %i.zp = icmp sgt i32 %.11031.ph1247, -1
  br i1 %i.zp, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zq = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.vw
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !150
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yp
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !150
  %.not606.a = icmp eq i32 %i.zt, %i.zv
  br i1 %.not606.a, label %.thread1101, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zw = sub nsw i32 0, %.sroa.speculated779
  %i.zx = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wh, i32 noundef %i.zw) #32
  br i1 %i.zx, label %.thread1101, label %.thread1092, !llvm.loop !782

bb.dl:                                            ; preds = %bb.df
  %i.zy = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.zz = getelementptr inbounds nuw [128 x i8], ptr %i.zy, i64 %i.yp
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %i.wp
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !175
  %i.aac = sext i16 %i.aab to i32
  %i.aad = load ptr, ptr %i.uz, align 8, !tbaa !294
  %i.aae = getelementptr inbounds nuw [128 x i8], ptr %i.aad, i64 %i.yp
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.aae, i64 %i.wp
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !175
  %i.aah = sext i16 %i.aag to i32
  %i.aai = add nsw i32 %i.aah, %i.aac
  %i.aaj = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.aak = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !286
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 40
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !290
  %i.aap = and i64 %i.aao, %i.aam
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !170
  %i.aas = getelementptr inbounds nuw [2048 x i8], ptr %i.aar, i64 %i.aap
  %i.aat = getelementptr inbounds nuw [128 x i8], ptr %i.aas, i64 %i.yp
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.wp
  %i.aav = load atomic i16, ptr %i.aau monotonic, align 2
  %i.aaw = sext i16 %i.aav to i32
  %i.aax = add nsw i32 %i.aai, %i.aaw             ; 2 uses
  %i.aay = mul nsw i32 %.41038.ph1246, -4083
  %i.aaz = icmp slt i32 %i.aax, %i.aay
  br i1 %i.aaz, label %.thread1092, label %bb.dm, !llvm.loop !782

bb.dm:                                            ; preds = %bb.dl
  %i.aba = zext i16 %i.wh to i64
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.vx, i64 %i.aba
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !147
  %i.abd = sext i16 %i.abc to i32
  %i.abe = mul nsw i32 %i.abd, 69
  %i.abf = sdiv i32 %i.abe, 32
  %i.abg = add nsw i32 %i.abf, %i.aax
  %i.abh = sdiv i32 %i.abg, 3208
  %i.abi = add nsw i32 %i.abh, %i.yo              ; 3 uses
  %i.abj = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !248 ; 2 uses
  %.not1190 = icmp eq i16 %.sroa.0827.0.ph1245, 0
  %i.abm = mul nsw i32 %i.abi, 127
  %i.abn = icmp sgt i32 %i.abl, %.11031.ph1247
  %i.abo = select i1 %i.abn, i32 85, i32 0
  %i.abp = select i1 %.not1190, i32 203, i32 42
  %i.abq = add i32 %i.abp, %i.abl
  %i.abr = add i32 %i.abq, %i.abo
  %i.abs = add i32 %i.abr, %i.abm                 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abj, i64 44
  %i.abu = load i8, ptr %i.abt, align 4, !tbaa !270, !range !223, !noundef !72
  %17 = trunc nuw i8 %i.abu to i1
  %i.abv = icmp sgt i32 %i.abi, 12
  %or.cond44.not = select i1 %17, i1 true, i1 %i.abv
  %.not602.a = icmp sgt i32 %i.abs, %.11031.ph1247
  %or.cond657 = select i1 %or.cond44.not, i1 true, i1 %.not602.a
  br i1 %or.cond657, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not603 = icmp sgt i32 %.0506.ph1249, %i.abs
  %i.abw = icmp sgt i32 %.0506.ph1249, 31506
  %or.cond1158 = or i1 %.not603, %i.abw
  br i1 %or.cond1158, label %.thread1092, label %bb.do, !llvm.loop !782

bb.do:                                            ; preds = %bb.dn
  %i.abx = icmp sgt i32 %i.abs, 31506
  %spec.select658 = select i1 %i.abx, i32 %.0506.ph1249, i32 %i.abs
  br label %.thread1092, !llvm.loop !782

bb.dp:                                            ; preds = %bb.dm
  %.sroa.speculated773 = call i32 @llvm.smax.i32(i32 %i.abi, i32 0) ; 2 uses
  %i.aby = mul nsw i32 %.sroa.speculated773, -25
  %i.abz = mul nsw i32 %i.aby, %.sroa.speculated773
  %i.aca = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wh, i32 noundef %i.abz) #32
  br i1 %i.aca, label %.thread1101, label %.thread1092

.thread1101:                                      ; preds = %bb.dk, %bb.dj, %bb.dp, %bb.dc
  %i.acb = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.acc = icmp ne i16 %i.wh, %i.acb
  %brmerge1160 = or i1 %i.eh, %i.acc
  %.pre1295 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1160, label %.thread1106, label %bb.dq

bb.dq:                                            ; preds = %.thread1101
  %i.acd = getelementptr inbounds nuw i8, ptr %.pre1295, i64 45
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !282, !range !223, !noundef !72 ; 2 uses
  %i.acf = or disjoint i8 %i.ace, 6
  %i.acg = zext nneg i8 %i.acf to i32
  %.not607.a = icmp slt i32 %.41038.ph1246, %i.acg
  br i1 %.not607.a, label %.thread1106, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ach = load i32, ptr %i.di, align 4, !tbaa !281 ; 2 uses
  %i.aci = add i32 %i.ach, -31507
  %spec.select.i697.a = icmp ult i32 %i.aci, -63013
  br i1 %spec.select.i697.a, label %.thread1106, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.acj = load i8, ptr %i.un, align 8, !tbaa !289
  %i.ack = and i8 %i.acj, 2
  %.not608.a = icmp eq i8 %i.ack, 0
  br i1 %.not608.a, label %.thread1106, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.acl = load i32, ptr %i.vy, align 4, !tbaa !293
  %i.acm = add nsw i32 %.41038.ph1246, -3
  %.not609 = icmp slt i32 %i.acl, %i.acm
  br i1 %.not609, label %.thread1106, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.acn = call fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %i.wh, ptr noundef nonnull %.pre1295, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  br i1 %i.acn, label %.thread1106, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %narrow610.a = mul nuw nsw i8 %i.ace, 75
  %narrow611 = add nuw i8 %narrow610.a, 53
  %i.aco = zext i8 %narrow611 to i32
  %i.acp = mul nsw i32 %.41038.ph1246, %i.aco
  %.neg6121138 = udiv i32 %i.acp, 60
  %i.acq = sub nsw i32 %i.ach, %.neg6121138       ; 5 uses
  %i.acr = lshr i32 %i.xd, 1
  %i.acs = getelementptr inbounds nuw i8, ptr %.pre1295, i64 30
  store i16 %i.wh, ptr %i.acs, align 2, !tbaa !196
  %i.act = add nsw i32 %i.acq, -1
  %i.acu = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %.pre1295, i32 noundef %i.act, i32 noundef %i.acq, i32 noundef %i.acr, i1 noundef zeroext %6) ; 6 uses
  %i.acv = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 30
  store i16 0, ptr %i.acw, align 2, !tbaa !196
  %i.acx = icmp slt i32 %i.acu, %i.acq
  br i1 %i.acx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.acy = load i32, ptr %i.d, align 4, !tbaa !150
  %i.acz = call i32 @llvm.abs.i32(i32 %i.acy, i1 true)
  %i.ada = udiv i32 %i.acz, 230673                ; 2 uses
  %i.adb = load i16, ptr %i.vz, align 64, !tbaa !171
  %i.adc = sext i16 %i.adb to i32
  %i.add = mul nsw i32 %i.adc, 897
  %.neg617.neg.a = sdiv i32 %i.add, 127649
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !249 ; 2 uses
  %i.adg = load i32, ptr %i.wa, align 16, !tbaa !253 ; 2 uses
  %i.adh = icmp sgt i32 %i.adf, %i.adg
  %.neg618.neg = select i1 %i.adh, i32 42, i32 0
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acv, i64 45
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !282, !range !223, !noundef !72
  %narrow620 = mul nuw nsw i8 %i.adj, 90
  %i.adk = zext nneg i8 %narrow620 to i32
  %i.adl = shl nsw i32 %i.adf, 1
  %i.adm = mul nsw i32 %i.adg, 3
  %i.adn = icmp sgt i32 %i.adl, %i.adm
  %.neg621.neg = select i1 %i.adn, i32 50, i32 0
  %.neg622.a = add i32 %i.acq, %.neg625.a
  %.neg623.a = add i32 %.neg622.a, %i.ada
  %.neg624 = add i32 %.neg623.a, %.neg617.neg.a
  %i.ado = add i32 %.neg624, %.neg618.neg
  %i.adp = icmp slt i32 %i.acu, %i.ado
  %i.adq = select i1 %i.adp, i32 2, i32 1
  %.neg1204 = add i32 %i.acq, %.neg1255
  %.neg626.a = add i32 %.neg1204, %i.ada
  %.neg627 = sub i32 %.neg626.a, %i.adk
  %i.adr = add i32 %.neg627, %.neg621.neg
  %i.ads = icmp slt i32 %i.acu, %i.adr
  %i.adt = zext i1 %i.ads to i32
  %i.adu = add nuw nsw i32 %i.adq, %i.adt
  %i.adv = add nuw nsw i32 %.41038.ph1246, 1
  br label %.thread1106

bb.dx:                                            ; preds = %bb.dv
  %.not613 = icmp slt i32 %i.acu, %.sroa.speculated819
  %i.adw = add nsw i32 %i.acu, -31507
  %spec.select.i698 = icmp ult i32 %i.adw, -63013
  %or.cond1162.a = select i1 %.not613, i1 true, i1 %spec.select.i698
  br i1 %or.cond1162.a, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adx = load i32, ptr %i.di, align 4, !tbaa !281
  %.not615 = icmp slt i32 %i.adx, %.sroa.speculated819
  %spec.select667 = select i1 %.not615, i32 %spec.select660.a, i32 -3
  br label %.thread1106

bb.dz:                                            ; preds = %bb.dx
  %.neg614 = mul i32 %.41038.ph1246, -100
  %i.ady = add i32 %.neg614, -400
  %.sroa.speculated766 = call i32 @llvm.smax.i32(i32 %i.ady, i32 -4000)
  %.sroa.speculated.i701 = call i32 @llvm.smin.i32(i32 %.sroa.speculated766, i32 8192) ; 2 uses
  %i.adz = load i16, ptr %i.vz, align 64, !tbaa !171
  %i.aea = sext i16 %i.adz to i32                 ; 2 uses
  %i.aeb = add nsw i32 %.sroa.speculated.i701, %i.aea
  %i.aec = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i701, i1 true)
  %i.aed = mul nsw i32 %i.aec, %i.aea
  %.neg.i702 = sdiv i32 %i.aed, -8192
  %i.aee = add nsw i32 %i.aeb, %.neg.i702
  %i.aef = trunc i32 %i.aee to i16
  store i16 %i.aef, ptr %i.vz, align 64, !tbaa !171
  br label %.thread1119

.thread1106:                                      ; preds = %.thread1101, %bb.dy, %bb.dw, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %i.aeg = phi ptr [ %i.acv, %bb.dw ], [ %.pre1295, %bb.dq ], [ %i.acv, %bb.dy ], [ %.pre1295, %bb.ds ], [ %.pre1295, %bb.dt ], [ %.pre1295, %bb.du ], [ %.pre1295, %.thread1101 ], [ %.pre1295, %bb.dr ] ; 5 uses
  %.61039 = phi i32 [ %i.adv, %bb.dw ], [ %.41038.ph1246, %bb.dq ], [ %.41038.ph1246, %bb.dy ], [ %.41038.ph1246, %bb.ds ], [ %.41038.ph1246, %bb.dt ], [ %.41038.ph1246, %bb.du ], [ %.41038.ph1246, %.thread1101 ], [ %.41038.ph1246, %bb.dr ] ; 10 uses
  %.2505 = phi i32 [ %i.adu, %bb.dw ], [ 0, %bb.dq ], [ %spec.select667, %bb.dy ], [ 0, %bb.ds ], [ 0, %bb.dt ], [ 0, %bb.du ], [ 0, %.thread1101 ], [ 0, %bb.dr ] ; 2 uses
  %i.aeh = load i8, ptr %i.wq, align 1, !tbaa !283
  %i.aei = load atomic i64, ptr %i.wb monotonic, align 8
  %i.aej = add i64 %i.aei, 1
  store atomic i64 %i.aej, ptr %i.wb monotonic, align 8
  %i.aek = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.wc) #32 ; 2 uses
  %i.ael = extractvalue { ptr, ptr } %i.aek, 0    ; 2 uses
  %i.aem = extractvalue { ptr, ptr } %i.aek, 1
  %i.aen = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.aeo = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wh, ptr noundef nonnull align 8 dereferenceable(192) %7, i1 noundef zeroext %i.xc, ptr noundef nonnull align 1 dereferenceable(7) %i.ael, ptr noundef nonnull align 8 dereferenceable(416) %i.aem, ptr noundef nonnull %i.aen, ptr noundef nonnull %i.aeo) #32
  %.not.i703 = icmp eq ptr %i.aeg, null
  br i1 %.not.i703, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %bb.ea

bb.ea:                                            ; preds = %.thread1106
  %i.aep = icmp ne i8 %i.aeh, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i691, %i.aep
  %spec.select.i.i.i = or i1 %i.wt, %or.cond.not.i.i.i
  %i.aeq = or i1 %i.wv, %spec.select.i.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeg, i64 28
  store i16 %i.wh, ptr %i.aer, align 4, !tbaa !196
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeg, i64 44
  %i.aet = load i8, ptr %i.aes, align 4, !tbaa !270, !range !223, !noundef !72
  %i.aeu = zext nneg i8 %i.aet to i64
  %i.aev = getelementptr inbounds nuw [4194304 x i8], ptr %i.wd, i64 %i.aeu
  %i.aew = zext i1 %i.aeq to i64
  %i.aex = getelementptr inbounds nuw [2097152 x i8], ptr %i.aev, i64 %i.aew
  %i.aey = load i8, ptr %i.ael, align 1, !tbaa !292
  %i.aez = zext i8 %i.aey to i64                  ; 2 uses
  %i.afa = getelementptr inbounds nuw [131072 x i8], ptr %i.aex, i64 %i.aez
  %i.afb = getelementptr inbounds nuw [2048 x i8], ptr %i.afa, i64 %i.wp
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store ptr %i.afb, ptr %i.afc, align 8, !tbaa !246
  %i.afd = getelementptr inbounds nuw [131072 x i8], ptr %i.we, i64 %i.aez
  %i.afe = getelementptr inbounds nuw [2048 x i8], ptr %i.afd, i64 %i.wp
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  store ptr %i.afe, ptr %i.aff, align 8, !tbaa !247
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.thread1106, %bb.ea
  %i.afg = add nsw i32 %.2505, %i.xd              ; 7 uses
  %i.afh = load ptr, ptr %i.a, align 8, !tbaa !409 ; 6 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 45
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !282, !range !223, !noundef !72
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.afl = load i32, ptr %i.di, align 4, !tbaa !281
  %i.afm = icmp sgt i32 %i.afl, %.11031.ph1247
  %.neg631 = select i1 %i.afm, i32 -3641, i32 -2719
  %i.afn = load i32, ptr %i.vy, align 4, !tbaa !293
  %.not630 = icmp slt i32 %i.afn, %.61039
  %.neg633.a = select i1 %.not630, i32 0, i32 %.neg632.a
end_hunk_6
begin_hunk_7_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii:bb.a
bb.bg:                                            ; preds = %bb.az, %bb.ay
  br i1 %i.kk, label %.loopexit271.split, label %.outer272.backedge

.outer272.backedge:                               ; preds = %bb.bg, %bb.ba
  br label %.outer272, !llvm.loop !783

.loopexit271.split:                               ; preds = %bb.bg, %bb.bf
  %i.kz = phi i1 [ false, %bb.bf ], [ %i.kb, %bb.bg ]
  %i.la = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz, i32 noundef -80) #32
  br i1 %i.la, label %.loopexit276, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bc, %bb.be, %.loopexit271.split, %bb.bf
  %.4252.ph.be = phi i32 [ %.4252.ph361, %bb.bf ], [ %.4252.ph361, %.loopexit271.split ], [ %.sroa.speculated, %bb.bc ], [ %.sroa.speculated201, %bb.be ]
  %.4252.ph.be.fr = freeze i32 %.4252.ph.be       ; 3 uses
  %i.lb = icmp slt i32 %.4252.ph.be.fr, -31506
  br i1 %i.lb, label %.outer.split.us, label %.outer.split, !llvm.loop !783

.loopexit276:                                     ; preds = %.loopexit271.split, %.loopexit271.split.us.us, %.loopexit270.split.us
  %.sink = phi i64 [ %i.jg, %.loopexit271.split.us.us ], [ %i.jt, %.loopexit270.split.us ], [ %i.kd, %.loopexit271.split ] ; 3 uses
  %i.lc = phi i1 [ %i.je, %.loopexit271.split.us.us ], [ %i.jr, %.loopexit270.split.us ], [ %i.kz, %.loopexit271.split ]
  %.not.i.i300 = phi i1 [ %.not.i.i.us343.us, %.loopexit271.split.us.us ], [ %.not.i.i.us, %.loopexit270.split.us ], [ %.not.i.i, %.loopexit271.split ]
  %i.ld = phi i1 [ %i.jk, %.loopexit271.split.us.us ], [ %i.ju, %.loopexit270.split.us ], [ %i.kh, %.loopexit271.split ]
  %i.le = phi i1 [ %i.jm, %.loopexit271.split.us.us ], [ %i.jw, %.loopexit270.split.us ], [ %i.kj, %.loopexit271.split ]
  %i.lf = phi i32 [ %i.jo, %.loopexit271.split.us.us ], [ %i.jx, %.loopexit270.split.us ], [ %i.kl, %.loopexit271.split ] ; 3 uses
  %.lcssa277280 = phi i16 [ %i.jc, %.loopexit271.split.us.us ], [ %i.jy, %.loopexit270.split.us ], [ %i.jz, %.loopexit271.split ] ; 5 uses
  %.7 = phi i32 [ %.4252.ph.ph, %.loopexit271.split.us.us ], [ %.4252.ph.lcssa, %.loopexit270.split.us ], [ %.4252.ph361, %.loopexit271.split ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !283
  %i.li = load atomic i64, ptr %i.iq monotonic, align 8
  %i.lj = add i64 %i.li, 1
  store atomic i64 %i.lj, ptr %i.iq monotonic, align 8
  %i.lk = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #32 ; 2 uses
  %i.ll = extractvalue { ptr, ptr } %i.lk, 0      ; 2 uses
  %i.lm = extractvalue { ptr, ptr } %i.lk, 1
  %i.ln = load ptr, ptr %i.bc, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.lo = load ptr, ptr %i.im, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277280, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.lc, ptr noundef nonnull align 1 dereferenceable(7) %i.ll, ptr noundef nonnull align 8 dereferenceable(416) %i.lm, ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lo) #32
  %i.lp = icmp ne i8 %i.lh, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i300, %i.lp
  %spec.select.i.i.i = or i1 %i.ld, %or.cond.not.i.i.i
  %i.lq = or i1 %i.le, %spec.select.i.i.i
  store i16 %.lcssa277280, ptr %i.is, align 4, !tbaa !196
  %i.lr = load i8, ptr %i.p, align 4, !tbaa !270, !range !223, !noundef !72
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4194304 x i8], ptr %i.it, i64 %i.ls
  %i.lu = zext i1 %i.lq to i64
  %i.lv = getelementptr inbounds nuw [2097152 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load i8, ptr %i.ll, align 1, !tbaa !292
  %i.lx = zext i8 %i.lw to i64                    ; 2 uses
  %i.ly = getelementptr inbounds nuw [131072 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [2048 x i8], ptr %i.ly, i64 %.sink
  store ptr %i.lz, ptr %i.iu, align 8, !tbaa !246
  %i.ma = getelementptr inbounds nuw [131072 x i8], ptr %i.iv, i64 %i.lx
  %i.mb = getelementptr inbounds nuw [2048 x i8], ptr %i.ma, i64 %.sink
  store ptr %i.mb, ptr %i.iw, align 8, !tbaa !247
  %i.mc = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ix, i32 noundef %i.iy, i32 noundef %i.ja)
  %i.md = sub i32 0, %i.mc                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277280) #32
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #32
  %i.me = icmp slt i32 %.7, %i.md
  br i1 %i.me, label %bb.bh, label %.outer.outer.backedge

bb.bh:                                            ; preds = %.loopexit276
  %i.mf = icmp slt i32 %.4246.ph.ph.ph, %i.md
  br i1 %i.mf, label %bb.bi, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %.loopexit276
  %.4252.ph.ph.be = phi i32 [ %i.md, %bb.bh ], [ %.7, %.loopexit276 ]
  br label %.outer.outer, !llvm.loop !783

bb.bi:                                            ; preds = %bb.bh
  %i.mg = icmp sgt i32 %4, %i.md
  br i1 %i.mg, label %.outer.outer.outer, label %.loopexit, !llvm.loop !783

.loopexit:                                        ; preds = %bb.bi, %bb.av, %bb.as, %bb.aw
  %.9 = phi i32 [ %.4252.ph361, %bb.aw ], [ %.4252.ph.ph, %bb.as ], [ %.4252.ph.lcssa, %bb.av ], [ %i.md, %bb.bi ] ; 5 uses
  %.1136 = phi i32 [ %.0135.ph273, %bb.aw ], [ %.0135.ph273.us340.us, %bb.as ], [ %.0135.ph.lcssa, %bb.av ], [ %i.lf, %bb.bi ]
  %.sroa.062.2 = phi i16 [ %.sroa.062.0.ph.ph.ph, %bb.aw ], [ %.sroa.062.0.ph.ph.ph, %bb.as ], [ %.sroa.062.0.ph.ph.ph, %bb.av ], [ %.lcssa277280, %bb.bi ]
  %i.mh = load i8, ptr %i.p, align 4, !tbaa !270, !range !223, !noundef !72
  %i.mi = trunc nuw i8 %i.mh to i1                ; 2 uses
  %i.mj = icmp eq i32 %.9, -32001
  %or.cond = and i1 %i.mj, %i.mi
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.loopexit
  %i.mk = load i32, ptr %i.r, align 8, !tbaa !249
  %i.ml = add nsw i32 %i.mk, -32000
  br label %bb.bs

bb.bk:                                            ; preds = %.loopexit
  %i.mm = add i32 %.9, 31506
  %spec.select.i180 = icmp ult i32 %i.mm, 63013
  %i.mn = icmp sgt i32 %.9, %4
  %or.cond266 = and i1 %i.mn, %spec.select.i180
  br i1 %or.cond266, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mo = add nsw i32 %.9, %4
  %i.mp = sdiv i32 %i.mo, 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.10 = phi i32 [ %.9, %bb.bk ], [ %i.mp, %bb.bl ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.mr = load i8, ptr %i.mq, align 4, !tbaa !177 ; 2 uses
  %i.ms = icmp ne i32 %.1136, 0
  %or.cond3 = select i1 %i.mi, i1 true, i1 %i.ms
  br i1 %or.cond3, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mt = load ptr, ptr %i.k, align 8, !tbaa !218 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.mv = zext i8 %i.mr to i64                    ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !150
  %.not157 = icmp eq i32 %i.mx, 0
  br i1 %.not157, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 184
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !271
  %i.na = and i8 %i.mz, 4
  %.not269 = icmp eq i8 %i.na, 0
  br i1 %.not269, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nb = icmp eq i8 %i.mr, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.mv
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !55
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !55
  %i.nh = and i64 %i.ng, %i.ne                    ; 2 uses
  %i.ni = shl i64 %i.nh, 8
  %i.nj = lshr i64 %i.nh, 8
  %i.nk = select i1 %i.nb, i64 %i.ni, i64 %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !55
  %i.nn = xor i64 %i.nm, -1
  %i.no = and i64 %i.nk, %i.nn
  %.not158 = icmp eq i64 %i.no, 0
  br i1 %.not158, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.np = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  store i64 255, ptr %i.np, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.nq = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %8) #32
  %.not159 = icmp eq ptr %i.nq, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %spec.select267 = select i1 %.not159, i32 0, i32 %.10
  %i.nr = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  store i64 0, ptr %i.ns, align 8, !tbaa !219
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.bn, %bb.bm
  %.12 = phi i32 [ %.10, %bb.bm ], [ %spec.select267, %bb.bq ], [ %.10, %bb.bp ], [ %.10, %bb.bo ], [ %.10, %bb.bn ] ; 5 uses
  %i.nt = load i32, ptr %i.r, align 8, !tbaa !249 ; 2 uses
  %i.nu = icmp sgt i32 %.12, 31506
  %i.nv = icmp slt i32 %.12, -31506
  %i.nw = select i1 %i.nv, i32 %i.nt, i32 0
  %i.nx = sub i32 0, %i.nw
  %.p.i181 = select i1 %i.nu, i32 %i.nt, i32 %i.nx
  %i.ny = add i32 %.p.i181, %.12
  %.not160 = icmp slt i32 %.12, %4
  %i.nz = select i1 %.not160, i8 1, i8 2
  %i.oa = load ptr, ptr %i.bc, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ob = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.oa) #32
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.bb, i32 noundef %i.ny, i1 noundef zeroext %i.cw, i8 noundef zeroext %i.nz, i32 noundef 0, i16 %.sroa.062.2, i32 noundef %.2139, i8 noundef zeroext %i.ob) #32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bj
  %.1 = phi i32 [ %i.ml, %bb.bj ], [ %.12, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.thread258

.thread258:                                       ; preds = %bb.an, %bb.am, %bb.bs, %bb.w
  %.3 = phi i32 [ %.ph, %bb.w ], [ %.1, %bb.bs ], [ %i.ht, %bb.am ], [ %i.ht, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.f, %.thread258
  %.4 = phi i32 [ %.3, %.thread258 ], [ %i.ao, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.c, %bb.bt
  %.5 = phi i32 [ %.4, %bb.bt ], [ %i.j, %bb.c ]
  ret i32 %.5
}

declare void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164), ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef range(i32 -2097152, 2097152) %3) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !270, !range !223, !noundef !72
  %4 = trunc nuw i8 %i.b to i1
  %i.c = zext i8 %1 to i64                        ; 8 uses
  %i.d = zext i8 %2 to i64                        ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 -28
  %i.f = load i16, ptr %i.e, align 4, !tbaa !234  ; 2 uses
  br i1 %4, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.a
  switch i16 %i.f, label %bb.b [
    i16 65, label %.split.us.1
    i16 0, label %.split.us.1
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.g = getelementptr inbounds i8, ptr %0, i64 -48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !246
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.k = mul nsw i32 %3, 1133
  %i.l = sdiv i32 %i.k, 1024
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 -30088)
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.m, i32 29912)
  %.sroa.speculated.i.us = add nsw i32 %i.n, 88   ; 2 uses
  %i.o = load i16, ptr %i.j, align 2, !tbaa !175
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = add nsw i32 %.sroa.speculated.i.us, %i.p
  %i.r = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us, i1 true)
  %i.s = mul nsw i32 %i.r, %i.p
  %.neg.i.us = sdiv i32 %i.s, -30000
  %i.t = add nsw i32 %i.q, %.neg.i.us
  %i.u = trunc i32 %i.t to i16
  store i16 %i.u, ptr %i.j, align 2, !tbaa !175
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader, %.split.us.preheader
  %i.v = getelementptr inbounds i8, ptr %0, i64 -84
  %i.w = load i16, ptr %i.v, align 4, !tbaa !234
  switch i16 %i.w, label %bb.c [
    i16 65, label %.split.us.2
    i16 0, label %.split.us.2
  ]

bb.c:                                             ; preds = %.split.us.1
  %i.x = getelementptr inbounds i8, ptr %0, i64 -104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !246
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %i.c
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.d ; 2 uses
  %i.ab = mul nsw i32 %3, 683
  %i.ac = sdiv i32 %i.ab, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 -30000)
  %.sroa.speculated.i.us.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.1, i32 30000) ; 2 uses
  %i.ad = load i16, ptr %i.aa, align 2, !tbaa !175
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nsw i32 %.sroa.speculated.i.us.1, %i.ae
  %i.ag = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.1, i1 true)
  %i.ah = mul nsw i32 %i.ag, %i.ae
  %.neg.i.us.1 = sdiv i32 %i.ah, -30000
  %i.ai = add nsw i32 %i.af, %.neg.i.us.1
  %i.aj = trunc i32 %i.ai to i16
  store i16 %i.aj, ptr %i.aa, align 2, !tbaa !175
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1, %.split.us.1
  %i.ak = getelementptr inbounds i8, ptr %0, i64 -140
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !234
  switch i16 %i.al, label %bb.d [
    i16 65, label %.split.us.3
    i16 0, label %.split.us.3
  ]

bb.d:                                             ; preds = %.split.us.2
  %i.am = getelementptr inbounds i8, ptr %0, i64 -160
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !246
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.c
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.d ; 2 uses
  %i.aq = mul nsw i32 %3, 39
  %i.ar = sdiv i32 %i.aq, 128
  %.sroa.speculate.load.false.sroa.speculated.i.us.2 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 -30000)
  %.sroa.speculated.i.us.2 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.2, i32 30000) ; 2 uses
  %i.as = load i16, ptr %i.ap, align 2, !tbaa !175
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = add nsw i32 %.sroa.speculated.i.us.2, %i.at
  %i.av = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.2, i1 true)
  %i.aw = mul nsw i32 %i.av, %i.at
  %.neg.i.us.2 = sdiv i32 %i.aw, -30000
  %i.ax = add nsw i32 %i.au, %.neg.i.us.2
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %i.ap, align 2, !tbaa !175
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2, %.split.us.2
  %i.az = getelementptr inbounds i8, ptr %0, i64 -196
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !234
  switch i16 %i.ba, label %bb.e [
    i16 65, label %.split.us.4
    i16 0, label %.split.us.4
  ]

bb.e:                                             ; preds = %.split.us.3
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -216
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !246
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.bc, i64 %i.c
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.d ; 2 uses
  %i.bf = mul nsw i32 %3, 291
  %i.bg = sdiv i32 %i.bf, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.3 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 -30000)
  %.sroa.speculated.i.us.3 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.3, i32 30000) ; 2 uses
  %i.bh = load i16, ptr %i.be, align 2, !tbaa !175
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = add nsw i32 %.sroa.speculated.i.us.3, %i.bi
  %i.bk = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.3, i1 true)
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %.neg.i.us.3 = sdiv i32 %i.bl, -30000
  %i.bm = add nsw i32 %i.bj, %.neg.i.us.3
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.be, align 2, !tbaa !175
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3, %.split.us.3
  %i.bo = getelementptr inbounds i8, ptr %0, i64 -252
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !234
  switch i16 %i.bp, label %bb.f [
    i16 65, label %.split.us.5
    i16 0, label %.split.us.5
  ]

bb.f:                                             ; preds = %.split.us.4
  %i.bq = getelementptr inbounds i8, ptr %0, i64 -272
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !246
  %i.bs = getelementptr inbounds nuw [128 x i8], ptr %i.br, i64 %i.c
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.d ; 2 uses
  %i.bu = mul nsw i32 %3, 149
  %i.bv = sdiv i32 %i.bu, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.4 = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 -30000)
  %.sroa.speculated.i.us.4 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.4, i32 30000) ; 2 uses
  %i.bw = load i16, ptr %i.bt, align 2, !tbaa !175
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = add nsw i32 %.sroa.speculated.i.us.4, %i.bx
  %i.bz = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.4, i1 true)
  %i.ca = mul nsw i32 %i.bz, %i.bx
  %.neg.i.us.4 = sdiv i32 %i.ca, -30000
  %i.cb = add nsw i32 %i.by, %.neg.i.us.4
  %i.cc = trunc i32 %i.cb to i16
  store i16 %i.cc, ptr %i.bt, align 2, !tbaa !175
  br label %.split.us.5

.split.us.5:                                      ; preds = %bb.f, %.split.us.4, %.split.us.4
  %i.cd = getelementptr inbounds i8, ptr %0, i64 -308
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !234
  switch i16 %i.ce, label %bb.g [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

bb.g:                                             ; preds = %.split.us.5
  %i.cf = getelementptr inbounds i8, ptr %0, i64 -328
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !246
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr %i.cg, i64 %i.c
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.d ; 2 uses
  %i.cj = mul nsw i32 %3, 237
  %i.ck = sdiv i32 %i.cj, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.5 = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 -30000)
  %.sroa.speculated.i.us.5 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.5, i32 30000) ; 2 uses
  %i.cl = load i16, ptr %i.ci, align 2, !tbaa !175
  %i.cm = sext i16 %i.cl to i32                   ; 2 uses
  %i.cn = add nsw i32 %.sroa.speculated.i.us.5, %i.cm
  %i.co = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.5, i1 true)
  %i.cp = mul nsw i32 %i.co, %i.cm
  %.neg.i.us.5 = sdiv i32 %i.cp, -30000
  %i.cq = add nsw i32 %i.cn, %.neg.i.us.5
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %i.ci, align 2, !tbaa !175
  br label %.critedge

.split.preheader:                                 ; preds = %bb.a
  switch i16 %i.f, label %bb.h [
    i16 65, label %.split.1
    i16 0, label %.split.1
  ]

bb.h:                                             ; preds = %.split.preheader
  %i.cs = getelementptr inbounds i8, ptr %0, i64 -48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !246
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %i.c
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.d ; 2 uses
  %i.cw = mul nsw i32 %3, 1133
  %i.cx = sdiv i32 %i.cw, 1024
  %i.cy = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 -30088)
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 29912)
  %.sroa.speculated.i = add nsw i32 %i.cz, 88     ; 2 uses
  %i.da = load i16, ptr %i.cv, align 2, !tbaa !175
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = add nsw i32 %.sroa.speculated.i, %i.db
  %i.dd = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.de = mul nsw i32 %i.dd, %i.db
  %.neg.i = sdiv i32 %i.de, -30000
  %i.df = add nsw i32 %i.dc, %.neg.i
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %i.cv, align 2, !tbaa !175
  br label %.split.1

.split.1:                                         ; preds = %bb.h, %.split.preheader, %.split.preheader
  %i.dh = getelementptr inbounds i8, ptr %0, i64 -84
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !234
  switch i16 %i.di, label %bb.i [
    i16 65, label %.critedge
end_hunk_7
begin_hunk_8_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !266
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.av, label %.thread1019

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !412
  %i.jo = and i32 %i.jn, 15
  %.not1137.a = icmp eq i32 %i.jo, 0
  br i1 %.not1137.a, label %bb.aw, label %.thread1019

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.jp = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.e) #32 ; 3 uses
  %i.jq = load i64, ptr %i.ah, align 64, !tbaa !131
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.jt = load ptr, ptr %i.js, align 32, !tbaa !134
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  store i32 0, ptr %i.ju, align 8, !tbaa !300
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jv = load i32, ptr %i.e, align 4, !tbaa !414
  %.not482 = icmp eq i32 %i.jv, 0
  %.pre1264.pre = load ptr, ptr %i.a, align 8, !tbaa !409 ; 3 uses
  br i1 %.not482, label %.thread1026, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 11419808 ; 2 uses
  %i.jx = load atomic i64, ptr %i.jw monotonic, align 32
  %i.jy = add i64 %i.jx, 1
  store atomic i64 %i.jy, ptr %i.jw monotonic, align 32
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 11422189
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !415, !range !223, !noundef !72
  %i.kb = zext nneg i8 %i.ka to i32               ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre1264.pre, i64 24
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !249 ; 4 uses
  %i.ke = sub nsw i32 0, %i.kb
  %.not1138.a = icmp slt i32 %i.jp, %i.ke
  br i1 %.not1138.a, label %.thread1017, label %bb.ba

.thread1017:                                      ; preds = %bb.az
  %.neg = add nsw i32 %i.kd, -31753               ; 3 uses
  %.not483 = icmp sgt i32 %.neg, %.sroa.speculated726
  br i1 %.not483, label %.thread1026, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.kf = sub nsw i32 31753, %i.kd                ; 4 uses
  %i.kg = icmp sgt i32 %i.jp, %i.kb
  %i.kh = shl nsw i32 %i.jp, 1
  %i.ki = mul nuw nsw i32 %i.kh, %i.kb
  br i1 %i.kg, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.not484 = icmp slt i32 %i.kf, %.sroa.speculated720
  br i1 %.not484, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.speculated754 = call i32 @llvm.smax.i32(i32 %.sroa.speculated726, i32 %i.kf)
  br label %.thread1026

.thread1026:                                      ; preds = %bb.ay, %bb.bc, %.thread1017
  %.11010.ph = phi i32 [ %.neg, %.thread1017 ], [ 32001, %bb.bc ], [ 32001, %bb.ay ]
  %.1996.ph = phi i32 [ -32001, %.thread1017 ], [ %i.kf, %bb.bc ], [ -32001, %bb.ay ]
  %.2978.ph = phi i32 [ %.sroa.speculated726, %.thread1017 ], [ %.sroa.speculated754, %bb.bc ], [ %.sroa.speculated726, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %.thread1019

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %.thread1017
  %i.kj = phi i8 [ 1, %.thread1017 ], [ 2, %bb.bb ], [ 3, %bb.ba ]
  %i.kk = phi i32 [ %.neg, %.thread1017 ], [ %i.kf, %bb.bb ], [ %i.ki, %bb.ba ] ; 4 uses
  %i.kl = icmp sgt i32 %i.kk, 31506
  %i.km = icmp slt i32 %i.kk, -31506
  %i.kn = select i1 %i.km, i32 %i.kd, i32 0
  %i.ko = sub i32 0, %i.kn
  %.p.i = select i1 %i.kl, i32 %i.kd, i32 %i.ko
  %i.kp = add i32 %.p.i, %i.kk
  %i.kq = getelementptr inbounds nuw i8, ptr %.pre1264.pre, i64 45
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !282, !range !223, !noundef !72
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = call i32 @llvm.umin.i32(i32 %.1983, i32 239)
  %.sroa.speculated712 = add nuw nsw i32 %i.kt, 6
  %i.ku = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.kv = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ku) #32
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.kp, i1 noundef zeroext %i.ks, i8 noundef zeroext %i.kj, i32 noundef %.sroa.speculated712, i16 0, i32 noundef 32002, i8 noundef zeroext %i.kv) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %.thread1041

.thread1019:                                      ; preds = %bb.ar, %bb.at, %bb.au, %bb.av, %.thread1026, %bb.aq, %bb.ap
  %i.kw = phi ptr [ %i.ih, %bb.ap ], [ %i.ih, %bb.aq ], [ %.pre1264.pre, %.thread1026 ], [ %i.ih, %bb.av ], [ %i.ih, %bb.au ], [ %i.ih, %bb.at ], [ %i.ih, %bb.ar ] ; 10 uses
  %.31012 = phi i32 [ 32001, %bb.ap ], [ 32001, %bb.aq ], [ %.11010.ph, %.thread1026 ], [ 32001, %bb.av ], [ 32001, %bb.au ], [ 32001, %bb.at ], [ 32001, %bb.ar ]
  %.3998 = phi i32 [ -32001, %bb.ap ], [ -32001, %bb.aq ], [ %.1996.ph, %.thread1026 ], [ -32001, %bb.av ], [ -32001, %bb.au ], [ -32001, %bb.at ], [ -32001, %bb.ar ] ; 2 uses
  %.4979 = phi i32 [ %.sroa.speculated726, %bb.ap ], [ %.sroa.speculated726, %bb.aq ], [ %.2978.ph, %.thread1026 ], [ %.sroa.speculated726, %bb.av ], [ %.sroa.speculated726, %bb.au ], [ %.sroa.speculated726, %bb.at ], [ %.sroa.speculated726, %bb.ar ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 44
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !270, !range !223, !noundef !72
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.ce, label %bb.be

bb.be:                                            ; preds = %.thread1019
  %i.la = getelementptr inbounds i8, ptr %i.kw, i64 -28
  %i.lb = load i16, ptr %i.la, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.lb, label %bb.bf [
    i16 65, label %bb.bj
    i16 0, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  %i.lc = getelementptr inbounds i8, ptr %i.kw, i64 -12
  %i.ld = load i8, ptr %i.lc, align 4, !tbaa !270, !range !223, !noundef !72
  %i.le = or i8 %i.ld, %i.ac
  %or.cond16.not = icmp eq i8 %i.le, 0
  br i1 %or.cond16.not, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds i8, ptr %i.kw, i64 -24
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !248
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !248
  %i.lj = add nsw i32 %i.li, %i.lg                ; 2 uses
  %i.lk = sub nsw i32 0, %i.lj
  %i.ll = icmp slt i32 %i.lj, -167
  %.sroa.speculate.load.false700.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.lk, i32 -209)
  %i.lm = add nsw i32 %.sroa.speculate.load.false700.sroa.speculated, 59
  %i.ln = select i1 %i.ll, i32 226, i32 %i.lm     ; 2 uses
  %i.lo = xor i8 %i.af, 1
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.lp
  %i.lr = zext i16 %i.lb to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lr ; 2 uses
  %i.lt = mul nsw i32 %i.ln, 9
  %.sroa.speculated.i579 = call i32 @llvm.smin.i32(i32 %i.lt, i32 7183) ; 2 uses
  %i.lu = load i16, ptr %i.ls, align 2, !tbaa !147
  %i.lv = sext i16 %i.lu to i32                   ; 2 uses
  %i.lw = add nsw i32 %.sroa.speculated.i579, %i.lv
  %i.lx = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i579, i1 true)
  %i.ly = mul nsw i32 %i.lx, %i.lv
  %.neg.i = sdiv i32 %i.ly, -7183
  %i.lz = add nsw i32 %i.lw, %.neg.i
  %i.ma = trunc i32 %i.lz to i16
  store i16 %i.ma, ptr %i.ls, align 2, !tbaa !147
  %i.mb = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.md = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !283 ; 2 uses
  %i.mg = and i8 %i.mf, 7
  %.not485 = icmp eq i8 %i.mg, 1
  %i.mh = and i16 %i.lb, -16384
  %.not486 = icmp eq i16 %i.mh, 16384
  %or.cond1104.a = or i1 %.not486, %.not485
  br i1 %or.cond1104.a, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mi = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.mj = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !286
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !290
  %i.mo = and i64 %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !170
  %i.mr = getelementptr inbounds nuw [2048 x i8], ptr %i.mq, i64 %i.mo
  %i.ms = zext i8 %i.mf to i64
  %i.mt = getelementptr inbounds nuw [128 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.md ; 2 uses
  %i.mv = mul nsw i32 %i.ln, 13
  %.sroa.speculated.i581 = call i32 @llvm.smin.i32(i32 %i.mv, i32 8192) ; 2 uses
  %i.mw = load atomic i16, ptr %i.mu monotonic, align 2
  %i.mx = sext i16 %i.mw to i32                   ; 2 uses
  %i.my = add nsw i32 %.sroa.speculated.i581, %i.mx
  %i.mz = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i581, i1 true)
  %i.na = mul nsw i32 %i.mz, %i.mx
  %.neg.i582 = sdiv i32 %i.na, -8192
  %i.nb = add nsw i32 %i.my, %.neg.i582
  %i.nc = trunc i32 %i.nb to i16
  store atomic i16 %i.nc, ptr %i.mu monotonic, align 2
  %.pre1265 = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.be, %bb.bg, %bb.bh, %bb.bi, %bb.bf
  %i.nd = phi ptr [ %i.kw, %bb.be ], [ %i.kw, %bb.be ], [ %i.kw, %bb.bg ], [ %i.kw, %bb.bh ], [ %.pre1265, %bb.bi ], [ %i.kw, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr %i.a, ptr %12, align 8, !tbaa !417
  %i.ne = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.ne, align 8, !tbaa !384
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.nf, align 8, !tbaa !384
  %i.ng = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.ng, align 8, !tbaa !304
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 45
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !282, !range !223, !noundef !72
  %15 = trunc nuw i8 %i.ni to i1
  %16 = icmp samesign ugt i32 %.1983, 13
  %or.cond18.not = select i1 %15, i1 true, i1 %16
  br i1 %or.cond18.not, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nj = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.1983)
  %i.nk = sub nsw i32 %.0434, %i.nj
  %.not.a = icmp slt i32 %i.nk, %.sroa.speculated720
  %.not488 = icmp slt i32 %.0434, %.sroa.speculated720
  %or.cond556 = or i1 %.not488, %.not.a
  br i1 %or.cond556, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nl = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1139 = icmp eq i16 %i.nl, 0
  %or.cond21 = or i1 %i.eg, %.not1139
  %or.cond21.not = xor i1 %or.cond21, true
  %i.nm = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1105.a = or i1 %i.nm, %or.cond21.not
  %i.nn = icmp sgt i32 %.0434, 31506
  %or.cond1106.a = select i1 %or.cond1105.a, i1 true, i1 %i.nn
  br i1 %or.cond1106.a, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.no = shl nsw i32 %.sroa.speculated720, 1
  %i.np = add nsw i32 %.0434, %i.no
  %i.nq = sdiv i32 %i.np, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.thread1041

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br i1 %6, label %bb.bo, label %.thread1038

bb.bo:                                            ; preds = %bb.bn
  %i.nr = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !248
  %.neg489 = mul nsw i32 %.1983, -18
  %i.nu = add i32 %.sroa.speculated720, 350
  %i.nv = add i32 %i.nu, %.neg489
  %.not490 = icmp slt i32 %i.nt, %i.nv
  %brmerge = or i1 %i.ds, %.not490
  br i1 %brmerge, label %.thread1038, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  %i.ny = zext i8 %i.af to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !150
  %.not491 = icmp eq i32 %i.oa, 0
  br i1 %.not491, label %.thread1038, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !249
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !291
  %.not492 = icmp slt i32 %i.oc, %i.oe
  %i.of = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1107.a = or i1 %i.of, %.not492
  br i1 %or.cond1107.a, label %.thread1038, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.lhs.trunc1098.a = trunc nuw i32 %.1983 to i8
  %i.og = udiv i8 %.lhs.trunc1098.a, 3
  %narrow1140 = add nuw nsw i8 %i.og, 7
  %i.oh = zext nneg i8 %narrow1140 to i32
  %i.oi = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.oi) #32
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nr, i64 28
  store i16 65, ptr %i.oj, align 4, !tbaa !196
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !246
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.on = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store ptr %i.om, ptr %i.on, align 8, !tbaa !247
  %i.oo = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 56
  %i.oq = sub nsw i32 0, %.sroa.speculated720
  %i.or = sub nsw i32 1, %.sroa.speculated720
  %i.os = sub nsw i32 %.1983, %i.oh               ; 3 uses
  %i.ot = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.op, i32 noundef %i.oq, i32 noundef %i.or, i32 noundef %i.os, i1 noundef zeroext false) ; 2 uses
  %i.ou = sub nsw i32 0, %i.ot                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #32
  %.not493 = icmp sgt i32 %.sroa.speculated720, %i.ou
  %i.ov = icmp slt i32 %i.ot, -31506
  %or.cond1108 = or i1 %.not493, %i.ov
  br i1 %or.cond1108, label %.thread1038, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ow = load i32, ptr %i.od, align 4, !tbaa !291
  %i.ox = icmp ne i32 %i.ow, 0
  %i.oy = icmp samesign ult i32 %.1983, 16
  %or.cond23 = select i1 %i.ox, i1 true, i1 %i.oy
  br i1 %or.cond23, label %.thread1041, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oz = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !249
  %i.pc = trunc nsw i32 %i.os to i16
  %.lhs.trunc1099 = mul nsw i16 %i.pc, 3
  %i.pd = sdiv i16 %.lhs.trunc1099, 4
  %.sext1100 = sext i16 %i.pd to i32
  %i.pe = add nsw i32 %i.pb, %.sext1100
  store i32 %i.pe, ptr %i.od, align 4, !tbaa !291
  %i.pf = add nsw i32 %.sroa.speculated720, -1
  %i.pg = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.oz, i32 noundef %i.pf, i32 noundef %.sroa.speculated720, i32 noundef %i.os, i1 noundef zeroext false)
  store i32 0, ptr %i.od, align 4, !tbaa !291
  %.not494 = icmp slt i32 %i.pg, %.sroa.speculated720
  br i1 %.not494, label %.thread1038, label %.thread1041

.thread1038:                                      ; preds = %bb.bo, %bb.br, %bb.bt, %bb.bq, %bb.bp, %bb.bn
  %i.ph = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 32 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !248
  %i.pk = icmp sge i32 %i.pj, %.sroa.speculated720
  %i.pl = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72
  %i.pm = zext i1 %i.pk to i8
  %i.pn = or i8 %i.pl, %i.pm                      ; 3 uses
  store i8 %i.pn, ptr %i.b, align 1, !tbaa !267
  %i.po = icmp samesign ugt i32 %.1983, 5
  br i1 %i.po, label %.thread1045, label %bb.bu

.thread1045:                                      ; preds = %.thread1038
  %i.pp = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.pq = icmp eq i16 %i.pp, 0
  %i.pr = icmp slt i32 %i.ci, 4
  %or.cond26.not.not = select i1 %i.pq, i1 %i.pr, i1 false
  %i.ps = sext i1 %or.cond26.not.not to i32
  %spec.select1109 = add nsw i32 %.1983, %i.ps
  %i.pt = add nsw i32 %.sroa.speculated720, 235
  %narrow1047 = mul nuw nsw i8 %i.pn, 63
  %i.pu = zext nneg i8 %narrow1047 to i32
  %i.pv = sub nsw i32 %i.pt, %i.pu
  br label %bb.bv

bb.bu:                                            ; preds = %.thread1038
  %i.pw = add nsw i32 %.sroa.speculated720, 235
  %narrow = mul nuw nsw i8 %i.pn, 63
  %i.px = zext nneg i8 %narrow to i32
  %i.py = sub nsw i32 %i.pw, %i.px
  %i.pz = icmp samesign ugt i32 %.1983, 2
  br i1 %i.pz, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %.thread1045, %bb.bu
  %i.qa = phi i32 [ %i.pv, %.thread1045 ], [ %i.py, %bb.bu ] ; 7 uses
  %.29841048 = phi i32 [ %spec.select1109, %.thread1045 ], [ %.1983, %bb.bu ] ; 5 uses
  %i.qb = sub nsw i32 0, %i.qa                    ; 2 uses
  %i.qc = add i32 %.sroa.speculated720, -31507
  %spec.select.i583 = icmp ult i32 %i.qc, -63013
  br i1 %spec.select.i583, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qd = load i32, ptr %i.dr, align 4, !tbaa !281 ; 2 uses
  %i.qe = icmp ne i32 %i.qd, 32002
  %i.qf = icmp slt i32 %i.qd, %i.qa
  %or.cond1110 = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %or.cond1110, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %.sroa.0137.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.qg = load i32, ptr %i.pi, align 8, !tbaa !248
  %i.qh = sub nsw i32 %i.qa, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0137.0.copyload, i32 noundef %i.qh, ptr noundef nonnull %i.qi) #32
  %i.qj = add nsw i32 %.29841048, -5
  %i.qk = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !248
  %i.qn = sub nsw i32 %i.qm, %.sroa.speculated720
  %.neg496 = sdiv i32 %i.qn, -315
  %i.qo = add nsw i32 %i.qj, %.neg496
  %i.qp = call i32 @llvm.smax.i32(i32 %i.qo, i32 0)
  %.sroa.speculated885 = call i32 @llvm.umin.i32(i32 %.29841048, i32 %i.qp) ; 3 uses
  %i.qq = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #32 ; 2 uses
  %.not11451194 = icmp eq i16 %i.qq, 0
  br i1 %.not11451194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.qr = sub nsw i32 1, %i.qa                    ; 2 uses
  %i.qs = icmp ne i32 %.sroa.speculated885, 0
  %i.qt = xor i1 %6, true
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.qv = add nuw nsw i32 %.sroa.speculated885, 1
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph, %.backedge1168
  %i.qw = phi i16 [ %i.qq, %.lr.ph ], [ %i.qz, %.backedge1168 ] ; 5 uses
  %i.qx = icmp eq i16 %i.qw, %i.cm
  br i1 %i.qx, label %.backedge1168, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qy = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qw) #32
  br i1 %i.qy, label %bb.ca, label %.backedge1168

.backedge1168:                                    ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz
  %i.qz = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #32 ; 2 uses
  %.not1145 = icmp eq i16 %i.qz, 0
end_hunk_8
begin_hunk_9_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.tx = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #32 ; 2 uses
  %.not1150.a = icmp eq i16 %i.tx, 0
  br i1 %.not1150.a, label %.loopexit.loopexit, label %bb.ci, !llvm.loop !785

bb.cj:                                            ; preds = %bb.ci
  %i.ty = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tv) #32
  br i1 %i.ty, label %bb.ck, label %.backedge

bb.ck:                                            ; preds = %bb.cj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.tz = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.ub, ptr %i.ua, align 8, !tbaa !272
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  store ptr null, ptr %i.uc, align 8, !tbaa !250
  %i.ud = and i16 %i.tv, 63
  %i.ue = zext nneg i16 %i.ud to i64              ; 10 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ue ; 3 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !283
  %i.uh = icmp ne i8 %i.ug, 0
  %.not.i.i590 = icmp ult i16 %i.tv, -16384       ; 2 uses
  %or.cond.not.i.i591 = and i1 %.not.i.i590, %i.uh
  %i.ui = icmp slt i16 %i.tv, -16384              ; 2 uses
  %spec.select.i.i592 = or i1 %i.ui, %or.cond.not.i.i591
  %i.uj = and i16 %i.tv, 12288
  %i.uk = icmp eq i16 %i.uj, 12288                ; 2 uses
  %i.ul = or i1 %i.uk, %spec.select.i.i592        ; 3 uses
  %i.um = lshr i16 %i.tv, 6
  %i.un = and i16 %i.um, 63
  %i.uo = zext nneg i16 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !283 ; 4 uses
  %i.ur = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tv) #32 ; 3 uses
  %i.us = add nsw i32 %.4986.ph1214, -1           ; 3 uses
  %i.ut = load i8, ptr %i.b, align 1, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.uu = trunc nuw i8 %i.ut to i1
  %i.uv = sext i32 %.4986.ph1214 to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !150
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !150
  %i.va = load i32, ptr %i.ti, align 8, !tbaa !258
  %i.vb = sub nsw i32 %.sroa.speculated720, %.5980.ph1215
  %i.vc = mul nsw i32 %i.uz, %i.ux                ; 2 uses
  %i.vd = insertelement <2 x i32> poison, i32 %i.vb, i64 0
  %i.ve = insertelement <2 x i32> %i.vd, i32 %i.vc, i64 1
  %i.vf = mul nsw <2 x i32> %i.ve, <i32 608, i32 119>
  %i.vg = insertelement <2 x i32> <i32 poison, i32 256>, i32 %i.va, i64 0
  %i.vh = sdiv <2 x i32> %i.vf, %i.vg             ; 2 uses
  %i.vi = extractelement <2 x i32> %i.vh, i64 1
  %i.vj = select i1 %i.uu, i32 0, i32 %i.vi
  %i.vk = add i32 %i.vc, 1182
  %i.vl = extractelement <2 x i32> %i.vh, i64 0
  %i.vm = sub i32 %i.vk, %i.vl
  %i.vn = add i32 %i.vm, %i.vj                    ; 2 uses
  %i.vo = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 45
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !282, !range !223, !noundef !72
  %i.vr = trunc nuw i8 %i.vq to i1
  %i.vs = add nsw i32 %i.vn, 946
  %spec.select557 = select i1 %i.vr, i32 %i.vs, i32 %i.vn ; 3 uses
  %i.vt = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.tj
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !150
  %.not502 = icmp eq i32 %i.vw, 0
  %i.vx = icmp slt i32 %.4999.ph1212, -31506
  %or.cond1114.a = select i1 %.not502, i1 true, i1 %i.vx
  br i1 %or.cond1114.a, label %.thread1063, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vy = mul nsw i32 %.4986.ph1214, %.4986.ph1214
  %i.vz = add nuw nsw i32 %i.vy, 3
  %narrow503 = sub nuw nsw i8 2, %i.ut
  %i.wa = zext nneg i8 %narrow503 to i32
  %i.wb = udiv i32 %i.vz, %i.wa
  %i.wc = zext nneg i32 %i.wb to i64
  %.not504 = icmp samesign ult i64 %indvars.iv.next, %i.wc
  br i1 %.not504, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.neg505 = sdiv i32 %spec.select557, -1024
  %i.wd = add i32 %.neg505, %i.us                 ; 3 uses
  %or.cond30 = or i1 %i.ur, %i.ul
  %i.we = zext i8 %i.uq to i64                    ; 5 uses
  br i1 %or.cond30, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.wf = load i8, ptr %i.uf, align 1, !tbaa !283 ; 2 uses
  %i.wg = getelementptr inbounds nuw [1024 x i8], ptr %i.tc, i64 %i.we
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.wg, i64 %i.ue
  %i.wi = and i8 %i.wf, 7
  %i.wj = zext nneg i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.wh, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !296 ; 2 uses
  %i.wm = icmp sgt i32 %i.wd, 6
  %or.cond33.not = select i1 %i.ur, i1 true, i1 %i.wm
  br i1 %or.cond33.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wn = sext i16 %i.wl to i32
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 32
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !248
  %i.wr = mul nsw i32 %i.wd, 217
  %i.ws = zext i8 %i.wf to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !150
  %i.wv = mul nsw i32 %i.wn, 131
  %i.ww = sdiv i32 %i.wv, 1024
  %i.wx = add nsw i32 %i.wr, 232
  %i.wy = add i32 %i.wx, %i.ww
  %i.wz = add i32 %i.wy, %i.wq
  %i.xa = add i32 %i.wz, %i.wu
  %.not510.a = icmp sgt i32 %i.xa, %.5980.ph1215
  br i1 %.not510.a, label %bb.cq, label %.thread1054

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xb = mul nsw i32 %.4986.ph1214, 166
  %i.xc = sdiv i16 %i.wl, 29
  %.sext = sext i16 %i.xc to i32
  %i.xd = add nsw i32 %i.xb, %.sext
  %.sroa.speculated685 = call i32 @llvm.smax.i32(i32 %i.xd, i32 0)
  %i.xe = icmp sgt i32 %.5980.ph1215, -1
  br i1 %i.xe, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xf = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 40
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.tj
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !150
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.we
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !150
  %.not511.a = icmp eq i32 %i.xi, %i.xk
  br i1 %.not511.a, label %.thread1063, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xl = sub nsw i32 0, %.sroa.speculated685
  %i.xm = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tv, i32 noundef %i.xl) #32
  br i1 %i.xm, label %.thread1063, label %.thread1054, !llvm.loop !785

bb.ct:                                            ; preds = %bb.cn
  %i.xn = load ptr, ptr %i.f, align 16, !tbaa !294
  %i.xo = getelementptr inbounds nuw [128 x i8], ptr %i.xn, i64 %i.we
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %i.ue
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !175
  %i.xr = sext i16 %i.xq to i32
  %i.xs = load ptr, ptr %i.sm, align 8, !tbaa !294
  %i.xt = getelementptr inbounds nuw [128 x i8], ptr %i.xs, i64 %i.we
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xt, i64 %i.ue
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !175
  %i.xw = sext i16 %i.xv to i32
  %i.xx = add nsw i32 %i.xw, %i.xr
  %i.xy = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.xz = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !286
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 40
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !290
  %i.ye = and i64 %i.yd, %i.yb
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !170
  %i.yh = getelementptr inbounds nuw [2048 x i8], ptr %i.yg, i64 %i.ye
  %i.yi = getelementptr inbounds nuw [128 x i8], ptr %i.yh, i64 %i.we
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %i.ue
  %i.yk = load atomic i16, ptr %i.yj monotonic, align 2
  %i.yl = sext i16 %i.yk to i32
  %i.ym = add nsw i32 %i.xx, %i.yl                ; 2 uses
  %i.yn = mul nsw i32 %.4986.ph1214, -4083
  %i.yo = icmp slt i32 %i.ym, %i.yn
  br i1 %i.yo, label %.thread1054, label %bb.cu, !llvm.loop !785

bb.cu:                                            ; preds = %bb.ct
  %i.yp = zext i16 %i.tv to i64
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.tk, i64 %i.yp
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !147
  %i.ys = sext i16 %i.yr to i32
  %i.yt = mul nsw i32 %i.ys, 69
  %i.yu = sdiv i32 %i.yt, 32
  %i.yv = add nsw i32 %i.yu, %i.ym
  %i.yw = sdiv i32 %i.yv, 3208
  %i.yx = add nsw i32 %i.yw, %i.wd                ; 3 uses
  %i.yy = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !248 ; 2 uses
  %.not1151 = icmp eq i16 %.sroa.0784.0.ph1213, 0
  %i.zb = mul nsw i32 %i.yx, 127
  %i.zc = icmp sgt i32 %i.za, %.5980.ph1215
  %i.zd = select i1 %i.zc, i32 85, i32 0
  %i.ze = select i1 %.not1151, i32 203, i32 42
  %i.zf = add i32 %i.ze, %i.za
  %i.zg = add i32 %i.zf, %i.zd
  %i.zh = add i32 %i.zg, %i.zb                    ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yy, i64 44
  %i.zj = load i8, ptr %i.zi, align 4, !tbaa !270, !range !223, !noundef !72
  %17 = trunc nuw i8 %i.zj to i1
  %i.zk = icmp sgt i32 %i.yx, 12
  %or.cond36.not = select i1 %17, i1 true, i1 %i.zk
  %.not507.a = icmp sgt i32 %i.zh, %.5980.ph1215
  %or.cond558 = select i1 %or.cond36.not, i1 true, i1 %.not507.a
  br i1 %or.cond558, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not508 = icmp sgt i32 %.4999.ph1212, %i.zh
  %i.zl = icmp sgt i32 %.4999.ph1212, 31506
  %or.cond1115.a = or i1 %.not508, %i.zl
  %i.zm = icmp sgt i32 %i.zh, 31506
  %or.cond1116 = or i1 %i.zm, %or.cond1115.a
  %spec.select1132.a = select i1 %or.cond1116, i32 %.4999.ph1212, i32 %i.zh
  br label %.thread1054, !llvm.loop !785

bb.cw:                                            ; preds = %bb.cu
  %.sroa.speculated679 = call i32 @llvm.smax.i32(i32 %i.yx, i32 0) ; 2 uses
  %i.zn = mul nsw i32 %.sroa.speculated679, -25
  %i.zo = mul nsw i32 %i.zn, %.sroa.speculated679
  %i.zp = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tv, i32 noundef %i.zo) #32
  br i1 %i.zp, label %.thread1063, label %.thread1054

.thread1063:                                      ; preds = %bb.cs, %bb.cr, %bb.cw, %bb.ck
  %i.zq = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.zr = icmp ne i16 %i.tv, %i.zq
  %brmerge1118 = or i1 %i.ds, %i.zr
  %.pre1266 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 10 uses
  br i1 %brmerge1118, label %.thread1068, label %bb.cx

bb.cx:                                            ; preds = %.thread1063
  %i.zs = getelementptr inbounds nuw i8, ptr %.pre1266, i64 45
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !282, !range !223, !noundef !72
  %i.zu = or disjoint i8 %i.zt, 6
  %i.zv = zext nneg i8 %i.zu to i32
  %.not512.a = icmp slt i32 %.4986.ph1214, %i.zv
  br i1 %.not512.a, label %.thread1068, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zw = load i32, ptr %i.dr, align 4, !tbaa !281 ; 2 uses
  %i.zx = add i32 %i.zw, -31507
  %spec.select.i596.a = icmp ult i32 %i.zx, -63013
  br i1 %spec.select.i596.a, label %.thread1068, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zy = load i8, ptr %i.sa, align 8, !tbaa !289
  %i.zz = and i8 %i.zy, 2
  %.not513.a = icmp eq i8 %i.zz, 0
  br i1 %.not513.a, label %.thread1068, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aaa = load i32, ptr %i.tl, align 4, !tbaa !293
  %i.aab = add nsw i32 %.4986.ph1214, -3
  %.not514 = icmp slt i32 %i.aaa, %i.aab
  br i1 %.not514, label %.thread1068, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aac = call fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %i.tv, ptr noundef nonnull %.pre1266, ptr noundef nonnull align 8 dereferenceable(1048) %1)
  br i1 %i.aac, label %.thread1068, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aad = mul nsw i32 %.4986.ph1214, 53
  %.neg5151097 = udiv i32 %i.aad, 60
  %i.aae = sub nsw i32 %i.zw, %.neg5151097        ; 5 uses
  %i.aaf = lshr i32 %i.us, 1
  %i.aag = getelementptr inbounds nuw i8, ptr %.pre1266, i64 30
  store i16 %i.tv, ptr %i.aag, align 2, !tbaa !196
  %i.aah = add nsw i32 %i.aae, -1
  %i.aai = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %.pre1266, i32 noundef %i.aah, i32 noundef %i.aae, i32 noundef %i.aaf, i1 noundef zeroext %6) ; 6 uses
  %i.aaj = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 30
  store i16 0, ptr %i.aak, align 2, !tbaa !196
  %i.aal = icmp slt i32 %i.aai, %i.aae
  br i1 %i.aal, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aam = load i32, ptr %i.d, align 4, !tbaa !150
  %i.aan = call i32 @llvm.abs.i32(i32 %i.aam, i1 true)
  %i.aao = udiv i32 %i.aan, 230673                ; 2 uses
  %i.aap = load i16, ptr %i.tm, align 64, !tbaa !171
  %i.aaq = sext i16 %i.aap to i32
  %i.aar = mul nsw i32 %i.aaq, 897
  %.neg520.neg.a = sdiv i32 %i.aar, 127649
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !249 ; 2 uses
  %i.aau = load i32, ptr %i.tn, align 16, !tbaa !253 ; 2 uses
  %i.aav = icmp sgt i32 %i.aat, %i.aau
  %.neg521.neg = select i1 %i.aav, i32 42, i32 0
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaj, i64 45
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !282, !range !223, !noundef !72
  %narrow523 = mul nuw nsw i8 %i.aax, 90
  %i.aay = zext nneg i8 %narrow523 to i32
  %i.aaz = shl nsw i32 %i.aat, 1
  %i.aba = mul nsw i32 %i.aau, 3
  %i.abb = icmp sgt i32 %i.aaz, %i.aba
  %.neg524.neg = select i1 %i.abb, i32 50, i32 0
  %.neg525.a = add i32 %i.aae, %.neg528.a
  %.neg526.a = add i32 %.neg525.a, %i.aao
  %.neg527 = add i32 %.neg526.a, %.neg520.neg.a
  %i.abc = add i32 %.neg527, %.neg521.neg
  %i.abd = icmp slt i32 %i.aai, %i.abc
  %i.abe = select i1 %i.abd, i32 2, i32 1
  %.neg1166 = add i32 %i.aae, %.neg1223
  %.neg529.a = add i32 %.neg1166, %i.aao
  %.neg530 = sub i32 %.neg529.a, %i.aay
  %i.abf = add i32 %.neg530, %.neg524.neg
  %i.abg = icmp slt i32 %i.aai, %i.abf
  %i.abh = zext i1 %i.abg to i32
  %i.abi = add nuw nsw i32 %i.abe, %i.abh
  %i.abj = add nuw nsw i32 %.4986.ph1214, 1
  br label %.thread1068

bb.de:                                            ; preds = %bb.dc
  %.not516 = icmp slt i32 %i.aai, %.sroa.speculated720
  %i.abk = add nsw i32 %i.aai, -31507
  %spec.select.i597 = icmp ult i32 %i.abk, -63013
  %or.cond1120.a = select i1 %.not516, i1 true, i1 %spec.select.i597
  br i1 %or.cond1120.a, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abl = load i32, ptr %i.dr, align 4, !tbaa !281
  %.not518 = icmp slt i32 %i.abl, %.sroa.speculated720
  %spec.select568 = select i1 %.not518, i32 %spec.select560.a, i32 -3
  br label %.thread1068

bb.dg:                                            ; preds = %bb.de
  %.neg517 = mul i32 %.4986.ph1214, -100
  %i.abm = add i32 %.neg517, -400
  %.sroa.speculated671 = call i32 @llvm.smax.i32(i32 %i.abm, i32 -4000)
  %.sroa.speculated.i600 = call i32 @llvm.smin.i32(i32 %.sroa.speculated671, i32 8192) ; 2 uses
  %i.abn = load i16, ptr %i.tm, align 64, !tbaa !171
  %i.abo = sext i16 %i.abn to i32                 ; 2 uses
  %i.abp = add nsw i32 %.sroa.speculated.i600, %i.abo
  %i.abq = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i600, i1 true)
  %i.abr = mul nsw i32 %i.abq, %i.abo
  %.neg.i601 = sdiv i32 %i.abr, -8192
  %i.abs = add nsw i32 %i.abp, %.neg.i601
  %i.abt = trunc i32 %i.abs to i16
  store i16 %i.abt, ptr %i.tm, align 64, !tbaa !171
  br label %.thread1081

.thread1068:                                      ; preds = %.thread1063, %bb.df, %bb.dd, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx
  %i.abu = phi ptr [ %i.aaj, %bb.dd ], [ %.pre1266, %bb.cx ], [ %i.aaj, %bb.df ], [ %.pre1266, %bb.cz ], [ %.pre1266, %bb.da ], [ %.pre1266, %bb.db ], [ %.pre1266, %.thread1063 ], [ %.pre1266, %bb.cy ] ; 5 uses
  %.6988 = phi i32 [ %i.abj, %bb.dd ], [ %.4986.ph1214, %bb.cx ], [ %.4986.ph1214, %bb.df ], [ %.4986.ph1214, %bb.cz ], [ %.4986.ph1214, %bb.da ], [ %.4986.ph1214, %bb.db ], [ %.4986.ph1214, %.thread1063 ], [ %.4986.ph1214, %bb.cy ] ; 9 uses
  %.2425 = phi i32 [ %i.abi, %bb.dd ], [ 0, %bb.cx ], [ %spec.select568, %bb.df ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.db ], [ 0, %.thread1063 ], [ 0, %bb.cy ]
  %i.abv = load i8, ptr %i.uf, align 1, !tbaa !283
  %i.abw = load atomic i64, ptr %i.to monotonic, align 8
  %i.abx = add i64 %i.abw, 1
  store atomic i64 %i.abx, ptr %i.to monotonic, align 8
  %i.aby = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tp) #32 ; 2 uses
  %i.abz = extractvalue { ptr, ptr } %i.aby, 0    ; 2 uses
  %i.aca = extractvalue { ptr, ptr } %i.aby, 1
  %i.acb = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.acc = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tv, ptr noundef nonnull align 8 dereferenceable(192) %8, i1 noundef zeroext %i.ur, ptr noundef nonnull align 1 dereferenceable(7) %i.abz, ptr noundef nonnull align 8 dereferenceable(416) %i.aca, ptr noundef nonnull %i.acb, ptr noundef nonnull %i.acc) #32
  %.not.i602 = icmp eq ptr %i.abu, null
  br i1 %.not.i602, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %bb.dh

bb.dh:                                            ; preds = %.thread1068
  %i.acd = icmp ne i8 %i.abv, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i590, %i.acd
  %spec.select.i.i.i = or i1 %i.ui, %or.cond.not.i.i.i
  %i.ace = or i1 %i.uk, %spec.select.i.i.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abu, i64 28
  store i16 %i.tv, ptr %i.acf, align 4, !tbaa !196
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abu, i64 44
  %i.ach = load i8, ptr %i.acg, align 4, !tbaa !270, !range !223, !noundef !72
  %i.aci = zext nneg i8 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [4194304 x i8], ptr %i.tq, i64 %i.aci
  %i.ack = zext i1 %i.ace to i64
  %i.acl = getelementptr inbounds nuw [2097152 x i8], ptr %i.acj, i64 %i.ack
  %i.acm = load i8, ptr %i.abz, align 1, !tbaa !292
  %i.acn = zext i8 %i.acm to i64                  ; 2 uses
  %i.aco = getelementptr inbounds nuw [131072 x i8], ptr %i.acl, i64 %i.acn
  %i.acp = getelementptr inbounds nuw [2048 x i8], ptr %i.aco, i64 %i.ue
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  store ptr %i.acp, ptr %i.acq, align 8, !tbaa !246
  %i.acr = getelementptr inbounds nuw [131072 x i8], ptr %i.tr, i64 %i.acn
  %i.acs = getelementptr inbounds nuw [2048 x i8], ptr %i.acr, i64 %i.ue
  %i.act = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  store ptr %i.acs, ptr %i.act, align 8, !tbaa !247
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.thread1068, %bb.dh
  %i.acu = add nsw i32 %.2425, %i.us              ; 10 uses
  %i.acv = load ptr, ptr %i.a, align 8, !tbaa !409 ; 6 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 45
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !282, !range !223, !noundef !72
  %i.acy = trunc nuw i8 %i.acx to i1
  br i1 %i.acy, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.acz = load i32, ptr %i.dr, align 4, !tbaa !281
  %i.ada = icmp sgt i32 %i.acz, %.5980.ph1215
  %.neg534 = select i1 %i.ada, i32 -4624, i32 -3702
  %i.adb = load i32, ptr %i.tl, align 4, !tbaa !293
  %.not533 = icmp slt i32 %i.adb, %.6988
  %.neg536.a = select i1 %.not533, i32 0, i32 %.neg535.a
  %.neg537.a = add i32 %.neg534, %spec.select557
  %i.adc = add i32 %.neg537.a, %.neg536.a
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
end_hunk_9
