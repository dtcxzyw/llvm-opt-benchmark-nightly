Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/hdfs_internal?download=true
inline.NumInlined: 1811
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  br i1 %i.pn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i: ; preds = %.lr.ph.i.i.i360.i
  %i.po = load i64, ptr %i.pm, align 8, !tbaa !121
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.pp) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i363.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i363.i: ; preds = %.lr.ph.i.i.i360.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i361.i, i64 32 ; 2 uses
  %.not.i.i.i364.i = icmp eq ptr %i.pq, %i.pk
  br i1 %.not.i.i.i364.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i365.i, label %.lr.ph.i.i.i360.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i365.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i363.i
  %.pr.i366.i = load ptr, ptr %36, align 8, !tbaa !125, !noalias !404
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i367.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i367.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i365.i, %bb.az
  %i.pr = phi ptr [ %.pr.i366.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i365.i ], [ %i.pj, %bb.az ] ; 3 uses
  %.not.i.i1.i368.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i1.i368.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit371.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i367.i
  %i.ps = load ptr, ptr %i.oz, align 8, !tbaa !126, !noalias !404
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pr to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.pv) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit371.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit371.i: ; preds = %bb.ba, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i367.i
  %i.pw = load ptr, ptr %i.nx, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.on
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit371.i
  %i.py = load i64, ptr %i.on, align 8, !tbaa !121, !noalias !404
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit371.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.i
  %i.qa = load ptr, ptr %i.my, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.no
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i
  %i.qc = load i64, ptr %i.no, align 8, !tbaa !121, !noalias !404
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.1.i
  %i.qe = load ptr, ptr %i.mu, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.mv
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.1.i
  %i.qg = load i64, ptr %i.mv, align 8, !tbaa !121, !noalias !404
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.2.i
  %i.qi = load ptr, ptr %37, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.ms
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.2.i
  %i.qk = load i64, ptr %i.ms, align 8, !tbaa !121, !noalias !404
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.3.i
  %i.qm = load ptr, ptr %39, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.of
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.3.i
  %i.qo = load i64, ptr %i.of, align 8, !tbaa !121, !noalias !404
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !404
  %i.qq = load ptr, ptr %38, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.ng
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i
  %i.qs = load i64, ptr %i.ng, align 8, !tbaa !121, !noalias !404
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !404
  %i.qu = load ptr, ptr %35, align 8, !tbaa !101, !noalias !404
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit408.i, label %bb.bb, !prof !102

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.i
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %35) #18
  br label %.loopexit538.i

.thread747.i:                                     ; preds = %bb.aj
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i.sink.split

bb.bc:                                            ; preds = %bb.at, %bb.ar
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit539.i

bb.bd:                                            ; preds = %bb.ay
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #18
  br label %.body356.i

.body356.i:                                       ; preds = %bb.bd, %bb.ax, %bb.aw
  %.pn133.i = phi { ptr, i32 } [ %i.qy, %bb.bd ], [ %i.pb, %bb.aw ], [ %i.pb, %bb.ax ] ; 2 uses
  %i.qz = load ptr, ptr %i.nx, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.on
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.i: ; preds = %.body356.i
  %i.rb = load i64, ptr %i.on, align 8, !tbaa !121, !noalias !404
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.i: ; preds = %.body356.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.i
  %i.rd = load ptr, ptr %i.my, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.no
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.i
  %i.rf = load i64, ptr %i.no, align 8, !tbaa !121, !noalias !404
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.1.i
  %i.rh = load ptr, ptr %i.mu, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.mv
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.1.i
  %i.rj = load i64, ptr %i.mv, align 8, !tbaa !121, !noalias !404
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.2.i
  %i.rl = load ptr, ptr %37, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.ms
  br i1 %i.rm, label %.loopexit539.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i
  %i.rn = load i64, ptr %i.ms, align 8, !tbaa !121, !noalias !404
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #21
  br label %.loopexit539.i

.loopexit539.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.3.i, %bb.bc
  %i.rp = phi i1 [ false, %bb.bc ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.3.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i ] ; 2 uses
  %.pn133.pn.i = phi { ptr, i32 } [ %i.qx, %bb.bc ], [ %.pn133.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381.3.i ], [ %.pn133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383.2.i ] ; 4 uses
  %i.rq = load ptr, ptr %39, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i385.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384.i: ; preds = %.loopexit539.i
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !121, !noalias !404
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i385.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i385.i: ; preds = %.loopexit539.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !404
  %i.rv = load ptr, ptr %38, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.ng
  br i1 %i.rw, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i

.thread:                                          ; preds = %bb.ap
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !404
  %i.ry = load ptr, ptr %38, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.ng
  br i1 %i.rz, label %.preheader.preheader.i.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i.thread: ; preds = %.thread
  %i.sa = load i64, ptr %i.ng, align 8, !tbaa !121, !noalias !404
  %51 = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %51) #21
  br label %.preheader.preheader.i.sink.split

.thread754.i:                                     ; preds = %bb.an, %bb.al
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %38, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %.preheader.preheader.i.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.thread.i: ; preds = %.thread754.i
  %i.sf = load i64, ptr %i.sd, align 8, !tbaa !121, !noalias !404
  %52 = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %52) #21
  br label %.preheader.preheader.i.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i385.i
  %i.sg = load i64, ptr %i.ng, align 8, !tbaa !121, !noalias !404
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.sh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !404
  br i1 %i.rp, label %.loopexit.i, label %.preheader.preheader.i

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i385.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !404
  br i1 %i.rp, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i.sink.split:                ; preds = %.thread754.i, %.thread, %.thread747.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i.thread
  %.pn133.pn.pn.pn.pn752.i.ph = phi { ptr, i32 } [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i.thread ], [ %i.qw, %.thread747.i ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.thread.i ], [ %i.rx, %.thread ], [ %i.sb, %.thread754.i ]
  %.178751.i.ph = phi ptr [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i.thread ], [ %i.my, %.thread747.i ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.thread.i ], [ %i.nx, %.thread ], [ %i.my, %.thread754.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !404
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.sink.split, %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i
  %.pn133.pn.pn.pn.pn752.i = phi { ptr, i32 } [ %.pn133.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i ], [ %.pn133.pn.i, %bb.be ], [ %.pn133.pn.pn.pn.pn752.i.ph, %.preheader.preheader.i.sink.split ]
  %.178751.i = phi ptr [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i ], [ %i.nx, %bb.be ], [ %.178751.i.ph, %.preheader.preheader.i.sink.split ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i, %.preheader.preheader.i
  %i.si = phi ptr [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i ], [ %.178751.i, %.preheader.preheader.i ] ; 2 uses
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -32 ; 3 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %i.si, i64 -16 ; 2 uses
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390.i: ; preds = %.preheader.i
  %i.sn = load i64, ptr %i.sl, align 8, !tbaa !121, !noalias !404
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.so) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i: ; preds = %.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390.i
  %i.sp = icmp eq ptr %i.sj, %37
  br i1 %i.sp, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i, %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i
  %.pn133.pn.pn.pn.pn753.i = phi { ptr, i32 } [ %.pn133.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387.i ], [ %.pn133.pn.i, %bb.be ], [ %.pn133.pn.pn.pn.pn752.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !404
  br label %bb.cz

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit408.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body415.i

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit408.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380.i
  %i.sr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !131, !noalias !418
  %i.su = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.sw = load <2 x ptr>, ptr %i.sr, align 8, !tbaa !132, !noalias !418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i8 0, i64 24, i1 false), !noalias !418
  store <2 x ptr> %i.sw, ptr %28, align 16, !tbaa !132, !noalias !404
  store ptr %i.st, ptr %i.sv, align 16, !tbaa !131, !noalias !404
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !404
  %i.sx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef %.pre.i, ptr noundef nonnull @.str.69, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.bf ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit408.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !404
  invoke void @_ZN5arrow8internal15GetEnvVarNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.20") align 8 %15, i64 9, ptr nonnull @.str.70)
          to label %.noexc414.i unwind label %bb.bf

.noexc414.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.sy = load ptr, ptr %15, align 8, !tbaa !101, !noalias !404 ; 2 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.bg, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i

bb.bg:                                            ; preds = %.noexc414.i
  %i.ta = load ptr, ptr %27, align 16, !tbaa !132, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !404
  %i.tb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.tc, ptr %17, align 8, !tbaa !119, !noalias !404
  %i.td = load ptr, ptr %i.tb, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.i

bb.bh:                                            ; preds = %bb.bg
  %i.tg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !120, !noalias !404 ; 3 uses
  %i.ti = icmp ult i64 %i.th, 16
  call void @llvm.assume(i1 %i.ti)
  %i.tj = add nuw nsw i64 %i.th, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tc, ptr noundef nonnull align 8 dereferenceable(1) %i.te, i64 %i.tj, i1 false), !noalias !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.i: ; preds = %bb.bg
  store ptr %i.td, ptr %17, align 8, !tbaa !122, !noalias !404
  %i.tk = load i64, ptr %i.te, align 8, !tbaa !121, !noalias !404
  store i64 %i.tk, ptr %i.tc, align 8, !tbaa !121, !noalias !404
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.pre.i411.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120, !noalias !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.i, %bb.bh
  %i.tl = phi i64 [ %i.th, %bb.bh ], [ %.pre.i411.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.i ]
  %i.tm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.tl, ptr %i.tn, align 8, !tbaa !120, !noalias !404
  store ptr %i.te, ptr %i.tb, align 8, !tbaa !122, !noalias !404
  store i64 0, ptr %i.tm, align 8, !tbaa !120, !noalias !404
  store i8 0, ptr %i.te, align 8, !tbaa !121, !noalias !404
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.to = invoke ptr @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.ta, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i unwind label %bb.bk ; 0 uses

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bi
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  %i.tp = load ptr, ptr %17, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.tc
  br i1 %i.tq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i
  %i.tr = load i64, ptr %i.tc, align 8, !tbaa !121, !noalias !404
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.tp, i64 noundef %i.ts) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.tu, %bb.bk ], [ %i.tt, %bb.bj ]
  %i.tv = load ptr, ptr %17, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.tc
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %bb.bl
  %i.tx = load i64, ptr %i.tc, align 8, !tbaa !121, !noalias !404
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.ty) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !404
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !404
  br label %.body415.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !404
  %.pr.i412.i = load ptr, ptr %15, align 8, !tbaa !101, !noalias !404 ; 2 uses
  %i.tz = icmp eq ptr %.pr.i412.i, null
  br i1 %i.tz, label %bb.bm, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !135

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ua = load ptr, ptr %i.tb, align 8, !tbaa !122, !noalias !404 ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.te
  br i1 %i.ub, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i: ; preds = %bb.bm
  %i.uc = load i64, ptr %i.te, align 8, !tbaa !121, !noalias !404
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #21
  %.pr.pre.i.i.i = load ptr, ptr %15, align 8, !tbaa !101, !noalias !404 ; 2 uses
  %.not.i.i.i413.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i.i413.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !135

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %.noexc414.i
  %i.ue = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i ], [ %.pr.i412.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ %i.sy, %.noexc414.i ] ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !116, !range !117, !noundef !118
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !136 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 4 uses
  %i.ul = load atomic i64, ptr %i.uk acquire, align 8 ; 2 uses
  %i.um = icmp eq i64 %i.ul, 4294967297
  %i.un = trunc i64 %i.ul to i32                  ; 2 uses
  br i1 %i.um, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.uk, align 8, !tbaa !138
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  store i32 0, ptr %i.uo, align 4, !tbaa !139
  %i.up = load ptr, ptr %i.uj, align 8, !tbaa !141
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.uj) #18, !inline_history !380
  %i.us = load ptr, ptr %i.uj, align 8, !tbaa !141
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(16) %i.uj) #18, !inline_history !380
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
end_hunk_0
