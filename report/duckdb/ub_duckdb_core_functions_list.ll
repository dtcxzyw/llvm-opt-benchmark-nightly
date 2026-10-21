Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_list?download=true
inline.NumInlined: 6793
inline.NumDeleted: 2407
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117ListAggregateBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

bb.be:                                            ; preds = %bb.bd
  %i.er = load i8, ptr %31, align 8, !tbaa !106, !noalias !733
  store i8 %i.er, ptr %i.eq, align 8, !tbaa !106, !noalias !733
  %i.es = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !170, !noalias !733
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !170, !noalias !733
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ey = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !62, !noalias !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !noalias !733
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.fa = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !62, !noalias !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 0, i64 16, i1 false), !noalias !733
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !127, !noalias !733 ; 8 uses
  store <2 x ptr> %i.fa, ptr %i.ev, align 8, !tbaa !62, !noalias !733
  %.not.i.i.i.i.i.i113.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i113.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8, !noalias !733 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.fc, align 8, !tbaa !129, !noalias !733
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !130, !noalias !733
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !132, !noalias !733
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !733
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24, !noalias !733, !inline_history !707
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !132, !noalias !733
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !733
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24, !noalias !733, !inline_history !707
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i

bb.bh:                                            ; preds = %bb.bf
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !733
  %.not.i.i.i.i.i.i.i114.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i114.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !48, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i115.i

bb.bj:                                            ; preds = %bb.bh
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i115.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i115.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i116.i = phi i32 [ %i.ff, %bb.bi ], [ %i.fp, %bb.bj ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i.i.i116.i, 1
  br i1 %i.fq, label %bb.bk, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i, !prof !133

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i115.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #24, !noalias !733
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i115.i, %bb.bg, %bb.be
  %i.fr = load ptr, ptr %i.ez, align 8, !tbaa !127, !noalias !733 ; 8 uses
  store <2 x ptr> %i.ey, ptr %i.ew, align 8, !tbaa !62, !noalias !733
  %.not.i.i.i.i4.i.i118.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i4.i.i118.i, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8, !noalias !733 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.fs, align 8, !tbaa !129, !noalias !733
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4, !tbaa !130, !noalias !733
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !132, !noalias !733
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !733
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !noalias !733, !inline_history !707
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !132, !noalias !733
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !733
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !noalias !733, !inline_history !707
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i

bb.bn:                                            ; preds = %bb.bl
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !733
  %.not.i.i.i.i.i5.i.i119.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i5.i.i119.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 8, !tbaa !48, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i120.i

bb.bp:                                            ; preds = %bb.bn
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i120.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i120.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i7.i.i121.i = phi i32 [ %i.fv, %bb.bo ], [ %i.gf, %bb.bp ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i.i7.i.i121.i, 1
  br i1 %i.gg, label %bb.bq, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i, !prof !133

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i120.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #24, !noalias !733
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i

_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i:         ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i120.i, %bb.bm, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i117.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24, !noalias !733
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 noundef zeroext 1)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i162.i unwind label %bb.bu, !noalias !733

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i162.i: ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.gi = load i8, ptr %32, align 8, !tbaa !106, !noalias !733
  store i8 %i.gi, ptr %i.gh, align 8, !tbaa !106, !noalias !733
  %i.gj = getelementptr inbounds nuw i8, ptr %32, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !170, !noalias !733
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !170, !noalias !733
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.go = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !62, !noalias !733
  %i.gp = load <2 x ptr>, ptr %i.gm, align 8, !tbaa !62, !noalias !733
  store <2 x ptr> %i.go, ptr %i.gm, align 8, !tbaa !62, !noalias !733
  store <2 x ptr> %i.gp, ptr %i.gn, align 8, !tbaa !62, !noalias !733
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #24, !noalias !733
  store ptr null, ptr %0, align 8, !tbaa !218, !alias.scope !733
  br label %bb.fr

bb.br:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.au
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24, !noalias !733
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %28) #24, !noalias !733
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn64.i = phi { ptr, i32 } [ %i.gr, %bb.bs ], [ %i.gq, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24, !noalias !733
  br label %bb.fs

bb.bu:                                            ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit122.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i, %bb.ak, %bb.aj, %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.bv:                                            ; preds = %.noexc108.i, %._crit_edge.i.i104.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %30, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ei
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.gu) #28, !noalias !733
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24, !noalias !733
  br label %bb.fs

bb.bw:                                            ; preds = %bb.bc
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bd
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #24, !noalias !733
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn77.i = phi { ptr, i32 } [ %i.gx, %bb.bx ], [ %i.gw, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24, !noalias !733
  br label %bb.fs

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24, !noalias !733
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.ca unwind label %bb.cb, !noalias !733

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24, !noalias !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false), !noalias !733
  %i.gy = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !733

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader.i: ; preds = %bb.ca
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !215, !noalias !733
  %i.hb = load ptr, ptr %3, align 8, !tbaa !216, !noalias !733
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp ugt i64 %i.he, 16
  br i1 %i.hf, label %.lr.ph.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader.i
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 16
  br label %.lr.ph.i.a

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24, !noalias !733
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.cg unwind label %bb.cl, !noalias !733

bb.cb:                                            ; preds = %bb.bz
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

.lr.ph.i.a:                                       ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i, %.lr.ph.i
  %.035189.i = phi i64 [ 2, %.lr.ph.i ], [ %i.ho, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i ] ; 2 uses
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.035189.i)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !733

bb.cc:                                            ; preds = %.lr.ph.i.a
  %i.hi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !733

bb.cd:                                            ; preds = %bb.cc
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 56 ; 2 uses
  %i.hk = load ptr, ptr %i.gy, align 8, !tbaa !61, !noalias !733 ; 3 uses
  %i.hl = load ptr, ptr %40, align 8, !tbaa !60, !noalias !733
  %.not.i129.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i129.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !733

.noexc130.i:                                      ; preds = %bb.ce
  %i.hm = load ptr, ptr %i.gy, align 8, !tbaa !61, !noalias !733
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store ptr %i.hn, ptr %i.gy, align 8, !tbaa !61, !noalias !733
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !733

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit132.i: ; preds = %bb.cf, %.noexc130.i
  %i.ho = add nuw i64 %.035189.i, 1               ; 2 uses
  %i.hp = load ptr, ptr %i.gz, align 8, !tbaa !215, !noalias !733
  %i.hq = load ptr, ptr %3, align 8, !tbaa !216, !noalias !733
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = ashr exact i64 %i.ht, 3
  %i.hv = icmp ult i64 %i.ho, %i.hu
  br i1 %i.hv, label %.lr.ph.i.a, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge.i, !llvm.loop !708

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cf, %bb.ce, %bb.cc, %.lr.ph.i.a, %bb.ca
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cg:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24, !noalias !733
  %i.hw = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.em, i64 368
  %i.hy = invoke i64 @_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_20AggregateFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noundef nonnull align 8 dereferenceable(56) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.ch unwind label %bb.cm, !noalias !733 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.hy, ptr %36, align 8, !noalias !733
  %.not.i = icmp eq i64 %i.hy, -1
  br i1 %.not.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.hz = call ptr @__cxa_allocate_exception(i64 16) #24, !noalias !733 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24, !noalias !733
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.cj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread.i, !noalias !733

bb.cj:                                            ; preds = %bb.ci
  %i.ia = getelementptr inbounds nuw i8, ptr %33, i64 40
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %i.ia)
          to label %bb.ck unwind label %bb.cn, !noalias !733

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.fv unwind label %bb.cn, !noalias !733

bb.cl:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.cm:                                            ; preds = %bb.cg
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread.i: ; preds = %bb.ci
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !733
  br label %bb.co

bb.cn:                                            ; preds = %bb.ck, %bb.cj
  %.0.i = phi i1 [ false, %bb.ck ], [ true, %bb.cj ] ; 2 uses
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.if = load ptr, ptr %37, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.if) #28, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !733
  br i1 %.0.i, label %bb.co, label %bb.fo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !733
  br i1 %.0.i, label %bb.co, label %bb.fo

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread.i
  %.pn68180.i = phi { ptr, i32 } [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.thread.i ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i ]
  call void @__cxa_free_exception(ptr %i.hz) #24, !noalias !733
  br label %bb.fo

bb.cp:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24, !noalias !733
  %i.ii = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.cq unwind label %bb.fm, !noalias !733

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.em, i64 400
  %i.ik = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_17AggregateFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 noundef %i.ii)
          to label %.noexc138.i unwind label %bb.fm, !noalias !733 ; 4 uses

.noexc138.i:                                      ; preds = %bb.cq
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %39, ptr noundef nonnull align 8 dereferenceable(368) %i.ik)
          to label %.noexc139.i unwind label %bb.fm, !noalias !733

.noexc139.i:                                      ; preds = %.noexc138.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %39, align 8, !tbaa !132, !alias.scope !734, !noalias !733
  %i.il = getelementptr inbounds nuw i8, ptr %39, i64 240 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.il, ptr noundef nonnull align 8 dereferenceable(106) %i.im, i64 106, i1 false), !noalias !733
  %i.in = getelementptr inbounds nuw i8, ptr %39, i64 352 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 352
  %i.ip = getelementptr inbounds nuw i8, ptr %39, i64 360 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 360
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !127, !noalias !733 ; 2 uses
  %i.is = load <2 x ptr>, ptr %i.io, align 8, !tbaa !62, !noalias !733
  store <2 x ptr> %i.is, ptr %i.in, align 8, !tbaa !62, !alias.scope !734, !noalias !733
  %.not.i.i.i.i.i.i136.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i136.i, label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc139.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 3 uses
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !735
  %.not.i.i.i.i.i.i.i137.i = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i137.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !48, !noalias !733
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.it, align 4, !tbaa !48, !noalias !733
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.ix = atomicrmw volatile add ptr %i.it, i32 1 acq_rel, align 4, !noalias !733 ; 0 uses
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit.i

_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit.i: ; preds = %bb.ct, %bb.cs, %.noexc139.i
  %i.iy = getelementptr inbounds nuw i8, ptr %39, i64 234
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !202, !noalias !733
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 234
  store i8 %i.iz, ptr %i.ja, align 2, !tbaa !202, !noalias !733
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !737
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !737
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !737
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.cu unwind label %bb.cx, !noalias !737

bb.cu:                                            ; preds = %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit.i
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %7)
          to label %bb.cv unwind label %bb.cy, !noalias !737

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !737
  %i.jb = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc.i140.i unwind label %bb.cz, !noalias !737 ; 5 uses

.noexc.i140.i:                                    ; preds = %bb.cv
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6) #24, !noalias !738
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.jb, ptr noundef nonnull %4)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i unwind label %bb.cw, !noalias !738

bb.cw:                                            ; preds = %.noexc.i140.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24, !noalias !738
  call void @_ZdlPv(ptr noundef nonnull %i.jb) #28, !noalias !738
  br label %.body.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %.noexc.i140.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24, !noalias !738
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !737
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #24, !noalias !737
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !737
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46.i.i, !noalias !737 ; 5 uses

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.jg = ptrtoint ptr %i.jb to i64
  store i64 %i.jg, ptr %i.jf, align 8, !tbaa !169, !noalias !737
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 6 uses
  store ptr %i.jf, ptr %5, align 8, !tbaa !216, !noalias !737
  store ptr %i.jh, ptr %i.jd, align 8, !tbaa !215, !noalias !737
  store ptr %i.jh, ptr %i.je, align 8, !tbaa !282, !noalias !737
  %i.ji = load ptr, ptr %i.gz, align 8, !tbaa !215, !noalias !737
  %i.jj = load ptr, ptr %3, align 8, !tbaa !216, !noalias !737
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = icmp ugt i64 %i.jm, 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117ListAggregateBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !737
  br i1 %.0.i.i, label %bb.ex, label %.body79.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !737
  br i1 %.0.i.i, label %bb.ex, label %.body79.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread.i.i
  %.pn33.pn121.ph.i.i = phi { ptr, i32 } [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread.i.i ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread.i.i ], [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !737
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i
  %.pn33.pn121.i.i = phi { ptr, i32 } [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i ], [ %.pn33.pn121.ph.i.i, %.sink.split.i.i ]
  call void @__cxa_free_exception(ptr %i.qd) #24, !noalias !737
  br label %.body79.i.i

bb.ey:                                            ; preds = %bb.ek
  %i.rd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc78.i.i unwind label %bb.fa, !noalias !737 ; 6 uses

.noexc78.i.i:                                     ; preds = %bb.ey
  %i.re = load ptr, ptr %9, align 8, !tbaa !286, !noalias !744 ; 4 uses
  store ptr null, ptr %9, align 8, !tbaa !286, !noalias !744
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_122ListAggregatesBindDataE, i64 16), ptr %i.rd, align 8, !tbaa !132, !noalias !744
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.rf, ptr noundef nonnull align 8 dereferenceable(24) %i.pl)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i unwind label %.body.i.i.i, !noalias !744, !inline_history !18

.body.i.i.i:                                      ; preds = %.noexc78.i.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %i.rd) #24, !noalias !744, !inline_history !18
  %.not.i4.i.i.i = icmp eq ptr %i.re, null
  br i1 %.not.i4.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i: ; preds = %.body.i.i.i
  %i.rh = load ptr, ptr %i.re, align 8, !tbaa !132, !noalias !744
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !noalias !744
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(88) %i.re) #24, !noalias !744, !inline_history !730
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i, %.body.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.rd) #28, !noalias !744
  br label %.body79.i.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %.noexc78.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 32
  %i.rl = ptrtoint ptr %i.re to i64
  store i64 %i.rl, ptr %i.rk, align 8, !tbaa !169, !noalias !744
  store ptr %i.rd, ptr %0, align 8, !tbaa !218, !alias.scope !737
  %i.rm = load ptr, ptr %9, align 8, !tbaa !286, !noalias !737 ; 3 uses
  %.not.i82.i.i = icmp eq ptr %i.rm, null
  br i1 %.not.i82.i.i, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !132, !noalias !737
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !737
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(512) %i.rm) #24, !noalias !737, !inline_history !731
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !737
  %i.rq = load ptr, ptr %5, align 8, !tbaa !216, !noalias !737 ; 4 uses
  %i.rr = load ptr, ptr %i.jd, align 8, !tbaa !215, !noalias !737 ; 2 uses
  %.not4.i.i.i84.i.i = icmp eq ptr %i.rq, %i.rr
  br i1 %.not4.i.i.i84.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93.i.i, label %.lr.ph.i.i.i85.i.i

.lr.ph.i.i.i85.i.i:                               ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i
  %.05.i.i.i86.i.i = phi ptr [ %i.rw, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i ], [ %i.rq, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i ] ; 2 uses
  %i.rs = load ptr, ptr %.05.i.i.i86.i.i, align 8, !tbaa !169, !noalias !737 ; 3 uses
  %.not.i.i.i.i.i87.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i.i87.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i88.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i88.i.i: ; preds = %.lr.ph.i.i.i85.i.i
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !132, !noalias !737
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !737
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(88) %i.rs) #24, !noalias !737, !inline_history !725
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i88.i.i, %.lr.ph.i.i.i85.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %.05.i.i.i86.i.i, i64 8 ; 2 uses
  %.not.i.i.i90.i.i = icmp eq ptr %i.rw, %i.rr
  br i1 %.not.i.i.i90.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93.i.i, label %.lr.ph.i.i.i85.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i89.i.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i.i
  %.not.i.i1.i94.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i1.i94.i.i, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.rq) #28, !noalias !737
  br label %bb.fd

bb.fa:                                            ; preds = %bb.ey, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i106.i.i, %bb.ej, %_ZN6duckdb11LogicalTypeaSEOS0_.exit.i.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body79.i.i

.body79.i.i:                                      ; preds = %bb.fa, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i.i, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i, %bb.ev
  %.pn33.pn.pn.i.i = phi { ptr, i32 } [ %.pn33.pn121.i.i, %bb.ex ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i ], [ %i.rg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i.i ], [ %.pn31.i.i, %bb.ev ], [ %i.rx, %bb.fa ] ; 2 uses
  %i.ry = load ptr, ptr %9, align 8, !tbaa !286, !noalias !737 ; 3 uses
  %.not.i96.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i96.i.i, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit98.i.i, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i97.i.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i97.i.i: ; preds = %.body79.i.i
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !132, !noalias !737
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !737
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(512) %i.ry) #24, !noalias !737, !inline_history !731
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit98.i.i

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit98.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i97.i.i, %.body79.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit74.i.i, %bb.er
  %.pn33.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.qj, %bb.er ], [ %i.qk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit74.i.i ], [ %.pn33.pn.pn.i.i, %.body79.i.i ], [ %.pn33.pn.pn.i.i, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i97.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !737
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit98.i.i, %bb.eq
  %.pn33.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.i.i, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit98.i.i ], [ %i.qi, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !737
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit101.i.i

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit101.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fb, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46.i.i, %bb.db
  %.pn39.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.db ], [ %i.jr, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46.i.i ], [ %.pn33.pn.pn.pn.pn.i.i, %bb.fb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !737
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %39) #24, !noalias !733
  br label %bb.fn

bb.fc:                                            ; preds = %bb.ep
  unreachable

bb.fd:                                            ; preds = %bb.ez, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !733
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %39, align 8, !tbaa !132, !noalias !733
  %i.sc = load ptr, ptr %i.ip, align 8, !tbaa !127, !noalias !733 ; 8 uses
  %.not.i.i.i.i146.i = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i.i146.i, label %_ZN6duckdb17AggregateFunctionD2Ev.exit.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 4 uses
  %i.se = load atomic i64, ptr %i.sd acquire, align 8, !noalias !733 ; 2 uses
  %i.sf = icmp eq i64 %i.se, 4294967297
  %i.sg = trunc i64 %i.se to i32                  ; 2 uses
  br i1 %i.sf, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.sd, align 8, !tbaa !129, !noalias !733
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 0, ptr %i.sh, align 4, !tbaa !130, !noalias !733
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !132, !noalias !733
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !733
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #24, !noalias !733, !inline_history !732
  %i.sl = load ptr, ptr %i.sc, align 8, !tbaa !132, !noalias !733
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !733
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #24, !noalias !733, !inline_history !732
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit.i

bb.fg:                                            ; preds = %bb.fe
  %i.so = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !733
  %.not.i.i.i.i.i147.i = icmp eq i8 %i.so, 0
  br i1 %.not.i.i.i.i.i147.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sp = add nsw i32 %i.sg, -1
  store i32 %i.sp, ptr %i.sd, align 8, !tbaa !48, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.sq = atomicrmw volatile add ptr %i.sd, i32 -1 acq_rel, align 4, !noalias !733
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sg, %bb.fh ], [ %i.sq, %bb.fi ]
  %i.sr = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.sr, label %bb.fj, label %_ZN6duckdb17AggregateFunctionD2Ev.exit.i, !prof !133

bb.fj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sc) #24, !noalias !733, !inline_history !284
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit.i

_ZN6duckdb17AggregateFunctionD2Ev.exit.i:         ; preds = %bb.fj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ff, %bb.fd
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %39) #24, !noalias !733, !inline_history !284
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !733
  %i.ss = load ptr, ptr %34, align 8, !tbaa !59, !noalias !733 ; 3 uses
  %i.st = load ptr, ptr %i.gy, align 8, !tbaa !61, !noalias !733 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ss, %i.st
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.su, %.lr.ph.i.i.i.i ], [ %i.ss, %_ZN6duckdb17AggregateFunctionD2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #24, !noalias !733
  %i.su = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.su, %i.st
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %34, align 8, !tbaa !59, !noalias !733
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6duckdb17AggregateFunctionD2Ev.exit.i
  %i.sv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ss, %_ZN6duckdb17AggregateFunctionD2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.sv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i, label %bb.fk

bb.fk:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.sv) #28, !noalias !733
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.fk, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !noalias !733
  %i.sw = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !288, !noalias !733 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.sy, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.sz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i ], [ %i.sy, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i ] ; 6 uses
  %i.sz = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !233, !noalias !733 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 40
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 56
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.tc) #28, !noalias !733
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.tf = load ptr, ptr %i.ta, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.tf) #28, !noalias !733
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #28, !noalias !733
  %.not.i.i.i.i.i148.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i.i.i148.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i
  %i.ti = load ptr, ptr %i.sw, align 8, !tbaa !289, !noalias !733
  %i.tj = getelementptr inbounds nuw i8, ptr %33, i64 80
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !290, !noalias !733
  %i.tl = shl i64 %i.tk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ti, i8 0, i64 %i.tl, i1 false), !noalias !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sx, i8 0, i64 16, i1 false), !noalias !733
  %i.tm = load ptr, ptr %i.sw, align 8, !tbaa !289, !noalias !733 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %33, i64 120
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.tm) #28, !noalias !733
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i: ; preds = %bb.fl, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.tq) #28, !noalias !733
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i
  %i.tt = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZN6duckdb9ErrorDataD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150.i
  call void @_ZdlPv(ptr noundef %i.tu) #28, !noalias !733
  br label %_ZN6duckdb9ErrorDataD2Ev.exit.i

_ZN6duckdb9ErrorDataD2Ev.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !733
  br label %bb.fr

bb.fm:                                            ; preds = %.noexc138.i, %bb.cq, %bb.cp
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit101.i.i
  %.pn70.i = phi { ptr, i32 } [ %.pn39.pn.i.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit101.i.i ], [ %i.tx, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24, !noalias !733
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i, %bb.cm
  %.pn70.pn.i = phi { ptr, i32 } [ %.pn70.i, %bb.fn ], [ %.pn68180.i, %bb.co ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i ], [ %i.ic, %bb.cm ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24, !noalias !733
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.cl
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %.pn70.pn.i, %bb.fo ], [ %i.ib, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !733
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fp
  %.pn74.i = phi { ptr, i32 } [ %.pn70.pn.pn.i, %bb.fp ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %34) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !noalias !733
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %33) #24, !noalias !733
  br label %bb.fq

bb.fq:                                            ; preds = %.loopexit.split-lp.i, %bb.cb
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %.loopexit.split-lp.i ], [ %i.hg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !733
  br label %bb.fs

bb.fr:                                            ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i162.i
  %i.ty = load ptr, ptr %25, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.cu
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i: ; preds = %bb.fr
  call void @_ZdlPv(ptr noundef %i.ty) #28, !noalias !733
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24, !noalias !733
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !733
  br label %_ZN6duckdb12_GLOBAL__N_118ListAggregatesBindILb1EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE.exit

bb.fs:                                            ; preds = %bb.fq, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i, %bb.bu, %bb.bt, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  %.pn79.pn.i = phi { ptr, i32 } [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i ], [ %.pn64.i, %bb.bt ], [ %.pn62176.i, %bb.aq ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i ], [ %i.gs, %bb.bu ], [ %.pn77.i, %bb.by ], [ %.pn74.pn.i, %bb.fq ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i ]
  %i.ua = load ptr, ptr %25, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.cu
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i: ; preds = %bb.fs
  call void @_ZdlPv(ptr noundef %i.ua) #28, !noalias !733
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24, !noalias !733
  br label %bb.ft

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ad, %bb.i
  %.pn79.pn.pn.pn.i = phi { ptr, i32 } [ %.pn79.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ], [ %i.as, %bb.i ], [ %i.cn, %bb.ad ], [ %.pn60173.i, %bb.ai ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #24, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !733
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit93.i
  %.pn79.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn79.pn.pn.pn.i, %bb.ft ], [ %.pn.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit93.i ]
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.i

bb.fv:                                            ; preds = %bb.ck, %bb.ao, %bb.ag
  unreachable

_ZN6duckdb12_GLOBAL__N_118ListAggregatesBindILb1EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128ListAggregatesInitLocalStateERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.24") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb15ExpressionState10GetContextEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.a)
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25, !noalias !747 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_124ListAggregatesLocalStateE, i64 16), ptr %i.c, align 8, !tbaa !132, !noalias !747
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 2048)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_124ListAggregatesLocalStateESt14default_deleteIS2_EED2Ev.exit unwind label %.body.i, !noalias !747

.body.i:                                          ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %i.c) #24, !noalias !747
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #28, !noalias !747
  resume { ptr, i32 } %i.e

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_118ListAggregatesBindILb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br i1 %i.aj, label %bb.ak, label %bb.be

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 noundef zeroext 2)
          to label %bb.al unwind label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef 0)
          to label %bb.am unwind label %bb.bc     ; 4 uses

bb.am:                                            ; preds = %bb.al
  %i.dh = load i8, ptr %26, align 8, !tbaa !106
  store i8 %i.dh, ptr %i.dg, align 8, !tbaa !106
  %i.di = getelementptr inbounds nuw i8, ptr %26, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !170
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !170
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.dq = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !127 ; 8 uses
  store <2 x ptr> %i.dq, ptr %i.dl, align 8, !tbaa !62
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i.i93, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ds, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !130
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !132
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #24, !inline_history !20
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !132
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #24, !inline_history !20
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97

bb.ap:                                            ; preds = %bb.an
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i94 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i.i94, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i95

bb.ar:                                            ; preds = %bb.ap
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i95: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i96 = phi i32 [ %i.dv, %bb.aq ], [ %i.ef, %bb.ar ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i.i.i96, 1
  br i1 %i.eg, label %bb.as, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97, !prof !133

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #24
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i95, %bb.ao, %bb.am
  %i.eh = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 8 uses
  store <2 x ptr> %i.do, ptr %i.dm, align 8, !tbaa !62
  %.not.i.i.i.i4.i.i98 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i4.i.i98, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit102, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ei, align 8, !tbaa !129
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !130
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !132
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #24, !inline_history !20
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !132
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #24, !inline_history !20
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit102

bb.av:                                            ; preds = %bb.at
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i5.i.i99 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i5.i.i99, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i100

bb.ax:                                            ; preds = %bb.av
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i100: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i7.i.i101 = phi i32 [ %i.el, %bb.aw ], [ %i.ev, %bb.ax ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i.i7.i.i101, 1
  br i1 %i.ew, label %bb.ay, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit102, !prof !133

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #24
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit102

_ZN6duckdb11LogicalTypeaSEOS0_.exit102:           ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i97, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i100, %bb.ay
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef zeroext 1)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i146 unwind label %bb.az

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i146: ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit102
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ey = load i8, ptr %27, align 8, !tbaa !106
  store i8 %i.ey, ptr %i.ex, align 8, !tbaa !106
  %i.ez = getelementptr inbounds nuw i8, ptr %27, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !170
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !170
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.fe = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !62
  %i.ff = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !62
  store <2 x ptr> %i.fe, ptr %i.fc, align 8, !tbaa !62
  store <2 x ptr> %i.ff, ptr %i.fd, align 8, !tbaa !62
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #24
  store ptr null, ptr %0, align 8, !tbaa !218
  br label %bb.fe

bb.az:                                            ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit102, %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ba:                                            ; preds = %.noexc88, %._crit_edge.i.i84
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %25, align 8, !tbaa !67   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.cy
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.ff

bb.bb:                                            ; preds = %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.al
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn65 = phi { ptr, i32 } [ %i.fl, %bb.bc ], [ %i.fk, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.ff

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader: ; preds = %bb.bf
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !215
  %i.fp = load ptr, ptr %3, align 8, !tbaa !216
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ugt i64 %i.fs, 16
  br i1 %i.ft, label %.lr.ph, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %.lr.ph.a

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bl unwind label %bb.bq

bb.bg:                                            ; preds = %bb.be
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

.lr.ph.a:                                         ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112
  %.030170 = phi i64 [ 2, %.lr.ph ], [ %i.gc, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112 ] ; 2 uses
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.030170)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %.lr.ph.a
  %i.fw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56 ; 2 uses
  %i.fy = load ptr, ptr %i.fm, align 8, !tbaa !61 ; 3 uses
  %i.fz = load ptr, ptr %36, align 8, !tbaa !60
  %.not.i109 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i109, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.bj
  %i.ga = load ptr, ptr %i.fm, align 8, !tbaa !61
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.gb, ptr %i.fm, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit112: ; preds = %.noexc110, %bb.bk
  %i.gc = add nuw i64 %.030170, 1                 ; 2 uses
  %i.gd = load ptr, ptr %i.fn, align 8, !tbaa !215
  %i.ge = load ptr, ptr %3, align 8, !tbaa !216
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 3
  %i.gj = icmp ult i64 %i.gc, %i.gi
  br i1 %i.gj, label %.lr.ph.a, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge, !llvm.loop !851

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.bj, %bb.bh, %.lr.ph.a, %bb.bf
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bl:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dc, i64 368
  %i.gm = invoke i64 @_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_20AggregateFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 8 dereferenceable(56) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.bm unwind label %bb.br     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.gm, ptr %31, align 8
  %.not = icmp eq i64 %i.gm, -1
  br i1 %.not, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.gn = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.bo unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread

bb.bo:                                            ; preds = %bb.bn
  %i.go = getelementptr inbounds nuw i8, ptr %28, i64 40
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.go)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.fj unwind label %bb.bs

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit._crit_edge
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.br:                                            ; preds = %bb.bl
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread: ; preds = %bb.bn
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %.0 = phi i1 [ false, %bb.bp ], [ true, %bb.bo ] ; 2 uses
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gt = load ptr, ptr %32, align 8, !tbaa !67   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bs
  call void @_ZdlPv(ptr noundef %i.gt) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br i1 %.0, label %bb.bt, label %bb.fb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br i1 %.0, label %bb.bt, label %bb.fb

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn55161 = phi { ptr, i32 } [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ]
  call void @__cxa_free_exception(ptr %i.gn) #24
  br label %bb.fb

bb.bu:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.gw = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.bv unwind label %bb.ex

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dc, i64 400
  %i.gy = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_17AggregateFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 noundef %i.gw)
          to label %.noexc118 unwind label %bb.ex ; 4 uses

.noexc118:                                        ; preds = %bb.bv
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %34, ptr noundef nonnull align 8 dereferenceable(368) %i.gy)
          to label %.noexc119 unwind label %bb.ex

.noexc119:                                        ; preds = %.noexc118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %34, align 8, !tbaa !132, !alias.scope !875
  %i.gz = getelementptr inbounds nuw i8, ptr %34, i64 240
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.gz, ptr noundef nonnull align 8 dereferenceable(106) %i.ha, i64 106, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %34, i64 352
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 352
  %i.hd = getelementptr inbounds nuw i8, ptr %34, i64 360
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 360
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !127 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.hc, align 8, !tbaa !62
  store <2 x ptr> %i.hg, ptr %i.hb, align 8, !tbaa !62, !alias.scope !875
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i116, label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit, label %bb.bw

bb.bw:                                            ; preds = %.noexc119
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 3 uses
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !875
  %.not.i.i.i.i.i.i.i117 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i.i.i.i117, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !48
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hh, align 4, !tbaa !48
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit

bb.by:                                            ; preds = %bb.bw
  %i.hl = atomicrmw volatile add ptr %i.hh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit

_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit: ; preds = %bb.by, %bb.bx, %.noexc119
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  invoke void @_ZN6duckdb12HistogramFun24GetHistogramUnorderedMapERNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.bz unwind label %bb.ey

bb.bz:                                            ; preds = %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !876
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !876
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.ca unwind label %bb.cd, !noalias !876

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %7)
          to label %bb.cb unwind label %bb.ce, !noalias !876

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !876
  %i.hm = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #25
          to label %.noexc.i120 unwind label %bb.cf, !noalias !876 ; 5 uses

.noexc.i120:                                      ; preds = %bb.cb
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6) #24, !noalias !877
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.hm, ptr noundef nonnull %4)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i unwind label %bb.cc, !noalias !877

bb.cc:                                            ; preds = %.noexc.i120
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24, !noalias !877
  call void @_ZdlPv(ptr noundef nonnull %i.hm) #28, !noalias !877
  br label %.body.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %.noexc.i120
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !876
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #24, !noalias !876
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #24, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !876
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i, !noalias !876 ; 5 uses

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hr = ptrtoint ptr %i.hm to i64
  store i64 %i.hr, ptr %i.hq, align 8, !tbaa !169, !noalias !876
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 6 uses
  store ptr %i.hq, ptr %5, align 8, !tbaa !216, !noalias !876
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !215, !noalias !876
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !282, !noalias !876
  %i.ht = load ptr, ptr %i.fn, align 8, !tbaa !215, !noalias !876
  %i.hu = load ptr, ptr %3, align 8, !tbaa !216, !noalias !876
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = icmp ugt i64 %i.hx, 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_118ListAggregatesBindILb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE:bb.a
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pp = ptrtoint ptr %i.pi to i64
  store i64 %i.pp, ptr %i.po, align 8, !tbaa !169, !noalias !883
  store ptr %i.pg, ptr %0, align 8, !tbaa !218, !alias.scope !876
  %i.pq = load ptr, ptr %9, align 8, !tbaa !286, !noalias !876 ; 3 uses
  %.not.i81.i = icmp eq ptr %i.pq, null
  br i1 %.not.i81.i, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !132, !noalias !876
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !876
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(512) %i.pq) #24, !noalias !876, !inline_history !874
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !876
  %i.pu = load ptr, ptr %5, align 8, !tbaa !216, !noalias !876 ; 4 uses
  %i.pv = load ptr, ptr %i.ho, align 8, !tbaa !215, !noalias !876 ; 2 uses
  %.not4.i.i.i83.i = icmp eq ptr %i.pu, %i.pv
  br i1 %.not4.i.i.i83.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i92.i, label %.lr.ph.i.i.i84.i

.lr.ph.i.i.i84.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i
  %.05.i.i.i85.i = phi ptr [ %i.qa, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i ], [ %i.pu, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  %i.pw = load ptr, ptr %.05.i.i.i85.i, align 8, !tbaa !169, !noalias !876 ; 3 uses
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i.i86.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i87.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i87.i: ; preds = %.lr.ph.i.i.i84.i
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !132, !noalias !876
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !noalias !876
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(88) %i.pw) #24, !noalias !876, !inline_history !868
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i87.i, %.lr.ph.i.i.i84.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.05.i.i.i85.i, i64 8 ; 2 uses
  %.not.i.i.i89.i = icmp eq ptr %i.qa, %i.pv
  br i1 %.not.i.i.i89.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i92.i, label %.lr.ph.i.i.i84.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i92.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i88.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %.not.i.i1.i93.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i1.i93.i, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i92.i
  call void @_ZdlPv(ptr noundef nonnull %i.pu) #28, !noalias !876
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ed, %_ZN6duckdb11LogicalTypeaSEOS0_.exit.i
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

.body78.i:                                        ; preds = %bb.ef, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i, %bb.ea
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn110.i, %bb.ec ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i ], [ %i.pk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit6.i.i ], [ %.pn30.i, %bb.ea ], [ %i.qb, %bb.ef ] ; 2 uses
  %i.qc = load ptr, ptr %9, align 8, !tbaa !286, !noalias !876 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.qc, null
  br i1 %.not.i95.i, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit97.i, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i96.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i96.i: ; preds = %.body78.i
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !132, !noalias !876
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !noalias !876
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(512) %i.qc) #24, !noalias !876, !inline_history !874
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit97.i

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit97.i: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i96.i, %.body78.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit73.i, %bb.dw
  %.pn32.pn.pn.pn.i = phi { ptr, i32 } [ %i.om, %bb.dw ], [ %i.on, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit73.i ], [ %.pn32.pn.pn.i, %.body78.i ], [ %.pn32.pn.pn.i, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i96.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !876
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit97.i, %bb.dv
  %.pn32.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.pn.i, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit97.i ], [ %i.ol, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !876
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit100.i

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit100.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i, %bb.ch
  %.pn38.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ch ], [ %i.ic, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i ], [ %.pn32.pn.pn.pn.pn.i, %bb.eg ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !876
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %35) #24
  br label %bb.ez

bb.eh:                                            ; preds = %bb.du
  unreachable

bb.ei:                                            ; preds = %bb.ee, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %35, align 8, !tbaa !132
  %i.qg = load ptr, ptr %i.km, align 8, !tbaa !127 ; 8 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i.i125, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 4 uses
  %i.qi = load atomic i64, ptr %i.qh acquire, align 8 ; 2 uses
  %i.qj = icmp eq i64 %i.qi, 4294967297
  %i.qk = trunc i64 %i.qi to i32                  ; 2 uses
  br i1 %i.qj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store i32 0, ptr %i.qh, align 8, !tbaa !129
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 12
  store i32 0, ptr %i.ql, align 4, !tbaa !130
  %i.qm = load ptr, ptr %i.qg, align 8, !tbaa !132
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #24, !inline_history !21
  %i.qp = load ptr, ptr %i.qg, align 8, !tbaa !132
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #24, !inline_history !21
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.el:                                            ; preds = %bb.ej
  %i.qs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i126 = icmp eq i8 %i.qs, 0
  br i1 %.not.i.i.i.i.i126, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qt = add nsw i32 %i.qk, -1
  store i32 %i.qt, ptr %i.qh, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.qu = atomicrmw volatile add ptr %i.qh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.en, %bb.em
  %.0.i.i.i.i.i.i = phi i32 [ %i.qk, %bb.em ], [ %i.qu, %bb.en ]
  %i.qv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.qv, label %bb.eo, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !133

bb.eo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #24, !inline_history !284
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %bb.ei, %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.eo
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %35) #24, !inline_history !284
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %34, align 8, !tbaa !132
  %i.qw = load ptr, ptr %i.hd, align 8, !tbaa !127 ; 8 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i.i127, label %_ZN6duckdb17AggregateFunctionD2Ev.exit131, label %bb.ep

bb.ep:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 4 uses
  %i.qy = load atomic i64, ptr %i.qx acquire, align 8 ; 2 uses
  %i.qz = icmp eq i64 %i.qy, 4294967297
  %i.ra = trunc i64 %i.qy to i32                  ; 2 uses
  br i1 %i.qz, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.qx, align 8, !tbaa !129
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 0, ptr %i.rb, align 4, !tbaa !130
  %i.rc = load ptr, ptr %i.qw, align 8, !tbaa !132
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #24, !inline_history !21
  %i.rf = load ptr, ptr %i.qw, align 8, !tbaa !132
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #24, !inline_history !21
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit131

bb.er:                                            ; preds = %bb.ep
  %i.ri = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i128 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i.i.i128, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rj = add nsw i32 %i.ra, -1
  store i32 %i.rj, ptr %i.qx, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i129

bb.et:                                            ; preds = %bb.er
  %i.rk = atomicrmw volatile add ptr %i.qx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i129: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i130 = phi i32 [ %i.ra, %bb.es ], [ %i.rk, %bb.et ]
  %i.rl = icmp eq i32 %.0.i.i.i.i.i.i130, 1
  br i1 %i.rl, label %bb.eu, label %_ZN6duckdb17AggregateFunctionD2Ev.exit131, !prof !133

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #24, !inline_history !284
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit131

_ZN6duckdb17AggregateFunctionD2Ev.exit131:        ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit, %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i129, %bb.eu
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %34) #24, !inline_history !284
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.rm = load ptr, ptr %29, align 8, !tbaa !59   ; 3 uses
  %i.rn = load ptr, ptr %i.fm, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.rm, %i.rn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit131, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ro, %.lr.ph.i.i.i ], [ %i.rm, %_ZN6duckdb17AggregateFunctionD2Ev.exit131 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #24
  %i.ro = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ro, %i.rn
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %29, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb17AggregateFunctionD2Ev.exit131
  %i.rp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.rm, %_ZN6duckdb17AggregateFunctionD2Ev.exit131 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.rp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.rp) #28
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.rq = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %28, i64 88 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !288 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.rt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.rs, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 6 uses
  %i.rt = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !233 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !67 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.rw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.rz = load ptr, ptr %i.ru, align 8, !tbaa !67 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.rz) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #28
  %.not.i.i.i.i.i132 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i.i132, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.sc = load ptr, ptr %i.rq, align 8, !tbaa !289
  %i.sd = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !290
  %i.sf = shl i64 %i.se, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sc, i8 0, i64 %i.sf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rr, i8 0, i64 16, i1 false)
  %i.sg = load ptr, ptr %i.rq, align 8, !tbaa !289 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %28, i64 120
  %i.si = icmp eq ptr %i.sg, %i.sh
  br i1 %i.si, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.sg) #28
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.ew, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.sj = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !67 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.sk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  %i.sn = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !67 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134
  call void @_ZdlPv(ptr noundef %i.so) #28
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.fe

bb.ex:                                            ; preds = %.noexc118, %bb.bv, %bb.bu
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ey:                                            ; preds = %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit100.i, %bb.ey
  %.pn57 = phi { ptr, i32 } [ %.pn38.pn.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit100.i ], [ %i.ss, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %34) #24
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ex
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %bb.ez ], [ %i.sr, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %bb.bt, %bb.fa, %bb.br
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.fa ], [ %.pn55161, %bb.bt ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.gq, %bb.br ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.bq
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.fb ], [ %i.gp, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fc
  %.pn62 = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %bb.fc ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %28) #24
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp, %bb.bg
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %.loopexit.split-lp ], [ %i.fu, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.ff

bb.fe:                                            ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i146
  %i.st = load ptr, ptr %24, align 8, !tbaa !67   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.cu
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.fe
  call void @_ZdlPv(ptr noundef %i.st) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.az
  %.pn67 = phi { ptr, i32 } [ %i.fg, %bb.az ], [ %.pn65, %bb.bd ], [ %.pn62.pn, %bb.fd ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  %i.sv = load ptr, ptr %24, align 8, !tbaa !67   ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.cu
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ff
  call void @_ZdlPv(ptr noundef %i.sv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.fg

bb.fg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.ad, %bb.i
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.as, %bb.i ], [ %i.cn, %bb.ad ], [ %.pn51157, %bb.ai ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.fi

bb.fh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.d
  ret void

bb.fi:                                            ; preds = %bb.fg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn, %bb.fg ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80 ]
  resume { ptr, i32 } %.pn67.pn.pn.pn

bb.fj:                                            ; preds = %bb.bp, %bb.ag
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ListUniqueFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %2 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_114ArraySliceBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
          to label %bb.db unwind label %bb.do     ; 4 uses

bb.db:                                            ; preds = %bb.da
  %i.ly = load i8, ptr %21, align 8, !tbaa !106
  store i8 %i.ly, ptr %i.lx, align 8, !tbaa !106
  %i.lz = getelementptr inbounds nuw i8, ptr %21, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !170
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !170
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mf = load <2 x ptr>, ptr %i.mc, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i8 0, i64 16, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.mh = load <2 x ptr>, ptr %i.md, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false)
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !127 ; 8 uses
  store <2 x ptr> %i.mh, ptr %i.mc, align 8, !tbaa !62
  %.not.i.i.i.i.i.i99 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i.i99, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 4 uses
  %i.mk = load atomic i64, ptr %i.mj acquire, align 8 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 4294967297
  %i.mm = trunc i64 %i.mk to i32                  ; 2 uses
  br i1 %i.ml, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.mj, align 8, !tbaa !129
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  store i32 0, ptr %i.mn, align 4, !tbaa !130
  %i.mo = load ptr, ptr %i.mi, align 8, !tbaa !132
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #24, !inline_history !20
  %i.mr = load ptr, ptr %i.mi, align 8, !tbaa !132
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #24, !inline_history !20
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103

bb.de:                                            ; preds = %bb.dc
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i100 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i.i100, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mv = add nsw i32 %i.mm, -1
  store i32 %i.mv, ptr %i.mj, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i101

bb.dg:                                            ; preds = %bb.de
  %i.mw = atomicrmw volatile add ptr %i.mj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i101: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i.i.i.i102 = phi i32 [ %i.mm, %bb.df ], [ %i.mw, %bb.dg ]
  %i.mx = icmp eq i32 %.0.i.i.i.i.i.i.i.i102, 1
  br i1 %i.mx, label %bb.dh, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103, !prof !133

bb.dh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #24
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103: ; preds = %bb.dh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i101, %bb.dd, %bb.db
  %i.my = load ptr, ptr %i.mg, align 8, !tbaa !127 ; 8 uses
  store <2 x ptr> %i.mf, ptr %i.md, align 8, !tbaa !62
  %.not.i.i.i.i4.i.i104 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i4.i.i104, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit108, label %bb.di

bb.di:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 4 uses
  %i.na = load atomic i64, ptr %i.mz acquire, align 8 ; 2 uses
  %i.nb = icmp eq i64 %i.na, 4294967297
  %i.nc = trunc i64 %i.na to i32                  ; 2 uses
  br i1 %i.nb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.mz, align 8, !tbaa !129
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  store i32 0, ptr %i.nd, align 4, !tbaa !130
  %i.ne = load ptr, ptr %i.my, align 8, !tbaa !132
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #24, !inline_history !20
  %i.nh = load ptr, ptr %i.my, align 8, !tbaa !132
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #24, !inline_history !20
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit108

bb.dk:                                            ; preds = %bb.di
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i5.i.i105 = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i.i.i5.i.i105, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nl = add nsw i32 %i.nc, -1
  store i32 %i.nl, ptr %i.mz, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i106

bb.dm:                                            ; preds = %bb.dk
  %i.nm = atomicrmw volatile add ptr %i.mz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i106

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i106: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i7.i.i107 = phi i32 [ %i.nc, %bb.dl ], [ %i.nm, %bb.dm ]
  %i.nn = icmp eq i32 %.0.i.i.i.i.i.i7.i.i107, 1
  br i1 %i.nn, label %bb.dn, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit108, !prof !133

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i106
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #24
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit108

_ZN6duckdb11LogicalTypeaSEOS0_.exit108:           ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i103, %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i106, %bb.dn
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.dp

bb.do:                                            ; preds = %bb.da
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %common.resume

bb.dp:                                            ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit108, %bb.cz
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.nq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !986 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_117ListSliceBindDataE, i64 16), ptr %i.nq, align 8, !tbaa !132, !noalias !986
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117ListSliceBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %.body.i, !noalias !986, !inline_history !985

common.resume:                                    ; preds = %bb.o, %bb.ak, %bb.ba, %bb.ce, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.do, %bb.cy, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ns, %.body.i ], [ %.pn53171, %bb.cj ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn48.pn, %bb.o ], [ %.pn165, %bb.u ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fy, %bb.ba ], [ %i.ds, %bb.ak ], [ %i.js, %bb.ce ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.no, %bb.do ], [ %i.lt, %bb.cy ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.dp
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(34) %i.nq) #24, !noalias !986, !inline_history !985
  call void @_ZdlPv(ptr noundef nonnull %i.nq) #28, !noalias !986
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117ListSliceBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.dp
  %i.nt = zext i1 %i.lv to i8
  %i.nu = zext i1 %i.ka to i8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  store i8 %i.nu, ptr %i.nv, align 8, !tbaa !379, !noalias !986
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 33
  store i8 %i.nt, ptr %i.nw, align 1, !tbaa !380, !noalias !986
  store ptr %i.nq, ptr %0, align 8, !tbaa !218
  ret void

bb.dq:                                            ; preds = %bb.ch, %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ListSortBindDataC2ENS_9OrderTypeENS_15OrderByNullTypeEbRKNS_11LogicalTypeES5_RNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 10)) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(512) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb::unique_ptr.121", align 8 ; 6 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %10 = alloca %"class.duckdb::unique_ptr.121", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::unique_ptr.121", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::vector.130", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %13 = alloca %"class.duckdb::vector", align 8   ; 12 uses
  %14 = alloca [3 x %"struct.duckdb::LogicalType"], align 8 ; 14 uses
  %15 = alloca %"class.duckdb::vector.140", align 8 ; 8 uses
  %i.c = zext i1 %3 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb16ListSortBindDataE, i64 16), ptr %0, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 %1, ptr %i.d, align 8, !tbaa !395
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  store i8 %2, ptr %i.e, align 1, !tbaa !396
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.al

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.h, align 8, !tbaa !397
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %6, ptr %i.j, align 8, !tbaa !398
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !993
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr null, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType9USMALLINTE)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit unwind label %bb.am

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit: ; preds = %bb.c
  %.pre.a = load ptr, ptr %i.l, align 8, !tbaa !61 ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre99.a = load ptr, ptr %16, align 8, !tbaa !60
  %.not.i34 = icmp eq ptr %.pre.a, %.pre99.a
  br i1 %.not.i34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.pre.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc35 unwind label %bb.am

.noexc35:                                         ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %.pre.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit_crit_edge unwind label %bb.am

._ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit_crit_edge: ; preds = %bb.e
  %.pre100.a = load ptr, ptr %i.l, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit: ; preds = %._ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit_crit_edge, %.noexc35
  %i.o = phi ptr [ %.pre100.a, %._ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit_crit_edge ], [ %i.n, %.noexc35 ] ; 3 uses
  %i.p = load ptr, ptr %16, align 8, !tbaa !60
  %.not.i37 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 noundef zeroext 30)
          to label %.noexc38 unwind label %bb.am

.noexc38:                                         ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8, !tbaa !61
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit40

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.o, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType8UINTEGERE)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit40 unwind label %bb.am

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit40: ; preds = %.noexc38, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.s = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc41 unwind label %bb.an  ; 3 uses

.noexc41:                                         ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit40
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 29)
          to label %bb.h unwind label %bb.i, !noalias !994

bb.h:                                             ; preds = %.noexc41
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull %9, i64 noundef 0)
          to label %bb.l unwind label %bb.j, !noalias !994

bb.i:                                             ; preds = %.noexc41
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #24, !noalias !994
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.s) #28, !noalias !994
  br label %.body

bb.l:                                             ; preds = %bb.h
  store ptr %i.s, ptr %10, align 8, !tbaa !169, !alias.scope !994
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #24, !noalias !994
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.v = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc43 unwind label %bb.ao  ; 3 uses

.noexc43:                                         ; preds = %bb.l
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.m unwind label %bb.n, !noalias !995

bb.m:                                             ; preds = %.noexc43
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull %8, i64 noundef 1)
          to label %bb.q unwind label %bb.o, !noalias !995

bb.n:                                             ; preds = %.noexc43
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #24, !noalias !995
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i42 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.w, %bb.n ]
  call void @_ZdlPv(ptr noundef nonnull %i.v) #28, !noalias !995
  br label %.body44

bb.q:                                             ; preds = %bb.m
  store ptr %i.v, ptr %11, align 8, !tbaa !169, !alias.scope !995
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #24, !noalias !995
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 2, ptr %i.a, align 1, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 1, ptr %i.b, align 1, !tbaa !400
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  invoke void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE17_M_realloc_insertIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit unwind label %.body47

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit: ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.pre101 = load ptr, ptr %i.y, align 8, !tbaa !403 ; 3 uses
  %.pre102 = load ptr, ptr %i.z, align 8, !tbaa !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i50 = icmp eq ptr %.pre101, %.pre102
  br i1 %.not.i50, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aa = load i8, ptr %i.d, align 8, !tbaa !399
  %i.ab = load i8, ptr %i.e, align 1, !tbaa !400
  %i.ac = load i64, ptr %11, align 8, !tbaa !169
  store i64 %i.ac, ptr %7, align 8, !tbaa !169
  store ptr null, ptr %11, align 8, !tbaa !169
  invoke void @_ZN6duckdb16BoundOrderByNodeC1ENS_9OrderTypeENS_15OrderByNullTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %.pre101, i8 noundef zeroext %i.aa, i8 noundef zeroext %i.ab, ptr noundef nonnull %7)
          to label %_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS9_ELb1EEEEEEvPT_DpOT0_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !169   ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i51, label %.body57, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i52

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i52: ; preds = %bb.s
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(88) %i.ae) #24, !inline_history !991
  br label %.body57

_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS9_ELb1EEEEEEvPT_DpOT0_.exit.i: ; preds = %bb.r
  %i.ai = load ptr, ptr %7, align 8, !tbaa !169   ; 3 uses
  %.not.i7.i54 = icmp eq ptr %i.ai, null
  br i1 %.not.i7.i54, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i56, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i55

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i55: ; preds = %_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS9_ELb1EEEEEEvPT_DpOT0_.exit.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !132
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(88) %i.ai) #24, !inline_history !991
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i56

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i56: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i55, %_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS9_ELb1EEEEEEvPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !403
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.an, ptr %i.y, align 8, !tbaa !403
  br label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit
  invoke void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE17_M_realloc_insertIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISA_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %.pre101, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit unwind label %bb.ap

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i56, %bb.t
  %i.ao = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25
          to label %bb.u unwind label %bb.ap      ; 3 uses

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !405, !nonnull !141, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 29)
          to label %bb.v unwind label %.thread

.thread:                                          ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.w unwind label %bb.aq

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
end_hunk_4
