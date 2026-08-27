Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/objectnessBING?download=true
inline.NumInlined: 1535
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv8saliency14ObjectnessBING16loadTrainedModelEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.gb = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.am
  br i1 %i.gc, label %.body44, label %.body44.sink.split

.body44.sink.split:                               ; preds = %.body49, %bb.g
  %.sink = phi ptr [ %i.ay, %bb.g ], [ %i.gb, %.body49 ]
  %.pn14.pn.ph = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %.pn14, %.body49 ]
  %i.gd = load i64, ptr %i.am, align 8, !tbaa !17
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ge) #26
  br label %.body44

.body44:                                          ; preds = %.body44.sink.split, %.body49, %bb.g
  %.pn14.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %.pn14, %.body49 ], [ %.pn14.pn.ph, %.body44.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.gf = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.w
  br i1 %i.gg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body44, %bb.e
  %.sink119 = phi ptr [ %i.ai, %bb.e ], [ %i.gf, %.body44 ]
  %.pn14.pn.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn14.pn, %.body44 ]
  %i.gh = load i64, ptr %i.w, align 8, !tbaa !17
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %.sink119, i64 noundef %i.gi) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body44, %bb.e
  %.pn14.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn14.pn, %.body44 ], [ %.pn14.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.gj = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.e
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !17
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv8saliency14ObjectnessBING7matReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_3MatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.cv::FileStorage", align 8   ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::FileNode", align 8      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !10
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.g, ptr %i.c, align 8, !tbaa !56
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !46
  %i.j = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.j, ptr %i.e, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !17
  store i8 %i.l, ptr %i.k, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %3, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.q = load i64, ptr %i.n, align 8, !tbaa !14
  %i.r = add i64 %i.q, -4611686018427387897
  %i.s = icmp ult i64 %i.r, 7
  br i1 %i.s, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !14
  store i8 0, ptr %i.u, align 8, !tbaa !17
  invoke void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.w = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.u, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aa = invoke noundef zeroext i1 @_ZNK2cv11FileStorage8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.aa, label %bb.l, label %bb.ar

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.u
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.j
  %i.af = load i64, ptr %i.u, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.at

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !46, !noalias !106 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14, !noalias !106 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ao = ashr i64 %i.ak, 2                       ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.l
  %12 = and i64 %i.ak, -4
  %13 = sub i64 %i.am, %12
  %i.aq = mul nsw i64 %i.ao, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.al, i64 %i.aq
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.preheader.i.i.i
  %i.ar = phi ptr [ %i.bf, %bb.s ], [ %i.al, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.as = phi i64 [ %i.bl, %bb.s ], [ %i.am, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.024.i.i.i.i = phi i64 [ %i.bj, %bb.s ], [ %i.ao, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17, !noalias !109
  %i.aw = icmp eq i8 %i.av, 47
  br i1 %i.aw, label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 -2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17, !noalias !109
  %i.az = icmp eq i8 %i.ay, 47
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %.cast.i.i.i.i = ptrtoint ptr %i.ba to i64
  br label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17, !noalias !109
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -2
  %.cast10.i.i.i.i = ptrtoint ptr %i.be to i64
  br label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17, !noalias !109
  %i.bh = icmp eq i8 %i.bg, 47
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %.cast11.i.i.i.i = ptrtoint ptr %i.bi to i64
  br label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bj = add nsw i64 %.024.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.024.i.i.i.i, 1
  %i.bl = ptrtoint ptr %i.bf to i64
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !116

._crit_edge.i.i.i.i:                              ; preds = %bb.s, %bb.l
  %i.bm = phi i64 [ %i.am, %bb.l ], [ %13, %bb.s ] ; 5 uses
  %i.bn = phi ptr [ %i.al, %bb.l ], [ %scevgep.i.i.i, %bb.s ] ; 2 uses
  %i.bo = sub i64 %i.bm, %i.an
  switch i64 %i.bo, label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i [
    i64 3, label %bb.t
    i64 2, label %bb.v
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = inttoptr i64 %i.bm to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17, !noalias !109
  %i.bs = icmp eq i8 %i.br, 47
  br i1 %i.bs, label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 -1 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i.i
  %i.bv = phi ptr [ %i.bt, %bb.u ], [ %i.bn, %._crit_edge.i.i.i.i ]
  %i.bw = phi i64 [ %i.bu, %bb.u ], [ %i.bm, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17, !noalias !109
  %i.ca = icmp eq i8 %i.bz, 47
  br i1 %i.ca, label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 -1
  %i.cc = ptrtoint ptr %i.cb to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i
  %i.cd = phi i64 [ %i.cc, %bb.w ], [ %i.bm, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17, !noalias !109
  %i.ch = icmp eq i8 %i.cg, 47
  %spec.select.i.i.i = select i1 %i.ch, i64 %i.cd, i64 %i.an
  br label %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i

_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.x, %bb.v, %bb.t, %._crit_edge.i.i.i.i, %bb.r, %bb.p, %bb.n
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.x ], [ %i.bw, %bb.v ], [ %i.bm, %bb.t ], [ %i.an, %._crit_edge.i.i.i.i ], [ %.cast11.i.i.i.i, %bb.r ], [ %.cast10.i.i.i.i, %bb.p ], [ %.cast.i.i.i.i, %bb.n ], [ %i.as, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ci = inttoptr i64 %.sink.i.i.i.i to ptr      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cj, ptr %10, align 8, !tbaa !10, !alias.scope !103
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !14, !alias.scope !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !103
  %i.cl = sub i64 %i.am, %.sink.i.i.i.i           ; 4 uses
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !56, !noalias !103
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc31 unwind label %bb.al  ; 2 uses

.noexc31:                                         ; preds = %.noexc.i.i
  store ptr %i.cn, ptr %10, align 8, !tbaa !46, !alias.scope !103
  %i.co = load i64, ptr %i.b, align 8, !tbaa !56, !noalias !103
  store i64 %i.co, ptr %i.cj, align 8, !tbaa !17, !alias.scope !103
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc31, %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i
  %i.cp = phi ptr [ %i.cn, %.noexc31 ], [ %i.cj, %_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2cv8saliency18MatchPathSeparatorEET_SG_SG_T0_.exit.i ] ; 2 uses
  switch i64 %i.cl, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.cq = load i8, ptr %i.ci, align 1, !tbaa !17
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !17
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.ci, i64 %i.cl, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !56, !noalias !103 ; 2 uses
  store i64 %i.cr, ptr %i.ck, align 8, !tbaa !14, !alias.scope !103
  %i.cs = load ptr, ptr %10, align 8, !tbaa !46, !alias.scope !103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !103
  invoke void @_ZN2cv8saliency15removeExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %9, align 8, !tbaa !46    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cv, ptr %8, align 8, !tbaa !10
  %i.cw = icmp eq ptr %i.cu, null
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #27
          to label %.noexc34 unwind label %bb.an

.noexc34:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cu) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !56
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.ad
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.an  ; 2 uses

.noexc35:                                         ; preds = %.noexc.i33
  store ptr %i.cz, ptr %8, align 8, !tbaa !46
  %i.da = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.da, ptr %i.cv, align 8, !tbaa !17
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc35, %bb.ad
  %i.db = phi ptr [ %i.cz, %.noexc35 ], [ %i.cv, %bb.ad ] ; 2 uses
  switch i64 %i.cx, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i32
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !17
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !17
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr nonnull align 1 %i.cu, i64 %i.cx, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i32
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !14
  %i.df = load ptr, ptr %8, align 8, !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZNK2cv11FileStorageixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #25
  invoke void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.di = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cv
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.cv, align 8, !tbaa !17
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.dm = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !17
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.dr = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cj
  br i1 %i.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dt = load i64, ptr %i.cj, align 8, !tbaa !17
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
end_hunk_0
begin_hunk_1_@_ZN2cv8saliency14ObjectnessBING28getObjBndBoxesForSingleImageENS_3MatERNS1_12ValStructVecIfNS_3VecIiLi4EEEEEi:bb.a
bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !155
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.pb to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pg) #26
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i: ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.ph = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !137
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.ph to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pm) #26
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.i:      ; preds = %bb.bi, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i
  %i.pn = load ptr, ptr %4, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i2.i, label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.i
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !155
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.pn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.ps) #26
  br label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEED2Ev.exit

_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.bk:                                            ; preds = %bb.bf, %.body85, %bb.aq
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.bf ], [ %i.lx, %bb.aq ], [ %.pn35, %.body85 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10) #25
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ap
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn, %bb.bk ], [ %i.lw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.body74
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn, %bb.bl ], [ %.pn, %.body74 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #25
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.an
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn.pn, %bb.bm ], [ %i.lq, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.not.i.i.i135 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hm) #26
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136: ; preds = %bb.bo, %bb.bn, %bb.am
  %.pn37.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.am ], [ %.pn37.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %.pn37.pn.pn.pn.pn.pn.pn, %bb.bo ] ; 2 uses
  %i.pt = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.fs
  br i1 %i.pu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136, %bb.w
  %.sink260 = phi ptr [ %i.ge, %bb.w ], [ %i.pt, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136 ]
  %.pn37.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gd, %bb.w ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136 ]
  %i.pv = load i64, ptr %i.fs, align 8, !tbaa !17
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %.sink260, i64 noundef %i.pw) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136, %bb.w
  %.pn37.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.w ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit136 ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.al, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.g, %bb.c
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.lo, %bb.al ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.y, %bb.g ]
  call void @_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn49.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8saliency7CmTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !311, !range !324, !noundef !325
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !17
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef zeroext i1 @_ZN2cv8saliency6CmFile5MkDirERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !156    ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit3

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit3:  ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit, %bb.d
  ret void
}

declare void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv11FileStorage8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZNK2cv11FileStorageixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8saliency15removeExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !46, !noalias !373 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14, !noalias !373 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.i = ashr i64 %i.e, 2                         ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %2 = and i64 %i.e, -4
  %3 = sub i64 %i.g, %2
  %i.k = mul nsw i64 %i.i, -4
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.preheader.i.i
  %i.l = phi ptr [ %i.z, %bb.h ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 6 uses
  %i.m = phi i64 [ %i.af, %bb.h ], [ %i.g, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.031.i.i.i = phi i64 [ %i.ad, %bb.h ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17, !noalias !376
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17, !noalias !376
  %i.t = icmp eq i8 %i.s, 46
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 -1
  %.cast.i.i.i = ptrtoint ptr %i.u to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 -3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17, !noalias !376
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 -2
  %.cast17.i.i.i = ptrtoint ptr %i.y to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17, !noalias !376
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.l, i64 -3
  %.cast18.i.i.i = ptrtoint ptr %i.ac to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %.031.i.i.i, -1
  %i.ae = icmp sgt i64 %.031.i.i.i, 1
  %i.af = ptrtoint ptr %i.z to i64
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !383

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.a
  %i.ag = phi i64 [ %i.g, %bb.a ], [ %3, %bb.h ]  ; 5 uses
  %i.ah = phi ptr [ %i.f, %bb.a ], [ %scevgep.i.i, %bb.h ] ; 2 uses
  %i.ai = sub i64 %i.ag, %i.h
  switch i64 %i.ai, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge.i._crit_edge.i.i
    i64 1, label %._crit_edge.i._crit_edge36.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = inttoptr i64 %i.ag to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17, !noalias !376
  %i.am = icmp eq i8 %i.al, 46
  br i1 %i.am, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  br label %._crit_edge.i._crit_edge.i.i

._crit_edge.i._crit_edge.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ah, %._crit_edge.i.i.i ]
  %i.aq = phi i64 [ %i.ao, %bb.j ], [ %i.ag, %._crit_edge.i.i.i ] ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17, !noalias !376
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i._crit_edge.i.i
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.aw = ptrtoint ptr %i.av to i64
  br label %._crit_edge.i._crit_edge36.i.i

._crit_edge.i._crit_edge36.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.k
  %i.ax = phi i64 [ %i.aw, %bb.k ], [ %i.ag, %._crit_edge.i.i.i ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17, !noalias !376
  %i.bb = icmp eq i8 %i.ba, 46
  %spec.select.i.i = select i1 %i.bb, i64 %i.ax, i64 %i.h
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit

_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.e, %bb.g, %._crit_edge.i.i.i, %bb.i, %._crit_edge.i._crit_edge.i.i, %._crit_edge.i._crit_edge36.i.i
  %.sink.i.i.i = phi i64 [ %spec.select.i.i, %._crit_edge.i._crit_edge36.i.i ], [ %i.aq, %._crit_edge.i._crit_edge.i.i ], [ %i.ag, %bb.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.cast18.i.i.i, %bb.g ], [ %.cast17.i.i.i, %bb.e ], [ %.cast.i.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  %i.bc = inttoptr i64 %.sink.i.i.i to ptr        ; 2 uses
  %i.bd = icmp eq ptr %i.c, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.e, ptr %i.b, align 8, !tbaa !56
  %i.bf = icmp ugt i64 %i.e, 15
  br i1 %i.bf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.bg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !46
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !56
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.l
  %i.bi = phi ptr [ %i.bg, %.noexc.i ], [ %i.be, %bb.l ] ; 2 uses
  switch i64 %i.e, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %.thread
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bj = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !17
  br label %.thread

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !14
  %i.bm = load ptr, ptr %0, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.critedge

bb.o:                                             ; preds = %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bc, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.br, %i.h                     ; 4 uses
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !56
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.o
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !46
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !17
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.noexc.i13, %bb.o
  %i.bw = phi ptr [ %i.bu, %.noexc.i13 ], [ %i.bp, %bb.o ] ; 2 uses
  switch i64 %i.bs, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i12
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !17
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.c, i64 %i.bs, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i12, %bb.p, %bb.q
  %i.by = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !14
  %i.bz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.r
  ret void
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8saliency14ObjectnessBING19getobjectnessValuesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !335

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !385 ; 2 uses
  %.pre1 = load ptr, ptr %i.b, align 8, !tbaa !385
  %.pre2 = ptrtoint ptr %.pre1 to i64
  %.pre3 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi4 = phi i64 [ %.pre3, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre2, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.i, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = sub i64 %.pre-phi, %.pre-phi4            ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !386

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.j, align 4, !tbaa !138
  store float %i.q, ptr %i.k, align 4, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
end_hunk_1
