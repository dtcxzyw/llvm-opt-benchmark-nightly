inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6casadi6CallSX7eval_sxERKNS_8FunctionEPPKNS_6SXElemEPPS4_:bb.a
  %.01019.i = phi ptr [ %i.at, %.noexc ], [ %i.aq, %.preheader16.i ] ; 2 uses
  %.01218.i = phi ptr [ %i.au, %.noexc ], [ %i.ao, %.preheader16.i ] ; 2 uses
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.01019.i, ptr noundef nonnull align 8 dereferenceable(8) %.01218.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.av = add nuw nsw i64 %.020.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i, label %_ZN6casadi11casadi_copyINS_6SXElemEEEvPKT_xPS2_.exit, label %.lr.ph.i, !llvm.loop !1139

.lr.ph23.i:                                       ; preds = %.preheader.i, %.noexc41
  %.122.i = phi i64 [ %i.ay, %.noexc41 ], [ 0, %.preheader.i ]
  %.11121.i = phi ptr [ %i.ax, %.noexc41 ], [ %i.aq, %.preheader.i ] ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSEd(ptr noundef nonnull align 8 dereferenceable(8) %.11121.i, double noundef 0.000000e+00)
          to label %.noexc41 unwind label %.loopexit ; 0 uses

.noexc41:                                         ; preds = %.lr.ph23.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.11121.i, i64 8
  %i.ay = add nuw nsw i64 %.122.i, 1              ; 2 uses
  %exitcond25.not.i = icmp eq i64 %i.ay, %i.am
  br i1 %exitcond25.not.i, label %_ZN6casadi11casadi_copyINS_6SXElemEEEvPKT_xPS2_.exit, label %.lr.ph23.i, !llvm.loop !1140

_ZN6casadi11casadi_copyINS_6SXElemEEEvPKT_xPS2_.exit: ; preds = %.noexc, %.noexc41, %.preheader.i, %.preheader16.i, %bb.q
  %i.az = invoke noundef i64 @_ZNK6casadi8Function7nnz_outEx(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.0)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZN6casadi11casadi_copyINS_6SXElemEEEvPKT_xPS2_.exit
  %i.ba = add nsw i64 %i.az, %.022
  %i.bb = add nuw nsw i64 %.0, 1
  br label %bb.j, !llvm.loop !1141

bb.t:                                             ; preds = %.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.i, %bb.t
  %.pn29.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.q, %bb.i ], [ %i.e, %bb.e ]
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %.pn29.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16FunctionInternal11diff_prefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1312) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %3 = alloca [2 x %"class.std::vector"], align 8 ; 24 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !313

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #41
  br label %.noexc58

.noexc58:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.f, ptr %i.e, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc58
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !18     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #39
  br label %common.resume

bb.e:                                             ; preds = %.noexc58
  store ptr %i.p, ptr %i.m, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !18  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i59 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i59, label %.noexc65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775776
  br i1 %i.ae, label %.noexc.i.i63, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60, !prof !313

.noexc.i.i63:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc64 unwind label %.body

.noexc64:                                         ; preds = %.noexc.i.i63
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #41
          to label %.noexc65 unwind label %.body

.noexc65:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60, %bb.e
  %i.ag = phi ptr [ null, %bb.e ], [ %i.af, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60 ] ; 4 uses
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aa, ptr %i.z, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %.noexc65
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i61, label %.preheader108, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #39
  br label %.preheader108

bb.i:                                             ; preds = %.noexc65
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !122 ; 2 uses
  %.not107138 = icmp eq ptr %i.au, %i.av
  br i1 %.not107138, label %._crit_edge, label %.lr.ph

.body:                                            ; preds = %.noexc.i.i63, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.preheader108

.preheader108:                                    ; preds = %bb.h, %bb.g, %.body
  %eh.lpad-body240 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.al, %bb.h ], [ %i.al, %bb.g ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #38
  br label %common.resume

._crit_edge.loopexit:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !122
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.aw = phi ptr [ %i.ak, %bb.i ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.145.lcssa = phi i64 [ 0, %bb.i ], [ %.347, %._crit_edge.loopexit ] ; 2 uses
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !122 ; 3 uses
  %.not107138.1 = icmp eq ptr %i.ax, %i.aw
  br i1 %.not107138.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1
  %.145140.1 = phi i64 [ %.347.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1 ], [ %.145.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.098.0139.1 = phi ptr [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1 ], [ %i.ax, %._crit_edge ] ; 5 uses
  %i.ay = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.098.0139.1, i8 noundef signext 95, i64 noundef 0) #38 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.098.0139.1, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %.not51.1 = icmp ult i64 %i.ay, %i.ba
  br i1 %.not51.1, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

bb.j:                                             ; preds = %.lr.ph.1
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !17 ; 8 uses
  %i.bc = icmp ult i64 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1:   ; preds = %bb.k
  %i.be = load ptr, ptr %2, align 8, !tbaa !14
  %i.bf = load ptr, ptr %.sroa.098.0139.1, align 8, !tbaa !14
  %bcmp.1 = call i32 @bcmp(ptr %i.bf, ptr %i.be, i64 %i.bb)
  %.not.i.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not.i.not.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1, %bb.k
  %i.bg = icmp eq i64 %i.bb, %i.ay
  br i1 %i.bg, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !17, !noalias !1142 ; 3 uses
  %i.bi = icmp ugt i64 %i.bb, %i.bh
  br i1 %i.bi, label %.loopexit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1: ; preds = %bb.l
  store ptr %i.as, ptr %4, align 8, !tbaa !8, !alias.scope !1142
  %i.bj = load ptr, ptr %.sroa.098.0139.1, align 8, !tbaa !14, !noalias !1142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 2 uses
  %7 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bh)
  %spec.select.i.i.i.1 = sub nuw i64 %7, %i.bb    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1142
  store i64 %spec.select.i.i.i.1, ptr %i.b, align 8, !tbaa !12, !noalias !1142
  %i.bl = icmp ugt i64 %spec.select.i.i.i.1, 15
  br i1 %i.bl, label %.noexc10.i.i.1, label %._crit_edge.i.i.i.1

.noexc10.i.i.1:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71.1 unwind label %.loopexit.loopexit.split-lp ; 2 uses

.noexc71.1:                                       ; preds = %.noexc10.i.i.1
  store ptr %i.bm, ptr %4, align 8, !tbaa !14, !alias.scope !1142
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1142
  store i64 %i.bn, ptr %i.as, align 8, !tbaa !16, !alias.scope !1142
  br label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %.noexc71.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1
  %i.bo = phi ptr [ %i.bm, %.noexc71.1 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1 ] ; 2 uses
  switch i64 %spec.select.i.i.i.1, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.1
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !16
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bk, i64 %spec.select.i.i.i.1, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.1
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1142 ; 2 uses
  store i64 %i.bq, ptr %i.at, align 8, !tbaa !17, !alias.scope !1142
  %i.br = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !1142
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1142
  %i.bt = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.bu = tail call ptr @__errno_location() #43   ; 6 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !146 ; 3 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !146
  %i.bw = call noundef i64 @__isoc23_strtol(ptr noundef %i.bt, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !1145
  %i.by = icmp eq ptr %i.bx, %i.bt
  br i1 %i.by, label %.loopexit162, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load i32, ptr %i.bu, align 4, !tbaa !146 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 34
  %i.cb = add i64 %i.bw, -2147483648
  %i.cc = icmp ult i64 %i.cb, -4294967296
  %or.cond.i.i.1 = or i1 %i.cc, %i.ca
  br i1 %or.cond.i.i.1, label %.critedge.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp eq i32 %i.bz, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !146
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ce = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.as
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %bb.s
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !16
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1
  %.0.1 = phi i64 [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1 ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1 ]
  %spec.select.1 = call i64 @llvm.smax.i64(i64 %.0.1, i64 %.145140.1)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1: ; preds = %bb.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1, %bb.j, %.lr.ph.1
  %.347.1 = phi i64 [ %spec.select.1, %bb.t ], [ %.145140.1, %.lr.ph.1 ], [ %.145140.1, %bb.j ], [ %.145140.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.098.0139.1, i64 32 ; 2 uses
  %.not107.1 = icmp eq ptr %i.ci, %i.aw
  br i1 %.not107.1, label %._crit_edge.loopexit.1, label %.lr.ph.1

._crit_edge.loopexit.1:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre173 = load ptr, ptr %.phi.trans.insert172, align 8, !tbaa !18
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre175 = load ptr, ptr %.phi.trans.insert174, align 8, !tbaa !21
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %._crit_edge
  %i.cj = phi ptr [ %i.aw, %._crit_edge ], [ %.pre175, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.ck = phi ptr [ %i.ax, %._crit_edge ], [ %.pre173, %._crit_edge.loopexit.1 ] ; 3 uses
  %.145.lcssa.1 = phi i64 [ %.145.lcssa, %._crit_edge ], [ %.347.1, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph:                                           ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %.145140 = phi i64 [ %.347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ], [ 0, %bb.i ] ; 4 uses
  %.sroa.098.0139 = phi ptr [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ], [ %i.au, %bb.i ] ; 5 uses
  %i.cm = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.098.0139, i8 noundef signext 95, i64 noundef 0) #38 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.098.0139, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !17
  %.not51 = icmp ult i64 %i.cm, %i.co
  br i1 %.not51, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

bb.u:                                             ; preds = %.lr.ph
  %i.cp = load i64, ptr %i.ar, align 8, !tbaa !17 ; 8 uses
  %i.cq = icmp ult i64 %i.cm, %i.cp
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.v
  %i.cs = load ptr, ptr %2, align 8, !tbaa !14
  %i.ct = load ptr, ptr %.sroa.098.0139, align 8, !tbaa !14
  %bcmp = call i32 @bcmp(ptr %i.ct, ptr %i.cs, i64 %i.cp)
  %.not.i.not = icmp eq i32 %bcmp, 0
  br i1 %.not.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %bb.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cu = icmp eq i64 %i.cp, %i.cm
  br i1 %i.cu, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.cv = load i64, ptr %i.cn, align 8, !tbaa !17, !noalias !1146 ; 3 uses
  %i.cw = icmp ugt i64 %i.cp, %i.cv
  br i1 %i.cw, label %.loopexit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.loopexit159:                                     ; preds = %bb.w, %bb.l
  %.lcssa151 = phi i64 [ %i.bh, %bb.l ], [ %i.cv, %bb.w ]
  %.lcssa147 = phi i64 [ %i.bb, %bb.l ], [ %i.cp, %bb.w ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.774, ptr noundef nonnull @.str.813, i64 noundef %.lcssa147, i64 noundef %.lcssa151) #37
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %.loopexit159
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.w
  store ptr %i.as, ptr %4, align 8, !tbaa !8, !alias.scope !1146
  %i.cx = load ptr, ptr %.sroa.098.0139, align 8, !tbaa !14, !noalias !1146
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 2 uses
  %8 = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cv)
  %spec.select.i.i.i = sub nuw i64 %8, %i.cp      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1146
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !12, !noalias !1146
  %i.cz = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cz, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71 unwind label %.loopexit.loopexit ; 2 uses

.noexc71:                                         ; preds = %.noexc10.i.i
  store ptr %i.da, ptr %4, align 8, !tbaa !14, !alias.scope !1146
  %i.db = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1146
  store i64 %i.db, ptr %i.as, align 8, !tbaa !16, !alias.scope !1146
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dc = phi ptr [ %i.da, %.noexc71 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !16
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !16
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cy, i64 %spec.select.i.i.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.de = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1146 ; 2 uses
  store i64 %i.de, ptr %i.at, align 8, !tbaa !17, !alias.scope !1146
  %i.df = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !1146
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1146
  %i.dh = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.di = tail call ptr @__errno_location() #43   ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !146 ; 3 uses
  store i32 0, ptr %i.di, align 4, !tbaa !146
  %i.dk = call noundef i64 @__isoc23_strtol(ptr noundef %i.dh, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !1145
  %i.dm = icmp eq ptr %i.dl, %i.dh
  br i1 %i.dm, label %.loopexit162, label %bb.ad

.loopexit162:                                     ; preds = %bb.z, %bb.o
  %.lcssa157 = phi ptr [ %i.bu, %bb.o ], [ %i.di, %bb.z ]
  %.lcssa155 = phi i32 [ %i.bv, %bb.o ], [ %i.dj, %bb.z ]
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.786) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.loopexit162
  unreachable

bb.ab:                                            ; preds = %.critedge.i.i, %.loopexit162
  %i.dn = phi ptr [ %.lcssa158, %.critedge.i.i ], [ %.lcssa157, %.loopexit162 ] ; 2 uses
  %i.do = phi i32 [ %.lcssa156, %.critedge.i.i ], [ %.lcssa155, %.loopexit162 ]
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load i32, ptr %i.dn, align 4, !tbaa !146
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ac, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !146
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ds = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.as
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

bb.ad:                                            ; preds = %bb.z
  %i.du = load i32, ptr %i.di, align 4, !tbaa !146 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 34
  %i.dw = add i64 %i.dk, -2147483648
  %i.dx = icmp ult i64 %i.dw, -4294967296
  %or.cond.i.i = or i1 %i.dx, %i.dv
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.af

.critedge.i.i:                                    ; preds = %bb.ad, %bb.p
  %.lcssa158 = phi ptr [ %i.bu, %bb.p ], [ %i.di, %bb.ad ]
  %.lcssa156 = phi i32 [ %i.bv, %bb.p ], [ %i.dj, %bb.ad ]
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.786) #37
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %.critedge.i.i
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dy = icmp eq i32 %i.du, 0
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !146
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dz = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.as
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.eb = load i64, ptr %i.as, align 8, !tbaa !16
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.ai

.loopexit.loopexit:                               ; preds = %.noexc10.i.i
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

.loopexit.loopexit.split-lp:                      ; preds = %.noexc10.i.i.1
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

.loopexit.split-lp:                               ; preds = %.loopexit159
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.ed = load i64, ptr %i.as, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ee) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %.pn53 = phi { ptr, i32 } [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %lpad.loopexit.split-lp161, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit160, %.loopexit.loopexit ], [ %i.dp, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ef) #38
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i64 [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ]
  %spec.select = call i64 @llvm.smax.i64(i64 %.0, i64 %.145140)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.u, %.lr.ph, %bb.ai
  %.347 = phi i64 [ %spec.select, %bb.ai ], [ %.145140, %.lr.ph ], [ %.145140, %bb.u ], [ %.145140, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.098.0139, i64 32 ; 2 uses
  %.not107 = icmp eq ptr %i.eg, %i.av
  br i1 %.not107, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ck, %._crit_edge.1 ] ; 3 uses
  %i.eh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.em, %i.cj
  br i1 %.not.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.cl, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge.1
  %i.en = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %._crit_edge.1 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !24
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aj
  %i.et = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i.i.1 = icmp eq ptr %i.et, %i.ev
  br i1 %.not4.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1, label %.lr.ph.i.i.i.1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !8, !alias.scope !2366, !noalias !2369
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !14, !alias.scope !2369, !noalias !2366 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17, !alias.scope !2369, !noalias !2366 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !2371
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !14, !alias.scope !2366, !noalias !2369
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !2369, !noalias !2366
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !16, !alias.scope !2366, !noalias !2369
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !17, !alias.scope !2369, !noalias !2366
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !17, !alias.scope !2366, !noalias !2369
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !14, !alias.scope !2369, !noalias !2366
  store i64 0, ptr %i.be, align 8, !tbaa !17, !alias.scope !2369, !noalias !2366
  store i8 0, ptr %i.aw, align 8, !tbaa !16, !alias.scope !2369, !noalias !2366
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1351

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !18
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !24
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #38 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #39
  invoke void @__cxa_rethrow() #37
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !8
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.e, ptr %i.a, align 8, !tbaa !12
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !14
  %i.h = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.h, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %.016, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2372

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #38 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #37
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #40
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !143
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #41 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !138
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #41
          to label %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit, !llvm.loop !2373

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #38 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !141
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #39
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i, !llvm.loop !142

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #37
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #40
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #38 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !138
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !143
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #37
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !539
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !141 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !535
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !540
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !539
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !141 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !535
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !540
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !2374
  %i.aq = and i64 %1, 127
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !541
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #40
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #40
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i:     ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !134

_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_M_insert_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSP_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = load ptr, ptr %3, align 8, !tbaa !14
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i) #38 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.a
  %i.n = phi i1 [ %i.m, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ true, %bb.a ]
  %i.o = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #41 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_Alloc_nodeclIRKSB_EEPSt13_Rb_tree_nodeISB_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #38 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 104) #39
  invoke void @__cxa_rethrow() #37
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.t

end_hunk_1
