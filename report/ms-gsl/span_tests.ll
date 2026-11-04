Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt8__detail17__regex_algo_implIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEEcNS5_12regex_traitsIcEEEEbT_SB_RNS5_13match_resultsISB_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  br i1 %.not.i.i.i.i.i54, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.cj = shl nuw nsw i64 %i.ch, 5
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #36 ; 4 uses
  store ptr %i.ck, ptr %i.bz, align 8
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %i.cl, ptr %i.cm, align 8
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ck, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ] ; 2 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.cn = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !347

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ck, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cp = icmp ult i64 %i.ch, 8
  br i1 %i.cp, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cr, i8 0, i64 28, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cs, i8 0, i64 28, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ct, i8 0, i64 28, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cu, i8 0, i64 28, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cv, i8 0, i64 28, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  %i.cx = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.df = and i32 %4, 128
  %.not.i56 = icmp eq i32 %i.df, 0
  %i.dg = and i32 %4, -6
  %spec.select = select i1 %.not.i56, i32 %4, i32 %i.dg
  store i32 %spec.select, ptr %i.de, align 8
  br i1 %6, label %bb.u, label %bb.w

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp91, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %.loopexit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 180 ; 2 uses
  store i8 0, ptr %i.di, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.dj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc57 unwind label %bb.v   ; 0 uses

.noexc57:                                         ; preds = %bb.u
  %i.dk = load i64, ptr %i.da, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %10, i8 noundef zeroext 0, i64 noundef %i.dk)
          to label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.v

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc57
  %i.dl = load i8, ptr %i.di, align 4, !range !34, !noundef !35
  %i.dm = trunc nuw i8 %i.dl to i1
  br label %bb.x

bb.v:                                             ; preds = %.noexc57, %bb.u, %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume

bb.w:                                             ; preds = %.loopexit.i
  %i.do = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(181) %10)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.w
  %.1.in = phi i1 [ %i.dm, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.do, %bb.w ]
  %i.dp = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60: ; preds = %bb.y, %bb.x
  %i.dv = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i.i1.i61 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i1.i61, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %.1.in, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.aa
  %i.eb = load ptr, ptr %2, align 8               ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not6970 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not6970, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ad
  %.pre73 = load ptr, ptr %i.ec, align 8
  %.pre74 = load ptr, ptr %2, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ab
  %i.ee = phi ptr [ %.pre74, %._crit_edge.loopexit ], [ %i.eb, %bb.ab ] ; 2 uses
  %i.ef = phi ptr [ %.pre73, %._crit_edge.loopexit ], [ %i.eb, %bb.ab ]
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr i8, ptr %i.ee, i64 %i.ei  ; 14 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -112   ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -56    ; 3 uses
  br i1 %6, label %bb.ae, label %bb.af

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %.sroa.064.071 = phi ptr [ %i.eq, %bb.ad ], [ %i.eb, %bb.ab ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 48
  %i.en = load i8, ptr %i.em, align 8, !range !34, !noundef !35
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.064.071, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 56 ; 2 uses
  %.not69 = icmp eq ptr %i.eq, %i.ed
  br i1 %.not69, label %._crit_edge.loopexit, label %.lr.ph

bb.ae:                                            ; preds = %._crit_edge
  %i.er = getelementptr i8, ptr %i.ej, i64 -64
  store i8 0, ptr %i.er, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.es = getelementptr i8, ptr %i.ej, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.et = getelementptr i8, ptr %i.ej, i64 -8
  store i8 0, ptr %i.et, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.eu = getelementptr i8, ptr %i.ej, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.aj

bb.af:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr i8, ptr %i.ej, i64 -88    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  %i.ex = load <2 x ptr>, ptr %i.ek, align 8
  %i.ey = load <2 x ptr>, ptr %i.ew, align 8
  %i.ez = icmp eq <2 x ptr> %i.ex, %i.ey
  %11 = freeze <2 x i1> %i.ez
  %12 = bitcast <2 x i1> %11 to i2
  %13 = icmp eq i2 %12, -1
  br i1 %13, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.ag, !prof !38

bb.ag:                                            ; preds = %bb.af
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.af
  %i.fa = getelementptr i8, ptr %i.ej, i64 -96
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %i.ej, i64 -72
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = icmp ne ptr %i.fb, %i.fd
  %i.ff = getelementptr i8, ptr %i.ej, i64 -64
  %i.fg = zext i1 %i.fe to i8
  store i8 %i.fg, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %2, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false)
  %i.fj = getelementptr i8, ptr %i.ej, i64 -32    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fk = load <2 x ptr>, ptr %i.el, align 8
  %i.fl = load <2 x ptr>, ptr %i.fj, align 8
  %i.fm = icmp eq <2 x ptr> %i.fk, %i.fl
  %14 = freeze <2 x i1> %i.fm
  %15 = bitcast <2 x i1> %14 to i2
  %16 = icmp eq i2 %15, -1
  br i1 %16, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, label %bb.ah, !prof !38

bb.ah:                                            ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63: ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.fn = getelementptr i8, ptr %i.ej, i64 -40
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr i8, ptr %i.ej, i64 -16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp ne ptr %i.fo, %i.fq
  %i.fs = getelementptr i8, ptr %i.ej, i64 -8
  %i.ft = zext i1 %i.fr to i8
  store i8 %i.ft, ptr %i.fs, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE14_M_fill_assignEmRKS6_(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(49) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, %bb.ae, %bb.a
  %.050 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63 ], [ false, %bb.ai ]
  ret i1 %.050
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EEC2ES4_S4_RSt6vectorIS7_S8_ERKNS5_11basic_regexIcSA_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(189) %0, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %1, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48                  ; 7 uses
  %i.q = icmp ugt i64 %i.p, 288230376151711743
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 5
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #36
          to label %.noexc10 unwind label %bb.d   ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.s, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.t, ptr %i.u, align 8
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc10, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %.noexc10 ] ; 2 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc10 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc10 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.v = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !348

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc10
  %.lcssa.unr = phi ptr [ poison, %.noexc10 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.s, %.noexc10 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc10 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.p, 8
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 24, i1 false)
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #36
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ai) #32
  %i.at = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %i.aq, i1 false)
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.ak, ptr %i.av, align 8
  %i.aw = and i32 %5, 128
  %.not = icmp eq i32 %i.aw, 0
  %i.ax = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %spec.select, ptr %i.ay, align 8
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.at to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.be) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.az, %bb.d ], [ %i.as, %.body ], [ %i.as, %bb.e ]
  %i.bf = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSB_11_Match_modeEl:bb.a
_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.av, align 8
  %i.bc = load ptr, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.ag, align 8
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

bb.j:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE17_M_realloc_insertIJRlRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher", align 8 ; 5 uses
  %4 = alloca %"class.gsl::details::span_iterator.141", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.g ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !range !34, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.sroa.017.0.copyload = load ptr, ptr %i.m, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.sroa.017.0.copyload, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %.sroa.7.0.copyload, %i.r
  %i.t = select i1 %i.p, i1 %i.s, i1 false, !prof !38
  br i1 %i.t, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph, label %bb.d, !prof !39

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.not.us45 = icmp eq ptr %.sroa.10.0.copyload, %i.v
  br i1 %.not.us45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %.sroa.0.0.copyload, %i.z
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = icmp eq ptr %.sroa.4.0.copyload, %i.ab
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !prof !38
  br i1 %i.ad, label %.lr.ph.split, label %.split.us, !prof !38

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.w, align 8
  br label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us: ; preds = %.lr.ph.split, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us
  %.sroa.10.039.us47 = phi ptr [ %.sroa.10.0.copyload, %.lr.ph.split ], [ %i.af, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ] ; 3 uses
  %.sroa.6.040.us46 = phi ptr [ %.sroa.6.0.copyload, %.lr.ph.split ], [ %i.ag, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ] ; 3 uses
  %.not33.us = icmp eq ptr %.sroa.6.040.us46, %i.ae
  br i1 %.not33.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us
  %.not.i.us = icmp eq ptr %.sroa.10.039.us47, %.sroa.7.0.copyload
  br i1 %.not.i.us, label %.split42.us, label %_ZN3gsl7details13span_iteratorIcEppEv.exit.us, !prof !36

_ZN3gsl7details13span_iteratorIcEppEv.exit.us:    ; preds = %bb.c
  %.not.i12.us = icmp eq ptr %.sroa.6.040.us46, %.sroa.4.0.copyload
  br i1 %.not.i12.us, label %.split44.us, label %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us, !prof !36

_ZN3gsl7details13span_iteratorIcEppEv.exit13.us:  ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.us
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.039.us47, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.040.us46, i64 1
  %.not.us = icmp eq ptr %i.af, %i.v
  br i1 %.not.us, label %.critedge, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split.us:                                        ; preds = %.lr.ph
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.critedge:                                        ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph
  %.us-phi = phi ptr [ %.sroa.10.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph ], [ %i.af, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ], [ %.sroa.10.039.us47, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = and i8 %i.ak, 1
  store i8 %i.ao, ptr %3, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.sroa.017.0.copyload, ptr %4, align 8
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx21, align 8
  %.sroa.10.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.us-phi, ptr %.sroa.10.0..sroa_idx27, align 8
  %i.ar = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN3gsl7details13span_iteratorIcEENSt7__cxx1112regex_traitsIcEEE8_M_applyES4_S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.i, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.aq, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.m, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.ar, label %bb.e, label %bb.i

.split42.us:                                      ; preds = %bb.c
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split44.us:                                      ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.us
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.m, align 8
  %i.at = icmp eq ptr %.sroa.017.0.copyload, %i.as
  %i.au = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.av = icmp eq ptr %.sroa.7.0.copyload, %i.au
  %i.aw = select i1 %i.at, i1 %i.av, i1 false, !prof !38
  br i1 %i.aw, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14: ; preds = %bb.e
  %i.ax = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.not34 = icmp eq ptr %.us-phi, %i.ax
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14
  %.sroa.0.0.copyload50 = load <3 x ptr>, ptr %i.m, align 8
  store ptr %.sroa.017.0.copyload, ptr %i.m, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %.us-phi, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.az)
  store <3 x ptr> %.sroa.0.0.copyload50, ptr %i.m, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.bb)
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load <2 x ptr>, ptr %i.h, align 8
  %i.n = load <2 x ptr>, ptr %i.l, align 8
  %i.o = icmp eq <2 x ptr> %i.m, %i.n
  %3 = freeze <2 x i1> %i.o
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, -1
  br i1 %5, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %.not = icmp eq ptr %i.q, %i.s
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, %bb.a
  %.sroa.0.sroa.0.0.copyload = load <3 x ptr>, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.v)
  store <3 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.h, align 8
  store i32 %i.j, ptr %i.i, align 8
  br label %bb.g

bb.e:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.w = icmp slt i32 %i.j, 2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.j, 1
  store i32 %i.x, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.z)
  %i.aa = load i32, ptr %i.i, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv(ptr noundef nonnull align 8 dereferenceable(189) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false, !prof !38
  br i1 %i.k, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 1
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.r, 128
  %.not2 = icmp eq i32 %i.t, 0
  br i1 %.not2, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !35, !align !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 2064
  %i.ab = icmp eq i32 %i.aa, 2064
  br i1 %i.ab, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.not.i10.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i10.i, label %bb.g, label %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !377
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i, label %bb.h, label %.sink.split, !prof !36

bb.h:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.i:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !35, !align !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2064
  %i.ak = icmp eq i32 %i.aj, 2064
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i10.i3 = icmp eq ptr %i.c, %i.m
  br i1 %.not.i10.i3, label %bb.k, label %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4, !prof !36

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !378
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4: ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i5 = icmp eq ptr %i.al, %i.g
  br i1 %.not.i5, label %bb.l, label %.sink.split, !prof !36

bb.l:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.sink.split:                                      ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sink.in = phi ptr [ %i.ac, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.al, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4 ]
  %.sink = load i8, ptr %.sink.in, align 1
  %i.am = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef signext %.sink)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %bb.d, %bb.e, %bb.c
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.i ], [ false, %bb.c ], [ false, %bb.e ], [ %i.am, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #32
  %i.f = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.g = load ptr, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not.not.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 313
  %i.m = zext i8 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.c, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.c:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1, i8 noundef signext 32), !inline_history !6 ; 3 uses
  %.not11.i = icmp eq i8 %i.s, 32
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE17_M_handle_backrefENSB_11_Match_modeEl:bb.a
  %.sroa.0.0.copyload50 = load <3 x ptr>, ptr %i.m, align 8
  store ptr %.sroa.017.0.copyload, ptr %i.m, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %.us-phi, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.az)
  store <3 x ptr> %.sroa.0.0.copyload50, ptr %i.m, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.bb)
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_handle_acceptENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  %i.l = select i1 %i.f, i1 %i.k, i1 false, !prof !38
  br i1 %i.l, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 1, ptr %i.t, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre50 = load ptr, ptr %.phi.trans.insert49, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.u = phi i1 [ true, %bb.d ], [ %i.q, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit ]
  %i.v = phi ptr [ %.pre50, %bb.d ], [ %i.h, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit ] ; 2 uses
  %i.w = phi ptr [ %.pre, %bb.d ], [ %i.d, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.v, %i.ad
  %i.af = select i1 %i.aa, i1 %i.ae, i1 false, !prof !38
  br i1 %i.af, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit2, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit2: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 32
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 0, ptr %i.ao, align 4
  br label %bb.p

bb.h:                                             ; preds = %bb.g, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit2
  br i1 %i.u, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !35, !align !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 16
  %.not1 = icmp eq i32 %i.at, 0
  br i1 %.not1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !35, !align !40
  %i.aw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false, !prof !38
  br i1 %i.bd, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit3, label %bb.l, !prof !38

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit3: ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit3
  %i.bh = icmp eq ptr %i.w, null
  %i.bi = icmp eq ptr %i.v, null
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false, !prof !38
  br i1 %i.bj, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit, label %bb.n, !prof !38

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit: ; preds = %bb.m
  %.sroa.247.0.copyload = load ptr, ptr %i.ab, align 8
  %i.bk = icmp eq ptr %.sroa.247.0.copyload, null
  br i1 %i.bk, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4, label %bb.o, !prof !38

bb.o:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ptrtoint ptr %i.ah to i64
  %i.bp = sub i64 %i.bo, %i.bm
  %i.bq = icmp slt i64 %i.bn, %i.bp
  br i1 %i.bq, label %.critedge, label %bb.p

.critedge:                                        ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit3, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !35, !align !40
  %i.bt = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.j, %.critedge, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load <2 x ptr>, ptr %i.h, align 8
  %i.n = load <2 x ptr>, ptr %i.l, align 8
  %i.o = icmp eq <2 x ptr> %i.m, %i.n
  %3 = freeze <2 x i1> %i.o
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, -1
  br i1 %5, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %.not = icmp eq ptr %i.q, %i.s
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, %bb.a
  %.sroa.0.sroa.0.0.copyload = load <3 x ptr>, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.v)
  store <3 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.h, align 8
  store i32 %i.j, ptr %i.i, align 8
  br label %bb.g

bb.e:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.w = icmp slt i32 %i.j, 2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.j, 1
  store i32 %i.x, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.z)
  %i.aa = load i32, ptr %i.i, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv(ptr noundef nonnull align 8 dereferenceable(181) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false, !prof !38
  br i1 %i.k, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 1
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.r, 128
  %.not2 = icmp eq i32 %i.t, 0
  br i1 %.not2, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !35, !align !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 2064
  %i.ab = icmp eq i32 %i.aa, 2064
  br i1 %i.ab, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.not.i10.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i10.i, label %bb.g, label %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !400
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i, label %bb.h, label %.sink.split, !prof !36

bb.h:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.i:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !35, !align !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2064
  %i.ak = icmp eq i32 %i.aj, 2064
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i10.i3 = icmp eq ptr %i.c, %i.m
  br i1 %.not.i10.i3, label %bb.k, label %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4, !prof !36

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !401
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4: ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i5 = icmp eq ptr %i.al, %i.g
  br i1 %.not.i5, label %bb.l, label %.sink.split, !prof !36

bb.l:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.sink.split:                                      ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sink.in = phi ptr [ %i.ac, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.al, %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit4 ]
  %.sink = load i8, ptr %.sink.in, align 1
  %i.am = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef signext %.sink)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %bb.d, %bb.e, %bb.c
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.i ], [ false, %bb.c ], [ false, %bb.e ], [ %i.am, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #32
  %i.f = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.g = load ptr, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not.not.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 313
  %i.m = zext i8 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.c, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.c:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1, i8 noundef signext 32), !inline_history !6 ; 3 uses
  %.not11.i = icmp eq i8 %i.s, 32
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit
end_hunk_2
