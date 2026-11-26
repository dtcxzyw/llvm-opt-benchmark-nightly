Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/parse?download=true
inline.NumInlined: 1795
inline.NumDeleted: 747
begin_hunk_0_@_ZN4absl12lts_2026052614flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
  br label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 4 uses
  store ptr %i.mm, ptr %i.mh, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.ly, ptr %i.b, align 8, !tbaa !34
  %i.mn = icmp ugt i64 %i.ly, 15
  br i1 %i.mn, label %.noexc.i.i.i.i14.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i14.i.i:                             ; preds = %bb.bw
  %i.mo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.thread258.i.i unwind label %.loopexit.split-lp74.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge.i.i.i.i.i.thread258.i.i:              ; preds = %.noexc.i.i.i.i14.i.i
  store ptr %i.mo, ptr %i.mh, align 8, !tbaa !28
  %i.mp = load i64, ptr %i.b, align 8, !tbaa !34
  store i64 %i.mp, ptr %i.mm, align 8, !tbaa !29
  br label %bb.by

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bw
  %cond.i.i = icmp eq i64 %i.ly, 1
  br i1 %cond.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.mq = load i8, ptr %i.lz, align 1, !tbaa !29
  store i8 %i.mq, ptr %i.mm, align 8, !tbaa !29
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i

bb.by:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.thread258.i.i, %._crit_edge.i.i.i.i.i.thread.i.i
  %i.mr = phi ptr [ %i.ml, %._crit_edge.i.i.i.i.i.thread.i.i ], [ %i.mm, %._crit_edge.i.i.i.i.i.i.i ], [ %i.mo, %._crit_edge.i.i.i.i.i.thread258.i.i ]
  %i.ms = phi ptr [ %i.mj, %._crit_edge.i.i.i.i.i.thread.i.i ], [ %i.mh, %._crit_edge.i.i.i.i.i.i.i ], [ %i.mh, %._crit_edge.i.i.i.i.i.thread258.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mr, ptr nonnull align 1 %i.lz, i64 %i.ly, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i: ; preds = %bb.by, %bb.bx
  %i.mt = phi i64 [ %.pre.i, %bb.by ], [ 1, %bb.bx ] ; 2 uses
  %i.mu = phi ptr [ %i.ms, %bb.by ], [ %i.mh, %bb.bx ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i64 %i.mt, ptr %i.mv, align 8, !tbaa !36
  %i.mw = load ptr, ptr %i.mu, align 8, !tbaa !28
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mt
  store i8 0, ptr %i.mx, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.my = load ptr, ptr %i.dc, align 8, !tbaa !23
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  store ptr %i.mz, ptr %i.dc, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i

bb.bz:                                            ; preds = %.thread.i.i, %bb.bv
  %i.na = phi ptr [ %i.mj, %.thread.i.i ], [ %i.mh, %bb.bv ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr %i.na, ptr noundef nonnull align 8 dereferenceable(16) %36)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i unwind label %.loopexit.split-lp74.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store i64 16, ptr %38, align 8
  store ptr @.str.41, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  %i.nb = invoke noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.jr, ptr noundef nonnull %i.di)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = sub i64 %i.nc, %i.dj
  store i64 %i.nd, ptr %39, align 8, !tbaa !159
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store i64 17, ptr %40, align 8
  store ptr @.str.42, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  %i.ne = load ptr, ptr %i.gi, align 8, !tbaa !28
  %i.nf = load i64, ptr %i.iz, align 8, !tbaa !36
  store i64 %i.nf, ptr %41, align 8
  store ptr %i.ne, ptr %i.dm, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull align 8 dereferenceable(48) %41)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.ng = load ptr, ptr %37, align 8, !tbaa !28
  %i.nh = load i64, ptr %i.dn, align 8, !tbaa !36
  invoke void @_ZN4absl12lts_2026052614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.nh, ptr %i.ng, i1 noundef zeroext true)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ni = load ptr, ptr %37, align 8, !tbaa !28   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.do
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i: ; preds = %bb.cd
  %i.nk = load i64, ptr %i.do, align 8, !tbaa !29
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i, %bb.bz, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i, %bb.bt, %bb.bs
  %.128.i.i.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.i ], [ %.02787.i.i.i, %bb.bs ], [ %.02787.i.i.i, %bb.bt ], [ %.02787.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i ], [ %.02787.i.i.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.nm = load ptr, ptr %31, align 8, !tbaa !48
  %i.nn = getelementptr i8, ptr %i.nm, i64 -24
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = getelementptr inbounds i8, ptr %31, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 240
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i.i.i166, label %._crit_edge.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.ca
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cb
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i

bb.cg:                                            ; preds = %bb.cc
  %i.nu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nv = load ptr, ptr %37, align 8, !tbaa !28   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.do
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i: ; preds = %bb.cg
  %i.nx = load i64, ptr %i.do, align 8, !tbaa !29
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i, %bb.cf
  %.pn.i.i.i = phi { ptr, i32 } [ %i.nt, %bb.cf ], [ %i.nu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i ], [ %i.nu, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i, %bb.ce
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i ], [ %i.ns, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %.loopexit.split-lp74.i.i.i

.loopexit.split-lp74.i.i.i:                       ; preds = %.loopexit.split-lp74.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch
  %.pn35.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.ch ], [ %lpad.loopexit.split-lp1468, %.loopexit.split-lp74.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %.loopexit.split-lp.i.i.i

.loopexit72.i.i.i:                                ; preds = %bb.bf, %.thread.i.i.i
  %.229.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ %.02787.i.i.i, %bb.bf ]
  %i.nz = load ptr, ptr %35, align 8, !tbaa !28   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.de
  br i1 %i.oa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i: ; preds = %.loopexit72.i.i.i
  %i.ob = load i64, ptr %i.de, align 8, !tbaa !29
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp74.i.i.i
  %.pn35.pn.i.i.i = phi { ptr, i32 } [ %.pn35.i.i.i, %.loopexit.split-lp74.i.i.i ], [ %lpad.loopexit.split-lp1461, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.od = load ptr, ptr %35, align 8, !tbaa !28   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.de
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i: ; preds = %.loopexit.split-lp.i.i.i
  %i.of = load i64, ptr %i.de, align 8, !tbaa !29
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i: ; preds = %.loopexit.split-lp.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i, %bb.ay
  %.pn38.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn38.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i ], [ %.pn35.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i.i ], [ %i.ih, %bb.ay ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i: ; preds = %.loopexit72.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br i1 %.229.i.i.i, label %bb.cj, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i
  %i.oh = load ptr, ptr %i.aj, align 8, !tbaa !74 ; 12 uses
  %i.oi = load ptr, ptr %i.ak, align 8, !tbaa !75
  %.not.i5.i.i = icmp eq ptr %i.oh, %i.oi
  br i1 %.not.i5.i.i, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = load ptr, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %i.ok = load ptr, ptr %42, align 8, !tbaa !22   ; 2 uses
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oj, %i.ok
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc7.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oo = icmp ugt i64 %i.on, 9223372036854775776
  br i1 %i.oo, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !32

.noexc.i.i.i.i.i.i:                               ; preds = %bb.cl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i:                                      ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  %i.op = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #24
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i:                                      ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.ck
  %i.oq = phi ptr [ null, %bb.ck ], [ %i.op, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.oq, ptr %i.oh, align 8, !tbaa !22
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !23
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.on
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !31
  %i.ou = load ptr, ptr %42, align 8, !tbaa !33
  %i.ov = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.ow = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ou, ptr %i.ov, ptr noundef %i.oq)
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %.noexc7.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oy = load ptr, ptr %i.oh, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !31
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #25
  br label %.body.i.i

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i: ; preds = %.noexc7.i.i
  store ptr %i.ow, ptr %i.or, align 8, !tbaa !23
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.pf = load i64, ptr %i.dp, align 8, !tbaa !70
  store i64 %i.pf, ptr %i.pe, align 8, !tbaa !70
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  store ptr %i.pg, ptr %i.aj, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i

bb.co:                                            ; preds = %bb.cj
  %i.ph = ptrtoint ptr %i.oh to i64
  %i.pi = ptrtoint ptr %.val.i.i.i.i to i64
  %i.pj = sub i64 %i.ph, %i.pi                    ; 4 uses
  %i.pk = icmp eq i64 %i.pj, 9223372036854775776
  br i1 %i.pk, label %bb.cp, label %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10.i.i:                                     ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.co
  %i.pl = ashr exact i64 %i.pj, 5                 ; 3 uses
  %i.pm = icmp eq ptr %i.oh, %.val.i.i.i.i        ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.pm, i64 1, i64 %i.pl
  %i.pn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.pl ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.pl
  %i.pp = call i64 @llvm.umin.i64(i64 %i.pn, i64 288230376151711743)
  %i.pq = select i1 %i.po, i64 288230376151711743, i64 %i.pp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.pq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.pr = shl nuw nsw i64 %i.pq, 5                ; 2 uses
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #24
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc11.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pj ; 7 uses
  %i.pu = load ptr, ptr %i.dc, align 8, !tbaa !23 ; 3 uses
  %i.pv = load ptr, ptr %42, align 8, !tbaa !22   ; 3 uses
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pu, %i.pv
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc11.i.i
  %i.pz = icmp ugt i64 %i.py, 9223372036854775776
  br i1 %i.pz, label %.noexc.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !32

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp38.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.qa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.py) #24
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i unwind label %.loopexit.split-lp38.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %42, align 8, !tbaa !33
  %.pre45.i.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !33
  br label %.noexc30.i.i.i.i

.noexc30.i.i.i.i:                                 ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i, %.noexc11.i.i
  %i.qb = phi ptr [ %i.pu, %.noexc11.i.i ], [ %.pre45.i.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i ]
  %i.qc = phi ptr [ %i.pv, %.noexc11.i.i ], [ %.pre.i.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i ]
  %i.qd = phi ptr [ null, %.noexc11.i.i ], [ %i.qa, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc30_crit_edge.i.i.i.i ] ; 4 uses
  store ptr %i.qd, ptr %i.pt, align 8, !tbaa !22
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !23
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.py
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !31
  %i.qh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.qc, ptr %i.qb, ptr noundef %i.qd)
          to label %bb.ct unwind label %bb.cr

bb.cr:                                            ; preds = %.noexc30.i.i.i.i
  %i.qi = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.qj = load ptr, ptr %i.pt, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i3.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i.i.i3.i.i.i, label %.loopexit.split-lp38.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !31
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #25
  br label %.loopexit.split-lp38.i.i

bb.ct:                                            ; preds = %.noexc30.i.i.i.i
  store ptr %i.qh, ptr %i.qe, align 8, !tbaa !23
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.qq = load i64, ptr %i.dp, align 8, !tbaa !70
  store i64 %i.qq, ptr %i.qp, align 8, !tbaa !70
  br i1 %i.pm, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ct, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ps, %bb.ct ] ; 4 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %bb.ct ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.qr = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !162
  store <2 x ptr> %i.qr, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !161
  %i.qs = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31, !alias.scope !162
  store ptr %i.qu, ptr %i.qs, align 8, !tbaa !31, !alias.scope !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !162
  %i.qv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24
  %i.qw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !70, !alias.scope !162
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !70, !alias.scope !161
  %i.qy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i = icmp eq ptr %i.qy, %i.oh
  br i1 %.not.i.i.i.i4.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ct
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ps, %bb.ct ], [ %i.qz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 32
  %.not.i38.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i38.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.pj) #25
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

.loopexit.split-lp38.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp1474 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp38.i.i

bb.cv:                                            ; preds = %.loopexit.split-lp38.i.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.cw

.loopexit.split-lp38.i.i:                         ; preds = %.loopexit.split-lp38.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.cs, %bb.cr
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.qi, %bb.cr ], [ %i.qi, %bb.cs ], [ %lpad.loopexit.split-lp1474, %.loopexit.split-lp38.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %i.rc = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i, 0
  %i.rd = call ptr @__cxa_begin_catch(ptr %i.rc) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pr) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.cx unwind label %bb.cv

bb.cw:                                            ; preds = %bb.cv
  %i.re = landingpad { ptr, i32 }
          catch ptr null
  %i.rf = extractvalue { ptr, i32 } %i.re, 0
  call void @__clang_call_terminate(ptr %i.rf) #28
  unreachable

bb.cx:                                            ; preds = %.loopexit.split-lp38.i.i
  unreachable

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i.i.i
  store ptr %i.ps, ptr %51, align 8, !tbaa !73
  store ptr %i.ra, ptr %i.aj, align 8, !tbaa !74
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.ps, i64 %i.pq
  store ptr %i.rg, ptr %i.ak, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.cp, %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp1471 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.as, %bb.cv, %bb.cn, %bb.cm, %bb.ci
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn38.pn.pn.i.i.i, %bb.ci ], [ %i.rb, %bb.cv ], [ %i.ox, %bb.cm ], [ %i.ox, %bb.cn ], [ %.pn.pn.i331, %bb.as ], [ %lpad.loopexit.split-lp1471, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  br label %.body.i151

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit
  %.val.i.i.i.i871 = phi ptr [ %.val.i.i.i.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit ], [ %.val.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i ], [ %.val.i.i.i.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i ], [ %i.ps, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ]
  %.1.i.i = phi i1 [ false, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63.i.i.i ], [ %.0171.i.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i ], [ %.0171.i.i, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.rh = load ptr, ptr %42, align 8, !tbaa !22   ; 3 uses
  %i.ri = load ptr, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.rh, %i.ri
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i154:                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ro, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.rh, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i ] ; 3 uses
  %i.rj = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i154
  %i.rm = load i64, ptr %i.rk, align 8, !tbaa !29
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rn) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i12.i.i = icmp eq ptr %i.ro, %i.ri
  br i1 %.not.i.i.i.i12.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i154, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %42, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i
  %i.rp = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.rh, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.rp, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.rq = load ptr, ptr %i.dd, align 8, !tbaa !31
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = ptrtoint ptr %i.rp to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.rt) #25
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i: ; preds = %bb.cy, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.ru = load ptr, ptr %43, align 8, !tbaa !33, !noalias !130 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.gi, %i.ru
  br i1 %.not.i31.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !107

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit.i.i
  %.pre176.i = load ptr, ptr %i.cx, align 8, !tbaa !23
  %i.rv = zext i1 %.1.i.i to i8
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i, %bb.aj
  %i.rw = phi ptr [ %i.gg, %bb.aj ], [ %.pre176.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 2 uses
  %i.rx = phi ptr [ %i.gh, %bb.aj ], [ %i.ru, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ] ; 3 uses
  %.0.lcssa.i.i = phi i8 [ 1, %bb.aj ], [ %i.rv, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.loopexit.i ]
  store i1 false, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_125flagfile_needs_processingE, align 1
  %.not4.i.i.i.i155 = icmp eq ptr %i.rx, %i.rw
  br i1 %.not4.i.i.i.i155, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162, label %.lr.ph.i.i.i.i156

.lr.ph.i.i.i.i156:                                ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.05.i.i.i.i157 = phi ptr [ %i.sd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159 ], [ %i.rx, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %i.ry = load ptr, ptr %.05.i.i.i.i157, align 8, !tbaa !28 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 16 ; 2 uses
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i156
  %i.sb = load i64, ptr %i.rz, align 8, !tbaa !29
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sc) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159: ; preds = %.lr.ph.i.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i158
  %i.sd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i157, i64 32 ; 2 uses
  %.not.i.i.i32.i = icmp eq ptr %i.sd, %i.rw
  br i1 %.not.i.i.i32.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, label %.lr.ph.i.i.i.i156, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i159
  %.pr.i.i161 = load ptr, ptr %43, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i
  %i.se = phi ptr [ %.pr.i.i161, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i160 ], [ %i.rx, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113ReadFlagfilesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EE.exit.i ] ; 3 uses
  %.not.i.i1.i.i163 = icmp eq ptr %i.se, null
  br i1 %.not.i.i1.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162
  %i.sf = load ptr, ptr %i.ef, align 8, !tbaa !31
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = ptrtoint ptr %i.se to i64
  %i.si = sub i64 %i.sg, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.si) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cz, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %bb.db

.body.i151:                                       ; preds = %.body.i.i, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.gf, %bb.ai ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #27
  br label %bb.da

bb.da:                                            ; preds = %.body.i151, %bb.ah
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i151 ], [ %i.ge, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %bb.dr

bb.db:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %.noexc168
  %.0.i = phi i8 [ %.0.lcssa.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ], [ 1, %.noexc168 ] ; 2 uses
  %.b21.i = load i1, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  br i1 %.b21.i, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %44, ptr noundef nonnull align 8 dereferenceable(120) @_Z13FLAGS_fromenvB5cxx11)
          to label %_ZN4absl12lts_202605267GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i unwind label %bb.df

_ZN4absl12lts_202605267GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i: ; preds = %bb.dc
  %i.sj = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %51, i1 noundef zeroext true)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %_ZN4absl12lts_202605267GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %i.sk = icmp ne i8 %.0.i, 0
  %i.sl = and i1 %i.sk, %i.sj
  %i.sm = zext i1 %i.sl to i8
  store i1 false, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  %i.sn = load ptr, ptr %44, align 8, !tbaa !22   ; 3 uses
  %i.so = load ptr, ptr %i.eg, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i34.i = icmp eq ptr %i.sn, %i.so
  br i1 %.not4.i.i.i34.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i42.i, label %.lr.ph.i.i.i35.i

.lr.ph.i.i.i35.i:                                 ; preds = %bb.dd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i
  %.05.i.i.i36.i = phi ptr [ %i.su, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i ], [ %i.sn, %bb.dd ] ; 3 uses
  %i.sp = load ptr, ptr %.05.i.i.i36.i, align 8, !tbaa !28 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i: ; preds = %.lr.ph.i.i.i35.i
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !29
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i38.i: ; preds = %.lr.ph.i.i.i35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37.i
  %i.su = getelementptr inbounds nuw i8, ptr %.05.i.i.i36.i, i64 32 ; 2 uses
  %.not.i.i.i39.i = icmp eq ptr %i.su, %i.so
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052614flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i10.i
  %.pr.i13.i = load ptr, ptr %8, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i, %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i
  %i.agk = phi ptr [ %.pr.i13.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i12.i ], [ %i.agb, %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit.i ] ; 3 uses
  %.not.i.i1.i15.i = icmp eq ptr %i.agk, null
  br i1 %.not.i.i1.i15.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i, label %bb.gr

bb.gr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i
  %i.agl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !31
  %i.agn = ptrtoint ptr %i.agm to i64
  %i.ago = ptrtoint ptr %i.agk to i64
  %i.agp = sub i64 %i.agn, %i.ago
  call void @_ZdlPvm(ptr noundef nonnull %i.agk, i64 noundef %i.agp) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i: ; preds = %bb.gr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.gt

bb.gs:                                            ; preds = %.noexc.i, %bb.gq
  %i.agq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body169

bb.gt:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit17.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11)
          to label %.noexc262 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc262:                                        ; preds = %bb.gt
  %i.agr = load ptr, ptr %9, align 8, !tbaa !33   ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !33 ; 2 uses
  %i.agu = icmp eq ptr %i.agr, %i.agt             ; 2 uses
  br i1 %i.agu, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i26.i, label %.lr.ph.i.i.i19.i

.lr.ph.i.i.i19.i:                                 ; preds = %.noexc262, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i
  %.05.i.i.i20.i = phi ptr [ %i.aha, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i ], [ %i.agr, %.noexc262 ] ; 3 uses
  %i.agv = load ptr, ptr %.05.i.i.i20.i, align 8, !tbaa !28 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.05.i.i.i20.i, i64 16 ; 2 uses
  %i.agx = icmp eq ptr %i.agv, %i.agw
  br i1 %i.agx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21.i: ; preds = %.lr.ph.i.i.i19.i
  %i.agy = load i64, ptr %i.agw, align 8, !tbaa !29
  %i.agz = add i64 %i.agy, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agz) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i: ; preds = %.lr.ph.i.i.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21.i
  %i.aha = getelementptr inbounds nuw i8, ptr %.05.i.i.i20.i, i64 32 ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.aha, %i.agt
  br i1 %.not.i.i.i23.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i24.i, label %.lr.ph.i.i.i19.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i24.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i22.i
  %.pr.i25.i = load ptr, ptr %9, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i26.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i26.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i24.i, %.noexc262
  %i.ahb = phi ptr [ %.pr.i25.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i24.i ], [ %i.agr, %.noexc262 ] ; 3 uses
  %.not.i.i1.i27.i = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i1.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit29.i, label %bb.gu

bb.gu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i26.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !31
  %i.ahe = ptrtoint ptr %i.ahd to i64
  %i.ahf = ptrtoint ptr %i.ahb to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef %i.ahg) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit29.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit29.i: ; preds = %bb.gu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %i.agu, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZNK4absl12lts_2026052614flags_internal8FlagImpl15AssertValidTypeENS0_14FastTypeIdTypeEPFPKSt9type_infovE(ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11, ptr nonnull @_ZN4absl12lts_2026052613base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE, ptr noundef nonnull @_ZN4absl12lts_2026052614flags_internal16GenRuntimeTypeIdISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEPKSt9type_infov)
          to label %.noexc30.i unwind label %bb.gx

.noexc30.i:                                       ; preds = %bb.gv
  invoke void @_ZN4absl12lts_2026052614flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(120) @_Z16FLAGS_tryfromenvB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i unwind label %bb.gx

_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i: ; preds = %.noexc30.i
  %i.ahh = load ptr, ptr %10, align 8, !tbaa !22  ; 3 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i33.i = icmp eq ptr %i.ahh, %i.ahj
  br i1 %.not4.i.i.i33.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i41.i, label %.lr.ph.i.i.i34.i

.lr.ph.i.i.i34.i:                                 ; preds = %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i
  %.05.i.i.i35.i = phi ptr [ %i.ahp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i ], [ %i.ahh, %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i ] ; 3 uses
  %i.ahk = load ptr, ptr %.05.i.i.i35.i, align 8, !tbaa !28 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.05.i.i.i35.i, i64 16 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahk, %i.ahl
  br i1 %i.ahm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36.i: ; preds = %.lr.ph.i.i.i34.i
  %i.ahn = load i64, ptr %i.ahl, align 8, !tbaa !29
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.aho) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i: ; preds = %.lr.ph.i.i.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36.i
  %i.ahp = getelementptr inbounds nuw i8, ptr %.05.i.i.i35.i, i64 32 ; 2 uses
  %.not.i.i.i38.i = icmp eq ptr %i.ahp, %i.ahj
  br i1 %.not.i.i.i38.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i39.i, label %.lr.ph.i.i.i34.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i39.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i37.i
  %.pr.i40.i = load ptr, ptr %10, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i41.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i41.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i39.i, %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i
  %i.ahq = phi ptr [ %.pr.i40.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i39.i ], [ %i.ahh, %_ZN4absl12lts_202605267SetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvPNS0_14flags_internal4FlagIT_EERKSD_.exit32.i ] ; 3 uses
  %.not.i.i1.i42.i = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i1.i42.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit44.i, label %bb.gw

bb.gw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i41.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !31
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahq to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef %i.ahv) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit44.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit44.i: ; preds = %bb.gw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.gy

bb.gx:                                            ; preds = %.noexc30.i, %bb.gv
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.body169

bb.gy:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit44.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit29.i
  %i.ahx = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex acquire, align 8
  %i.ahy = icmp eq i8 %i.ahx, 0
  br i1 %i.ahy, label %bb.gz, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i, !prof !37

bb.gz:                                            ; preds = %bb.gy
  %i.ahz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex) #27
  %.not.i45.i = icmp eq i32 %i.ahz, 0
  br i1 %.not.i45.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex, align 8, !tbaa !39
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex) #27
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i: ; preds = %bb.ha, %bb.gz, %bb.gy
  invoke void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %.noexc263 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i
  store i1 false, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  store i1 false, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119ResetGeneratorFlagsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit unwind label %bb.hb

bb.hb:                                            ; preds = %.noexc263
  %i.aia = landingpad { ptr, i32 }
          catch ptr null
  %i.aib = extractvalue { ptr, i32 } %i.aia, 0
  call void @__clang_call_terminate(ptr %i.aib) #28
  unreachable

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119ResetGeneratorFlagsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit: ; preds = %.noexc263
  %.val126 = load ptr, ptr %51, align 8, !tbaa !128
  %.val127 = load ptr, ptr %i.aj, align 8, !tbaa !128 ; 2 uses
  %i.aic = icmp eq ptr %.val126, %.val127
  br i1 %i.aic, label %.loopexit412, label %bb.hc

bb.hc:                                            ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119ResetGeneratorFlagsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  %i.aid = getelementptr i8, ptr %.val127, i64 -8
  %.val133 = load i64, ptr %i.aid, align 8, !tbaa !70 ; 2 uses
  %i.aie = icmp ult i64 %.val133, %i.z
  br i1 %i.aie, label %.lr.ph.preheader, label %.loopexit412

.lr.ph.preheader:                                 ; preds = %bb.hc
  %.pre873 = load ptr, ptr %i.bm, align 8, !tbaa !127
  %.pre874 = load ptr, ptr %i.bo, align 8, !tbaa !64
  br label %.lr.ph

.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i267, %bb.hk, %.noexc281, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i184, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i, %.invoke, %bb.hm, %bb.hj, %bb.hi, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit46.i, %bb.gt, %_ZN4absl12lts_202605269MutexLockD2Ev.exit.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121ProcessingChecksMutexEv.exit.i244, %.noexc258, %bb.gl, %bb.z
  %lpad.loopexit.split-lp1477 = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275
  %i.aif = phi ptr [ %i.aje, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275 ], [ %.pre874, %.lr.ph.preheader ] ; 3 uses
  %i.aig = phi ptr [ %i.ajf, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275 ], [ %.pre873, %.lr.ph.preheader ] ; 3 uses
  %.092797 = phi i64 [ %i.ajg, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275 ], [ %.val133, %.lr.ph.preheader ] ; 2 uses
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.092797 ; 2 uses
  %.not.i266 = icmp eq ptr %i.aig, %i.aif
  br i1 %.not.i266, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !35
  store ptr %i.aii, ptr %i.aig, align 8, !tbaa !35
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aig, i64 8 ; 2 uses
  store ptr %i.aij, ptr %i.bm, align 8, !tbaa !127
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275

bb.he:                                            ; preds = %.lr.ph
  %i.aik = load ptr, ptr %2, align 8, !tbaa !63   ; 4 uses
  %i.ail = ptrtoint ptr %i.aif to i64
  %i.aim = ptrtoint ptr %i.aik to i64             ; 2 uses
  %i.ain = sub i64 %i.ail, %i.aim                 ; 5 uses
  %i.aio = icmp eq i64 %i.ain, 9223372036854775800
  br i1 %i.aio, label %.invoke, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i267

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i267: ; preds = %bb.he
  %i.aip = ashr exact i64 %i.ain, 3               ; 3 uses
  %.sroa.speculated.i.i.i268 = call i64 @llvm.umax.i64(i64 %i.aip, i64 1)
  %i.aiq = add nsw i64 %.sroa.speculated.i.i.i268, %i.aip ; 2 uses
  %i.air = icmp ult i64 %i.aiq, %i.aip
  %i.ais = call i64 @llvm.umin.i64(i64 %i.aiq, i64 1152921504606846975)
  %i.ait = select i1 %i.air, i64 1152921504606846975, i64 %i.ais ; 3 uses
  %.not.i.i.i269 = icmp ne i64 %i.ait, 0
  call void @llvm.assume(i1 %.not.i.i.i269)
  %i.aiu = shl nuw nsw i64 %i.ait, 3
  %i.aiv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiu) #24
          to label %.noexc274 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc274:                                        ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i267
  %i.aiw = getelementptr inbounds i8, ptr %i.aiv, i64 %i.ain ; 2 uses
  %i.aix = load ptr, ptr %i.aih, align 8, !tbaa !35
  store ptr %i.aix, ptr %i.aiw, align 8, !tbaa !35
  %i.aiy = icmp sgt i64 %i.ain, 0
  br i1 %i.aiy, label %bb.hf, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i270

bb.hf:                                            ; preds = %.noexc274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aiv, ptr align 8 %i.aik, i64 %i.ain, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i270

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i270: ; preds = %bb.hf, %.noexc274
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8 ; 2 uses
  %.not.i17.i.i271 = icmp eq ptr %i.aik, null
  br i1 %.not.i17.i.i271, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i270
  %i.aja = load ptr, ptr %i.bo, align 8, !tbaa !64
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = sub i64 %i.ajb, %i.aim
  call void @_ZdlPvm(ptr noundef nonnull %i.aik, i64 noundef %i.ajc) #25
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272: ; preds = %bb.hg, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i270
  store ptr %i.aiv, ptr %2, align 8, !tbaa !63
  store ptr %i.aiz, ptr %i.bm, align 8, !tbaa !127
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %i.ait ; 2 uses
  store ptr %i.ajd, ptr %i.bo, align 8, !tbaa !64
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275:  ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272, %bb.hd
  %i.aje = phi ptr [ %i.ajd, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272 ], [ %i.aif, %bb.hd ]
  %i.ajf = phi ptr [ %i.aiz, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i272 ], [ %i.aij, %bb.hd ]
  %i.ajg = add i64 %.092797, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ajg, %i.z
  br i1 %exitcond.not, label %.loopexit412, label %.lr.ph, !llvm.loop !121

.loopexit412:                                     ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit275, %bb.hc, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119ResetGeneratorFlagsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  %i.ajh = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_115specified_flagsE, align 8, !tbaa !41 ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !82
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !78 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajj, %i.ajl
  br i1 %i.ajm, label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE13shrink_to_fitEv.exit, label %bb.hh

bb.hh:                                            ; preds = %.loopexit412
  %i.ajn = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajh) #27 ; 0 uses
  %.pre875 = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_115specified_flagsE, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre875, i64 8
  %.pre876 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE13shrink_to_fitEv.exit

_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE13shrink_to_fitEv.exit: ; preds = %bb.hh, %.loopexit412
  %i.ajo = phi ptr [ %.pre876, %bb.hh ], [ %i.ajl, %.loopexit412 ] ; 6 uses
  %i.ajp = phi ptr [ %.pre875, %bb.hh ], [ %i.ajh, %.loopexit412 ]
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !44 ; 6 uses
  %.not.i.i276 = icmp eq ptr %i.ajq, %i.ajo
  br i1 %.not.i.i276, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE13shrink_to_fitEv.exit
  %i.ajr = ptrtoint ptr %i.ajo to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs                 ; 2 uses
  %i.aju = ashr exact i64 %i.ajt, 3
  %i.ajv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aju, i1 true)
  %i.ajw = shl nuw nsw i64 %i.ajv, 1
  %i.ajx = xor i64 %i.ajw, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_SI_T0_T1_(ptr %i.ajq, ptr %i.ajo, i64 noundef %i.ajx)
          to label %.noexc279 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.hi
  %i.ajy = icmp sgt i64 %i.ajt, 128
  br i1 %i.ajy, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %.noexc279
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajq, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_SI_T0_(ptr %i.ajq, ptr nonnull %i.ajz)
          to label %.noexc280 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc280:                                        ; preds = %bb.hj
  %.not6.i.i.i.i = icmp eq ptr %i.ajz, %i.ajo
  br i1 %.not6.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit, label %.lr.ph.i.i.i.i277

.lr.ph.i.i.i.i277:                                ; preds = %.noexc280, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_T0_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.aks, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_T0_.exit.i.i.i.i ], [ %i.ajz, %.noexc280 ] ; 3 uses
  %i.aka = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !46 ; 3 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hl, %.lr.ph.i.i.i.i277
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i277 ], [ %.sroa.0.0.i.i.i.i.i, %bb.hl ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -8 ; 3 uses
  %i.akb = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.akc = load ptr, ptr %i.aka, align 8, !tbaa !48
  %i.akd = load ptr, ptr %i.akc, align 8
  %i.ake = invoke { i64, ptr } %i.akd(ptr noundef nonnull align 8 dereferenceable(8) %i.aka)
          to label %.noexc281 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !122 ; 2 uses

.noexc281:                                        ; preds = %bb.hk
  %i.akf = extractvalue { i64, ptr } %i.ake, 0    ; 2 uses
  %i.akg = load ptr, ptr %i.akb, align 8, !tbaa !48
  %i.akh = load ptr, ptr %i.akg, align 8
  %i.aki = invoke { i64, ptr } %i.akh(ptr noundef nonnull align 8 dereferenceable(8) %i.akb)
          to label %.noexc282 unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !122 ; 2 uses

.noexc282:                                        ; preds = %.noexc281
  %i.akj = extractvalue { i64, ptr } %i.aki, 0    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.akj, i64 %i.akf) ; 2 uses
  %i.akk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.akk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc282
  %i.akl = extractvalue { i64, ptr } %i.aki, 1
  %i.akm = extractvalue { i64, ptr } %i.ake, 1
  %i.akn = call i32 @memcmp(ptr noundef %i.akm, ptr noundef %i.akl, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #27 ; 2 uses
  %i.ako = icmp eq i32 %i.akn, 0
  br i1 %i.ako, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4absl12lts_2026052614flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEclIPKNS3_15CommandLineFlagENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.noexc282
  %i.akp = sub i64 %i.akf, %i.akj
  %spec.select7.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.akp, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4absl12lts_2026052614flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEclIPKNS3_15CommandLineFlagENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4absl12lts_2026052614flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEclIPKNS3_15CommandLineFlagENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.akn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.akq = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.akq, label %bb.hl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_T0_.exit.i.i.i.i

bb.hl:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4absl12lts_2026052614flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEclIPKNS3_15CommandLineFlagENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i
  %i.akr = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !46
  store ptr %i.akr, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !46
  br label %bb.hk, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4absl12lts_2026052614flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEclIPKNS3_15CommandLineFlagENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.aka, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !46
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i278 = icmp eq ptr %i.aks, %i.ajo
  br i1 %.not.i.i.i.i278, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit, label %.lr.ph.i.i.i.i277, !llvm.loop !123

bb.hm:                                            ; preds = %.noexc279
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_SI_T0_(ptr %i.ajq, ptr %i.ajo)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEEEvT_T0_.exit.i.i.i.i, %.noexc280, %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE13shrink_to_fitEv.exit, %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !67 ; 3 uses
  %i.akv = load ptr, ptr %3, align 8, !tbaa !66   ; 3 uses
  %i.akw = ptrtoint ptr %i.aku to i64
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = sub i64 %i.akw, %i.akx                 ; 3 uses
  %i.akz = sdiv exact i64 %i.aky, 40
  %i.ala = icmp ugt i64 %i.akz, 230584300921369395
  br i1 %i.ala, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #26
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc287:                                        ; preds = %bb.hn
  unreachable

bb.ho:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN4absl12lts_2026052615CommandLineFlagESt6vectorIS6_SaIS6_EEEENS3_14flags_internal12_GLOBAL__N_121SpecifiedFlagsCompareEEvT_SF_T0_.exit
  %i.alb = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 5 uses
  %.not1120 = icmp eq ptr %i.aku, %i.akv
  br i1 %.not1120, label %_ZNSt6vectorIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.ho
  %i.alc = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.ald = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aky) #24
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc288:                                        ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EE11_M_allocateEm.exit.i
  %i.ale = load ptr, ptr %64, align 8, !tbaa !66  ; 5 uses
  %i.alf = load ptr, ptr %i.alc, align 8, !tbaa !67 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ale, %i.alf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i284

.lr.ph.i.i.i.i284:                                ; preds = %.noexc288, %_ZSt19__relocate_object_aIN4absl12lts_2026052616UnrecognizedFlagES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i
end_hunk_1
