Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_wordEv:bb.a
  %i.gi = zext i8 %i.fj to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !228
  %i.gl = and i16 %i.gk, 8192
  %.not36.i17.not = icmp eq i16 %i.gl, 0
  br i1 %.not36.i17.not, label %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26, label %.critedge2

_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26: ; preds = %bb.ai, %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 4 uses
  store ptr %i.gm, ptr %i.p, align 8, !tbaa !422
  %.not31 = icmp eq ptr %i.gm, %i.t
  br i1 %.not31, label %.critedge2, label %.lr.ph45.split.split, !llvm.loop !1151

.critedge2:                                       ; preds = %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26, %bb.af, %bb.ae, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit.thread.i11, %bb.aj, %bb.ah, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us69, %bb.z, %bb.y, %bb.ac, %bb.ad, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us, %bb.t, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit.thread.i11.us, %bb.x, %bb.v, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us.us, %bb.o, %bb.r, %bb.s, %.critedge
  %i.gn = phi ptr [ %i.bk, %.critedge ], [ %i.cy, %bb.v ], [ %i.bt, %bb.s ], [ %i.ec, %bb.ad ], [ %i.bt, %bb.r ], [ %i.bt, %bb.o ], [ %i.cx, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us.us ], [ %i.cy, %bb.t ], [ %i.cy, %bb.x ], [ %i.eb, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us ], [ %i.cy, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit.thread.i11.us ], [ %i.ec, %bb.y ], [ %i.ec, %bb.ac ], [ %i.fh, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us69 ], [ %i.ec, %bb.z ], [ %i.fi, %bb.af ], [ %i.fi, %bb.aj ], [ %i.fi, %bb.ah ], [ %i.fi, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit.thread.i11 ], [ %i.gm, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26 ], [ %i.fi, %bb.ae ] ; 3 uses
  %i.go = icmp eq ptr %i.gn, %i.t
  br i1 %i.go, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.critedge2
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !60
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !60
  %i.gt = and i8 %i.gs, 3
  %.not32 = icmp eq i8 %i.gt, 0
  br i1 %.not32, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gu = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.gu, label %.loopexit, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.al
  %.pre103 = load ptr, ptr %i.p, align 8, !tbaa !204
  %.pre104 = load ptr, ptr %i.q, align 8, !tbaa !204
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge102, %bb.ak
  %i.gv = phi ptr [ %.pre104, %._crit_edge102 ], [ %i.t, %bb.ak ] ; 2 uses
  %i.gw = phi ptr [ %.pre103, %._crit_edge102 ], [ %i.gn, %bb.ak ] ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gv
  br i1 %i.gx, label %.loopexit, label %bb.f, !llvm.loop !1152

.loopexit:                                        ; preds = %.critedge2, %bb.am, %bb.al, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %.critedge2 ], [ false, %bb.am ], [ true, %bb.al ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_lineEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452, !nonnull !108, !align !109
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.e, label %.loopexit, label %.preheader6

.preheader6:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !204
  %.pre14 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.b

bb.b:                                             ; preds = %.preheader6, %bb.i
  %i.h = phi ptr [ %.pre14, %.preheader6 ], [ %i.z, %bb.i ] ; 5 uses
  %.promoted = phi ptr [ %.pre, %.preheader6 ], [ %i.aa, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.promoted, %i.h
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit
  %i.i = phi ptr [ %i.k, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit ], [ %.promoted, %bb.b ] ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !60
  switch i8 %i.j, label %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 12, label %.critedge
  ]

_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 4 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !422
  %.not3 = icmp eq ptr %i.k, %i.h
  br i1 %.not3, label %.critedge, label %.lr.ph, !llvm.loop !1153

.critedge:                                        ; preds = %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa.ph = phi ptr [ %i.k, %_ZN5boost13re_detail_60012is_separatorIcEEbT_.exit ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.l = icmp eq ptr %.lcssa.ph, %i.h
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa.ph, i64 1 ; 4 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !422
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !452, !nonnull !108, !align !109
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 340
  %i.r = load i32, ptr %i.q, align 4, !tbaa !309
  %.not5 = icmp eq i32 %i.r, 0
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.m, align 1, !tbaa !60
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !60
  %i.x = and i8 %i.w, 3
  %.not4 = icmp eq i8 %i.x, 0
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.y, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre15 = load ptr, ptr %i.f, align 8, !tbaa !204
  %.pre16 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.z = phi ptr [ %.pre16, %._crit_edge ], [ %i.h, %bb.g ] ; 2 uses
  %i.aa = phi ptr [ %.pre15, %._crit_edge ], [ %i.m, %bb.g ] ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %.loopexit, label %bb.b, !llvm.loop !1154

.loopexit:                                        ; preds = %bb.b, %bb.i, %bb.h, %.critedge, %bb.e, %bb.a, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.a ], [ true, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ false, %.critedge ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_bufEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !451
  %i.h = and i32 %i.g, 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !475
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !476
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !452, !nonnull !108, !align !109
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !303
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !450
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !204 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !419  ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = ptrtoint ptr %.sroa.01.0.copyload to i64 ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !204
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !204
  %i.q = icmp ne ptr %i.p, %.sroa.01.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !421
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.o, ptr %i.t, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !418
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.y, 72
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %1 = sdiv exact i64 %i.y, 24                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %1, i64 4)
  %.pre.i = load i64, ptr %i.aa, align 8, !tbaa !204
  %i.ab = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %i.ac = shufflevector <2 x i64> %i.ab, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ad = add i64 %umax.i, -3                     ; 2 uses
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ae = icmp ult i64 %1, 7
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ad, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.06.i = phi i64 [ 3, %.lr.ph.i.new ], [ %i.aq, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  store <2 x i64> %i.ac, ptr %i.af, align 8, !tbaa !204
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !421
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x i64> %i.ac, ptr %i.ai, align 8, !tbaa !204
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !421
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x i64> %i.ac, ptr %i.al, align 8, !tbaa !204
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !421
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x i64> %i.ac, ptr %i.ao, align 8, !tbaa !204
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !421
  %i.aq = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1155

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.06.i.epil.init = phi i64 [ 3, %.lr.ph.i ], [ %i.aq, %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.06.i.epil = phi i64 [ %.06.i.epil.init, %.epil.preheader ], [ %i.at, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i.epil ; 2 uses
  store <2 x i64> %i.ac, ptr %i.ar, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !421
  %i.at = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, label %bb.c, !llvm.loop !1156

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit: ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.k, align 8, !tbaa !204
  store i64 %i.av, ptr %i.au, align 8, !tbaa !204
  %i.aw = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.ax = load i8, ptr %i.b, align 2, !tbaa !476, !range !283, !noundef !108
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit
  %i.az = load i8, ptr %i.a, align 1, !tbaa !475, !range !283, !noundef !108
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.e, label %.thread4

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !451 ; 2 uses
  %i.bd = and i32 %i.bc, 8192
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.thread4, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !476
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !456 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !204 ; 5 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !419 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %.sroa.0.0.copyload, ptr %i.bh, align 8, !tbaa !204
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !421
  store ptr %.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !204
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !204
  %i.bl = icmp ne ptr %.sroa.0.0.copyload, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !421
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %.sroa.0.0.copyload, ptr %i.bo, align 8, !tbaa !204
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !204
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !477
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !417
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !204
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !204
  %i.bt = and i32 %i.bc, 131072
  %.not2 = icmp eq i32 %i.bt, 0
  br i1 %.not2, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %0, align 8, !tbaa !457, !nonnull !108, !align !109
  tail call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE12maybe_assignERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.bu, ptr noundef nonnull align 8 dereferenceable(77) %i.be)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !476, !range !283
  %i.bv = trunc nuw i8 %.pre to i1
  br i1 %i.bv, label %.thread, label %.thread4

.thread4:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bw = load i64, ptr %i.au, align 8, !tbaa !204
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !204
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, %bb.f, %.thread4, %bb.g
  %i.bx = phi i1 [ true, %bb.g ], [ false, %.thread4 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit ]
  ret i1 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_litEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !465
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_60015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !194

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_60015mem_block_cache8instanceEvE11block_cache) #27
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_60015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_60015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_60015mem_block_cache8instanceEvE11block_cache) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_60015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_60015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !465
  store ptr null, ptr %i.g, align 8, !tbaa !466
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !132
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !132
  %i.d = icmp ugt i32 %i.c, 80
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !474, !nonnull !108, !align !109
  invoke void @_ZN5boost13re_detail_60011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef 18)
          to label %bb.c unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.b, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !473
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !478
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !473
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit: ; preds = %bb.c, %.noexc
  %.0.i = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  store i32 2, ptr %.0.i, align 8, !tbaa !60
  store ptr %.0.i, ptr %i.g, align 8, !tbaa !473
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !450
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit, %bb.x
  %i.aa = phi ptr [ %.pre, %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit ], [ %i.bt, %bb.x ] ; 2 uses
  %.not43 = icmp eq ptr %i.aa, null
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.v
  %i.ab = phi ptr [ %i.bk, %bb.v ], [ %i.aa, %bb.e ]
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !279
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEvE14s_match_vtableB5cxx11, i64 %i.ad
  %.unpack = load i64, ptr %i.ae, align 16, !tbaa !60
  %i.af = load i64, ptr %i.p, align 8, !tbaa !468
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !468
  %i.ah = inttoptr i64 %.unpack to ptr
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.ai, label %._crit_edge45, label %bb.g

._crit_edge45:                                    ; preds = %bb.f
  %.pre46 = load ptr, ptr %i.o, align 8, !tbaa !450
  br label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !468
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !453
  %i.al = icmp sgt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !474, !nonnull !108, !align !109
  invoke void @_ZN5boost13re_detail_60011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 18)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ao = load i32, ptr %i.s, align 8, !tbaa !451
  %i.ap = and i32 %i.ao, 8192
  %.not19 = icmp eq i32 %i.ap, 0
  br i1 %.not19, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !204 ; 2 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !204
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !204
  %.not31 = icmp eq ptr %i.aq, %i.at
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.w, align 1, !tbaa !475
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  store i8 0, ptr %i.x, align 4, !tbaa !470
  store i8 0, ptr %i.y, align 1, !tbaa !471
  store i8 0, ptr %i.z, align 2, !tbaa !472
  br label %bb.o

bb.o:                                             ; preds = %.noexc23, %bb.n
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !473
  %i.av = load i32, ptr %i.au, align 8, !tbaa !60
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.aw
  %.unpack.i = load i64, ptr %i.ax, align 16, !tbaa !60
  %i.ay = inttoptr i64 %.unpack.i to ptr
  %i.az = load i8, ptr %i.x, align 4, !tbaa !470, !range !283, !noundef !108
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.ba)
          to label %.noexc23 unwind label %bb.t, !inline_history !32

.noexc23:                                         ; preds = %bb.o
  br i1 %i.bb, label %bb.o, label %bb.p, !llvm.loop !33

bb.p:                                             ; preds = %.noexc23
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !450 ; 2 uses
  %.not32 = icmp eq ptr %i.bc, null
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !451
  %i.be = and i32 %i.bd, 8192
  %.not22 = icmp eq i32 %i.be, 0
  br i1 %.not22, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !204 ; 2 uses
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !204
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !204
  %.not33 = icmp eq ptr %i.bf, %i.bi
  br i1 %.not33, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.w, align 1, !tbaa !475
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  br i1 %.not32, label %.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge45, %bb.u
  %i.bk = phi ptr [ %.pre46, %._crit_edge45 ], [ %i.bc, %bb.u ] ; 2 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.e
  store i8 1, ptr %i.x, align 4, !tbaa !470
  store i8 0, ptr %i.y, align 1, !tbaa !471
  store i8 0, ptr %i.z, align 2, !tbaa !472
  br label %bb.w

bb.w:                                             ; preds = %.noexc25, %._crit_edge
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !473
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.bn
  %.unpack.i24 = load i64, ptr %i.bo, align 16, !tbaa !60
  %i.bp = inttoptr i64 %.unpack.i24 to ptr
  %i.bq = load i8, ptr %i.x, align 4, !tbaa !470, !range !283, !noundef !108
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.br)
          to label %.noexc25 unwind label %.loopexit, !inline_history !32

.noexc25:                                         ; preds = %bb.w
  br i1 %i.bs, label %bb.w, label %bb.x, !llvm.loop !33

bb.x:                                             ; preds = %.noexc25
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !450 ; 2 uses
  %.not34 = icmp eq ptr %i.bt, null
  br i1 %.not34, label %.thread, label %bb.e, !llvm.loop !1157

.thread:                                          ; preds = %bb.x, %bb.u
  %.5.in = load i8, ptr %i.x, align 4, !tbaa !470, !range !283, !noundef !108
  %.5 = trunc nuw i8 %.5.in to i1
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !132
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !132
  ret i1 %.5

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.bj, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !132
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !132
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE12maybe_assignERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !417, !range !283, !noundef !108
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit.sink.split, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit

_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !418  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !419    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %spec.select.i44 = select i1 %i.l, ptr %i.f, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i44, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !204
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %spec.select.i45 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.j, i64 2) ; 2 uses
  %.not158 = icmp ult i64 %i.j, 3
  br i1 %.not158, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit
  %2 = icmp ugt i64 %i.i, 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %spec.select.i = select i1 %2, ptr %i.q, ptr %i.e ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !418  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = load ptr, ptr %1, align 8, !tbaa !419    ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.w, 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %spec.select.i43 = select i1 %i.x, ptr %i.y, ptr %i.s
  %i.z = load ptr, ptr %spec.select.i, align 8, !tbaa !204
  %i.aa = icmp eq ptr %i.z, %i.p
  %i.ab = icmp sgt i32 %i.k, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.m
  %i.ad = icmp sgt i32 %i.k, 2
  %spec.select = select i1 %i.ad, ptr %i.q, ptr %i.m
  %i.ae = select i1 %i.aa, ptr %.0.i.i.i, ptr %spec.select
  %.sroa.020.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !204
  %i.af = ptrtoint ptr %.sroa.020.0.copyload to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.0114 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 4 uses
  %.027113 = phi i64 [ 0, %.lr.ph ], [ %.128, %bb.n ] ; 4 uses
  %.030112 = phi i64 [ 0, %.lr.ph ], [ %.131, %bb.n ] ; 3 uses
  %.033111 = phi i64 [ 0, %.lr.ph ], [ %.134, %bb.n ] ; 3 uses
  %.036110 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.050.0109 = phi ptr [ %spec.select.i43, %.lr.ph ], [ %i.bl, %bb.n ] ; 6 uses
  %.sroa.061.0108 = phi ptr [ %spec.select.i, %.lr.ph ], [ %i.bk, %bb.n ] ; 6 uses
  %i.ag = load ptr, ptr %.sroa.061.0108, align 8, !tbaa !204 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  %i.ai = load ptr, ptr %.sroa.050.0109, align 8, !tbaa !204 ; 2 uses
  %.not99 = icmp eq ptr %i.ai, %i.p               ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.not99, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !421, !range !283, !noundef !108
  %i.al = icmp eq i8 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.050.0109, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !421, !range !283, !noundef !108 ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %._crit_edge, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp eq i8 %i.an, 0
  br i1 %i.ap, label %.loopexit, label %bb.n

bb.g:                                             ; preds = %bb.b
  br i1 %.not99, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ar = sub i64 %i.aq, %i.af                    ; 7 uses
  %i.as = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.at = sub i64 %i.as, %i.af                    ; 7 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  br i1 %i.au, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp slt i64 %i.at, %i.ar
  br i1 %i.av, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !204
  %i.ax = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.ay = sub i64 %i.ax, %i.aq                    ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.050.0109, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !204
  %i.ba = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.bb = sub i64 %i.ba, %i.as                    ; 2 uses
  %.not = icmp eq i64 %i.ay, %i.bb
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !421, !range !283, !noundef !108
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.050.0109, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !421, !range !283, !noundef !108 ; 2 uses
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._crit_edge, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp eq i8 %i.bg, 0
  br i1 %i.bi, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.e, %bb.m, %bb.f
  %.134 = phi i64 [ %.033111, %bb.f ], [ %.033111, %bb.e ], [ %i.at, %bb.m ], [ %i.at, %bb.l ]
  %.131 = phi i64 [ %.030112, %bb.f ], [ %.030112, %bb.e ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ]
  %.128 = phi i64 [ %.027113, %bb.f ], [ %.027113, %bb.e ], [ %i.ay, %bb.m ], [ %i.ay, %bb.l ]
  %.1 = phi i64 [ %.0114, %bb.f ], [ %.0114, %bb.e ], [ %i.ay, %bb.m ], [ %i.ay, %bb.l ]
  %i.bj = add nuw i64 %.036110, 1                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.050.0109, i64 24
  %i.bm = icmp ult i64 %i.bj, %spec.select.i45
  br i1 %i.bm, label %bb.b, label %.loopexit, !llvm.loop !1158

._crit_edge:                                      ; preds = %bb.e, %bb.i, %bb.l, %bb.j
  %.235.ph = phi i64 [ %i.at, %bb.j ], [ %.033111, %bb.e ], [ %i.at, %bb.i ], [ %i.at, %bb.l ]
  %.232.ph = phi i64 [ %i.ar, %bb.j ], [ %.030112, %bb.e ], [ %i.ar, %bb.i ], [ %i.ar, %bb.l ]
  %.229.ph = phi i64 [ %i.bb, %bb.j ], [ %.027113, %bb.e ], [ %.027113, %bb.i ], [ %i.ay, %bb.l ]
  %.2.ph = phi i64 [ %i.ay, %bb.j ], [ %.0114, %bb.e ], [ %.0114, %bb.i ], [ %i.ay, %bb.l ]
  %i.bn = icmp eq i64 %.036110, %spec.select.i45
  br i1 %i.bn, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bo = icmp sgt i64 %.229.ph, %.2.ph
  %i.bp = icmp slt i64 %.235.ph, %.232.ph
  %brmerge = select i1 %i.bp, i1 true, i1 %i.bo
  br i1 %brmerge, label %.loopexit.sink.split, label %.thread184

.thread184:                                       ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.061.0108, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !421, !range !283, !noundef !108
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread184
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.050.0109, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !421, !range !283, !noundef !108
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %bb.o, %bb.p, %bb.a
  %i.bw = tail call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.f, %bb.g, %bb.h, %bb.m, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit, %.loopexit.sink.split, %._crit_edge, %.thread184, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_startmarkEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !450  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !281  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !282, !range !283, !noundef !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.f, ptr %i.g, align 8, !tbaa !454
  switch i32 %i.d, label %bb.aj [
    i32 0, label %bb.b
    i32 -1, label %bb.c
    i32 -2, label %bb.c
    i32 -3, label %bb.e
    i32 -4, label %bb.q
    i32 -5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  store ptr %i.i, ptr %i.a, align 8, !tbaa !450
  br label %.loopexit50

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  store ptr %i.q, ptr %i.a, align 8, !tbaa !450
  %i.r = icmp eq i32 %i.d, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !478
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_assertionEPKNS0_14re_syntax_baseEb.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_assertionEPKNS0_14re_syntax_baseEb.exit

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_assertionEPKNS0_14re_syntax_baseEb.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.z, %bb.d ], [ %i.u, %bb.c ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !204
  %i.ab = zext i1 %i.r to i8
  store i32 3, ptr %.0.i, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !481
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.ad, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i8 %i.ab, ptr %i.ae, align 8, !tbaa !483
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !473
  br label %.loopexit50

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !444, !range !283, !noundef !108
  store i8 1, ptr %i.af, align 1, !tbaa !444
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !450
  %i.ap = invoke noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %bb.f unwind label %.loopexit.split-lp46 ; 2 uses

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.p, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20match_assert_backrefEv:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ep = xor i64 %i.ej, -1
  %i.eq = add nsw i64 %.016.i26.i.i.i37, %i.ep
  %.sroa.011.1.i30.i.i.i41 = select i1 %i.en, ptr %.sroa.011.015.i27.i.i.i38, ptr %i.eo ; 2 uses
  %.1.i31.i.i.i42 = select i1 %i.en, i64 %i.ej, i64 %i.eq ; 2 uses
  %i.er = icmp sgt i64 %.1.i31.i.i.i42, 0
  br i1 %i.er, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i36, label %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52, !llvm.loop !35

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.036.1.i.i.i50 = phi ptr [ %i.ds, %bb.w ], [ %.sroa.036.050.i.i.i28, %bb.x ] ; 3 uses
  %.2.i.i.i51 = phi i64 [ %i.du, %bb.w ], [ %i.dn, %bb.x ] ; 2 uses
  %i.es = icmp sgt i64 %.2.i.i.i51, 0
  br i1 %i.es, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i26, label %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52, !llvm.loop !36

_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52: ; preds = %bb.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i36, %bb.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i32
  %.sroa.3.0.i.i.i22 = phi ptr [ %.sroa.011.1.i30.i.i.i41, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i36 ], [ %i.ef, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i32 ], [ %i.df, %bb.v ], [ %.sroa.036.1.i.i.i50, %bb.y ] ; 2 uses
  %.sroa.041.0.i.i.i23 = phi ptr [ %.sroa.011.0.lcssa.i.i.i.i33, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i25.i.i.i36 ], [ %.sroa.011.0.lcssa.i.i.i.i33, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost13re_detail_60020named_subexpressions4nameESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_less_valEET_SE_SE_RKT0_T1_.exit.i.i.i32 ], [ %i.df, %bb.v ], [ %.sroa.036.1.i.i.i50, %bb.y ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !486
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !486 ; 2 uses
  %i.ex = icmp eq ptr %i.eu, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -112
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !488
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52, %bb.z
  %i.fa = phi i32 [ %i.ez, %bb.z ], [ -1, %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit52 ]
  %.not5974 = icmp eq ptr %.sroa.041.0.i.i.i23, %.sroa.3.0.i.i.i22
  br i1 %.not5974, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.sroa.0.075 = phi ptr [ %i.fc, %.lr.ph ], [ %.sroa.041.0.i.i.i23, %bb.aa ] ; 2 uses
  %i.fb = load i32, ptr %.sroa.0.075, align 4, !tbaa !372
  %.not = icmp eq i32 %i.fa, %i.fb                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.075, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.fc, %.sroa.3.0.i.i.i22
  %or.cond148 = select i1 %.not, i1 true, i1 %.not59
  br i1 %or.cond148, label %.loopexit, label %.lr.ph, !llvm.loop !1172

bb.ab:                                            ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !486
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !486 ; 2 uses
  %i.fh = icmp eq ptr %i.fe, %i.fg
  br i1 %i.fh, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -112
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !488
  %i.fk = icmp eq i32 %i.fj, %i.da
  %i.fl = icmp eq i32 %i.d, 0
  %i.fm = or i1 %i.fl, %i.fk
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit, %bb.d, %bb.aa, %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit, %bb.ac, %bb.ab, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit21
  %.5 = phi i1 [ %i.cz, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit21 ], [ %i.fm, %bb.ac ], [ false, %bb.aa ], [ false, %bb.ab ], [ %i.bz, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit ], [ false, %_ZNK5boost13re_detail_60020named_subexpressions11equal_rangeEi.exit ], [ false, %bb.d ], [ false, %bb.g ], [ %.not, %.lr.ph ]
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !60
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !450
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %.loopexit
  %.015 = phi i1 [ %.5, %.loopexit ], [ false, %bb.a ]
  ret i1 %.015
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17match_toggle_caseEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !454, !range !283, !noundef !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !473
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !478
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16push_case_changeEb.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !473
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16push_case_changeEb.exit

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16push_case_changeEb.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  store i32 18, ptr %.0.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i8 %i.b, ptr %i.k, align 8, !tbaa !500
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !473
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !450  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !315, !range !283, !noundef !108
  store i8 %i.o, ptr %i.a, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  store ptr %i.q, ptr %i.l, align 8, !tbaa !450
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_recursionEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::re_detail_600::recursion_info", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !486, !noalias !1178
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !486, !noalias !1179
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.011.0 = phi ptr [ %i.c, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %.sroa.011.0, %i.d
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %.sroa.011.0, i64 -112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !488
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !281
  %i.m = icmp eq i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.b, !llvm.loop !1177

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %.sroa.011.0, i64 -8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !204
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !204
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.ae, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !478
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  br label %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit

_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit: ; preds = %.loopexit, %bb.e
  %.0.i = phi ptr [ %i.z, %bb.e ], [ %i.u, %.loopexit ] ; 2 uses
  store i32 15, ptr %.0.i, align 8, !tbaa !60
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !473
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !462 ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !460
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit
  tail call void @_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 50)
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !462
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit
  %i.ae = phi ptr [ %.pre, %bb.f ], [ %i.ab, %_ZN5boost13re_detail_60012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18push_recursion_popEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false)
  store i8 1, ptr %i.ah, align 4, !tbaa !417
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr null, ptr %i.ai, align 8, !tbaa !422
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !461 ; 14 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not.i.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !418 ; 2 uses
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !419 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i7 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i7, label %.noexc10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !144

.noexc.i.i.i:                                     ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc9 unwind label %bb.ad

.noexc9:                                          ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #32
          to label %.noexc10 unwind label %bb.ad

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.at = phi ptr [ null, %bb.h ], [ %i.as, %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !419
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !418
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !423
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !420 ; 2 uses
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !420 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not11.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc10, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %.noexc10 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.ax, %.noexc10 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.013.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.012.i.i.i.i.i.i, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !421, !range !283, !noundef !108
  store i8 %i.bb, ptr %i.az, align 8, !tbaa !421
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.at, %.noexc10 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.au, align 8, !tbaa !418
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.be, i8 0, i64 25, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !146
  store <2 x ptr> %i.bj, ptr %i.bg, align 8, !tbaa !146
  %.not.i.i.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i8, label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i8.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i8.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !132
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !132
  br label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i: ; preds = %bb.l, %bb.k, %.loopexit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !469
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !469
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.bt = load i8, ptr %i.ah, align 4, !tbaa !417, !range !283, !noundef !108 ; 2 uses
  %i.bu = trunc nuw i8 %i.bt to i1
  store i8 %i.bt, ptr %i.bs, align 4, !tbaa !417
  br i1 %i.bu, label %.noexc, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !204
  store i64 %i.bw, ptr %i.be, align 8, !tbaa !204
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !204
  store i64 %i.by, ptr %i.bf, align 8, !tbaa !204
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !204
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !204
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !421, !range !283, !noundef !108
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i8 %i.cd, ptr %i.ce, align 8, !tbaa !421
  br label %.noexc

.noexc:                                           ; preds = %bb.m, %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !461
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !461
  br label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE9push_backEOSJ_.exit

bb.n:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE17_M_realloc_insertIJSJ_EEEvNS5_IPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE9push_backEOSJ_.exit unwind label %bb.ad

_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE9push_backEOSJ_.exit: ; preds = %.noexc, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !140 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE9push_backEOSJ_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cl, align 8, !tbaa !142
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !143
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27, !inline_history !38
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27, !inline_history !38
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.r ], [ %i.cy, %bb.s ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.t, label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !144

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %_ZNSt6vectorIN5boost13re_detail_60014recursion_infoINS0_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS0_9sub_matchISE_EEEEEEESaISJ_EE9push_backEOSJ_.exit
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !419 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i1.i.i, label %_ZN5boost13re_detail_60014recursion_infoINS_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISD_EEEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !423
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #29
  br label %_ZN5boost13re_detail_60014recursion_infoINS_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISD_EEEEEED2Ev.exit

_ZN5boost13re_detail_60014recursion_infoINS_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISD_EEEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_60020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !450
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !60
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !486 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -104
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !489
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !456
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 -96
  %i.do = call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.dn, ptr noundef nonnull align 8 dereferenceable(77) %i.dm) ; 0 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !450
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60 ; 2 uses
  store ptr %i.dr, ptr %i.e, align 8, !tbaa !450
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !281 ; 2 uses
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !486 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -112
  store i32 %i.dt, ptr %i.dv, align 8, !tbaa !488
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 -8
  %i.dy = load i64, ptr %i.dw, align 8            ; 2 uses
  store i64 %i.dy, ptr %i.dx, align 8, !tbaa !204
  %i.dz = sub nsw i32 -2, %i.dt                   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost13re_detail_60015mem_block_cacheD2Ev:bb.a
bb.x:                                             ; preds = %bb.w
  %i.ai = load atomic ptr, ptr %i.ag seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ai) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.aj seq_cst, align 8
  %.not.12 = icmp eq ptr %i.ak, null
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.al = load atomic ptr, ptr %i.aj seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.al) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load atomic ptr, ptr %i.am seq_cst, align 8
  %.not.13 = icmp eq ptr %i.an, null
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = load atomic ptr, ptr %i.am seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ao) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = load atomic ptr, ptr %i.ap seq_cst, align 8
  %.not.14 = icmp eq ptr %i.aq, null
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = load atomic ptr, ptr %i.ap seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ar) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = load atomic ptr, ptr %i.as seq_cst, align 8
  %.not.15 = icmp eq ptr %i.at, null
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = load atomic ptr, ptr %i.as seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.au) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1184
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140  ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !132
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !132
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !140
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !143
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !1183
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !1183
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !144

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !140
  br label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEaSERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !469
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !469
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !417, !range !283, !noundef !108 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ah, ptr %i.aj, align 4, !tbaa !417
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEaSERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !204
  store i64 %i.am, ptr %i.al, align 8, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !204
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !204
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !204
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i8, ptr %i.at, align 8, !tbaa !421, !range !283, !noundef !108
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.au, ptr %i.av, align 8, !tbaa !421
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEaSERKS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !419    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !423
  %i.i = load ptr, ptr %0, align 8, !tbaa !419    ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i, !prof !144

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 4 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.012.i.i.i.i.i, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !421, !range !283, !noundef !108
  store i8 %i.r, ptr %i.p, align 8, !tbaa !421
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !419    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !423
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #29
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !419
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !423
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !418 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.af = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i25 ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i25 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i25 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ag = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !204
  store i64 %i.ag, ptr %.0811.i.i.i.i.i, align 8, !tbaa !204
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !204
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !204
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !421, !range !283, !noundef !108
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.al, ptr %i.am, align 8, !tbaa !421
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, !llvm.loop !1185

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.as = icmp sgt i64 %i.ad, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i27, label %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.h
  %i.at = udiv exact i64 %i.ad, 24
  br label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %.lr.ph.i.i.i.i.i28, %.lr.ph.preheader.i.i.i.i.i27
  %.012.i.i.i.i.i29 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i28 ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i27 ] ; 2 uses
  %.0811.i.i.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i28 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i27 ] ; 4 uses
  %.0910.i.i.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i28 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i27 ] ; 4 uses
  %i.au = load i64, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !204
  store i64 %i.au, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !204
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !204
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !421, !range !283, !noundef !108
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 16
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !421
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 24
  %i.bd = add nsw i64 %.012.i.i.i.i.i29, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i29, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i28, label %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, !llvm.loop !1186

_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i28, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ] ; 3 uses
  %.01214.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !421, !range !283, !noundef !108
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !421
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1187

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !419
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit
  %i.bk = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i25 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !418
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !419    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !144

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !419
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !418
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !423
  %i.m = load ptr, ptr %1, align 8, !tbaa !420    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !420  ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.012.i.i.i.i.i, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !421, !range !283, !noundef !108
  store i8 %i.q, ptr %i.o, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i8 0, i64 25, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !140  ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !146
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !146
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i8 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !132
  br label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !469
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !469
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !417, !range !283, !noundef !108 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 %i.ak, ptr %i.ai, align 4, !tbaa !417
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !204
  store i64 %i.an, ptr %i.t, align 8, !tbaa !204
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !204
  store i64 %i.ap, ptr %i.u, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !204
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !204
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i8, ptr %i.at, align 8, !tbaa !421, !range !283, !noundef !108
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.au, ptr %i.av, align 8, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost13re_detail_60014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE12unwind_untilEiPSD_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sub nsw i32 -2, %3
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01627 = phi ptr [ %.1, %bb.g ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01627, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %.not23 = icmp eq i32 %i.c, %1
  br i1 %.not23, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01627, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !447  ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !448  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN5boost13re_detail_60014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE12unwind_untilEiPSD_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, ptr noundef nonnull %i.f, i32 noundef %3) ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !447
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.d ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1188

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e, %bb.g, %.lr.ph, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ %.01627, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN5boost13re_detail_60016re_is_set_memberIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEjEET_SH_SH_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !374
  %.not265 = icmp eq i32 %i.h, 0
  br i1 %.not265, label %._crit_edge, label %.lr.ph223.split.us

.lr.ph223.split.us:                               ; preds = %bb.b, %bb.g
  %.076222.us = phi i32 [ %i.am, %bb.g ], [ 0, %bb.b ]
  %.078221.us = phi ptr [ %.280.us, %bb.g ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i8, ptr %.078221.us, align 1, !tbaa !60 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %.preheader204.us

.preheader204.us:                                 ; preds = %.lr.ph223.split.us
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us226

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us226: ; preds = %.preheader204.us, %bb.c
  %i.k = phi i8 [ %.pr.us230, %bb.c ], [ %i.i, %.preheader204.us ]
  %.179215.us227 = phi ptr [ %i.m, %bb.c ], [ %.078221.us, %.preheader204.us ] ; 2 uses
  %.sroa.0.0175214.us228 = phi ptr [ %i.n, %bb.c ], [ %0, %.preheader204.us ] ; 2 uses
  %i.l = load i8, ptr %.sroa.0.0175214.us228, align 1, !tbaa !60
  %.not93.us229 = icmp eq i8 %i.l, %i.k
  br i1 %.not93.us229, label %bb.c, label %.critedge.us.thread

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us226
  %i.m = getelementptr inbounds nuw i8, ptr %.179215.us227, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0175214.us228, i64 1 ; 3 uses
  %.pr.us230 = load i8, ptr %i.m, align 1, !tbaa !60 ; 3 uses
  %.not92.us231 = icmp ne i8 %.pr.us230, 0
  %i.o = icmp ne ptr %i.n, %1
  %or.cond.us232 = select i1 %.not92.us231, i1 %i.o, i1 false
  br i1 %or.cond.us232, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us226, label %.critedge.us, !llvm.loop !1189

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us.us: ; preds = %.preheader204.us, %bb.d
  %.179215.us.us = phi ptr [ %i.y, %bb.d ], [ %.078221.us, %.preheader204.us ] ; 3 uses
  %.sroa.0.0175214.us.us = phi ptr [ %i.z, %bb.d ], [ %0, %.preheader204.us ] ; 3 uses
end_hunk_2
