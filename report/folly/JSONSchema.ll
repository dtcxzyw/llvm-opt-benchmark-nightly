Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/JSONSchema?download=true
inline.NumInlined: 9470
inline.NumDeleted: 4163
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_wordEv:bb.a
  %switch.i14.old = icmp ult i8 %.off.i13.old, 4
  br i1 %switch.i14.old, label %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11
  br i1 %.not26.i16, label %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = load ptr, ptr %i.bp, align 8, !tbaa !10026
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !10007
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !10050
  %i.gp = zext i8 %i.fq to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !9950
  %i.gs = and i16 %i.gr, 8192
  %.not36.i17.not = icmp eq i16 %i.gs, 0
  br i1 %.not36.i17.not, label %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26, label %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread

_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26: ; preds = %bb.ai, %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 3 uses
  store ptr %i.gt, ptr %i.q, align 8, !tbaa !10386
  %i.gu = icmp eq ptr %i.gt, %i.u
  br i1 %i.gu, label %.critedge2, label %.lr.ph42.split.split, !llvm.loop !12069

_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread: ; preds = %bb.aj, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11, %bb.ae, %bb.af, %bb.ah, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.x, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11.us, %bb.t, %bb.v, %bb.s, %bb.r, %bb.o
  %i.gv = phi ptr [ %i.ei, %bb.ad ], [ %i.dd, %bb.x ], [ %i.bx, %bb.s ], [ %i.bx, %bb.o ], [ %i.bx, %bb.r ], [ %i.dd, %bb.v ], [ %i.dd, %bb.t ], [ %i.dd, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11.us ], [ %i.ei, %bb.y ], [ %i.ei, %bb.z ], [ %i.ei, %bb.ac ], [ %i.fp, %bb.ah ], [ %i.fp, %bb.af ], [ %i.fp, %bb.ae ], [ %i.fp, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11 ], [ %i.fp, %bb.aj ]
  %i.gw = phi i8 [ %i.ej, %bb.ad ], [ %i.de, %bb.x ], [ %i.by, %bb.s ], [ %i.by, %bb.o ], [ %i.by, %bb.r ], [ %i.de, %bb.v ], [ %i.de, %bb.t ], [ %i.de, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11.us ], [ 95, %bb.z ], [ %i.ej, %bb.y ], [ %i.ej, %bb.ac ], [ 95, %bb.af ], [ %i.fq, %bb.ah ], [ %i.fq, %bb.aj ], [ %i.fq, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit.thread.i11 ], [ %i.fq, %bb.ae ]
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !428
  %i.ha = and i8 %i.gz, 3
  %.not29 = icmp eq i8 %i.ha, 0
  br i1 %.not29, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread
  %i.hb = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.hb, label %.critedge2, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.ak
  %.pre83 = load ptr, ptr %i.q, align 8, !tbaa !8346
  %.pre84 = load ptr, ptr %i.r, align 8, !tbaa !8346
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge82, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread
  %i.hc = phi ptr [ %.pre84, %._crit_edge82 ], [ %i.u, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread ] ; 2 uses
  %i.hd = phi ptr [ %.pre83, %._crit_edge82 ], [ %i.gv, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread ] ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.hc
  br i1 %i.he, label %.critedge2, label %bb.f, !llvm.loop !12070

.critedge2:                                       ; preds = %bb.al, %bb.ak, %.critedge, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us52, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us.us, %bb.d
  %.0 = phi i1 [ false, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us52 ], [ true, %bb.d ], [ false, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us ], [ false, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26.us.us ], [ false, %_ZNK5boost16cpp_regex_traitsIcE7isctypeEcj.exit19.thread26 ], [ true, %bb.ak ], [ false, %bb.al ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_lineEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10364, !nonnull !530, !align !574
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8372
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.e, label %.critedge.thread, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !8346
  %.pre10 = load ptr, ptr %i.g, align 8, !tbaa !8346
  br label %bb.b

bb.b:                                             ; preds = %.preheader5, %bb.i
  %i.h = phi ptr [ %.pre10, %.preheader5 ], [ %i.y, %bb.i ] ; 3 uses
  %.promoted = phi ptr [ %.pre, %.preheader5 ], [ %i.z, %bb.i ] ; 2 uses
  %i.i = icmp eq ptr %.promoted, %i.h
  br i1 %i.i, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit
  %i.j = phi ptr [ %i.l, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit ], [ %.promoted, %bb.b ] ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !428
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 5 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !10386
  %i.m = icmp eq ptr %i.l, %i.h                   ; 2 uses
  switch i8 %i.k, label %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit [
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
  ]

_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit: ; preds = %.lr.ph
  br i1 %i.m, label %.critedge.thread, label %.lr.ph, !llvm.loop !12071

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !10364, !nonnull !530, !align !574
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8372
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 340
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10243
  %.not4 = icmp eq i32 %i.q, 0
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.r, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.l, align 1, !tbaa !428
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !428
  %i.w = and i8 %i.v, 3
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br i1 %i.x, label %.critedge.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre11 = load ptr, ptr %i.f, align 8, !tbaa !8346
  %.pre12 = load ptr, ptr %i.g, align 8, !tbaa !8346
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.y = phi ptr [ %.pre12, %._crit_edge ], [ %i.h, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %.pre11, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %.critedge.thread, label %bb.b, !llvm.loop !12072

.critedge.thread:                                 ; preds = %bb.b, %bb.i, %bb.h, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit, %bb.e, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.e ], [ true, %bb.a ], [ false, %_ZN5boost13re_detail_50012is_separatorIcEEbT_.exit ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_bufEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !8346
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8346
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10363
  %i.h = and i32 %i.g, 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !10392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !10393
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10364, !nonnull !530, !align !574
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8372
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10237
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !10362
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10368 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !8346 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !10360 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = ptrtoint ptr %.sroa.01.0.copyload to i64 ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !8346
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !8346
  %i.q = icmp ne ptr %i.p, %.sroa.01.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !10381
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.o, ptr %i.t, align 8, !tbaa !8346
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10382
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.w, %i.x
  %1 = sdiv exact i64 %i.y, 24                    ; 3 uses
  %i.z = icmp ugt i64 %1, 3
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i = load i64, ptr %i.aa, align 8, !tbaa !8346
  %i.ab = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %i.ac = shufflevector <2 x i64> %i.ab, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %2 = add nsw i64 %1, -3                         ; 2 uses
  %i.ad = add nsw i64 %1, -4
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.06.i = phi i64 [ 3, %.lr.ph.i.new ], [ %i.aq, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  store <2 x i64> %i.ac, ptr %i.af, align 8, !tbaa !8346
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !10381
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x i64> %i.ac, ptr %i.ai, align 8, !tbaa !8346
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !10381
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x i64> %i.ac, ptr %i.al, align 8, !tbaa !8346
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !10381
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x i64> %i.ac, ptr %i.ao, align 8, !tbaa !8346
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !10381
  %i.aq = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !12073

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
  store <2 x i64> %i.ac, ptr %i.ar, align 8, !tbaa !8346
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !10381
  %i.at = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, label %bb.c, !llvm.loop !12074

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit: ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.k, align 8, !tbaa !8346
  store i64 %i.av, ptr %i.au, align 8, !tbaa !8346
  %i.aw = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.ax = load i8, ptr %i.b, align 2, !tbaa !10393, !range !629, !noundef !530
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit
  %i.az = load i8, ptr %i.a, align 1, !tbaa !10392, !range !629, !noundef !530
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.e, label %.thread4

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !10363 ; 2 uses
  %i.bd = and i32 %i.bc, 8192
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.thread4, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !10393
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !10368 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !8346 ; 5 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !10360 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %.sroa.0.0.copyload, ptr %i.bh, align 8, !tbaa !8346
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !10381
  store ptr %.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !8346
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8346
  %i.bl = icmp ne ptr %.sroa.0.0.copyload, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !10381
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %.sroa.0.0.copyload, ptr %i.bo, align 8, !tbaa !8346
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !8346
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !10394
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !10333
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !8346
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !8346
  %i.bt = and i32 %i.bc, 131072
  %.not2 = icmp eq i32 %i.bt, 0
  br i1 %.not2, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %0, align 8, !tbaa !10369, !nonnull !530, !align !574
  tail call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE12maybe_assignERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.bu, ptr noundef nonnull align 8 dereferenceable(77) %i.be)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !10393, !range !629
  %i.bv = trunc nuw i8 %.pre to i1
  br i1 %i.bv, label %.thread, label %.thread4

.thread4:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bw = load i64, ptr %i.au, align 8, !tbaa !8346
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !8346
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, %bb.f, %.thread4, %bb.g
  %i.bx = phi i1 [ true, %bb.g ], [ false, %.thread4 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit ]
  ret i1 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_litEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #13 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10377
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10378
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !1713

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !10377
  store ptr null, ptr %i.g, align 8, !tbaa !10378
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !542
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !542
  %i.d = icmp ugt i32 %i.c, 80
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10391, !nonnull !530, !align !574
  invoke void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef 18)
          to label %bb.c unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.b, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10390
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10395
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10379 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !10379
  %i.p = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, !prof !1713

end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv:bb.a

.noexc23:                                         ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i: ; preds = %.noexc23, %.noexc
  %i.z = phi ptr [ %i.u, %.noexc ], [ %.pre.i, %.noexc23 ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit: ; preds = %bb.c, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i
  %.0.i = phi ptr [ %i.aa, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i ], [ %i.i, %bb.c ] ; 2 uses
  store i32 2, ptr %.0.i, align 8, !tbaa !428
  store ptr %.0.i, ptr %i.g, align 8, !tbaa !10390
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !10362
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit, %bb.ab
  %i.an = phi ptr [ %.pre, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit ], [ %i.ci, %bb.ab ] ; 2 uses
  %.not42 = icmp eq ptr %i.an, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.z
  %i.ao = phi ptr [ %i.bz, %bb.z ], [ %i.an, %bb.i ]
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10216
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEvE14s_match_vtableB5cxx11, i64 %i.aq
  %.unpack = load i64, ptr %i.ar, align 16, !tbaa !428
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !10380
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ac, align 8, !tbaa !10380
  %i.au = inttoptr i64 %.unpack to ptr
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.av, label %._crit_edge44, label %bb.k

._crit_edge44:                                    ; preds = %bb.j
  %.pre45 = load ptr, ptr %i.ab, align 8, !tbaa !10362
  br label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !10380
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !10365
  %i.ay = icmp sgt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10391, !nonnull !530, !align !574
  invoke void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 18)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !10363
  %i.bc = and i32 %i.bb, 8192
  %.not19 = icmp eq i32 %i.bc, 0
  br i1 %.not19, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !8346 ; 2 uses
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !8346
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !8346
  %i.bh = icmp eq ptr %i.bd, %i.bg
  br i1 %i.bh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.aj, align 1, !tbaa !10392
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  store i8 0, ptr %i.ak, align 4, !tbaa !10387
  store i8 0, ptr %i.al, align 1, !tbaa !10388
  store i8 0, ptr %i.am, align 2, !tbaa !10389
  br label %bb.s

bb.s:                                             ; preds = %.noexc24, %bb.r
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !10390
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !428
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.bk
  %.unpack.i = load i64, ptr %i.bl, align 16, !tbaa !428
  %i.bm = inttoptr i64 %.unpack.i to ptr
  %i.bn = load i8, ptr %i.ak, align 4, !tbaa !10387, !range !629, !noundef !530
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.bo)
          to label %.noexc24 unwind label %bb.x, !inline_history !401

.noexc24:                                         ; preds = %bb.s
  br i1 %i.bp, label %bb.s, label %bb.t, !llvm.loop !402

bb.t:                                             ; preds = %.noexc24
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !10362 ; 2 uses
  %.not32 = icmp eq ptr %i.bq, null
  %i.br = load i32, ptr %i.af, align 8, !tbaa !10363
  %i.bs = and i32 %i.br, 8192
  %.not22 = icmp eq i32 %i.bs, 0
  br i1 %.not22, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !8346 ; 2 uses
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !8346
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !8346
  %i.bx = icmp eq ptr %i.bt, %i.bw
  br i1 %i.bx, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.aj, align 1, !tbaa !10392
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  br i1 %.not32, label %.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge44, %bb.y
  %i.bz = phi ptr [ %.pre45, %._crit_edge44 ], [ %i.bq, %bb.y ] ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.z, %bb.i
  store i8 1, ptr %i.ak, align 4, !tbaa !10387
  store i8 0, ptr %i.al, align 1, !tbaa !10388
  store i8 0, ptr %i.am, align 2, !tbaa !10389
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc26, %._crit_edge
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !10390
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !428
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11, i64 %i.cc
  %.unpack.i25 = load i64, ptr %i.cd, align 16, !tbaa !428
  %i.ce = inttoptr i64 %.unpack.i25 to ptr
  %i.cf = load i8, ptr %i.ak, align 4, !tbaa !10387, !range !629, !noundef !530
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.cg)
          to label %.noexc26 unwind label %.loopexit, !inline_history !401

.noexc26:                                         ; preds = %bb.aa
  br i1 %i.ch, label %bb.aa, label %bb.ab, !llvm.loop !402

bb.ab:                                            ; preds = %.noexc26
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !10362 ; 2 uses
  %.not33 = icmp eq ptr %i.ci, null
  br i1 %.not33, label %.thread, label %bb.i, !llvm.loop !12075

.thread:                                          ; preds = %bb.ab, %bb.y
  %.5.in = load i8, ptr %i.ak, align 4, !tbaa !10387, !range !629, !noundef !530
  %.5 = trunc nuw i8 %.5.in to i1
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !542
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !542
  ret i1 %.5

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.by, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !542
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr %i.a, align 8, !tbaa !542
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE12maybe_assignERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !10333, !range !629, !noundef !530
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit.sink.split, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit

_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10382
  %i.f = load ptr, ptr %0, align 8, !tbaa !10360  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.0.i.i = select i1 %i.l, ptr %i.f, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8346
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %spec.select.i48 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.j, i64 2) ; 2 uses
  %.not160 = icmp ult i64 %i.j, 3
  br i1 %.not160, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10382 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = load ptr, ptr %1, align 8, !tbaa !10360  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.t, %i.v
  %2 = sdiv exact i64 %i.w, 24
  %i.x = icmp ugt i64 %2, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %spec.select.i43 = select i1 %i.x, ptr %i.y, ptr %i.s
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !8346
  %i.aa = icmp eq ptr %i.z, %i.p
  %i.ab = icmp sgt i32 %i.k, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.i.i47 = select i1 %i.ab, ptr %i.ac, ptr %i.m
  %i.ad = icmp sgt i32 %i.k, 2
  %.0.i = select i1 %i.ad, ptr %i.q, ptr %i.m
  %i.ae = select i1 %i.aa, ptr %.0.i.i47, ptr %.0.i
  %.sroa.020.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !8346
  %i.af = ptrtoint ptr %.sroa.020.0.copyload to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.0116 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 4 uses
  %.027115 = phi i64 [ 0, %.lr.ph ], [ %.128, %bb.n ] ; 4 uses
  %.030114 = phi i64 [ 0, %.lr.ph ], [ %.131, %bb.n ] ; 3 uses
  %.033113 = phi i64 [ 0, %.lr.ph ], [ %.134, %bb.n ] ; 3 uses
  %.036112 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %bb.n ] ; 2 uses
  %.sroa.053.0111 = phi ptr [ %spec.select.i43, %.lr.ph ], [ %i.bm, %bb.n ] ; 6 uses
  %.sroa.064.0110 = phi ptr [ %i.q, %.lr.ph ], [ %i.bl, %bb.n ] ; 6 uses
  %i.ag = load ptr, ptr %.sroa.064.0110, align 8, !tbaa !8346 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  %i.ai = load ptr, ptr %.sroa.053.0111, align 8, !tbaa !8346 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p                 ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.aj, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.am = icmp eq i8 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.053.0111, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !10381, !range !629, !noundef !530 ; 2 uses
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %._crit_edge, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.aq = icmp eq i8 %i.ao, 0
  br i1 %i.aq, label %.loopexit, label %bb.n

bb.g:                                             ; preds = %bb.b
  br i1 %i.aj, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.as = sub i64 %i.ar, %i.af                    ; 7 uses
  %i.at = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.au = sub i64 %i.at, %i.af                    ; 7 uses
  %i.av = icmp slt i64 %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp slt i64 %i.au, %i.as
  br i1 %i.aw, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !8346
  %i.ay = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.az = sub i64 %i.ay, %i.ar                    ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.053.0111, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !8346
  %i.bb = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.bc = sub i64 %i.bb, %i.at                    ; 2 uses
  %.not = icmp eq i64 %i.az, %i.bc
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.053.0111, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !10381, !range !629, !noundef !530 ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp eq i8 %i.bh, 0
  br i1 %i.bj, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.e, %bb.m, %bb.f
  %.134 = phi i64 [ %.033113, %bb.f ], [ %.033113, %bb.e ], [ %i.au, %bb.m ], [ %i.au, %bb.l ]
  %.131 = phi i64 [ %.030114, %bb.f ], [ %.030114, %bb.e ], [ %i.as, %bb.m ], [ %i.as, %bb.l ]
  %.128 = phi i64 [ %.027115, %bb.f ], [ %.027115, %bb.e ], [ %i.az, %bb.m ], [ %i.az, %bb.l ]
  %.1 = phi i64 [ %.0116, %bb.f ], [ %.0116, %bb.e ], [ %i.az, %bb.m ], [ %i.az, %bb.l ]
  %i.bk = add nuw i64 %.036112, 1                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.053.0111, i64 24
  %i.bn = icmp ult i64 %i.bk, %spec.select.i48
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !12076

._crit_edge:                                      ; preds = %bb.e, %bb.i, %bb.l, %bb.j
  %.235.ph = phi i64 [ %i.au, %bb.j ], [ %.033113, %bb.e ], [ %i.au, %bb.i ], [ %i.au, %bb.l ]
  %.232.ph = phi i64 [ %i.as, %bb.j ], [ %.030114, %bb.e ], [ %i.as, %bb.i ], [ %i.as, %bb.l ]
  %.229.ph = phi i64 [ %i.bc, %bb.j ], [ %.027115, %bb.e ], [ %.027115, %bb.i ], [ %i.az, %bb.l ]
  %.2.ph = phi i64 [ %i.az, %bb.j ], [ %.0116, %bb.e ], [ %.0116, %bb.i ], [ %i.az, %bb.l ]
  %i.bo = icmp eq i64 %.036112, %spec.select.i48
  br i1 %i.bo, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bp = icmp sgt i64 %.229.ph, %.2.ph
  %i.bq = icmp slt i64 %.235.ph, %.232.ph
  %brmerge = select i1 %i.bq, i1 true, i1 %i.bp
  br i1 %brmerge, label %.loopexit.sink.split, label %.thread186

.thread186:                                       ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread186
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.053.0111, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %bb.o, %bb.p, %bb.a
  %i.bx = tail call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.f, %bb.g, %bb.h, %bb.m, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE6suffixEv.exit, %.loopexit.sink.split, %._crit_edge, %.thread186, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_startmarkEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10362 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10218 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !10219, !range !629, !noundef !530
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.f, ptr %i.g, align 8, !tbaa !10366
  switch i32 %i.d, label %bb.ar [
    i32 0, label %bb.b
    i32 -1, label %bb.c
    i32 -2, label %bb.c
    i32 -3, label %bb.i
    i32 -4, label %bb.u
    i32 -5, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !428
  store ptr %i.i, ptr %i.a, align 8, !tbaa !10362
  br label %.loopexit67

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !428  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !428
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !428
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !428
  store ptr %i.q, ptr %i.a, align 8, !tbaa !10362
  %i.r = icmp eq i32 %i.d, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10390
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10395
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_assertionEPKNS0_14re_syntax_baseEb.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !10379 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !10379
  %i.ab = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, !prof !1713

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4072 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4080
  %i.ai = load <2 x ptr>, ptr %i.v, align 8, !tbaa !10378
  store i32 6, ptr %i.ag, align 8, !tbaa !428
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !10378
  store ptr %i.af, ptr %i.v, align 8, !tbaa !10395
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10391, !nonnull !530, !align !574
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 19)
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

end_hunk_1
begin_hunk_2_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_recursionEiPKNS0_14re_syntax_baseEPNS_13match_resultsISC_SF_EESQ_:bb.a
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4072 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4080
  %i.q = load <2 x ptr>, ptr %i.d, align 8, !tbaa !10378
  store i32 6, ptr %i.o, align 8, !tbaa !428
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !10378
  store ptr %i.n, ptr %i.d, align 8, !tbaa !10395
  store ptr %i.o, ptr %i.a, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10391, !nonnull !530, !align !574
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 19)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit: ; preds = %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, %bb.f
  %i.t = phi ptr [ %i.o, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i ], [ %.pre, %bb.f ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -184
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit, %bb.a
  %.0 = phi ptr [ %i.u, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit ], [ %i.c, %bb.a ] ; 6 uses
  store i32 14, ptr %.0, align 8, !tbaa !428
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !10416
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %2, ptr %i.w, align 8, !tbaa !10417
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  tail call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.x, ptr noundef nonnull align 8 dereferenceable(77) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 104
  invoke void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.y, ptr noundef nonnull align 8 dereferenceable(77) %4)
          to label %_ZN5boost13re_detail_50015saved_recursionINS_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISD_EEEEEEC2EiPKNS0_14re_syntax_baseEPSH_SM_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %i.x) #23
  resume { ptr, i32 } %i.z

_ZN5boost13re_detail_50015saved_recursionINS_13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISD_EEEEEEC2EiPKNS0_14re_syntax_baseEPSH_SM_.exit: ; preds = %bb.g
  store ptr %.0, ptr %i.a, align 8, !tbaa !10390
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE19push_repeater_countEiPPNS0_14repeater_countISC_EE(ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10390
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10395
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10379 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !10379
  %i.j = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, !prof !1713

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #23
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4072 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4080
  %i.q = load <2 x ptr>, ptr %i.d, align 8, !tbaa !10378
  store i32 6, ptr %i.o, align 8, !tbaa !428
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !10378
  store ptr %i.n, ptr %i.d, align 8, !tbaa !10395
  store ptr %i.o, ptr %i.a, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10391, !nonnull !530, !align !574
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 19)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10390
  br label %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit: ; preds = %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, %bb.f
  %i.t = phi ptr [ %i.o, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i ], [ %.pre, %bb.f ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -48
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit, %bb.a
  %.0 = phi ptr [ %i.u, %_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit ], [ %i.c, %bb.a ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !8346
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10403
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10403 ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -112
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !10405
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i32 [ %i.ac, %bb.h ], [ -2147483645, %bb.g ]
  store i32 5, ptr %.0, align 8, !tbaa !428
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.af, align 8, !tbaa !8346
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 %1, ptr %i.ag, align 8, !tbaa !10358
  store ptr %2, ptr %i.ae, align 8, !tbaa !10356
  %i.ah = load ptr, ptr %2, align 8, !tbaa !10359
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !10357
  store ptr %i.ae, ptr %2, align 8, !tbaa !10359
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10357 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !10358 ; 2 uses
  %i.am = icmp sgt i32 %1, %i.al
  %i.an = icmp sgt i32 %i.al, -1
  %or.cond.i.i = and i1 %i.am, %i.an
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 0, ptr %i.ao, align 8, !tbaa !10407
  br label %_ZN5boost13re_detail_50014saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2EiPPNS0_14repeater_countISC_EESC_i.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_ZN5boost13re_detail_50014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE12unwind_untilEiPSD_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i32 noundef %1, ptr noundef nonnull %i.aj, i32 noundef %i.ad) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !tbaa !428
  store <2 x i64> %i.as, ptr %i.ar, align 8, !tbaa !428
  br label %_ZN5boost13re_detail_50014saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2EiPPNS0_14repeater_countISC_EESC_i.exit

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 0, ptr %i.at, align 8, !tbaa !10407
  br label %_ZN5boost13re_detail_50014saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2EiPPNS0_14repeater_countISC_EESC_i.exit

_ZN5boost13re_detail_50014saved_repeaterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2EiPPNS0_14repeater_countISC_EESC_i.exit: ; preds = %bb.j, %bb.l, %bb.m
  store ptr %.0, ptr %i.a, align 8, !tbaa !10390
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10382 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !10360  ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10361
  %i.i = load ptr, ptr %0, align 8, !tbaa !10360  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 24
  %i.n = icmp ugt i64 %2, 384307168202282325
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i, !prof !425

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #46 ; 4 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !10381, !range !629, !noundef !530
  store i8 %i.s, ptr %i.q, align 8, !tbaa !10381
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.v = icmp eq ptr %i.t, %i.b
  br i1 %i.v, label %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !406

_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE11_M_allocateEm.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !10360  ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !10361
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #47
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE20_M_allocate_and_copyINS3_IPKSD_SF_EEEEPSD_mT_SL_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !10360
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !10361
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10382 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.af, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.f, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ah = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i26 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i25 ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i25 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i25 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ai = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !8346
  store i64 %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !8346
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !8346
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !8346
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !10381
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ar = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, !llvm.loop !12102

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.au = icmp sgt i64 %i.af, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %bb.h
  %i.av = udiv exact i64 %i.af, 24
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29, %.lr.ph.preheader.i.i.i.i.i28
  %.012.i.i.i.i.i30 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i29 ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i29 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i28 ] ; 4 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i29 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i28 ] ; 4 uses
  %i.aw = load i64, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !8346
  store i64 %i.aw, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !8346
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 8
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !8346
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !8346
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 16
  store i8 %i.bb, ptr %i.bc, align 8, !tbaa !10381
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 24
  %i.bf = add nsw i64 %.012.i.i.i.i.i30, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i30, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i29, label %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, !llvm.loop !12103

_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i29, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ] ; 3 uses
  %.01214.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.at, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !10381, !range !629, !noundef !530
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !10381
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !12104

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !10360
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit
  %i.bm = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE13_M_deallocateEPSD_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_ET0_T_SG_SF_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i25 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !10382
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESE_SD_ET0_T_SG_SF_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10382 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !10360  ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %2, 384307168202282325
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !425

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !10360
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !10382
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !10361
  %i.m = load ptr, ptr %1, align 8, !tbaa !10385  ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !10385 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !10381, !range !629, !noundef !530
  store i8 %i.r, ptr %i.p, align 8, !tbaa !10381
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.n
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !406

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !10382
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i8 0, i64 25, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !473 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !434
  store <2 x ptr> %i.ab, ptr %i.x, align 8, !tbaa !434
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428
  %.not.i.i.i.i8 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !542
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !542
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !10383
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !10383
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.am = load i8, ptr %i.al, align 4, !tbaa !10333, !range !629, !noundef !530 ; 2 uses
  %i.an = trunc nuw i8 %i.am to i1
  store i8 %i.am, ptr %i.ak, align 4, !tbaa !10333
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8346
  store i64 %i.ap, ptr %i.v, align 8, !tbaa !8346
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !8346
  store i64 %i.ar, ptr %i.w, align 8, !tbaa !8346
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i64, ptr %i.as, align 8, !tbaa !8346
  store i64 %i.au, ptr %i.at, align 8, !tbaa !8346
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !10381, !range !629, !noundef !530
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.aw, ptr %i.ax, align 8, !tbaa !10381
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost13re_detail_50014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE12unwind_untilEiPSD_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = sub nsw i32 -2, %3
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01627 = phi ptr [ %.1, %bb.g ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01627, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10358 ; 2 uses
  %.not23 = icmp eq i32 %i.c, %1
  br i1 %.not23, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01627, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10357 ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10358 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN5boost13re_detail_50014repeater_countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE12unwind_untilEiPSD_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, ptr noundef nonnull %i.f, i32 noundef %3) ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10357
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.d ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !12105

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e, %bb.g, %.lr.ph, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ %.01627, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN5boost13re_detail_50016re_is_set_memberIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEjEET_SH_SH_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9991 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10300
  %.not254 = icmp eq i32 %i.h, 0
  br i1 %.not254, label %._crit_edge, label %.lr.ph236.split

.lr.ph236.split:                                  ; preds = %bb.b, %bb.h
  %.076235 = phi i32 [ %i.au, %bb.h ], [ 0, %bb.b ]
  %.078234 = phi ptr [ %.280, %bb.h ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i8, ptr %.078234, align 1, !tbaa !428 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader217

.preheader217:                                    ; preds = %.lr.ph236.split
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us: ; preds = %.preheader217, %bb.c
  %.179228.us = phi ptr [ %i.t, %bb.c ], [ %.078234, %.preheader217 ] ; 3 uses
  %.sroa.0.0188227.us = phi ptr [ %i.u, %bb.c ], [ %0, %.preheader217 ] ; 3 uses
  %i.k = load i8, ptr %.sroa.0.0188227.us, align 1, !tbaa !428
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !10026
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10007 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !436
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.k), !call_target !10297, !inline_history !393
  %i.s = load i8, ptr %.179228.us, align 1, !tbaa !428 ; 2 uses
  %.not93.us = icmp eq i8 %i.r, %i.s
  br i1 %.not93.us, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit95.us
  %i.t = getelementptr inbounds nuw i8, ptr %.179228.us, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0188227.us, i64 1 ; 3 uses
  %.pr.us = load i8, ptr %i.t, align 1, !tbaa !428 ; 2 uses
  %.not92.us = icmp eq i8 %.pr.us, 0
end_hunk_2
