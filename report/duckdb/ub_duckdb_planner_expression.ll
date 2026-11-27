Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_planner_expression?download=true
inline.NumInlined: 4584
inline.NumDeleted: 1905
begin_hunk_0_@_ZN6duckdb18FunctionExpression8ToStringINS_24BoundAggregateExpressionENS_10ExpressionENS_18BoundOrderModifierEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKSA_SF_SF_bbPT0_PT1_bb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308: ; preds = %bb.cf
  %i.pe = load ptr, ptr %32, align 8, !tbaa !275
  %i.pf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.pe, i64 noundef %i.pa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311 unwind label %bb.cj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308
  %i.pg = load ptr, ptr %32, align 8, !tbaa !275  ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311
  call void @_ZdlPv(ptr noundef %i.pg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.pj = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.pk = icmp eq i64 %i.pj, 4611686018427387903
  br i1 %i.pk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %i.pl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.48, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  br i1 %6, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.pm = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.pn = add i64 %i.pm, -4611686018427387895
  %i.po = icmp ult i64 %i.pn, 9
  br i1 %i.po, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318: ; preds = %bb.ch
  %i.pp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.50, i64 noundef 9)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ci:                                            ; preds = %bb.ce
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308, %bb.cg
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ps = load ptr, ptr %32, align 8, !tbaa !275  ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.ps) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.ci
  %.pn69 = phi { ptr, i32 } [ %i.pq, %bb.ci ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.pr, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %.loopexit.split-lp

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !358
  %i.py = load ptr, ptr %i.pv, align 8, !tbaa !359
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.qd = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.qd, ptr %34, align 8, !tbaa !267
  store i16 8236, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 2, ptr %i.qe, align 8, !tbaa !268
  %i.qf = getelementptr inbounds nuw i8, ptr %34, i64 18
  store i8 0, ptr %i.qf, align 2, !tbaa !269
  invoke void @_ZN6duckdb10StringUtil4JoinINS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEmZNS_18FunctionExpression8ToStringINS_24BoundAggregateExpressionES4_NS_18BoundOrderModifierEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKSJ_SO_SO_bbPT0_PT1_bbEUlRKS7_E_EESJ_SM_SP_SO_SR_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i64 noundef %i.qc, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr nonnull %i.c)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.qg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !268 ; 2 uses
  %i.qi = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.qj = sub i64 4611686018427387903, %i.qi
  %i.qk = icmp ult i64 %i.qj, %i.qh
  br i1 %i.qk, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc330 unwind label %bb.cr

.noexc330:                                        ; preds = %bb.cm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329: ; preds = %bb.cl
  %i.ql = load ptr, ptr %33, align 8, !tbaa !275
  %i.qm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ql, i64 noundef %i.qh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332 unwind label %bb.cr ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329
  %i.qn = load ptr, ptr %33, align 8, !tbaa !275  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332
  call void @_ZdlPv(ptr noundef %i.qn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  %i.qq = load ptr, ptr %34, align 8, !tbaa !275  ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.qd
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  call void @_ZdlPv(ptr noundef %i.qq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !366
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !366
  %i.qw = icmp eq ptr %i.qt, %i.qv
  br i1 %i.qw, label %.loopexit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qx = load ptr, ptr %i.pv, align 8, !tbaa !286
  %i.qy = load ptr, ptr %i.pw, align 8, !tbaa !286
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %bb.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342

bb.cp:                                            ; preds = %bb.co
  %i.ra = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rb = and i64 %i.ra, -16
  %i.rc = icmp eq i64 %i.rb, 4611686018427387888
  br i1 %i.rc, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339: ; preds = %bb.cp
  %i.rd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.52, i64 noundef 16)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cq:                                            ; preds = %bb.ck
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329, %bb.cm
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %33, align 8, !tbaa !275  ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.rg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.cq
  %.pn71 = phi { ptr, i32 } [ %i.re, %bb.cq ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.rf, %bb.cr ]
  %i.rj = load ptr, ptr %34, align 8, !tbaa !275  ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.qd
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  call void @_ZdlPv(ptr noundef %i.rj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %bb.co
  %i.rl = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rm = add i64 %i.rl, -4611686018427387894
  %i.rn = icmp ult i64 %i.rm, 10
  br i1 %i.rn, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342
  %i.ro = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.53, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349
  %i.rp = load ptr, ptr %i.qu, align 8, !tbaa !368
  %i.rq = load ptr, ptr %i.qs, align 8, !tbaa !369
  %.not426 = icmp eq ptr %i.rp, %i.rq
  br i1 %.not426, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader
  %i.rr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.rt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 noundef 0)
          to label %bb.cs unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel
  invoke void @_ZNK6duckdb16BoundOrderByNode8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %i.rt)
          to label %bb.ct unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %i.ru = load i64, ptr %i.rr, align 8, !tbaa !268 ; 2 uses
  %i.rv = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rw = sub i64 4611686018427387903, %i.rv
  %i.rx = icmp ult i64 %i.rw, %i.ru
  br i1 %i.rx, label %.loopexit436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel: ; preds = %bb.ct
  %i.ry = load ptr, ptr %35, align 8, !tbaa !275
  %i.rz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ry, i64 noundef %i.ru)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel
  %i.sa = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.rs
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel
  call void @_ZdlPv(ptr noundef %i.sa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.sc = load ptr, ptr %i.qu, align 8, !tbaa !368
  %i.sd = load ptr, ptr %i.qs, align 8, !tbaa !369
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = sdiv exact i64 %i.sg, 24
  %i.si = icmp ugt i64 %i.sh, 1
  br i1 %i.si, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.0425 = phi i64 [ %i.sw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel ] ; 2 uses
  %i.sj = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.sk = and i64 %i.sj, -2
  %i.sl = icmp eq i64 %i.sk, 4611686018427387902
  br i1 %i.sl, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353: ; preds = %.peel.next
  %i.sm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.51, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.sn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 noundef %.0425)
          to label %bb.cu unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356
  invoke void @_ZNK6duckdb16BoundOrderByNode8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %bb.cv unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  %i.so = load i64, ptr %i.rr, align 8, !tbaa !268 ; 2 uses
  %i.sp = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.sq = sub i64 4611686018427387903, %i.sp
  %i.sr = icmp ult i64 %i.sq, %i.so
  br i1 %i.sr, label %.loopexit436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357

.loopexit436:                                     ; preds = %bb.cv, %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc358 unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp

.noexc358:                                        ; preds = %.loopexit436
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357: ; preds = %bb.cv
  %i.ss = load ptr, ptr %35, align 8, !tbaa !275
  %i.st = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ss, i64 noundef %i.so)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360 unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357
  %i.su = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.rs
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360
  call void @_ZdlPv(ptr noundef %i.su) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.sw = add nuw i64 %.0425, 1                   ; 2 uses
  %i.sx = load ptr, ptr %i.qu, align 8, !tbaa !368
  %i.sy = load ptr, ptr %i.qs, align 8, !tbaa !369
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = sdiv exact i64 %i.tb, 24
  %i.td = icmp ult i64 %i.sw, %i.tc
  br i1 %i.td, label %.peel.next, label %.loopexit, !llvm.loop !716

.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel, %.loopexit436
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.te = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.rs
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.te) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  %.pn75 = phi { ptr, i32 } [ %lpad.loopexit.split-lp566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp566, %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.tg = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.th = icmp eq i64 %i.tg, 4611686018427387903
  br i1 %i.th, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367: ; preds = %.loopexit
  %i.ti = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367
  %.not78 = icmp eq ptr %7, null
  br i1 %.not78, label %bb.di, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.tj = load ptr, ptr %7, align 8, !tbaa !272
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 64
  %i.tl = load ptr, ptr %i.tk, align 8
  invoke void %i.tl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.cx unwind label %bb.de

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.tm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.54, i64 noundef 15)
          to label %.noexc375 unwind label %bb.df, !noalias !733 ; 6 uses

.noexc375:                                        ; preds = %bb.cx
  %i.tn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  store ptr %i.tn, ptr %37, align 8, !tbaa !267, !alias.scope !733
  %i.to = load ptr, ptr %i.tm, align 8, !tbaa !275 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 16 ; 5 uses
  %i.tq = icmp eq ptr %i.to, %i.tp
  br i1 %i.tq, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

bb.cy:                                            ; preds = %.noexc375
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !268 ; 3 uses
  %i.tt = icmp ult i64 %i.ts, 16
  call void @llvm.assume(i1 %i.tt)
  %i.tu = add nuw nsw i64 %i.ts, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tn, ptr noundef nonnull align 8 dereferenceable(1) %i.tp, i64 %i.tu, i1 false)
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %.noexc375
  store ptr %i.to, ptr %37, align 8, !tbaa !275, !alias.scope !733
  %i.tv = load i64, ptr %i.tp, align 8, !tbaa !269
  store i64 %i.tv, ptr %i.tn, align 8, !tbaa !269, !alias.scope !733
  %.phi.trans.insert.i372 = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %.pre.i373 = load i64, ptr %.phi.trans.insert.i372, align 8, !tbaa !268
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371, %bb.cy
  %i.tw = phi i64 [ %i.ts, %bb.cy ], [ %.pre.i373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371 ]
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.ty = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.tw, ptr %i.ty, align 8, !tbaa !268, !alias.scope !733
  store ptr %i.tp, ptr %i.tm, align 8, !tbaa !275
  store i64 0, ptr %i.tx, align 8, !tbaa !268
  store i8 0, ptr %i.tp, align 8, !tbaa !269
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !268, !noalias !734
  %i.ua = icmp eq i64 %i.tz, 4611686018427387903
  br i1 %i.ua, label %bb.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc382 unwind label %bb.dg, !noalias !734

.noexc382:                                        ; preds = %bb.da
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377: ; preds = %bb.cz
  %i.ub = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc383 unwind label %bb.dg, !noalias !734 ; 6 uses

.noexc383:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377
  %i.uc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.uc, ptr %36, align 8, !tbaa !267, !alias.scope !734
  %i.ud = load ptr, ptr %i.ub, align 8, !tbaa !275 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 5 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  br i1 %i.uf, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

bb.db:                                            ; preds = %.noexc383
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !268 ; 3 uses
  %i.ui = icmp ult i64 %i.uh, 16
  call void @llvm.assume(i1 %i.ui)
  %i.uj = add nuw nsw i64 %i.uh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uc, ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i64 %i.uj, i1 false)
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %.noexc383
  store ptr %i.ud, ptr %36, align 8, !tbaa !275, !alias.scope !734
  %i.uk = load i64, ptr %i.ue, align 8, !tbaa !269
  store i64 %i.uk, ptr %i.uc, align 8, !tbaa !269, !alias.scope !734
  %.phi.trans.insert.i379 = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %.pre.i380 = load i64, ptr %.phi.trans.insert.i379, align 8, !tbaa !268
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.db
  %i.ul = phi i64 [ %i.uh, %bb.db ], [ %.pre.i380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb18FunctionExpression8ToStringINS_23BoundFunctionExpressionENS_10ExpressionENS_13OrderModifierEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKSA_SF_SF_bbPT0_PT1_bb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308: ; preds = %bb.cf
  %i.pe = load ptr, ptr %32, align 8, !tbaa !275
  %i.pf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.pe, i64 noundef %i.pa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311 unwind label %bb.cj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308
  %i.pg = load ptr, ptr %32, align 8, !tbaa !275  ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311
  call void @_ZdlPv(ptr noundef %i.pg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.pj = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.pk = icmp eq i64 %i.pj, 4611686018427387903
  br i1 %i.pk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %i.pl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.48, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  br i1 %6, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.pm = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.pn = add i64 %i.pm, -4611686018427387895
  %i.po = icmp ult i64 %i.pn, 9
  br i1 %i.po, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318: ; preds = %bb.ch
  %i.pp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.50, i64 noundef 9)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ci:                                            ; preds = %bb.ce
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i308, %bb.cg
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ps = load ptr, ptr %32, align 8, !tbaa !275  ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.ps) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.ci
  %.pn69 = phi { ptr, i32 } [ %i.pq, %bb.ci ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.pr, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %.loopexit.split-lp

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !358
  %i.py = load ptr, ptr %i.pv, align 8, !tbaa !359
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.qd = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.qd, ptr %34, align 8, !tbaa !267
  store i16 8236, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 2, ptr %i.qe, align 8, !tbaa !268
  %i.qf = getelementptr inbounds nuw i8, ptr %34, i64 18
  store i8 0, ptr %i.qf, align 2, !tbaa !269
  invoke void @_ZN6duckdb10StringUtil4JoinINS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEmZNS_18FunctionExpression8ToStringINS_23BoundFunctionExpressionES4_NS_13OrderModifierEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKSJ_SO_SO_bbPT0_PT1_bbEUlRKS7_E_EESJ_SM_SP_SO_SR_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i64 noundef %i.qc, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr nonnull %i.c)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.qg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !268 ; 2 uses
  %i.qi = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.qj = sub i64 4611686018427387903, %i.qi
  %i.qk = icmp ult i64 %i.qj, %i.qh
  br i1 %i.qk, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc330 unwind label %bb.cr

.noexc330:                                        ; preds = %bb.cm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329: ; preds = %bb.cl
  %i.ql = load ptr, ptr %33, align 8, !tbaa !275
  %i.qm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ql, i64 noundef %i.qh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332 unwind label %bb.cr ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329
  %i.qn = load ptr, ptr %33, align 8, !tbaa !275  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332
  call void @_ZdlPv(ptr noundef %i.qn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  %i.qq = load ptr, ptr %34, align 8, !tbaa !275  ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.qd
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  call void @_ZdlPv(ptr noundef %i.qq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !1107
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1107
  %i.qw = icmp eq ptr %i.qt, %i.qv
  br i1 %i.qw, label %.loopexit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qx = load ptr, ptr %i.pv, align 8, !tbaa !286
  %i.qy = load ptr, ptr %i.pw, align 8, !tbaa !286
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %bb.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342

bb.cp:                                            ; preds = %bb.co
  %i.ra = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rb = and i64 %i.ra, -16
  %i.rc = icmp eq i64 %i.rb, 4611686018427387888
  br i1 %i.rc, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339: ; preds = %bb.cp
  %i.rd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.52, i64 noundef 16)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cq:                                            ; preds = %bb.ck
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329, %bb.cm
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %33, align 8, !tbaa !275  ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.rg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.cq
  %.pn71 = phi { ptr, i32 } [ %i.re, %bb.cq ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.rf, %bb.cr ]
  %i.rj = load ptr, ptr %34, align 8, !tbaa !275  ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.qd
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  call void @_ZdlPv(ptr noundef %i.rj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %bb.co
  %i.rl = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rm = add i64 %i.rl, -4611686018427387894
  %i.rn = icmp ult i64 %i.rm, 10
  br i1 %i.rn, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit342
  %i.ro = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.53, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349
  %i.rp = load ptr, ptr %i.qu, align 8, !tbaa !544
  %i.rq = load ptr, ptr %i.qs, align 8, !tbaa !545
  %.not426 = icmp eq ptr %i.rp, %i.rq
  br i1 %.not426, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader
  %i.rr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.rt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 noundef 0)
          to label %bb.cs unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel
  invoke void @_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %i.rt)
          to label %bb.ct unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %i.ru = load i64, ptr %i.rr, align 8, !tbaa !268 ; 2 uses
  %i.rv = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.rw = sub i64 4611686018427387903, %i.rv
  %i.rx = icmp ult i64 %i.rw, %i.ru
  br i1 %i.rx, label %.loopexit436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel: ; preds = %bb.ct
  %i.ry = load ptr, ptr %35, align 8, !tbaa !275
  %i.rz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ry, i64 noundef %i.ru)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel
  %i.sa = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.rs
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel
  call void @_ZdlPv(ptr noundef %i.sa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i362.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.sc = load ptr, ptr %i.qu, align 8, !tbaa !544
  %i.sd = load ptr, ptr %i.qs, align 8, !tbaa !545
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = icmp ugt i64 %i.sg, 16
  br i1 %i.sh, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.0425 = phi i64 [ %i.sv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel ] ; 2 uses
  %i.si = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.sj = and i64 %i.si, -2
  %i.sk = icmp eq i64 %i.sj, 4611686018427387902
  br i1 %i.sk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353: ; preds = %.peel.next
  %i.sl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.51, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.sm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 noundef %.0425)
          to label %bb.cu unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356
  invoke void @_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %i.sm)
          to label %bb.cv unwind label %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  %i.sn = load i64, ptr %i.rr, align 8, !tbaa !268 ; 2 uses
  %i.so = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.sp = sub i64 4611686018427387903, %i.so
  %i.sq = icmp ult i64 %i.sp, %i.sn
  br i1 %i.sq, label %.loopexit436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357

.loopexit436:                                     ; preds = %bb.cv, %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc358 unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp

.noexc358:                                        ; preds = %.loopexit436
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357: ; preds = %bb.cv
  %i.sr = load ptr, ptr %35, align 8, !tbaa !275
  %i.ss = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.sr, i64 noundef %i.sn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360 unwind label %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357
  %i.st = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.rs
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360
  call void @_ZdlPv(ptr noundef %i.st) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.sv = add nuw i64 %.0425, 1                   ; 2 uses
  %i.sw = load ptr, ptr %i.qu, align 8, !tbaa !544
  %i.sx = load ptr, ptr %i.qs, align 8, !tbaa !545
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = ashr exact i64 %i.ta, 4
  %i.tc = icmp ult i64 %i.sv, %i.tb
  br i1 %i.tc, label %.peel.next, label %.loopexit, !llvm.loop !1090

.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit356.peel, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i357.peel, %.loopexit436
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = load ptr, ptr %35, align 8, !tbaa !275  ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.rs
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.td) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  %.pn75 = phi { ptr, i32 } [ %lpad.loopexit.split-lp566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp566, %.loopexit.split-lp420.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit352.preheader, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.tf = load i64, ptr %i.ma, align 8, !tbaa !268
  %i.tg = icmp eq i64 %i.tf, 4611686018427387903
  br i1 %i.tg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367: ; preds = %.loopexit
  %i.th = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367
  %.not78 = icmp eq ptr %7, null
  br i1 %.not78, label %bb.di, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit370
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.ti = load ptr, ptr %7, align 8, !tbaa !272
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  %i.tk = load ptr, ptr %i.tj, align 8
  invoke void %i.tk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.cx unwind label %bb.de

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.tl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.54, i64 noundef 15)
          to label %.noexc375 unwind label %bb.df, !noalias !1108 ; 6 uses

.noexc375:                                        ; preds = %bb.cx
  %i.tm = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  store ptr %i.tm, ptr %37, align 8, !tbaa !267, !alias.scope !1108
  %i.tn = load ptr, ptr %i.tl, align 8, !tbaa !275 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 5 uses
  %i.tp = icmp eq ptr %i.tn, %i.to
  br i1 %i.tp, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

bb.cy:                                            ; preds = %.noexc375
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !268 ; 3 uses
  %i.ts = icmp ult i64 %i.tr, 16
  call void @llvm.assume(i1 %i.ts)
  %i.tt = add nuw nsw i64 %i.tr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tm, ptr noundef nonnull align 8 dereferenceable(1) %i.to, i64 %i.tt, i1 false)
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %.noexc375
  store ptr %i.tn, ptr %37, align 8, !tbaa !275, !alias.scope !1108
  %i.tu = load i64, ptr %i.to, align 8, !tbaa !269
  store i64 %i.tu, ptr %i.tm, align 8, !tbaa !269, !alias.scope !1108
  %.phi.trans.insert.i372 = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.pre.i373 = load i64, ptr %.phi.trans.insert.i372, align 8, !tbaa !268
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371, %bb.cy
  %i.tv = phi i64 [ %i.tr, %bb.cy ], [ %.pre.i373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371 ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.tv, ptr %i.tx, align 8, !tbaa !268, !alias.scope !1108
  store ptr %i.to, ptr %i.tl, align 8, !tbaa !275
  store i64 0, ptr %i.tw, align 8, !tbaa !268
  store i8 0, ptr %i.to, align 8, !tbaa !269
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !268, !noalias !1109
  %i.tz = icmp eq i64 %i.ty, 4611686018427387903
  br i1 %i.tz, label %bb.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc382 unwind label %bb.dg, !noalias !1109

.noexc382:                                        ; preds = %bb.da
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377: ; preds = %bb.cz
  %i.ua = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc383 unwind label %bb.dg, !noalias !1109 ; 6 uses

.noexc383:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i377
  %i.ub = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.ub, ptr %36, align 8, !tbaa !267, !alias.scope !1109
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !275 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 5 uses
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

bb.db:                                            ; preds = %.noexc383
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !268 ; 3 uses
  %i.uh = icmp ult i64 %i.ug, 16
  call void @llvm.assume(i1 %i.uh)
  %i.ui = add nuw nsw i64 %i.ug, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ub, ptr noundef nonnull align 8 dereferenceable(1) %i.ud, i64 %i.ui, i1 false)
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %.noexc383
  store ptr %i.uc, ptr %36, align 8, !tbaa !275, !alias.scope !1109
  %i.uj = load i64, ptr %i.ud, align 8, !tbaa !269
  store i64 %i.uj, ptr %i.ub, align 8, !tbaa !269, !alias.scope !1109
  %.phi.trans.insert.i379 = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %.pre.i380 = load i64, ptr %.phi.trans.insert.i379, align 8, !tbaa !268
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.db
  %i.uk = phi i64 [ %i.ug, %bb.db ], [ %.pre.i380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
end_hunk_1
begin_hunk_2_@_ZN6duckdb18OperatorExpression8ToStringINS_23BoundOperatorExpressionENS_10ExpressionEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.bq = load ptr, ptr %5, align 8, !tbaa !275   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.aw
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  %i.bs = load ptr, ptr %6, align 8, !tbaa !275   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ah
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  call void @_ZdlPv(ptr noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  %i.bu = load ptr, ptr %7, align 8, !tbaa !275   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  call void @_ZdlPv(ptr noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  %i.bw = load ptr, ptr %8, align 8, !tbaa !275   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  call void @_ZdlPv(ptr noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

bb.s:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i188, %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

bb.w:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.x:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %9, align 8, !tbaa !275   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.w ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %i.ce, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ci = load ptr, ptr %5, align 8, !tbaa !275   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  call void @_ZdlPv(ptr noundef %i.ci) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.v ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ] ; 2 uses
  %i.ck = load ptr, ptr %6, align 8, !tbaa !275   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ah
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  call void @_ZdlPv(ptr noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ] ; 2 uses
  %i.cm = load ptr, ptr %7, align 8, !tbaa !275   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.p
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  call void @_ZdlPv(ptr noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ] ; 2 uses
  %i.co = load ptr, ptr %8, align 8, !tbaa !275   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  call void @_ZdlPv(ptr noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.s ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.y:                                             ; preds = %bb.a
  %i.cr = load i8, ptr %i.a, align 8, !tbaa !265  ; 3 uses
  switch i8 %i.cr, label %bb.hi [
    i8 35, label %._crit_edge.i.i
    i8 36, label %._crit_edge.i.i
    i8 16, label %bb.ax
    i8 -98, label %bb.bf
    i8 13, label %bb.bn
    i8 102, label %bb.bz
    i8 -104, label %bb.bz
    i8 14, label %bb.cj
    i8 15, label %bb.cv
    i8 -103, label %bb.dh
    i8 -102, label %bb.ee
    i8 -101, label %bb.gf
    i8 -100, label %bb.ha
  ]

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cs = icmp eq i8 %i.cr, 35                    ; 3 uses
  %i.ct = select i1 %i.cs, ptr @.str.84, ptr @.str.85
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !267
  %i.cv = select i1 %i.cs, i64 4, i64 8           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.cu, ptr noundef nonnull align 1 dereferenceable(4) %i.ct, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !268
  %.sroa.sel.v.sroa.sel.v = select i1 %i.cs, i64 20, i64 24
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %10, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 4, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef 0)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.cz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %bb.aa unwind label %bb.af     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !272
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %i.cz)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.dd, ptr %12, align 8, !tbaa !267
  store i8 40, ptr %i.dd, align 8, !tbaa !269
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 1, ptr %i.de, align 8, !tbaa !268
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.df, align 1, !tbaa !269
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !358
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !359
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ugt i64 %i.dl, 8
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.peel: ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef 1)
          to label %bb.ac unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.peel
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.ad unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !272
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %i.dq)
          to label %bb.ae unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i64, ptr %i.dn, align 8, !tbaa !268 ; 2 uses
  %i.dv = load i64, ptr %i.de, align 8, !tbaa !268
  %i.dw = sub i64 4611686018427387903, %i.dv
  %i.dx = icmp ult i64 %i.dw, %i.du
  br i1 %i.dx, label %.loopexit702, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235.peel: ; preds = %bb.ae
  %i.dy = load ptr, ptr %13, align 8, !tbaa !275
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.dy, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235.peel
  %i.ea = load ptr, ptr %13, align 8, !tbaa !275  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.do
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ec = load ptr, ptr %i.dg, align 8, !tbaa !358
  %i.ed = load ptr, ptr %i.cx, align 8, !tbaa !359
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = icmp ugt i64 %i.eg, 16
  br i1 %i.eh, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel
  %.pre = load i64, ptr %i.de, align 8, !tbaa !268
  %i.ei = icmp eq i64 %.pre, 4611686018427387903
  br i1 %i.ei, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228: ; preds = %bb.ab, %._crit_edge
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %.041693 = phi i64 [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.peel ] ; 2 uses
  %i.el = load i64, ptr %i.de, align 8, !tbaa !268
  %i.em = and i64 %i.el, -2
  %i.en = icmp eq i64 %i.em, 4611686018427387902
  br i1 %i.en, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231

.loopexit.invoke:                                 ; preds = %.peel.next, %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.loopexit.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231: ; preds = %.peel.next
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.51, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231, %.loopexit.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228
  %lpad.loopexit.split-lp895 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i231
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef %.041693)
          to label %bb.ag unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234
  %i.eq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep)
          to label %bb.ah unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !272
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %i.eq)
          to label %bb.ai unwind label %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i64, ptr %i.dn, align 8, !tbaa !268 ; 2 uses
  %i.ev = load i64, ptr %i.de, align 8, !tbaa !268
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.eu
  br i1 %i.ex, label %.loopexit702, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235

.loopexit702:                                     ; preds = %bb.ai, %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc236 unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %.loopexit702
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235: ; preds = %bb.ai
  %i.ey = load ptr, ptr %13, align 8, !tbaa !275
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.ey, i64 noundef %i.eu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235
  %i.fa = load ptr, ptr %13, align 8, !tbaa !275  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.do
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.fa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.fc = add nuw i64 %.041693, 1                 ; 2 uses
  %i.fd = load ptr, ptr %i.dg, align 8, !tbaa !358
  %i.fe = load ptr, ptr %i.cx, align 8, !tbaa !359
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.peel.next, label %._crit_edge, !llvm.loop !1240

.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit234.peel, %bb.ac, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i235.peel, %.loopexit702
  %lpad.loopexit.split-lp899 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %13, align 8, !tbaa !275  ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.do
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.fk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  %.pn172 = phi { ptr, i32 } [ %lpad.loopexit.split-lp899, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp699.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp899, %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i228
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.fm = load ptr, ptr %11, align 8, !tbaa !275, !noalias !1277
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !268, !noalias !1277 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.fp, ptr %16, align 8, !tbaa !267, !alias.scope !1278
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.fq, align 8, !tbaa !268, !alias.scope !1278
  store i8 0, ptr %i.fp, align 8, !tbaa !269, !alias.scope !1278
  %i.fr = add i64 %i.fo, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.fr)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !268, !alias.scope !1278
  %i.ft = icmp eq i64 %i.fs, 4611686018427387903
  br i1 %i.ft, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.48, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.ak ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fv = load i64, ptr %i.fq, align 8, !tbaa !268, !alias.scope !1278
  %i.fw = sub i64 4611686018427387903, %i.fv
  %i.fx = icmp ult i64 %i.fw, %i.fo
  br i1 %i.fx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.cont.i.i unwind label %bb.ak

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.fm, i64 noundef %i.fo)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %16, align 8, !tbaa !275, !alias.scope !1278 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fp
  br i1 %i.gb, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.gc = load i64, ptr %i.cw, align 8, !tbaa !268, !noalias !1279 ; 2 uses
  %i.gd = load i64, ptr %i.fq, align 8, !tbaa !268, !noalias !1279
  %i.ge = sub i64 4611686018427387903, %i.gd
  %i.gf = icmp ult i64 %i.ge, %i.gc
  br i1 %i.gf, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i244

bb.al:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc248 unwind label %bb.au, !noalias !1279

.noexc248:                                        ; preds = %bb.al
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i244: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gg = load ptr, ptr %10, align 8, !tbaa !275, !noalias !1279
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.gg, i64 noundef %i.gc)
          to label %.noexc249 unwind label %bb.au, !noalias !1279 ; 6 uses

.noexc249:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i244
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.gi, ptr %15, align 8, !tbaa !267, !alias.scope !1279
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !275 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 5 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
end_hunk_2
