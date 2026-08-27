Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function_internal?download=true
inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6casadi6CallSX7eval_sxERKNS_8FunctionEPPKNS_6SXElemEPPS4_:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
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
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !122
  %.pre172 = load ptr, ptr %i.d, align 8, !tbaa !122
  br label %.noexc58

.noexc58:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre172, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !24
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.m, ptr %i.l, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc58
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !18     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #39
  br label %common.resume

bb.e:                                             ; preds = %.noexc58
  store ptr %i.r, ptr %i.o, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i59 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i59, label %.noexc65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.af, 9223372036854775776
  br i1 %i.ag, label %.noexc.i.i63, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60, !prof !313

.noexc.i.i63:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc64 unwind label %.body

.noexc64:                                         ; preds = %.noexc.i.i63
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #41
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge unwind label %.body

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60
  %.pre173 = load ptr, ptr %i.z, align 8, !tbaa !122
  %.pre174 = load ptr, ptr %i.aa, align 8, !tbaa !122
  br label %.noexc65

.noexc65:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge, %bb.e
  %i.ai = phi ptr [ %i.ab, %bb.e ], [ %.pre174, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge ]
  %i.aj = phi ptr [ %i.ac, %bb.e ], [ %.pre173, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge ]
  %i.ak = phi ptr [ null, %bb.e ], [ %i.ah, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60..noexc65_crit_edge ] ; 4 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !24
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ai, ptr noundef %i.ak)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %.noexc65
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i61, label %.preheader108, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #39
  br label %.preheader108

bb.i:                                             ; preds = %.noexc65
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !122 ; 2 uses
  %.not107138 = icmp eq ptr %i.ay, %i.az
  br i1 %.not107138, label %._crit_edge, label %.lr.ph

.body:                                            ; preds = %.noexc.i.i63, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i60
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.preheader108

.preheader108:                                    ; preds = %bb.h, %bb.g, %.body
  %eh.lpad-body248 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #38
  br label %common.resume

._crit_edge.loopexit:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre175 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !122
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ba = phi ptr [ %i.ao, %bb.i ], [ %.pre175, %._crit_edge.loopexit ] ; 3 uses
  %.145.lcssa = phi i64 [ 0, %bb.i ], [ %.347, %._crit_edge.loopexit ] ; 2 uses
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !122 ; 3 uses
  %.not107138.1 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not107138.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1
  %.145140.1 = phi i64 [ %.347.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1 ], [ %.145.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.098.0139.1 = phi ptr [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1 ], [ %i.bb, %._crit_edge ] ; 5 uses
  %i.bc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.098.0139.1, i8 noundef signext 95, i64 noundef 0) #38 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.098.0139.1, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17
  %.not51.1 = icmp ult i64 %i.bc, %i.be
  br i1 %.not51.1, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

bb.j:                                             ; preds = %.lr.ph.1
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !17 ; 8 uses
  %i.bg = icmp ult i64 %i.bc, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1:   ; preds = %bb.k
  %i.bi = load ptr, ptr %2, align 8, !tbaa !14
  %i.bj = load ptr, ptr %.sroa.098.0139.1, align 8, !tbaa !14
  %bcmp.1 = call i32 @bcmp(ptr %i.bj, ptr %i.bi, i64 %i.bf)
  %.not.i.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not.i.not.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1, %bb.k
  %i.bk = icmp eq i64 %i.bf, %i.bc
  br i1 %i.bk, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !17, !noalias !1142 ; 3 uses
  %i.bm = icmp ugt i64 %i.bf, %i.bl
  br i1 %i.bm, label %.loopexit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1: ; preds = %bb.l
  store ptr %i.aw, ptr %4, align 8, !tbaa !8, !alias.scope !1142
  %i.bn = load ptr, ptr %.sroa.098.0139.1, align 8, !tbaa !14, !noalias !1142
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf ; 2 uses
  %7 = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bl)
  %spec.select.i.i.i.1 = sub nuw i64 %7, %i.bf    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1142
  store i64 %spec.select.i.i.i.1, ptr %i.b, align 8, !tbaa !12, !noalias !1142
  %i.bp = icmp ugt i64 %spec.select.i.i.i.1, 15
  br i1 %i.bp, label %.noexc10.i.i.1, label %._crit_edge.i.i.i.1

.noexc10.i.i.1:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71.1 unwind label %.loopexit.loopexit.split-lp ; 2 uses

.noexc71.1:                                       ; preds = %.noexc10.i.i.1
  store ptr %i.bq, ptr %4, align 8, !tbaa !14, !alias.scope !1142
  %i.br = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1142
  store i64 %i.br, ptr %i.aw, align 8, !tbaa !16, !alias.scope !1142
  br label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %.noexc71.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1
  %i.bs = phi ptr [ %i.bq, %.noexc71.1 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.1 ] ; 2 uses
  switch i64 %spec.select.i.i.i.1, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.1
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !16
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bo, i64 %spec.select.i.i.i.1, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.1
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1142 ; 2 uses
  store i64 %i.bu, ptr %i.ax, align 8, !tbaa !17, !alias.scope !1142
  %i.bv = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !1142
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1142
  %i.bx = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.by = tail call ptr @__errno_location() #43   ; 6 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !146 ; 3 uses
  store i32 0, ptr %i.by, align 4, !tbaa !146
  %i.ca = call noundef i64 @__isoc23_strtol(ptr noundef %i.bx, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !1145
  %i.cc = icmp eq ptr %i.cb, %i.bx
  br i1 %i.cc, label %.loopexit162, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.by, align 4, !tbaa !146 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 34
  %i.cf = add i64 %i.ca, -2147483648
  %i.cg = icmp ult i64 %i.cf, -4294967296
  %or.cond.i.i.1 = or i1 %i.cg, %i.ce
  br i1 %or.cond.i.i.1, label %.critedge.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = icmp eq i32 %i.cd, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !146
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ci = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %bb.s
  %i.ck = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1
  %.0.1 = phi i64 [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1 ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.1 ]
  %spec.select.1 = call i64 @llvm.smax.i64(i64 %.0.1, i64 %.145140.1)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1: ; preds = %bb.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1, %bb.j, %.lr.ph.1
  %.347.1 = phi i64 [ %spec.select.1, %bb.t ], [ %.145140.1, %.lr.ph.1 ], [ %.145140.1, %bb.j ], [ %.145140.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.098.0139.1, i64 32 ; 2 uses
  %.not107.1 = icmp eq ptr %i.cm, %i.ba
  br i1 %.not107.1, label %._crit_edge.loopexit.1, label %.lr.ph.1

._crit_edge.loopexit.1:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.1
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre177 = load ptr, ptr %.phi.trans.insert176, align 8, !tbaa !18
  %.phi.trans.insert178 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre179 = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !21
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %._crit_edge
  %i.cn = phi ptr [ %i.ba, %._crit_edge ], [ %.pre179, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.co = phi ptr [ %i.bb, %._crit_edge ], [ %.pre177, %._crit_edge.loopexit.1 ] ; 3 uses
  %.145.lcssa.1 = phi i64 [ %.145.lcssa, %._crit_edge ], [ %.347.1, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not4.i.i.i = icmp eq ptr %i.co, %i.cn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph:                                           ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %.145140 = phi i64 [ %.347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ], [ 0, %bb.i ] ; 4 uses
  %.sroa.098.0139 = phi ptr [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ], [ %i.ay, %bb.i ] ; 5 uses
  %i.cq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.098.0139, i8 noundef signext 95, i64 noundef 0) #38 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.098.0139, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !17
  %.not51 = icmp ult i64 %i.cq, %i.cs
  br i1 %.not51, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

bb.u:                                             ; preds = %.lr.ph
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !17 ; 8 uses
  %i.cu = icmp ult i64 %i.cq, %i.ct
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.v
  %i.cw = load ptr, ptr %2, align 8, !tbaa !14
  %i.cx = load ptr, ptr %.sroa.098.0139, align 8, !tbaa !14
  %bcmp = call i32 @bcmp(ptr %i.cx, ptr %i.cw, i64 %i.ct)
  %.not.i.not = icmp eq i32 %bcmp, 0
  br i1 %.not.i.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %bb.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cy = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cy, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.cz = load i64, ptr %i.cr, align 8, !tbaa !17, !noalias !1146 ; 3 uses
  %i.da = icmp ugt i64 %i.ct, %i.cz
  br i1 %i.da, label %.loopexit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.loopexit159:                                     ; preds = %bb.w, %bb.l
  %.lcssa151 = phi i64 [ %i.bl, %bb.l ], [ %i.cz, %bb.w ]
  %.lcssa147 = phi i64 [ %i.bf, %bb.l ], [ %i.ct, %bb.w ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.774, ptr noundef nonnull @.str.813, i64 noundef %.lcssa147, i64 noundef %.lcssa151) #37
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %.loopexit159
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.w
  store ptr %i.aw, ptr %4, align 8, !tbaa !8, !alias.scope !1146
  %i.db = load ptr, ptr %.sroa.098.0139, align 8, !tbaa !14, !noalias !1146
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct ; 2 uses
  %8 = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cz)
  %spec.select.i.i.i = sub nuw i64 %8, %i.ct      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !1146
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !12, !noalias !1146
  %i.dd = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dd, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71 unwind label %.loopexit.loopexit ; 2 uses

.noexc71:                                         ; preds = %.noexc10.i.i
  store ptr %i.de, ptr %4, align 8, !tbaa !14, !alias.scope !1146
  %i.df = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1146
  store i64 %i.df, ptr %i.aw, align 8, !tbaa !16, !alias.scope !1146
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dg = phi ptr [ %i.de, %.noexc71 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.dh = load i8, ptr %i.dc, align 1, !tbaa !16
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !16
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dc, i64 %spec.select.i.i.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.di = load i64, ptr %i.b, align 8, !tbaa !12, !noalias !1146 ; 2 uses
  store i64 %i.di, ptr %i.ax, align 8, !tbaa !17, !alias.scope !1146
  %i.dj = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !1146
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !1146
  %i.dl = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.dm = tail call ptr @__errno_location() #43   ; 6 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !146 ; 3 uses
  store i32 0, ptr %i.dm, align 4, !tbaa !146
  %i.do = call noundef i64 @__isoc23_strtol(ptr noundef %i.dl, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !1145
  %i.dq = icmp eq ptr %i.dp, %i.dl
  br i1 %i.dq, label %.loopexit162, label %bb.ad

.loopexit162:                                     ; preds = %bb.z, %bb.o
  %.lcssa157 = phi ptr [ %i.by, %bb.o ], [ %i.dm, %bb.z ]
  %.lcssa155 = phi i32 [ %i.bz, %bb.o ], [ %i.dn, %bb.z ]
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.786) #37
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.loopexit162
  unreachable

bb.ab:                                            ; preds = %.critedge.i.i, %.loopexit162
  %i.dr = phi ptr [ %.lcssa158, %.critedge.i.i ], [ %.lcssa157, %.loopexit162 ] ; 2 uses
  %i.ds = phi i32 [ %.lcssa156, %.critedge.i.i ], [ %.lcssa155, %.loopexit162 ]
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !146
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ac, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !146
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dw = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.aw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

bb.ad:                                            ; preds = %bb.z
  %i.dy = load i32, ptr %i.dm, align 4, !tbaa !146 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 34
  %i.ea = add i64 %i.do, -2147483648
  %i.eb = icmp ult i64 %i.ea, -4294967296
  %or.cond.i.i = or i1 %i.eb, %i.dz
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.af

.critedge.i.i:                                    ; preds = %bb.ad, %bb.p
  %.lcssa158 = phi ptr [ %i.by, %bb.p ], [ %i.dm, %bb.ad ]
  %.lcssa156 = phi i32 [ %i.bz, %bb.p ], [ %i.dn, %bb.ad ]
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.786) #37
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %.critedge.i.i
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ec = icmp eq i32 %i.dy, 0
  br i1 %i.ec, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !146
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ed = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aw
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.ef = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #39
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
  %i.eh = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ei) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %.pn53 = phi { ptr, i32 } [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %lpad.loopexit.split-lp161, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit160, %.loopexit.loopexit ], [ %i.dt, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ej) #38
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i64 [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ]
  %spec.select = call i64 @llvm.smax.i64(i64 %.0, i64 %.145140)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.u, %.lr.ph, %bb.ai
  %.347 = phi i64 [ %spec.select, %bb.ai ], [ %.145140, %.lr.ph ], [ %.145140, %bb.u ], [ %.145140, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.098.0139, i64 32 ; 2 uses
  %.not107 = icmp eq ptr %i.ek, %i.az
  br i1 %.not107, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.co, %._crit_edge.1 ] ; 3 uses
  %i.el = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !16
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.eq, %i.cn
  br i1 %.not.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.cp, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge.1
  %i.er = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.co, %._crit_edge.1 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !24
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aj
  %i.ex = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i.i.1 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not4.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1, label %.lr.ph.i.i.i.1
end_hunk_0
