Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/escaping_test?download=true
inline.NumInlined: 1881
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_129Base64_EscapeAndUnescape_Test8TestBodyEv:bb.a

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit258.i, %bb.aq
  %.pn167.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn167.pn.pn.i, %_ZN7testing7MessageD2Ev.exit258.i ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ex

bb.bg:                                            ; preds = %bb.be, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i264.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_ETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.fx = load ptr, ptr %i.t, align 8, !tbaa !46  ; 2 uses
  %.not.i.i268.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i268.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit269.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !30
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit269.i

_ZNK7testing15AssertionResult15failure_messageEv.exit269.i: ; preds = %bb.bj, %bb.bi
  %i.fz = phi ptr [ %i.fy, %bb.bj ], [ @.str.44, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 587, ptr noundef %i.fz)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit269.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.ga = load ptr, ptr %19, align 8, !tbaa !45   ; 3 uses
  %.not.i.i270.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i270.i, label %_ZN7testing7MessageD2Ev.exit272.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271.i: ; preds = %bb.bl
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #17, !inline_history !199
  br label %_ZN7testing7MessageD2Ev.exit272.i

_ZN7testing7MessageD2Ev.exit272.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit275.i

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit269.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn173.i = phi { ptr, i32 } [ %i.gg, %bb.bo ], [ %i.gf, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.gh = load ptr, ptr %19, align 8, !tbaa !45   ; 3 uses
  %.not.i.i273.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i273.i, label %_ZN7testing7MessageD2Ev.exit275.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274.i: ; preds = %bb.bp
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !11
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #17, !inline_history !199
  br label %_ZN7testing7MessageD2Ev.exit275.i

_ZN7testing7MessageD2Ev.exit275.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274.i, %bb.bp, %bb.bm
  %.pn173.pn.i = phi { ptr, i32 } [ %i.ge, %bb.bm ], [ %.pn173.i, %bb.bp ], [ %.pn173.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i274.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #17
  br label %bb.bz

bb.bq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit272.i, %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_ETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit267.i
  %i.gl = load ptr, ptr %i.t, align 8, !tbaa !46  ; 4 uses
  %.not.i.i276.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i276.i, label %_ZN7testing15AssertionResultD2Ev.exit280.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !30 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277.i: ; preds = %bb.br
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !28
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit280.i

_ZN7testing15AssertionResultD2Ev.exit280.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i278.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr %i.u, ptr %21, align 8, !tbaa !25
  %i.gr = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  %i.gs = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.gs, %i.gr
  br i1 %or.cond.i.i.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit280.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #21
          to label %.noexc281.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc281.i:                                      ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit280.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !29
  %i.gt = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 15
  br i1 %i.gt, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.bt
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc282.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc282.i:                                      ; preds = %.noexc.i.i.i.i
  store ptr %i.gu, ptr %21, align 8, !tbaa !30
  %i.gv = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.gv, ptr %i.u, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc282.i, %bb.bt
  %i.gw = phi ptr [ %i.gu, %.noexc282.i ], [ %i.u, %bb.bt ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %bb.bw
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.gx = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !28
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !28
  br label %bb.bw

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i.i.i.i
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  store i64 %i.gy, ptr %i.v, align 8, !tbaa !27
  %i.gz = load ptr, ptr %21, align 8, !tbaa !30
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gy
  store i8 0, ptr %i.ha, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.hb = load i64, ptr %i.v, align 8, !tbaa !27
  %.not915.i = icmp eq i64 %i.hb, 0
  br i1 %.not915.i, label %._crit_edge.i.i283.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bw
  %.pre921.i = load ptr, ptr %21, align 8, !tbaa !30
  br label %.lr.ph.i

._crit_edge.i.i283.thread.i:                      ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  store ptr %i.w, ptr %22, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

._crit_edge.i:                                    ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  store ptr %i.w, ptr %22, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !29
  %i.hc = icmp samesign ugt i64 %i.hy, 15
  br i1 %i.hc, label %.noexc.i284.i, label %._crit_edge.i.i283.i

.noexc.i284.i:                                    ; preds = %._crit_edge.i
  %i.hd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc285.i unwind label %bb.cf ; 2 uses

.noexc285.i:                                      ; preds = %.noexc.i284.i
  store ptr %i.hd, ptr %22, align 8, !tbaa !30
  %i.he = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.he, ptr %i.w, align 8, !tbaa !28
  br label %._crit_edge.i.i283.i

._crit_edge.i.i283.i:                             ; preds = %.noexc285.i, %._crit_edge.i
  %i.hf = phi ptr [ %i.hd, %.noexc285.i ], [ %i.w, %._crit_edge.i ] ; 2 uses
  %trunc.i = trunc nuw i64 %i.hy to i32
  switch i32 %trunc.i, label %bb.by [
    i32 1, label %bb.bx
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i283.i
  %i.hg = load i8, ptr %i.hv, align 1, !tbaa !28
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.by:                                            ; preds = %._crit_edge.i.i283.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.hv, i64 %i.hy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.by, %bb.bx, %._crit_edge.i.i283.i, %._crit_edge.i.i283.thread.i
  %i.hh = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  store i64 %i.hh, ptr %i.x, align 8, !tbaa !27
  %i.hi = load ptr, ptr %22, align 8, !tbaa !30
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.hk = load i64, ptr %i.x, align 8, !tbaa !27  ; 2 uses
  %.not916.i = icmp eq i64 %i.hk, 0
  br i1 %.not916.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, label %.lr.ph909.i

.lr.ph909.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.hl = load ptr, ptr %22, align 8, !tbaa !30
  br label %bb.cg

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit275.i, %bb.bg
  %.pn173.pn.pn.i = phi { ptr, i32 } [ %.pn173.pn.i, %_ZN7testing7MessageD2Ev.exit275.i ], [ %i.fw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.ex

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i, %bb.bs
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.cd
  %i.hm = phi ptr [ %i.hv, %bb.cd ], [ %.pre921.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.hn = phi i64 [ %i.hx, %bb.cd ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.0122907.i = phi i32 [ %i.hw, %bb.cd ], [ 0, %.lr.ph.i.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !28  ; 2 uses
  %i.hq = icmp eq i8 %i.hp, 43
  br i1 %i.hq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i
  store i8 45, ptr %i.ho, align 1, !tbaa !28
  %.pre920.i = load ptr, ptr %21, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre920.i, i64 %i.hn
  %.pre922.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !28
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i
  %i.hr = phi i8 [ %.pre922.i, %bb.ca ], [ %i.hp, %.lr.ph.i ]
  %i.hs = phi ptr [ %.pre920.i, %bb.ca ], [ %i.hm, %.lr.ph.i ] ; 2 uses
  %i.ht = icmp eq i8 %i.hr, 47
  br i1 %i.ht, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hn
  store i8 95, ptr %i.hu, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %21, align 8, !tbaa !30
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.hv = phi ptr [ %i.hs, %bb.cb ], [ %.pre.i, %bb.cc ] ; 3 uses
  %i.hw = add i32 %.0122907.i, 1                  ; 2 uses
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = load i64, ptr %i.v, align 8, !tbaa !27  ; 5 uses
  %i.hz = icmp ugt i64 %i.hy, %i.hx
  br i1 %i.hz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !208

bb.ce:                                            ; preds = %bb.cg
  %i.ia = add i32 %.0124908.i, 1                  ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = icmp ugt i64 %i.hk, %i.ib
  br i1 %i.ic, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, !llvm.loop !209

bb.cf:                                            ; preds = %.noexc.i284.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400.i

bb.cg:                                            ; preds = %bb.ce, %.lr.ph909.i
  %i.ie = phi i64 [ 0, %.lr.ph909.i ], [ %i.ib, %bb.ce ] ; 2 uses
  %.0124908.i = phi i32 [ 0, %.lr.ph909.i ], [ %i.ia, %bb.ce ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !28
  %i.ih = icmp eq i8 %i.ig, 61
  br i1 %i.ih, label %bb.ch, label %bb.ce

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.ie, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %bb.ce, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ii = load i64, ptr %i.f, align 8, !tbaa !27
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ii, ptr noundef nonnull @.str.152, i64 noundef 27)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.co ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN4absl12lts_2026052619WebSafeBase64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %.sroa.042.0.copyload.i, ptr %.sroa.243.0.copyload.i)
          to label %.noexc298.i unwind label %bb.co

.noexc298.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.ik = load ptr, ptr %4, align 8, !tbaa !30    ; 6 uses
  %i.il = icmp eq ptr %i.ik, %i.e
  %i.im = load ptr, ptr %2, align 8, !tbaa !30    ; 5 uses
  %i.in = icmp eq ptr %i.im, %i.y                 ; 2 uses
  br i1 %i.il, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i: ; preds = %.noexc298.i
  br i1 %i.in, label %bb.ci, label %.thread.i.i297.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.i: ; preds = %.noexc298.i
  br i1 %i.in, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i289.i

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i
  %i.io = load i64, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ip = icmp ult i64 %i.io, 16
  call void @llvm.assume(i1 %i.ip)
  switch i64 %i.io, label %bb.ck [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i
    i64 1, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.iq = load i8, ptr %i.im, align 1, !tbaa !28
  store i8 %i.iq, ptr %i.ik, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.im, i64 %i.io, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.ir = load i64, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  store i64 %i.ir, ptr %i.f, align 8, !tbaa !27
  %i.is = load ptr, ptr %4, align 8, !tbaa !30
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ir
  store i8 0, ptr %i.it, align 1, !tbaa !28
  %.pre.i.i295.i = load ptr, ptr %2, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i

.thread.i.i297.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296.i
  store ptr %i.im, ptr %4, align 8, !tbaa !30
  %i.iu = load <2 x i64>, ptr %i.z, align 8, !tbaa !28
  store <2 x i64> %i.iu, ptr %i.f, align 8, !tbaa !28
  br label %bb.cm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i289.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.i
  %i.iv = load i64, ptr %i.e, align 8, !tbaa !28
  store ptr %i.im, ptr %4, align 8, !tbaa !30
  %i.iw = load <2 x i64>, ptr %i.z, align 8, !tbaa !28
  store <2 x i64> %i.iw, ptr %i.f, align 8, !tbaa !28
  %.not.i.i290.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i290.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i289.i
  store ptr %i.ik, ptr %2, align 8, !tbaa !30
  store i64 %i.iv, ptr %i.y, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i289.i, %.thread.i.i297.i
  store ptr %i.y, ptr %2, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i: ; preds = %bb.cm, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i
  %i.ix = phi ptr [ %i.ik, %bb.cl ], [ %i.y, %bb.cm ], [ %.pre.i.i295.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i294.i ]
  store i64 0, ptr %i.z, align 8, !tbaa !27
  store i8 0, ptr %i.ix, align 1, !tbaa !28
  %i.iy = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.y
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i293.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i
  %i.ja = load i64, ptr %i.y, align 8, !tbaa !28
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i293.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i293.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i291.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.jc = load i64, ptr %i.f, align 8, !tbaa !27, !noalias !233 ; 3 uses
  %i.jd = load i64, ptr %i.x, align 8, !tbaa !27, !noalias !233
  %i.je = icmp eq i64 %i.jc, %i.jd
  br i1 %i.je, label %bb.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i293.i
  %i.jf = icmp eq i64 %i.jc, 0
  br i1 %i.jf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.cn
  %i.jg = load ptr, ptr %22, align 8, !tbaa !30, !noalias !233
  %i.jh = load ptr, ptr %4, align 8, !tbaa !30, !noalias !233
  %bcmp.i.i.i299.i = call i32 @bcmp(ptr %i.jh, ptr %i.jg, i64 %i.jc), !noalias !233
  %i.ji = icmp eq i32 %bcmp.i.i.i299.i, 0
  br i1 %i.ji, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i
end_hunk_0
