inline.NumInlined: 7096
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN5arrow6random20RandomArrayGenerator10Decimal128ESt10shared_ptrINS_8DataTypeEEldlPNS_10MemoryPoolE:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.1.i

bb.ar:                                            ; preds = %bb.am
  store i32 0, ptr %i.dp, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !51
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !745
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !52
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.1.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.1.i: ; preds = %bb.ar, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.1.i, %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !732
  invoke void @_ZN5arrow17Decimal128BuilderC1ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef %6, i64 noundef %5)
          to label %bb.at unwind label %bb.be

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !732
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !755, !noalias !768 ; 2 uses
  %i.eh = load ptr, ptr %11, align 8, !tbaa !52, !noalias !768
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !771
  %i.ek = invoke noundef i64 %i.ej(ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %.noexc.i unwind label %bb.bf, !inline_history !772

.noexc.i:                                         ; preds = %bb.at
  %i.el = add nsw i64 %i.ek, %3                   ; 2 uses
  %.not.i.i = icmp sgt i64 %i.el, %i.eg
  br i1 %.not.i.i, label %bb.au, label %_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i

_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i:  ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !732
  br label %_ZN5arrow6StatusD2Ev.exit76.i

bb.au:                                            ; preds = %.noexc.i
  %i.em = shl nsw i64 %i.eg, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.el, i64 %i.em)
  %i.en = load ptr, ptr %11, align 8, !tbaa !52, !noalias !768
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !771
  invoke void %i.ep(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %11, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i unwind label %bb.bf, !inline_history !772

_ZN5arrow12ArrayBuilder7ReserveEl.exit.i:         ; preds = %bb.au
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !13, !noalias !732 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !732
  %i.eq = icmp eq ptr %.pr.i, null
  br i1 %i.eq, label %_ZN5arrow6StatusD2Ev.exit76.i, label %bb.av

bb.av:                                            ; preds = %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i
  %i.er = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc71.i unwind label %bb.bg ; 7 uses

.noexc71.i:                                       ; preds = %bb.av
  %i.es = load i8, ptr %.pr.i, align 8, !tbaa !773
  store i8 %i.es, ptr %i.er, align 8, !tbaa !773
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 3 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !781
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !782 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !732
  store i64 %i.ey, ptr %i.b, align 8, !tbaa !93, !noalias !732
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc71.i
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.bb ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !782
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !732
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %.noexc71.i
  %i.fc = phi ptr [ %i.fa, %.noexc.i.i ], [ %i.ev, %.noexc71.i ] ; 2 uses
  switch i64 %i.ey, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fd = load i8, ptr %i.ew, align 1, !tbaa !46
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ew, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i.i.i
  %i.fe = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !732 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !783
  %i.fg = load ptr, ptr %i.et, align 8, !tbaa !782
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !732
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %.pr.i, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr.i, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !32 ; 2 uses
  %i.fm = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !22
  store <2 x ptr> %i.fm, ptr %i.fi, align 8, !tbaa !22
  %.not.i.i.i.i.i69.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i69.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !732
  %.not.i.i.i.i.i.i70.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i70.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !3
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %.noexc.i.i.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 56) #28
  br label %.body.i

bb.bc:                                            ; preds = %bb.ba, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  store ptr %i.er, ptr %13, align 8, !tbaa !13, !noalias !732
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #27
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.1.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bf:                                            ; preds = %bb.au, %bb.at
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit78.i

bb.bg:                                            ; preds = %bb.av
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bh:                                            ; preds = %bb.bc
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %13, align 8, !tbaa !13, !noalias !732
  %.not.i72.i = icmp eq ptr %i.fx, null
  br i1 %.not.i72.i, label %.body.i, label %bb.bi, !prof !18

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit76.i:                    ; preds = %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i, %_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !732
  %i.fy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef 19)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false)
  %i.fz = icmp sgt i64 %3, 0
  br i1 %i.fz, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bj
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 3 uses
  %.pre141.i = load ptr, ptr %7, align 16, !tbaa !784, !noalias !732 ; 2 uses
  br label %bb.bm

._crit_edge.i:                                    ; preds = %bb.ci, %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !732
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !732
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 %0)
          to label %bb.cj unwind label %bb.ct

.body.i:                                          ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bb
  %.pn49.i = phi { ptr, i32 } [ %i.fs, %bb.bb ], [ %i.fv, %bb.bg ], [ %i.fw, %bb.bh ], [ %i.fw, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !732
  %i.gj = load ptr, ptr %12, align 8, !tbaa !13, !noalias !732
  %.not.i77.i = icmp eq ptr %i.gj, null
  br i1 %.not.i77.i, label %_ZN5arrow6StatusD2Ev.exit78.i, label %bb.bk, !prof !18

bb.bk:                                            ; preds = %.body.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN5arrow6StatusD2Ev.exit78.i

_ZN5arrow6StatusD2Ev.exit78.i:                    ; preds = %bb.bk, %.body.i, %bb.bf
  %.pn49.pn.i = phi { ptr, i32 } [ %i.fu, %bb.bf ], [ %.pn49.i, %.body.i ], [ %.pn49.i, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !732
  br label %bb.ec

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.bm:                                            ; preds = %bb.ci, %.lr.ph.i
  %21 = phi ptr [ %.pre141.i, %.lr.ph.i ], [ %26, %bb.ci ] ; 8 uses
  %22 = phi ptr [ %.pre141.i, %.lr.ph.i ], [ %27, %bb.ci ] ; 6 uses
  %.030135.i = phi i64 [ 0, %.lr.ph.i ], [ %i.jw, %bb.ci ] ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !141 ; 2 uses
  %.not.i79.i = icmp eq ptr %i.gm, null
  %i.gn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i79.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !148
  %i.gr = add nsw i64 %i.gq, %.030135.i           ; 2 uses
  %i.gs = lshr i64 %i.gr, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !46
  %i.gv = trunc i64 %i.gr to i8
  %i.gw = and i8 %i.gv, 7
  %i.gx = lshr i8 %i.gu, %i.gw
  %i.gy = trunc i8 %i.gx to i1
  br i1 %i.gy, label %bb.bt, label %bb.ch

bb.bo:                                            ; preds = %bb.bm
  %i.gz = load ptr, ptr %i.go, align 8, !tbaa !651
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !787
  switch i32 %i.hb, label %bb.bs [
    i32 27, label %bb.bp
    i32 28, label %bb.bq
    i32 38, label %bb.br
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.hc = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.go, i64 noundef %.030135.i)
          to label %_ZNK5arrow5Array7IsValidEl.exit.i unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  %i.hd = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.go, i64 noundef %.030135.i)
          to label %.noexc81.i unwind label %bb.bu

.noexc81.i:                                       ; preds = %bb.bq
  br i1 %i.hd, label %bb.ch, label %bb.bt

bb.br:                                            ; preds = %bb.bo
  %i.he = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.go, i64 noundef %.030135.i)
          to label %.noexc82.i unwind label %bb.bu

.noexc82.i:                                       ; preds = %bb.br
  br i1 %i.he, label %bb.ch, label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hg = load atomic i64, ptr %i.hf seq_cst, align 8
  %i.hh = load ptr, ptr %i.gn, align 8, !tbaa !138
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !788
  %.not.i = icmp eq i64 %i.hg, %i.hj
  %.pre140.i = load ptr, ptr %7, align 16, !tbaa !784, !noalias !732 ; 3 uses
  br i1 %.not.i, label %bb.ch, label %bb.bt

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.bp
  br i1 %i.hc, label %bb.ch, label %bb.bt

bb.bt:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.bs, %.noexc82.i, %.noexc81.i, %bb.bn
  %23 = phi ptr [ %21, %.noexc81.i ], [ %21, %.noexc82.i ], [ %.pre140.i, %bb.bs ], [ %21, %bb.bn ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !732
  %i.hk = invoke { i64, i64 } @_ZN5arrowmlERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bv unwind label %bb.bz     ; 2 uses

bb.bu:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.bv:                                            ; preds = %bb.bt
  %i.hm = extractvalue { i64, i64 } %i.hk, 0
  store i64 %i.hm, ptr %16, align 8, !noalias !732
  %i.hn = extractvalue { i64, i64 } %i.hk, 1
  store i64 %i.hn, ptr %i.gb, align 8, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !732
  %i.ho = load ptr, ptr %9, align 16, !tbaa !789, !noalias !732
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !429
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.030135.i
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !93
  store i64 %i.hs, ptr %17, align 8, !noalias !732
  store i64 0, ptr %i.gc, align 8, !noalias !732
  %i.ht = invoke { i64, i64 } @_ZN5arrowplERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.bw unwind label %bb.ca     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hu = extractvalue { i64, i64 } %i.ht, 0
  %i.hv = extractvalue { i64, i64 } %i.ht, 1
  store i64 %i.hu, ptr %15, align 8, !noalias !732
  store i64 %i.hv, ptr %i.ga, align 8, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !732
  %i.hw = invoke { i64, i64 } @_ZN5arrowmlERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bx unwind label %bb.bz     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hx = extractvalue { i64, i64 } %i.hw, 0
  store i64 %i.hx, ptr %16, align 8, !noalias !732
  %i.hy = extractvalue { i64, i64 } %i.hw, 1
  store i64 %i.hy, ptr %i.gb, align 8, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !732
  %i.hz = load ptr, ptr %i.bs, align 8, !tbaa !789, !noalias !732
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !429
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.030135.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !93
  store i64 %i.id, ptr %17, align 8, !noalias !732
  store i64 0, ptr %i.gc, align 8, !noalias !732
  %i.ie = invoke { i64, i64 } @_ZN5arrowplERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.by unwind label %bb.ca     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.if = extractvalue { i64, i64 } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { i64, i64 } %i.ie, 1      ; 2 uses
  store i64 %i.if, ptr %15, align 8, !noalias !732
  store i64 %i.ig, ptr %i.ga, align 8, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !732
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !145
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !138
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load i64, ptr %i.il, align 8, !tbaa !148
  %i.in = add nsw i64 %i.im, %.030135.i           ; 2 uses
  %i.io = lshr i64 %i.in, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !46
  %i.ir = trunc i64 %i.in to i8
  %i.is = and i8 %i.ir, 7
  %i.it = lshr i8 %i.iq, %i.is
  %i.iu = trunc i8 %i.it to i1
  br i1 %i.iu, label %bb.cc, label %.invoke.i

bb.bz:                                            ; preds = %bb.bw, %bb.bt
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx, %bb.bv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !732
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn44.i = phi { ptr, i32 } [ %i.iw, %bb.ca ], [ %i.iv, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !732
  br label %bb.cg

bb.cc:                                            ; preds = %bb.by
  %i.ix = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.cd unwind label %bb.ce     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %.sroa.0.0.copyload113.i = load i64, ptr %i.ix, align 8
  %.sroa.2.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.sroa.2.0.copyload115.i = load i64, ptr %.sroa.2.0..sroa_idx114.i, align 8
  br label %.invoke.i

bb.ce:                                            ; preds = %.invoke.i, %bb.cc
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.invoke.i:                                        ; preds = %bb.cd, %bb.by
  %i.iz = phi i64 [ %.sroa.0.0.copyload113.i, %bb.cd ], [ %i.if, %bb.by ]
  %i.ja = phi i64 [ %.sroa.2.0.copyload115.i, %bb.cd ], [ %i.ig, %bb.by ]
  invoke void @_ZN5arrow17Decimal128Builder12UnsafeAppendENS_10Decimal128E(ptr noundef nonnull align 8 dereferenceable(224) %11, i64 %i.iz, i64 %i.ja)
          to label %bb.cf unwind label %bb.ce

bb.cf:                                            ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !732
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce, %bb.cb
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn44.i, %bb.cb ], [ %i.iy, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !732
  br label %bb.eb

bb.ch:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.bs, %.noexc82.i, %.noexc81.i, %bb.bn
  %24 = phi ptr [ %21, %.noexc81.i ], [ %21, %.noexc82.i ], [ %.pre140.i, %bb.bs ], [ %21, %bb.bn ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %25 = phi ptr [ %22, %.noexc81.i ], [ %22, %.noexc82.i ], [ %.pre140.i, %bb.bs ], [ %22, %bb.bn ], [ %22, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %i.jb = load ptr, ptr %i.gd, align 8, !tbaa !791, !noalias !732
  %i.jc = load i64, ptr %i.ge, align 8, !tbaa !792, !noalias !732 ; 2 uses
  %i.jd = sdiv i64 %i.jc, 8
  %i.je = getelementptr inbounds i8, ptr %i.jb, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !46
  %i.jg = srem i64 %i.jc, 8
  %i.jh = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !46, !noalias !732
  %i.jj = xor i8 %i.ji, -1
  %i.jk = and i8 %i.jf, %i.jj
  store i8 %i.jk, ptr %i.je, align 1, !tbaa !46
  %i.jl = load <2 x i64>, ptr %i.ge, align 8, !tbaa !93, !noalias !732
  %i.jm = add nsw <2 x i64> %i.jl, splat (i64 1)
  store <2 x i64> %i.jm, ptr %i.ge, align 8, !tbaa !93, !noalias !732
  %i.jn = load <2 x i64>, ptr %i.gf, align 8, !tbaa !93, !noalias !732
  %i.jo = add nsw <2 x i64> %i.jn, splat (i64 1)
  store <2 x i64> %i.jo, ptr %i.gf, align 8, !tbaa !93, !noalias !732
  %i.jp = load i32, ptr %i.gg, align 8, !tbaa !793, !noalias !732
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = load ptr, ptr %i.gh, align 8, !tbaa !791, !noalias !732
  %i.js = load i64, ptr %i.gi, align 8, !tbaa !795, !noalias !732
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %i.js
  call void @llvm.memset.p0.i64(ptr align 1 %i.jt, i8 0, i64 %i.jq, i1 false)
  %i.ju = load i64, ptr %i.gi, align 8, !tbaa !795, !noalias !732
  %i.jv = add nsw i64 %i.ju, %i.jq
  store i64 %i.jv, ptr %i.gi, align 8, !tbaa !795, !noalias !732
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %26 = phi ptr [ %24, %bb.ch ], [ %23, %bb.cf ]
  %27 = phi ptr [ %25, %bb.ch ], [ %23, %bb.cf ]
  %i.jw = add nuw nsw i64 %.030135.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jw, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bm, !llvm.loop !796

bb.cj:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !732
  %i.jx = load ptr, ptr %18, align 8, !tbaa !13, !noalias !732 ; 6 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZN5arrow6StatusD2Ev.exit98.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jz = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc89.i unwind label %.body90.thread.i ; 7 uses

.noexc89.i:                                       ; preds = %bb.ck
  %i.ka = load i8, ptr %i.jx, align 8, !tbaa !773
  store i8 %i.ka, ptr %i.jz, align 8, !tbaa !773
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 3 uses
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !781
  %i.ke = load ptr, ptr %i.kc, align 8, !tbaa !782 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !732
  store i64 %i.kg, ptr %i.a, align 8, !tbaa !93, !noalias !732
  %i.kh = icmp ugt i64 %i.kg, 15
  br i1 %i.kh, label %.noexc.i.i.i87.i, label %._crit_edge.i.i.i.i83.i

.noexc.i.i.i87.i:                                 ; preds = %.noexc89.i
  %i.ki = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i88.i unwind label %bb.cq ; 2 uses

.noexc.i88.i:                                     ; preds = %.noexc.i.i.i87.i
  store ptr %i.ki, ptr %i.kb, align 8, !tbaa !782
  %i.kj = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !732
  store i64 %i.kj, ptr %i.kd, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i83.i

._crit_edge.i.i.i.i83.i:                          ; preds = %.noexc.i88.i, %.noexc89.i
  %i.kk = phi ptr [ %i.ki, %.noexc.i88.i ], [ %i.kd, %.noexc89.i ] ; 2 uses
  switch i64 %i.kg, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i83.i
  %i.kl = load i8, ptr %i.ke, align 1, !tbaa !46
  store i8 %i.kl, ptr %i.kk, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i83.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.ke, i64 %i.kg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i: ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i.i83.i
  %i.km = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !732 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !783
  %i.ko = load ptr, ptr %i.kb, align 8, !tbaa !782
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.km
  store i8 0, ptr %i.kp, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !732
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !32 ; 2 uses
  %i.ku = load <2 x ptr>, ptr %i.kr, align 8, !tbaa !22
  store <2 x ptr> %i.ku, ptr %i.kq, align 8, !tbaa !22
  %.not.i.i.i.i.i85.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i85.i, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 3 uses
  %i.kw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !732
  %.not.i.i.i.i.i.i86.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i.i.i.i86.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kx = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.kv, align 4, !tbaa !3
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %i.kz = atomicrmw volatile add ptr %i.kv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cr

bb.cq:                                            ; preds = %.noexc.i.i.i87.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef 56) #28
  br label %.body90.i

bb.cr:                                            ; preds = %bb.cp, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  store ptr %i.jz, ptr %19, align 8, !tbaa !13, !noalias !732
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  unreachable

bb.ct:                                            ; preds = %._crit_edge.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit112.i

.body90.thread.i:                                 ; preds = %bb.ck
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !732
  br label %bb.ea

bb.cu:                                            ; preds = %bb.cr
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %19, align 8, !tbaa !13, !noalias !732
  %.not.i93.i = icmp eq ptr %i.le, null
  br i1 %.not.i93.i, label %.body90.i, label %bb.cv, !prof !18

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %.body90.i

_ZN5arrow6StatusD2Ev.exit98.i:                    ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !732
  %.phi.trans.insert142.i = getelementptr inbounds nuw i8, ptr %11, i64 216
  %.pre143.i = load ptr, ptr %.phi.trans.insert142.i, align 8, !tbaa !32, !noalias !732 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !732
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal128BuilderE, i64 16), ptr %11, align 8, !tbaa !52, !noalias !732
  %.not.i.i.i99.i = icmp eq ptr %.pre143.i, null
  br i1 %.not.i.i.i99.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.pre143.i, i64 8 ; 4 uses
  %i.lg = load atomic i64, ptr %i.lf acquire, align 8 ; 2 uses
  %i.lh = icmp eq i64 %i.lg, 4294967297
  %i.li = trunc i64 %i.lg to i32                  ; 2 uses
  br i1 %i.lh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.lf, align 8, !tbaa !49
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre143.i, i64 12
  store i32 0, ptr %i.lj, align 4, !tbaa !51
  %i.lk = load ptr, ptr %.pre143.i, align 8, !tbaa !52
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %.pre143.i) #25, !inline_history !797
  %i.ln = load ptr, ptr %.pre143.i, align 8, !tbaa !52
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %.pre143.i) #25, !inline_history !797
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.lq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !732
  %.not.i.i.i.i100.i = icmp eq i8 %i.lq, 0
  br i1 %.not.i.i.i.i100.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lr = add nsw i32 %i.li, -1
  store i32 %i.lr, ptr %i.lf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.ls = atomicrmw volatile add ptr %i.lf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i.i.i = phi i32 [ %i.li, %bb.cz ], [ %i.ls, %bb.da ]
  %i.lt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.lt, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !55

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre143.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cx, %_ZN5arrow6StatusD2Ev.exit98.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %11, align 8, !tbaa !52, !noalias !732
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !32, !noalias !732 ; 8 uses
  %.not.i.i.i.i.i101.i = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i.i.i101.i, label %_ZN5arrow17Decimal128BuilderD2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 4 uses
  %i.lx = load atomic i64, ptr %i.lw acquire, align 8 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 4294967297
  %i.lz = trunc i64 %i.lx to i32                  ; 2 uses
  br i1 %i.ly, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.lw, align 8, !tbaa !49
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  store i32 0, ptr %i.ma, align 4, !tbaa !51
  %i.mb = load ptr, ptr %i.lv, align 8, !tbaa !52
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #25, !inline_history !798
end_hunk_0
begin_hunk_1_@_ZN5arrow6random20RandomArrayGenerator10Decimal256ESt10shared_ptrINS_8DataTypeEEldlPNS_10MemoryPoolE:bb.a
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

bb.ad:                                            ; preds = %bb.ab
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i66.i = phi i32 [ %i.bw, %bb.ac ], [ %i.cg, %bb.ad ]
  %i.ch = icmp eq i32 %.0.i.i.i.i66.i, 1
  br i1 %i.ch, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i, !prof !55

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i, %bb.aa, %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ci = sub nsw i32 %.0114122.i, %.sroa.speculated.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not147.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not147.i, label %bb.n, label %bb.o, !llvm.loop !823

bb.af:                                            ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.ag:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !802
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !755, !noalias !824 ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !52, !noalias !824
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !827
  %i.cp = invoke noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %.noexc.i unwind label %bb.as, !inline_history !772

.noexc.i:                                         ; preds = %bb.ag
  %i.cq = add nsw i64 %i.cp, %3                   ; 2 uses
  %.not.i.i = icmp sgt i64 %i.cq, %i.cl
  br i1 %.not.i.i, label %bb.ah, label %_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i

_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i:  ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !802
  br label %_ZN5arrow6StatusD2Ev.exit76.i

bb.ah:                                            ; preds = %.noexc.i
  %i.cr = shl nsw i64 %i.cl, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.cq, i64 %i.cr)
  %i.cs = load ptr, ptr %11, align 8, !tbaa !52, !noalias !824
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !827
  invoke void %i.cu(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %11, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i unwind label %bb.as, !inline_history !772

_ZN5arrow12ArrayBuilder7ReserveEl.exit.i:         ; preds = %bb.ah
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !13, !noalias !802 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !802
  %i.cv = icmp eq ptr %.pr.i, null
  br i1 %i.cv, label %_ZN5arrow6StatusD2Ev.exit76.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i
  %i.cw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc71.i unwind label %bb.at ; 7 uses

.noexc71.i:                                       ; preds = %bb.ai
  %i.cx = load i8, ptr %.pr.i, align 8, !tbaa !773
  store i8 %i.cx, ptr %i.cw, align 8, !tbaa !773
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 3 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !781
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !782 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !802
  store i64 %i.dd, ptr %i.b, align 8, !tbaa !93, !noalias !802
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc71.i
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.ao ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !782
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !802
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %.noexc71.i
  %i.dh = phi ptr [ %i.df, %.noexc.i.i ], [ %i.da, %.noexc71.i ] ; 2 uses
  switch i64 %i.dd, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.di = load i8, ptr %i.db, align 1, !tbaa !46
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i.i
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !802 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !783
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !782
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !802
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %.pr.i, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %.pr.i, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !32 ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.do, align 8, !tbaa !22
  store <2 x ptr> %i.dr, ptr %i.dn, align 8, !tbaa !22
  %.not.i.i.i.i.i69.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i69.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !802
  %.not.i.i.i.i.i.i70.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i70.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !3
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.dw = atomicrmw volatile add ptr %i.ds, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 56) #28
  br label %.body.i

bb.ap:                                            ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  store ptr %i.cw, ptr %13, align 8, !tbaa !13, !noalias !802
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #27
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.n
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.as:                                            ; preds = %bb.ah, %bb.ag
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit78.i

bb.at:                                            ; preds = %bb.ai
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.au:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %13, align 8, !tbaa !13, !noalias !802
  %.not.i72.i = icmp eq ptr %i.ec, null
  br i1 %.not.i72.i, label %.body.i, label %bb.av, !prof !18

bb.av:                                            ; preds = %bb.au
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit76.i:                    ; preds = %_ZN5arrow12ArrayBuilder7ReserveEl.exit.i, %_ZN5arrow12ArrayBuilder7ReserveEl.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !802
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25618GetScaleMultiplierEi(i32 noundef 19)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false)
  %i.ee = icmp sgt i64 %3, 0
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 3 uses
  %.pre131.i = load ptr, ptr %7, align 16, !tbaa !784, !noalias !802 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 48
  br label %bb.az

._crit_edge.i:                                    ; preds = %bb.cc, %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !802
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !802
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 %0)
          to label %bb.cd unwind label %bb.cn

.body.i:                                          ; preds = %bb.av, %bb.au, %bb.at, %bb.ao
  %.pn49.i = phi { ptr, i32 } [ %i.dx, %bb.ao ], [ %i.ea, %bb.at ], [ %i.eb, %bb.au ], [ %i.eb, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !802
  %i.ep = load ptr, ptr %12, align 8, !tbaa !13, !noalias !802
  %.not.i77.i = icmp eq ptr %i.ep, null
  br i1 %.not.i77.i, label %_ZN5arrow6StatusD2Ev.exit78.i, label %bb.ax, !prof !18

bb.ax:                                            ; preds = %.body.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN5arrow6StatusD2Ev.exit78.i

_ZN5arrow6StatusD2Ev.exit78.i:                    ; preds = %bb.ax, %.body.i, %bb.as
  %.pn49.pn.i = phi { ptr, i32 } [ %i.dz, %bb.as ], [ %.pn49.i, %.body.i ], [ %.pn49.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !802
  br label %bb.dk

bb.ay:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.az:                                            ; preds = %bb.cc, %.lr.ph.i
  %23 = phi ptr [ %.pre131.i, %.lr.ph.i ], [ %28, %bb.cc ] ; 8 uses
  %24 = phi ptr [ %.pre131.i, %.lr.ph.i ], [ %29, %bb.cc ] ; 6 uses
  %.028125.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hz, %bb.cc ] ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !141 ; 2 uses
  %.not.i79.i = icmp eq ptr %i.es, null
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i79.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !148
  %i.ex = add nsw i64 %i.ew, %.028125.i           ; 2 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46
  %i.fb = trunc i64 %i.ex to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = lshr i8 %i.fa, %i.fc
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.bg, label %bb.cb

bb.bb:                                            ; preds = %bb.az
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !651
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !787
  switch i32 %i.fh, label %bb.bf [
    i32 27, label %bb.bc
    i32 28, label %bb.bd
    i32 38, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fi = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.eu, i64 noundef %.028125.i)
          to label %_ZNK5arrow5Array7IsValidEl.exit.i unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %i.fj = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.eu, i64 noundef %.028125.i)
          to label %.noexc81.i unwind label %bb.bh

.noexc81.i:                                       ; preds = %bb.bd
  br i1 %i.fj, label %bb.cb, label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.fk = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.eu, i64 noundef %.028125.i)
          to label %.noexc82.i unwind label %bb.bh

.noexc82.i:                                       ; preds = %bb.be
  br i1 %i.fk, label %bb.cb, label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fm = load atomic i64, ptr %i.fl seq_cst, align 8
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !138
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !788
  %.not.i = icmp eq i64 %i.fm, %i.fp
  %.pre.i = load ptr, ptr %7, align 16, !tbaa !784, !noalias !802 ; 3 uses
  br i1 %.not.i, label %bb.cb, label %bb.bg

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.bc
  br i1 %i.fi, label %bb.cb, label %bb.bg

bb.bg:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.bf, %.noexc82.i, %.noexc81.i, %bb.ba
  %25 = phi ptr [ %23, %.noexc81.i ], [ %23, %.noexc82.i ], [ %.pre.i, %bb.bf ], [ %23, %bb.ba ], [ %23, %_ZNK5arrow5Array7IsValidEl.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !802
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false), !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !802
  invoke void @_ZN5arrowmlERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bi unwind label %bb.bq

bb.bh:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !802
  %i.fr = load ptr, ptr %9, align 8, !tbaa !789, !noalias !802
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !429
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.028125.i
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !alias.scope !828, !noalias !802
  store i64 %i.fv, ptr %18, align 8, !tbaa !93, !alias.scope !828, !noalias !802
  invoke void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bj unwind label %bb.br

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !802
  invoke void @_ZN5arrowmlERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bk unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !802
  %i.fw = load ptr, ptr %i.em, align 8, !tbaa !789, !noalias !802
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !429
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.028125.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !alias.scope !828, !noalias !802
  store i64 %i.ga, ptr %18, align 8, !tbaa !93, !alias.scope !828, !noalias !802
  invoke void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !802
  invoke void @_ZN5arrowmlERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !802
  %i.gb = load ptr, ptr %i.en, align 8, !tbaa !789, !noalias !802
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !429
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.028125.i
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !alias.scope !828, !noalias !802
  store i64 %i.gf, ptr %18, align 8, !tbaa !93, !alias.scope !828, !noalias !802
  invoke void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !802
  invoke void @_ZN5arrowmlERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !802
  %i.gg = load ptr, ptr %i.eo, align 8, !tbaa !789, !noalias !802
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !429
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.028125.i
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !alias.scope !828, !noalias !802
  store i64 %i.gk, ptr %18, align 8, !tbaa !93, !alias.scope !828, !noalias !802
  invoke void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !802
  %i.gl = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !145
  %i.gn = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !138
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !148
  %i.gr = add nsw i64 %i.gq, %.028125.i           ; 2 uses
  %i.gs = lshr i64 %i.gr, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !46
  %i.gv = trunc i64 %i.gr to i8
  %i.gw = and i8 %i.gv, 7
  %i.gx = lshr i8 %i.gu, %i.gw
  %i.gy = trunc i8 %i.gx to i1
  br i1 %i.gy, label %bb.bt, label %bb.bx

bb.bq:                                            ; preds = %bb.bn, %bb.bl, %bb.bj, %bb.bg
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo, %bb.bm, %bb.bk, %bb.bi
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !802
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn44.i = phi { ptr, i32 } [ %i.ha, %bb.br ], [ %i.gz, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !802
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !802
  %i.hb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i64 32, i1 false)
  invoke void @_ZN5arrow17Decimal256Builder12UnsafeAppendERKNS_10Decimal256E(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !802
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !802
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bp
  invoke void @_ZN5arrow17Decimal256Builder12UnsafeAppendERKNS_10Decimal256E(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !802
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by, %bb.bw, %bb.bs
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn44.i, %bb.bs ], [ %i.hc, %bb.bw ], [ %i.hd, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !802
  br label %bb.dj

bb.cb:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.bf, %.noexc82.i, %.noexc81.i, %bb.ba
  %26 = phi ptr [ %23, %.noexc81.i ], [ %23, %.noexc82.i ], [ %.pre.i, %bb.bf ], [ %23, %bb.ba ], [ %23, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %27 = phi ptr [ %24, %.noexc81.i ], [ %24, %.noexc82.i ], [ %.pre.i, %bb.bf ], [ %24, %bb.ba ], [ %24, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %i.he = load ptr, ptr %i.eg, align 8, !tbaa !791, !noalias !802
  %i.hf = load i64, ptr %i.eh, align 8, !tbaa !792, !noalias !802 ; 2 uses
  %i.hg = sdiv i64 %i.hf, 8
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !46
  %i.hj = srem i64 %i.hf, 8
  %i.hk = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !46, !noalias !802
  %i.hm = xor i8 %i.hl, -1
  %i.hn = and i8 %i.hi, %i.hm
  store i8 %i.hn, ptr %i.hh, align 1, !tbaa !46
  %i.ho = load <2 x i64>, ptr %i.eh, align 8, !tbaa !93, !noalias !802
  %i.hp = add nsw <2 x i64> %i.ho, splat (i64 1)
  store <2 x i64> %i.hp, ptr %i.eh, align 8, !tbaa !93, !noalias !802
  %i.hq = load <2 x i64>, ptr %i.ei, align 8, !tbaa !93, !noalias !802
  %i.hr = add nsw <2 x i64> %i.hq, splat (i64 1)
  store <2 x i64> %i.hr, ptr %i.ei, align 8, !tbaa !93, !noalias !802
  %i.hs = load i32, ptr %i.ej, align 8, !tbaa !793, !noalias !802
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = load ptr, ptr %i.ek, align 8, !tbaa !791, !noalias !802
  %i.hv = load i64, ptr %i.el, align 8, !tbaa !795, !noalias !802
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv
  call void @llvm.memset.p0.i64(ptr align 1 %i.hw, i8 0, i64 %i.ht, i1 false)
  %i.hx = load i64, ptr %i.el, align 8, !tbaa !795, !noalias !802
  %i.hy = add nsw i64 %i.hx, %i.ht
  store i64 %i.hy, ptr %i.el, align 8, !tbaa !795, !noalias !802
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %28 = phi ptr [ %26, %bb.cb ], [ %25, %bb.bz ]
  %29 = phi ptr [ %27, %bb.cb ], [ %25, %bb.bz ]
  %i.hz = add nuw nsw i64 %.028125.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hz, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.az, !llvm.loop !831

bb.cd:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !802
  %i.ia = load ptr, ptr %20, align 8, !tbaa !13, !noalias !802 ; 6 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN5arrow6StatusD2Ev.exit98.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ic = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc89.i unwind label %.body90.thread.i ; 7 uses

.noexc89.i:                                       ; preds = %bb.ce
  %i.id = load i8, ptr %i.ia, align 8, !tbaa !773
  store i8 %i.id, ptr %i.ic, align 8, !tbaa !773
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 3 uses
  store ptr %i.ig, ptr %i.ie, align 8, !tbaa !781
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !782 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !802
  store i64 %i.ij, ptr %i.a, align 8, !tbaa !93, !noalias !802
  %i.ik = icmp ugt i64 %i.ij, 15
  br i1 %i.ik, label %.noexc.i.i.i87.i, label %._crit_edge.i.i.i.i83.i

.noexc.i.i.i87.i:                                 ; preds = %.noexc89.i
  %i.il = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i88.i unwind label %bb.ck ; 2 uses

.noexc.i88.i:                                     ; preds = %.noexc.i.i.i87.i
  store ptr %i.il, ptr %i.ie, align 8, !tbaa !782
  %i.im = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !802
  store i64 %i.im, ptr %i.ig, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i83.i

._crit_edge.i.i.i.i83.i:                          ; preds = %.noexc.i88.i, %.noexc89.i
  %i.in = phi ptr [ %i.il, %.noexc.i88.i ], [ %i.ig, %.noexc89.i ] ; 2 uses
  switch i64 %i.ij, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i83.i
  %i.io = load i8, ptr %i.ih, align 1, !tbaa !46
  store i8 %i.io, ptr %i.in, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i83.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr align 1 %i.ih, i64 %i.ij, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i: ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i.i83.i
  %i.ip = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !802 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !783
  %i.ir = load ptr, ptr %i.ie, align 8, !tbaa !782
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ip
  store i8 0, ptr %i.is, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !802
  %i.it = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !32 ; 2 uses
  %i.ix = load <2 x ptr>, ptr %i.iu, align 8, !tbaa !22
  store <2 x ptr> %i.ix, ptr %i.it, align 8, !tbaa !22
  %.not.i.i.i.i.i85.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i85.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !802
  %.not.i.i.i.i.i.i86.i = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i86.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iy, align 4, !tbaa !3
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.jc = atomicrmw volatile add ptr %i.iy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc.i.i.i87.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 56) #28
  br label %.body90.i

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i84.i
  store ptr %i.ic, ptr %21, align 8, !tbaa !13, !noalias !802
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #27
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %._crit_edge.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit108.i

.body90.thread.i:                                 ; preds = %bb.ce
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !802
  br label %bb.di

bb.co:                                            ; preds = %bb.cl
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %21, align 8, !tbaa !13, !noalias !802
  %.not.i93.i = icmp eq ptr %i.jh, null
  br i1 %.not.i93.i, label %.body90.i, label %bb.cp, !prof !18

bb.cp:                                            ; preds = %bb.co
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %.body90.i

_ZN5arrow6StatusD2Ev.exit98.i:                    ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !802
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 216
  %.pre132.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !32, !noalias !802 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !802
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal256BuilderE, i64 16), ptr %11, align 8, !tbaa !52, !noalias !802
  %.not.i.i.i99.i = icmp eq ptr %.pre132.i, null
  br i1 %.not.i.i.i99.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre132.i, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.ji, align 8, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre132.i, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !51
  %i.jn = load ptr, ptr %.pre132.i, align 8, !tbaa !52
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %.pre132.i) #25, !inline_history !832
  %i.jq = load ptr, ptr %.pre132.i, align 8, !tbaa !52
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %.pre132.i) #25, !inline_history !832
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !802
  %.not.i.i.i.i100.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i100.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i = phi i32 [ %i.jl, %bb.ct ], [ %i.jv, %bb.cu ]
  %i.jw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jw, label %bb.cv, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !55

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre132.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cr, %_ZN5arrow6StatusD2Ev.exit98.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %11, align 8, !tbaa !52, !noalias !802
  %i.jx = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !32, !noalias !802 ; 8 uses
  %.not.i.i.i.i.i101.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i101.i, label %_ZN5arrow17Decimal256BuilderD2Ev.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.jz, align 8, !tbaa !49
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !51
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !52
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #25, !inline_history !833
end_hunk_1
begin_hunk_2_@_ZN5arrow6random20RandomArrayGenerator6StringEliidlPNS_10MemoryPoolE:bb.a
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit55.i:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !836
  br label %bb.o

.body.i:                                          ; preds = %bb.m, %bb.l, %bb.i
  %.pn49.ph.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.aj, %bb.i ] ; 2 uses
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !13, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !836
  %.not.i56.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i56.i, label %_ZN5arrow6StatusD2Ev.exit57.i, label %bb.n, !prof !56

bb.n:                                             ; preds = %.body.i, %.body.thread.i
  %.pn4912.i = phi { ptr, i32 } [ %i.ak, %.body.thread.i ], [ %.pn49.ph.i, %.body.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit57.i

_ZN5arrow6StatusD2Ev.exit57.i:                    ; preds = %bb.n, %.body.i
  %.pn4913.i = phi { ptr, i32 } [ %.pn49.ph.i, %.body.i ], [ %.pn4912.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !836
  br label %bb.da

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit55.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !836
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !836
  call void @_ZN5arrow6random20RandomArrayGenerator5Int32EliidlPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, i64 noundef %6, ptr noundef %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.an = load ptr, ptr %12, align 8, !tbaa !87, !noalias !842 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = call ptr @__dynamic_cast(ptr nonnull %i.an, ptr nonnull @_ZTIN5arrow5ArrayE, ptr nonnull @_ZTIN5arrow12NumericArrayINS_9Int32TypeEEE, i64 0) #25, !noalias !839 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.not.i.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ap, ptr %11, align 8, !tbaa !686, !alias.scope !839, !noalias !836
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32, !noalias !842 ; 5 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !32, !alias.scope !839, !noalias !836
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !842
  %.not.i.i.i.i.i58.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !839
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3, !noalias !839
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

bb.t:                                             ; preds = %bb.r
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4, !noalias !839 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !839, !noalias !836
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !32, !noalias !836 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i: ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.t, %bb.s
  %i.ay = phi ptr [ %.pre.i, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i ], [ %i.as, %bb.s ], [ %i.as, %bb.t ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  store i32 0, ptr %i.az, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !51
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !843
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !843
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.v:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !836
  %.not.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %bb.w ], [ %i.bm, %bb.x ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !836
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i unwind label %bb.ac

_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bq = sext i32 %4 to i64                      ; 3 uses
  %i.br = icmp slt i32 %4, 0
  br i1 %i.br, label %bb.z, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.z:                                             ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc61.i unwind label %bb.ad

.noexc61.i:                                       ; preds = %bb.z
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  %.not.i.i.i.i60.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #26
          to label %.noexc62.i unwind label %bb.ad ; 5 uses

.noexc62.i:                                       ; preds = %bb.aa
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  store i8 0, ptr %i.bs, align 1, !tbaa !46
  %i.bu = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc62.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i:             ; preds = %bb.ab, %.noexc62.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.01.0.i = phi ptr [ %i.bs, %bb.ab ], [ %i.bs, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 9 uses
  %.sroa.11.0.i = phi ptr [ %i.bt, %bb.ab ], [ %i.bt, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !836
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %7, ptr %i.bx, align 8, !tbaa !844, !noalias !836
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %6, ptr %i.by, align 8, !tbaa !845, !noalias !836
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i8 0, i64 16, i1 false), !noalias !836
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %7, ptr %i.ca, align 8, !tbaa !846, !noalias !836
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cb, align 8, !tbaa !791, !noalias !836
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !noalias !836
  store i64 %6, ptr %i.cd, align 8, !tbaa !847, !noalias !836
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i8 0, i64 80, i1 false), !noalias !836
  store ptr %7, ptr %i.cf, align 8, !tbaa !846, !noalias !836
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 168 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cg, align 8, !tbaa !791, !noalias !836
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false), !noalias !836
  store i64 %6, ptr %i.ci, align 8, !tbaa !847, !noalias !836
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 16, i1 false), !noalias !836
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 216
  store ptr %7, ptr %i.ck, align 8, !tbaa !846, !noalias !836
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 224
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cl, align 8, !tbaa !791, !noalias !836
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false), !noalias !836
  store i64 %6, ptr %i.cn, align 8, !tbaa !847, !noalias !836
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %13, align 8, !tbaa !52, !noalias !836
  %i.co = icmp sgt i64 %2, 0
  br i1 %i.co, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %.pre39.i = load ptr, ptr %11, align 8, !tbaa !686, !noalias !836 ; 2 uses
  br label %bb.ae

._crit_edge.i:                                    ; preds = %bb.bq, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !836
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !836
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 %0)
          to label %bb.br unwind label %bb.cb

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit132.i

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit132.i

bb.ae:                                            ; preds = %bb.bq, %.lr.ph.i
  %20 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %24, %bb.bq ] ; 8 uses
  %21 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %25, %bb.bq ] ; 6 uses
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.iz, %bb.bq ] ; 7 uses
  %.sroa.77.033.i = phi i32 [ %i.bp, %.lr.ph.i ], [ %.sroa.77.1.i, %bb.bq ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !141 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.cw, null
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i63.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !148
  %i.db = add nsw i64 %i.da, %.034.i              ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !46
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.al, label %bb.bb

bb.ag:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !651
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !787
  switch i32 %i.dl, label %bb.ak [
    i32 27, label %bb.ah
    i32 28, label %bb.ai
    i32 38, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dm = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %_ZNK5arrow5Array7IsValidEl.exit.i unwind label %bb.aw

bb.ai:                                            ; preds = %bb.ag
  %i.dn = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %.noexc65.i unwind label %bb.aw

.noexc65.i:                                       ; preds = %bb.ai
  br i1 %i.dn, label %bb.bb, label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.do = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %.noexc66.i unwind label %bb.aw

.noexc66.i:                                       ; preds = %bb.aj
  br i1 %i.do, label %bb.bb, label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dq = load atomic i64, ptr %i.dp seq_cst, align 8
  %i.dr = load ptr, ptr %i.cx, align 8, !tbaa !138
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !788
  %.not.i = icmp eq i64 %i.dq, %i.dt
  %.pre38.i = load ptr, ptr %11, align 8, !tbaa !686, !noalias !836 ; 3 uses
  br i1 %.not.i, label %bb.bb, label %bb.al

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.ah
  br i1 %i.dm, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ak, %.noexc66.i, %.noexc65.i, %bb.af
  %i.du = phi ptr [ %20, %.noexc65.i ], [ %20, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %20, %bb.af ], [ %20, %_ZNK5arrow5Array7IsValidEl.exit.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !382
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.034.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add nsw i32 %.sroa.77.033.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.dz
  %.not7.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.al
  %i.ec = or i32 %.sroa.77.033.i, 3
  %i.ed = sext i32 %i.ec to i64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ %.sroa.03.1.i.i.i.i, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.08.i.i.i.i.i = phi ptr [ %i.fb, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.i, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.ee = mul i64 %.sroa.03.0.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.ef = lshr i64 %.sroa.03.0.i.i.i.i, 61
  %i.eg = lshr i64 %.sroa.03.0.i.i.i.i, 22
  %i.eh = xor i64 %i.eg, %.sroa.03.0.i.i.i.i
  %i.ei = add nuw nsw i64 %i.ef, 22
  %i.ej = lshr i64 %i.eh, %i.ei
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = mul nuw nsw i64 %i.ek, 58               ; 2 uses
  %i.em = and i64 %i.el, 4294967280
  %or.cond30.i = icmp eq i64 %i.em, 0
  br i1 %or.cond30.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.eo = mul i64 %i.en, 6364136223846793005      ; 2 uses
  %i.ep = lshr i64 %i.en, 61
  %i.eq = lshr i64 %i.en, 22
  %i.er = xor i64 %i.eq, %i.en
  %i.es = add nuw nsw i64 %i.ep, 22
  %i.et = lshr i64 %i.er, %i.es
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = mul nuw nsw i64 %i.eu, 58               ; 2 uses
  %i.ew = and i64 %i.ev, 4294967280
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, !llvm.loop !132

_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ey = lshr i64 %.1.i.i.i.i.i.i.i.i.i, 32
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  %i.fa = add nuw nsw i8 %i.ez, 65
  store i8 %i.fa, ptr %.08.i.i.i.i.i, align 1, !tbaa !46
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i67.i = icmp eq ptr %i.fb, %i.eb
  br i1 %.not.i.i.i.i67.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i: ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i
  %.pre40.i = load ptr, ptr %i.dv, align 8, !tbaa !382
  %.phi.trans.insert41.i = getelementptr inbounds nuw [4 x i8], ptr %.pre40.i, i64 %.034.i
  %.pre42.i = load i32, ptr %.phi.trans.insert41.i, align 4, !tbaa !3
  br label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i: ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, %bb.al
  %i.fc = phi i32 [ %.pre42.i, %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i ], [ 0, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !836
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(256) %13, ptr noundef %.sroa.01.0.i, i32 noundef %i.fc)
          to label %bb.am unwind label %bb.ax

bb.am:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !836
  %i.fd = load ptr, ptr %14, align 8, !tbaa !13, !noalias !836 ; 6 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN5arrow6StatusD2Ev.exit83.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc74.i unwind label %.body75.thread.i ; 7 uses

.noexc74.i:                                       ; preds = %bb.an
  %i.fg = load i8, ptr %i.fd, align 8, !tbaa !773
  store i8 %i.fg, ptr %i.ff, align 8, !tbaa !773
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 3 uses
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !781
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !782 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !836
  store i64 %i.fm, ptr %i.c, align 8, !tbaa !93, !noalias !836
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i.i.i72.i, label %._crit_edge.i.i.i.i68.i

.noexc.i.i.i72.i:                                 ; preds = %.noexc74.i
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i73.i unwind label %bb.at ; 2 uses

.noexc.i73.i:                                     ; preds = %.noexc.i.i.i72.i
  store ptr %i.fo, ptr %i.fh, align 8, !tbaa !782
  %i.fp = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !836
  store i64 %i.fp, ptr %i.fj, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i68.i

._crit_edge.i.i.i.i68.i:                          ; preds = %.noexc.i73.i, %.noexc74.i
  %i.fq = phi ptr [ %i.fo, %.noexc.i73.i ], [ %i.fj, %.noexc74.i ] ; 2 uses
  switch i64 %i.fm, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i68.i
  %i.fr = load i8, ptr %i.fk, align 1, !tbaa !46
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i68.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i.i68.i
  %i.fs = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !836 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !783
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !782
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !836
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !32 ; 2 uses
  %i.ga = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !22
  store <2 x ptr> %i.ga, ptr %i.fw, align 8, !tbaa !22
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i70.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !836
  %.not.i.i.i.i.i.i71.i = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i71.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !3
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.gf = atomicrmw volatile add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %.noexc.i.i.i72.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 56) #28
  br label %.body75.i

bb.au:                                            ; preds = %bb.as, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  store ptr %i.ff, ptr %15, align 8, !tbaa !13, !noalias !836
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #27
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ax:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit85.i

.body75.thread.i:                                 ; preds = %bb.an
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !836
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %15, align 8, !tbaa !13, !noalias !836
  %.not.i78.i = icmp eq ptr %i.gl, null
  br i1 %.not.i78.i, label %.body75.i, label %bb.az, !prof !18

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %.body75.i

_ZN5arrow6StatusD2Ev.exit83.i:                    ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !836
  br label %bb.bq

.body75.i:                                        ; preds = %bb.az, %bb.ay, %bb.at
  %.pn41.ph.i = phi { ptr, i32 } [ %i.gk, %bb.az ], [ %i.gk, %bb.ay ], [ %i.gg, %bb.at ] ; 2 uses
  %.pr16.i = load ptr, ptr %14, align 8, !tbaa !13, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !836
  %.not.i84.i = icmp eq ptr %.pr16.i, null
  br i1 %.not.i84.i, label %_ZN5arrow6StatusD2Ev.exit85.i, label %bb.ba, !prof !56

bb.ba:                                            ; preds = %.body75.i, %.body75.thread.i
  %.pn4119.i = phi { ptr, i32 } [ %i.gj, %.body75.thread.i ], [ %.pn41.ph.i, %.body75.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZN5arrow6StatusD2Ev.exit85.i

_ZN5arrow6StatusD2Ev.exit85.i:                    ; preds = %bb.ba, %.body75.i, %bb.ax
  %.pn41.pn.i = phi { ptr, i32 } [ %i.gi, %bb.ax ], [ %.pn41.ph.i, %.body75.i ], [ %.pn4119.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !836
  br label %bb.cy

bb.bb:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ak, %.noexc66.i, %.noexc65.i, %bb.af
  %22 = phi ptr [ %20, %.noexc65.i ], [ %20, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %20, %bb.af ], [ %20, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %23 = phi ptr [ %21, %.noexc65.i ], [ %21, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %21, %bb.af ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !836
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !851
  %i.gm = load i64, ptr %i.cp, align 8, !tbaa !755, !noalias !852 ; 2 uses
  %i.gn = load ptr, ptr %13, align 8, !tbaa !52, !noalias !852
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !855
  %i.gq = invoke noundef i64 %i.gp(ptr noundef nonnull align 8 dereferenceable(256) %13)
          to label %.noexc86.i unwind label %bb.bl, !inline_history !856 ; 2 uses

.noexc86.i:                                       ; preds = %bb.bb
  %.not.i.not.i.i = icmp slt i64 %i.gq, %i.gm
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit5.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit5.thread.i.i:            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !851
  br label %_ZN5arrow6StatusD2Ev.exit103.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc86.i
  %i.gr = add nsw i64 %i.gq, 1
  %i.gs = shl nsw i64 %i.gm, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gr, i64 %i.gs)
  %i.gt = load ptr, ptr %13, align 8, !tbaa !52, !noalias !852
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !855
  invoke void %i.gv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(256) %13, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc87.i unwind label %bb.bl, !inline_history !856

.noexc87.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !13, !noalias !857 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  store ptr %.pr.i.i, ptr %16, align 8, !tbaa !13, !alias.scope !861, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !851
  %i.gw = icmp eq ptr %.pr.i.i, null
  br i1 %i.gw, label %_ZN5arrow6StatusD2Ev.exit103.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !836
  %i.gx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc94.i unwind label %bb.bm ; 7 uses

.noexc94.i:                                       ; preds = %bb.bc
  %i.gy = load i8, ptr %.pr.i.i, align 8, !tbaa !773
  store i8 %i.gy, ptr %i.gx, align 8, !tbaa !773
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 3 uses
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !781
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !782 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !836
  store i64 %i.he, ptr %i.b, align 8, !tbaa !93, !noalias !836
  %i.hf = icmp ugt i64 %i.he, 15
  br i1 %i.hf, label %.noexc.i.i.i92.i, label %._crit_edge.i.i.i.i88.i

.noexc.i.i.i92.i:                                 ; preds = %.noexc94.i
  %i.hg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i93.i unwind label %bb.bi ; 2 uses

.noexc.i93.i:                                     ; preds = %.noexc.i.i.i92.i
  store ptr %i.hg, ptr %i.gz, align 8, !tbaa !782
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !836
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i88.i

._crit_edge.i.i.i.i88.i:                          ; preds = %.noexc.i93.i, %.noexc94.i
  %i.hi = phi ptr [ %i.hg, %.noexc.i93.i ], [ %i.hb, %.noexc94.i ] ; 2 uses
  switch i64 %i.he, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i88.i
  %i.hj = load i8, ptr %i.hc, align 1, !tbaa !46
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

bb.be:                                            ; preds = %._crit_edge.i.i.i.i88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.hc, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i.i88.i
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !836 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !783
  %i.hm = load ptr, ptr %i.gz, align 8, !tbaa !782
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store i8 0, ptr %i.hn, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !836
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !32 ; 2 uses
  %i.hs = load <2 x ptr>, ptr %i.hp, align 8, !tbaa !22
  store <2 x ptr> %i.hs, ptr %i.ho, align 8, !tbaa !22
  %.not.i.i.i.i.i90.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i90.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !836
  %.not.i.i.i.i.i.i91.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i91.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !3
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.hx = atomicrmw volatile add ptr %i.ht, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc.i.i.i92.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 56) #28
  br label %.body95.i

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  store ptr %i.gx, ptr %17, align 8, !tbaa !13, !noalias !836
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.bb
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit105.i

bb.bm:                                            ; preds = %bb.bc
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i

bb.bn:                                            ; preds = %bb.bj
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %17, align 8, !tbaa !13, !noalias !836
  %.not.i98.i = icmp eq ptr %i.ic, null
  br i1 %.not.i98.i, label %.body95.i, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %.body95.i

_ZN5arrow6StatusD2Ev.exit103.i:                   ; preds = %.noexc87.i, %_ZN5arrow6StatusD2Ev.exit5.thread.i.i
  %i.id = load i64, ptr %i.cq, align 8, !tbaa !795, !noalias !851
  %i.ie = trunc i64 %i.id to i32
  %i.if = load ptr, ptr %i.cg, align 8, !tbaa !791, !noalias !851
  %i.ig = load i64, ptr %i.cr, align 8, !tbaa !795, !noalias !851
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  store i32 %i.ie, ptr %i.ih, align 1, !noalias !848
  %i.ii = load i64, ptr %i.cr, align 8, !tbaa !795, !noalias !851
  %i.ij = add nsw i64 %i.ii, 4
  store i64 %i.ij, ptr %i.cr, align 8, !tbaa !795, !noalias !851
  %i.ik = load ptr, ptr %i.cb, align 8, !tbaa !791, !noalias !851
  %i.il = load i64, ptr %i.ce, align 8, !tbaa !792, !noalias !851 ; 2 uses
  %i.im = sdiv i64 %i.il, 8
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 %i.im ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !46, !noalias !848
  %i.ip = srem i64 %i.il, 8
  %i.iq = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !46, !noalias !851
  %i.is = xor i8 %i.ir, -1
  %i.it = and i8 %i.io, %i.is
  store i8 %i.it, ptr %i.in, align 1, !tbaa !46, !noalias !848
  %i.iu = load <2 x i64>, ptr %i.ce, align 8, !tbaa !93, !noalias !851
  %i.iv = add nsw <2 x i64> %i.iu, splat (i64 1)
  store <2 x i64> %i.iv, ptr %i.ce, align 8, !tbaa !93, !noalias !851
  %i.iw = load <2 x i64>, ptr %i.cs, align 8, !tbaa !93, !noalias !851
  %i.ix = add nsw <2 x i64> %i.iw, splat (i64 1)
  store <2 x i64> %i.ix, ptr %i.cs, align 8, !tbaa !93, !noalias !851
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !836
  br label %bb.bq

.body95.i:                                        ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bi
  %.pn38.i = phi { ptr, i32 } [ %i.hy, %bb.bi ], [ %i.ia, %bb.bm ], [ %i.ib, %bb.bn ], [ %i.ib, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !836
  %i.iy = load ptr, ptr %16, align 8, !tbaa !13, !noalias !836
  %.not.i104.i = icmp eq ptr %i.iy, null
  br i1 %.not.i104.i, label %_ZN5arrow6StatusD2Ev.exit105.i, label %bb.bp, !prof !18

bb.bp:                                            ; preds = %.body95.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN5arrow6StatusD2Ev.exit105.i

_ZN5arrow6StatusD2Ev.exit105.i:                   ; preds = %bb.bp, %.body95.i, %bb.bl
  %.pn38.pn.i = phi { ptr, i32 } [ %i.hz, %bb.bl ], [ %.pn38.i, %.body95.i ], [ %.pn38.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !836
  br label %bb.cy

bb.bq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit103.i, %_ZN5arrow6StatusD2Ev.exit83.i
  %24 = phi ptr [ %i.du, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %22, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %25 = phi ptr [ %i.du, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %23, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %.sroa.77.1.i = phi i32 [ %i.ea, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %.sroa.77.033.i, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %i.iz = add nuw nsw i64 %.034.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iz, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !862

bb.br:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !836
  %i.ja = load ptr, ptr %18, align 8, !tbaa !13, !noalias !836 ; 6 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZN5arrow6StatusD2Ev.exit121.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc112.i unwind label %.body113.thread.i ; 7 uses

.noexc112.i:                                      ; preds = %bb.bs
  %i.jd = load i8, ptr %i.ja, align 8, !tbaa !773
  store i8 %i.jd, ptr %i.jc, align 8, !tbaa !773
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 24 ; 3 uses
  store ptr %i.jg, ptr %i.je, align 8, !tbaa !781
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !782 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !836
  store i64 %i.jj, ptr %i.a, align 8, !tbaa !93, !noalias !836
  %i.jk = icmp ugt i64 %i.jj, 15
  br i1 %i.jk, label %.noexc.i.i.i110.i, label %._crit_edge.i.i.i.i106.i

.noexc.i.i.i110.i:                                ; preds = %.noexc112.i
  %i.jl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i111.i unwind label %bb.by ; 2 uses

.noexc.i111.i:                                    ; preds = %.noexc.i.i.i110.i
  store ptr %i.jl, ptr %i.je, align 8, !tbaa !782
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !836
  store i64 %i.jm, ptr %i.jg, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i106.i

._crit_edge.i.i.i.i106.i:                         ; preds = %.noexc.i111.i, %.noexc112.i
  %i.jn = phi ptr [ %i.jl, %.noexc.i111.i ], [ %i.jg, %.noexc112.i ] ; 2 uses
  switch i64 %i.jj, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i106.i
  %i.jo = load i8, ptr %i.jh, align 1, !tbaa !46
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i106.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jh, i64 %i.jj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i: ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i.i106.i
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !836 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !783
  %i.jr = load ptr, ptr %i.je, align 8, !tbaa !782
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jp
  store i8 0, ptr %i.js, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !836
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !32 ; 2 uses
  %i.jx = load <2 x ptr>, ptr %i.ju, align 8, !tbaa !22
  store <2 x ptr> %i.jx, ptr %i.jt, align 8, !tbaa !22
  %.not.i.i.i.i.i108.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i.i108.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !836
  %.not.i.i.i.i.i.i109.i = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i.i.i.i109.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !3
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !3
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.kc = atomicrmw volatile add ptr %i.jy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bz

bb.by:                                            ; preds = %.noexc.i.i.i110.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 56) #28
  br label %.body113.i

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  store ptr %i.jc, ptr %19, align 8, !tbaa !13, !noalias !836
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %._crit_edge.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit130.i

.body113.thread.i:                                ; preds = %bb.bs
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !836
  br label %bb.cx

bb.cc:                                            ; preds = %bb.bz
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %19, align 8, !tbaa !13, !noalias !836
  %.not.i116.i = icmp eq ptr %i.kh, null
  br i1 %.not.i116.i, label %.body113.i, label %bb.cd, !prof !18

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %.body113.i

_ZN5arrow6StatusD2Ev.exit121.i:                   ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !836
  %.phi.trans.insert43.i = getelementptr inbounds nuw i8, ptr %13, i64 208
  %.pre44.i = load ptr, ptr %.phi.trans.insert43.i, align 8, !tbaa !32, !noalias !836 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !836
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_10BinaryTypeEEE, i64 16), ptr %13, align 8, !tbaa !52, !noalias !836
  %.not.i.i.i.i.i122.i = icmp eq ptr %.pre44.i, null
  br i1 %.not.i.i.i.i.i122.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit121.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre44.i, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.ki, align 8, !tbaa !49
  %i.km = getelementptr inbounds nuw i8, ptr %.pre44.i, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !51
  %i.kn = load ptr, ptr %.pre44.i, align 8, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !863
  %i.kq = load ptr, ptr %.pre44.i, align 8, !tbaa !52
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !863
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !836
  %.not.i.i.i.i.i.i123.i = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i.i.i.i123.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.kl, %bb.ch ], [ %i.kv, %bb.ci ]
  %i.kw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.kw, label %bb.cj, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i, !prof !55

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !864
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i:   ; preds = %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cf, %_ZN5arrow6StatusD2Ev.exit121.i
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !32, !noalias !836 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.kz, align 8, !tbaa !49
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !51
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !52
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #25, !inline_history !865
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !52
end_hunk_2
begin_hunk_3_@_ZN5arrow6random20RandomArrayGenerator11LargeStringEliidlPNS_10MemoryPoolE:bb.a

_ZN5arrow6StatusD2Ev.exit55.i:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !867
  br label %bb.o

.body.i:                                          ; preds = %bb.m, %bb.l, %bb.i
  %.pn49.ph.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.aj, %bb.i ] ; 2 uses
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !13, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !867
  %.not.i56.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i56.i, label %_ZN5arrow6StatusD2Ev.exit57.i, label %bb.n, !prof !56

bb.n:                                             ; preds = %.body.i, %.body.thread.i
  %.pn4912.i = phi { ptr, i32 } [ %i.ak, %.body.thread.i ], [ %.pn49.ph.i, %.body.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit57.i

_ZN5arrow6StatusD2Ev.exit57.i:                    ; preds = %bb.n, %.body.i
  %.pn4913.i = phi { ptr, i32 } [ %.pn49.ph.i, %.body.i ], [ %.pn4912.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !867
  br label %bb.da

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit55.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !867
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !867
  %i.an = sext i32 %3 to i64
  %i.ao = sext i32 %4 to i64                      ; 4 uses
  call void @_ZN5arrow6random20RandomArrayGenerator5Int64EllldlPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %i.an, i64 noundef %i.ao, double noundef %5, i64 noundef %6, ptr noundef %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.ap = load ptr, ptr %12, align 8, !tbaa !87, !noalias !873 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = call ptr @__dynamic_cast(ptr nonnull %i.ap, ptr nonnull @_ZTIN5arrow5ArrayE, ptr nonnull @_ZTIN5arrow12NumericArrayINS_9Int64TypeEEE, i64 0) #25, !noalias !870 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.not.i.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ar, ptr %11, align 8, !tbaa !716, !alias.scope !870, !noalias !867
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32, !noalias !873 ; 5 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !32, !alias.scope !870, !noalias !867
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !873
  %.not.i.i.i.i.i58.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !870
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3, !noalias !870
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

bb.t:                                             ; preds = %bb.r
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4, !noalias !870 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !870, !noalias !867
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !32, !noalias !867 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i: ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.t, %bb.s
  %i.ba = phi ptr [ %.pre.i, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i ], [ %i.au, %bb.s ], [ %i.au, %bb.t ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  store i32 0, ptr %i.bb, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !51
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25, !inline_history !874
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25, !inline_history !874
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.v:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !867
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.be, %bb.w ], [ %i.bo, %bb.x ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !867
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i unwind label %bb.ac

_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bs = icmp slt i32 %4, 0
  br i1 %i.bs, label %bb.z, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.z:                                             ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc61.i unwind label %bb.ad

.noexc61.i:                                       ; preds = %bb.z
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  %.not.i.i.i.i60.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc62.i unwind label %bb.ad ; 5 uses

.noexc62.i:                                       ; preds = %bb.aa
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.ao  ; 2 uses
  store i8 0, ptr %i.bt, align 1, !tbaa !46
  %i.bv = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc62.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i:             ; preds = %bb.ab, %.noexc62.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.01.0.i = phi ptr [ %i.bt, %bb.ab ], [ %i.bt, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 9 uses
  %.sroa.11.0.i = phi ptr [ %i.bu, %bb.ab ], [ %i.bu, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !867
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %7, ptr %i.by, align 8, !tbaa !844, !noalias !867
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %6, ptr %i.bz, align 8, !tbaa !845, !noalias !867
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, i8 0, i64 16, i1 false), !noalias !867
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %7, ptr %i.cb, align 8, !tbaa !846, !noalias !867
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cc, align 8, !tbaa !791, !noalias !867
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false), !noalias !867
  store i64 %6, ptr %i.ce, align 8, !tbaa !847, !noalias !867
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, i8 0, i64 80, i1 false), !noalias !867
  store ptr %7, ptr %i.cg, align 8, !tbaa !846, !noalias !867
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 168 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ch, align 8, !tbaa !791, !noalias !867
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !867
  store i64 %6, ptr %i.cj, align 8, !tbaa !847, !noalias !867
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, i8 0, i64 16, i1 false), !noalias !867
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 216
  store ptr %7, ptr %i.cl, align 8, !tbaa !846, !noalias !867
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 224
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cm, align 8, !tbaa !791, !noalias !867
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !noalias !867
  store i64 %6, ptr %i.co, align 8, !tbaa !847, !noalias !867
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %13, align 8, !tbaa !52, !noalias !867
  %i.cp = icmp sgt i64 %2, 0
  br i1 %i.cp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %.pre39.i = load ptr, ptr %11, align 8, !tbaa !716, !noalias !867 ; 2 uses
  br label %bb.ae

._crit_edge.i:                                    ; preds = %bb.bq, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !867
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !867
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 %0)
          to label %bb.br unwind label %bb.cb

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit132.i

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit132.i

bb.ae:                                            ; preds = %bb.bq, %.lr.ph.i
  %20 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %24, %bb.bq ] ; 8 uses
  %21 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %25, %bb.bq ] ; 6 uses
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.iy, %bb.bq ] ; 7 uses
  %.sroa.77.033.i = phi i32 [ %i.br, %.lr.ph.i ], [ %.sroa.77.1.i, %bb.bq ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !141 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.cx, null
  %i.cy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i63.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load i64, ptr %i.da, align 8, !tbaa !148
  %i.dc = add nsw i64 %i.db, %.034.i              ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !46
  %i.dg = trunc i64 %i.dc to i8
  %i.dh = and i8 %i.dg, 7
  %i.di = lshr i8 %i.df, %i.dh
  %i.dj = trunc i8 %i.di to i1
  br i1 %i.dj, label %bb.al, label %bb.bb

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !651
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !787
  switch i32 %i.dm, label %bb.ak [
    i32 27, label %bb.ah
    i32 28, label %bb.ai
    i32 38, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dn = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, i64 noundef %.034.i)
          to label %_ZNK5arrow5Array7IsValidEl.exit.i unwind label %bb.aw

bb.ai:                                            ; preds = %bb.ag
  %i.do = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, i64 noundef %.034.i)
          to label %.noexc65.i unwind label %bb.aw

.noexc65.i:                                       ; preds = %bb.ai
  br i1 %i.do, label %bb.bb, label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.dp = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, i64 noundef %.034.i)
          to label %.noexc66.i unwind label %bb.aw

.noexc66.i:                                       ; preds = %bb.aj
  br i1 %i.dp, label %bb.bb, label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dr = load atomic i64, ptr %i.dq seq_cst, align 8
  %i.ds = load ptr, ptr %i.cy, align 8, !tbaa !138
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !788
  %.not.i = icmp eq i64 %i.dr, %i.du
  %.pre38.i = load ptr, ptr %11, align 8, !tbaa !716, !noalias !867 ; 3 uses
  br i1 %.not.i, label %bb.bb, label %bb.al

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.ah
  br i1 %i.dn, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ak, %.noexc66.i, %.noexc65.i, %bb.af
  %i.dv = phi ptr [ %20, %.noexc65.i ], [ %20, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %20, %bb.af ], [ %20, %_ZNK5arrow5Array7IsValidEl.exit.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !475
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.034.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !93 ; 2 uses
  %i.ea = add nsw i32 %.sroa.77.033.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.dz
  %.not7.i.i.i.i.i = icmp samesign eq i64 %i.dz, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.al
  %i.ec = or i32 %.sroa.77.033.i, 3
  %i.ed = sext i32 %i.ec to i64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ %.sroa.03.1.i.i.i.i, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.08.i.i.i.i.i = phi ptr [ %i.fb, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.i, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.ee = mul i64 %.sroa.03.0.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.ef = lshr i64 %.sroa.03.0.i.i.i.i, 61
  %i.eg = lshr i64 %.sroa.03.0.i.i.i.i, 22
  %i.eh = xor i64 %i.eg, %.sroa.03.0.i.i.i.i
  %i.ei = add nuw nsw i64 %i.ef, 22
  %i.ej = lshr i64 %i.eh, %i.ei
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = mul nuw nsw i64 %i.ek, 58               ; 2 uses
  %i.em = and i64 %i.el, 4294967280
  %or.cond30.i = icmp eq i64 %i.em, 0
  br i1 %or.cond30.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.eo = mul i64 %i.en, 6364136223846793005      ; 2 uses
  %i.ep = lshr i64 %i.en, 61
  %i.eq = lshr i64 %i.en, 22
  %i.er = xor i64 %i.eq, %i.en
  %i.es = add nuw nsw i64 %i.ep, 22
  %i.et = lshr i64 %i.er, %i.es
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = mul nuw nsw i64 %i.eu, 58               ; 2 uses
  %i.ew = and i64 %i.ev, 4294967280
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, !llvm.loop !132

_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ey = lshr i64 %.1.i.i.i.i.i.i.i.i.i, 32
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  %i.fa = add nuw nsw i8 %i.ez, 65
  store i8 %i.fa, ptr %.08.i.i.i.i.i, align 1, !tbaa !46
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i67.i = icmp eq ptr %i.fb, %i.eb
  br i1 %.not.i.i.i.i67.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i: ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i
  %.pre40.i = load ptr, ptr %i.dw, align 8, !tbaa !475
  %.phi.trans.insert41.i = getelementptr inbounds nuw [8 x i8], ptr %.pre40.i, i64 %.034.i
  %.pre42.i = load i64, ptr %.phi.trans.insert41.i, align 8, !tbaa !93
  br label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i: ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, %bb.al
  %i.fc = phi i64 [ %.pre42.i, %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i ], [ 0, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !867
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(256) %13, ptr noundef %.sroa.01.0.i, i64 noundef %i.fc)
          to label %bb.am unwind label %bb.ax

bb.am:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !867
  %i.fd = load ptr, ptr %14, align 8, !tbaa !13, !noalias !867 ; 6 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN5arrow6StatusD2Ev.exit83.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc74.i unwind label %.body75.thread.i ; 7 uses

.noexc74.i:                                       ; preds = %bb.an
  %i.fg = load i8, ptr %i.fd, align 8, !tbaa !773
  store i8 %i.fg, ptr %i.ff, align 8, !tbaa !773
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 3 uses
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !781
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !782 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !867
  store i64 %i.fm, ptr %i.c, align 8, !tbaa !93, !noalias !867
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i.i.i72.i, label %._crit_edge.i.i.i.i68.i

.noexc.i.i.i72.i:                                 ; preds = %.noexc74.i
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i73.i unwind label %bb.at ; 2 uses

.noexc.i73.i:                                     ; preds = %.noexc.i.i.i72.i
  store ptr %i.fo, ptr %i.fh, align 8, !tbaa !782
  %i.fp = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !867
  store i64 %i.fp, ptr %i.fj, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i68.i

._crit_edge.i.i.i.i68.i:                          ; preds = %.noexc.i73.i, %.noexc74.i
  %i.fq = phi ptr [ %i.fo, %.noexc.i73.i ], [ %i.fj, %.noexc74.i ] ; 2 uses
  switch i64 %i.fm, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i68.i
  %i.fr = load i8, ptr %i.fk, align 1, !tbaa !46
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i68.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i.i68.i
  %i.fs = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !867 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !783
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !782
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !867
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !32 ; 2 uses
  %i.ga = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !22
  store <2 x ptr> %i.ga, ptr %i.fw, align 8, !tbaa !22
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i70.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !867
  %.not.i.i.i.i.i.i71.i = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i71.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !3
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.gf = atomicrmw volatile add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %.noexc.i.i.i72.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 56) #28
  br label %.body75.i

bb.au:                                            ; preds = %bb.as, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  store ptr %i.ff, ptr %15, align 8, !tbaa !13, !noalias !867
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #27
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ax:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit85.i

.body75.thread.i:                                 ; preds = %bb.an
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !867
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %15, align 8, !tbaa !13, !noalias !867
  %.not.i78.i = icmp eq ptr %i.gl, null
  br i1 %.not.i78.i, label %.body75.i, label %bb.az, !prof !18

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %.body75.i

_ZN5arrow6StatusD2Ev.exit83.i:                    ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !867
  br label %bb.bq

.body75.i:                                        ; preds = %bb.az, %bb.ay, %bb.at
  %.pn41.ph.i = phi { ptr, i32 } [ %i.gk, %bb.az ], [ %i.gk, %bb.ay ], [ %i.gg, %bb.at ] ; 2 uses
  %.pr16.i = load ptr, ptr %14, align 8, !tbaa !13, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !867
  %.not.i84.i = icmp eq ptr %.pr16.i, null
  br i1 %.not.i84.i, label %_ZN5arrow6StatusD2Ev.exit85.i, label %bb.ba, !prof !56

bb.ba:                                            ; preds = %.body75.i, %.body75.thread.i
  %.pn4119.i = phi { ptr, i32 } [ %i.gj, %.body75.thread.i ], [ %.pn41.ph.i, %.body75.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZN5arrow6StatusD2Ev.exit85.i

_ZN5arrow6StatusD2Ev.exit85.i:                    ; preds = %bb.ba, %.body75.i, %bb.ax
  %.pn41.pn.i = phi { ptr, i32 } [ %i.gi, %bb.ax ], [ %.pn41.ph.i, %.body75.i ], [ %.pn4119.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !867
  br label %bb.cy

bb.bb:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ak, %.noexc66.i, %.noexc65.i, %bb.af
  %22 = phi ptr [ %20, %.noexc65.i ], [ %20, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %20, %bb.af ], [ %20, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %23 = phi ptr [ %21, %.noexc65.i ], [ %21, %.noexc66.i ], [ %.pre38.i, %bb.ak ], [ %21, %bb.af ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !867
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !878
  %i.gm = load i64, ptr %i.cq, align 8, !tbaa !755, !noalias !879 ; 2 uses
  %i.gn = load ptr, ptr %13, align 8, !tbaa !52, !noalias !879
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !882
  %i.gq = invoke noundef i64 %i.gp(ptr noundef nonnull align 8 dereferenceable(256) %13)
          to label %.noexc86.i unwind label %bb.bl, !inline_history !883 ; 2 uses

.noexc86.i:                                       ; preds = %bb.bb
  %.not.i.not.i.i = icmp slt i64 %i.gq, %i.gm
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit5.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit5.thread.i.i:            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !878
  br label %_ZN5arrow6StatusD2Ev.exit103.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc86.i
  %i.gr = add nsw i64 %i.gq, 1
  %i.gs = shl nsw i64 %i.gm, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gr, i64 %i.gs)
  %i.gt = load ptr, ptr %13, align 8, !tbaa !52, !noalias !879
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !882
  invoke void %i.gv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(256) %13, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc87.i unwind label %bb.bl, !inline_history !883

.noexc87.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !13, !noalias !884 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  store ptr %.pr.i.i, ptr %16, align 8, !tbaa !13, !alias.scope !888, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !878
  %i.gw = icmp eq ptr %.pr.i.i, null
  br i1 %i.gw, label %_ZN5arrow6StatusD2Ev.exit103.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !867
  %i.gx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc94.i unwind label %bb.bm ; 7 uses

.noexc94.i:                                       ; preds = %bb.bc
  %i.gy = load i8, ptr %.pr.i.i, align 8, !tbaa !773
  store i8 %i.gy, ptr %i.gx, align 8, !tbaa !773
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 3 uses
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !781
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !782 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !867
  store i64 %i.he, ptr %i.b, align 8, !tbaa !93, !noalias !867
  %i.hf = icmp ugt i64 %i.he, 15
  br i1 %i.hf, label %.noexc.i.i.i92.i, label %._crit_edge.i.i.i.i88.i

.noexc.i.i.i92.i:                                 ; preds = %.noexc94.i
  %i.hg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i93.i unwind label %bb.bi ; 2 uses

.noexc.i93.i:                                     ; preds = %.noexc.i.i.i92.i
  store ptr %i.hg, ptr %i.gz, align 8, !tbaa !782
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !867
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i88.i

._crit_edge.i.i.i.i88.i:                          ; preds = %.noexc.i93.i, %.noexc94.i
  %i.hi = phi ptr [ %i.hg, %.noexc.i93.i ], [ %i.hb, %.noexc94.i ] ; 2 uses
  switch i64 %i.he, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i88.i
  %i.hj = load i8, ptr %i.hc, align 1, !tbaa !46
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

bb.be:                                            ; preds = %._crit_edge.i.i.i.i88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.hc, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i.i88.i
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !867 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !783
  %i.hm = load ptr, ptr %i.gz, align 8, !tbaa !782
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store i8 0, ptr %i.hn, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !867
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !32 ; 2 uses
  %i.hs = load <2 x ptr>, ptr %i.hp, align 8, !tbaa !22
  store <2 x ptr> %i.hs, ptr %i.ho, align 8, !tbaa !22
  %.not.i.i.i.i.i90.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i90.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !867
  %.not.i.i.i.i.i.i91.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i91.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !3
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.hx = atomicrmw volatile add ptr %i.ht, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc.i.i.i92.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 56) #28
  br label %.body95.i

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  store ptr %i.gx, ptr %17, align 8, !tbaa !13, !noalias !867
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.bb
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit105.i

bb.bm:                                            ; preds = %bb.bc
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i

bb.bn:                                            ; preds = %bb.bj
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %17, align 8, !tbaa !13, !noalias !867
  %.not.i98.i = icmp eq ptr %i.ic, null
  br i1 %.not.i98.i, label %.body95.i, label %bb.bo, !prof !18

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %.body95.i

_ZN5arrow6StatusD2Ev.exit103.i:                   ; preds = %.noexc87.i, %_ZN5arrow6StatusD2Ev.exit5.thread.i.i
  %i.id = load i64, ptr %i.cr, align 8, !tbaa !795, !noalias !878
  %i.ie = load ptr, ptr %i.ch, align 8, !tbaa !791, !noalias !878
  %i.if = load i64, ptr %i.cs, align 8, !tbaa !795, !noalias !878
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if
  store i64 %i.id, ptr %i.ig, align 1, !noalias !875
  %i.ih = load i64, ptr %i.cs, align 8, !tbaa !795, !noalias !878
  %i.ii = add nsw i64 %i.ih, 8
  store i64 %i.ii, ptr %i.cs, align 8, !tbaa !795, !noalias !878
  %i.ij = load ptr, ptr %i.cc, align 8, !tbaa !791, !noalias !878
  %i.ik = load i64, ptr %i.cf, align 8, !tbaa !792, !noalias !878 ; 2 uses
  %i.il = sdiv i64 %i.ik, 8
  %i.im = getelementptr inbounds i8, ptr %i.ij, i64 %i.il ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !46, !noalias !875
  %i.io = srem i64 %i.ik, 8
  %i.ip = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !46, !noalias !878
  %i.ir = xor i8 %i.iq, -1
  %i.is = and i8 %i.in, %i.ir
  store i8 %i.is, ptr %i.im, align 1, !tbaa !46, !noalias !875
  %i.it = load <2 x i64>, ptr %i.cf, align 8, !tbaa !93, !noalias !878
  %i.iu = add nsw <2 x i64> %i.it, splat (i64 1)
  store <2 x i64> %i.iu, ptr %i.cf, align 8, !tbaa !93, !noalias !878
  %i.iv = load <2 x i64>, ptr %i.ct, align 8, !tbaa !93, !noalias !878
  %i.iw = add nsw <2 x i64> %i.iv, splat (i64 1)
  store <2 x i64> %i.iw, ptr %i.ct, align 8, !tbaa !93, !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !867
  br label %bb.bq

.body95.i:                                        ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bi
  %.pn38.i = phi { ptr, i32 } [ %i.hy, %bb.bi ], [ %i.ia, %bb.bm ], [ %i.ib, %bb.bn ], [ %i.ib, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !867
  %i.ix = load ptr, ptr %16, align 8, !tbaa !13, !noalias !867
  %.not.i104.i = icmp eq ptr %i.ix, null
  br i1 %.not.i104.i, label %_ZN5arrow6StatusD2Ev.exit105.i, label %bb.bp, !prof !18

bb.bp:                                            ; preds = %.body95.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN5arrow6StatusD2Ev.exit105.i

_ZN5arrow6StatusD2Ev.exit105.i:                   ; preds = %bb.bp, %.body95.i, %bb.bl
  %.pn38.pn.i = phi { ptr, i32 } [ %i.hz, %bb.bl ], [ %.pn38.i, %.body95.i ], [ %.pn38.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !867
  br label %bb.cy

bb.bq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit103.i, %_ZN5arrow6StatusD2Ev.exit83.i
  %24 = phi ptr [ %i.dv, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %22, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %25 = phi ptr [ %i.dv, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %23, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %.sroa.77.1.i = phi i32 [ %i.ea, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %.sroa.77.033.i, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %i.iy = add nuw nsw i64 %.034.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iy, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !889

bb.br:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !867
  %i.iz = load ptr, ptr %18, align 8, !tbaa !13, !noalias !867 ; 6 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_ZN5arrow6StatusD2Ev.exit121.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jb = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc112.i unwind label %.body113.thread.i ; 7 uses

.noexc112.i:                                      ; preds = %bb.bs
  %i.jc = load i8, ptr %i.iz, align 8, !tbaa !773
  store i8 %i.jc, ptr %i.jb, align 8, !tbaa !773
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 3 uses
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !781
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !782 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !867
  store i64 %i.ji, ptr %i.a, align 8, !tbaa !93, !noalias !867
  %i.jj = icmp ugt i64 %i.ji, 15
  br i1 %i.jj, label %.noexc.i.i.i110.i, label %._crit_edge.i.i.i.i106.i

.noexc.i.i.i110.i:                                ; preds = %.noexc112.i
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i111.i unwind label %bb.by ; 2 uses

.noexc.i111.i:                                    ; preds = %.noexc.i.i.i110.i
  store ptr %i.jk, ptr %i.jd, align 8, !tbaa !782
  %i.jl = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !867
  store i64 %i.jl, ptr %i.jf, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i106.i

._crit_edge.i.i.i.i106.i:                         ; preds = %.noexc.i111.i, %.noexc112.i
  %i.jm = phi ptr [ %i.jk, %.noexc.i111.i ], [ %i.jf, %.noexc112.i ] ; 2 uses
  switch i64 %i.ji, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i106.i
  %i.jn = load i8, ptr %i.jg, align 1, !tbaa !46
  store i8 %i.jn, ptr %i.jm, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i106.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jg, i64 %i.ji, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i: ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i.i106.i
  %i.jo = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !867 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !783
  %i.jq = load ptr, ptr %i.jd, align 8, !tbaa !782
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jo
  store i8 0, ptr %i.jr, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !867
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !32 ; 2 uses
  %i.jw = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !22
  store <2 x ptr> %i.jw, ptr %i.js, align 8, !tbaa !22
  %.not.i.i.i.i.i108.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i108.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !867
  %.not.i.i.i.i.i.i109.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i.i.i109.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !3
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.kb = atomicrmw volatile add ptr %i.jx, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bz

bb.by:                                            ; preds = %.noexc.i.i.i110.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 56) #28
  br label %.body113.i

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  store ptr %i.jb, ptr %19, align 8, !tbaa !13, !noalias !867
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %._crit_edge.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit130.i

.body113.thread.i:                                ; preds = %bb.bs
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !867
  br label %bb.cx

bb.cc:                                            ; preds = %bb.bz
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %19, align 8, !tbaa !13, !noalias !867
  %.not.i116.i = icmp eq ptr %i.kg, null
  br i1 %.not.i116.i, label %.body113.i, label %bb.cd, !prof !18

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %.body113.i

_ZN5arrow6StatusD2Ev.exit121.i:                   ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !867
  %.phi.trans.insert43.i = getelementptr inbounds nuw i8, ptr %13, i64 208
  %.pre44.i = load ptr, ptr %.phi.trans.insert43.i, align 8, !tbaa !32, !noalias !867 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !867
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEEE, i64 16), ptr %13, align 8, !tbaa !52, !noalias !867
  %.not.i.i.i.i.i122.i = icmp eq ptr %.pre44.i, null
  br i1 %.not.i.i.i.i.i122.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit121.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre44.i, i64 8 ; 4 uses
  %i.ki = load atomic i64, ptr %i.kh acquire, align 8 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 4294967297
  %i.kk = trunc i64 %i.ki to i32                  ; 2 uses
  br i1 %i.kj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.kh, align 8, !tbaa !49
  %i.kl = getelementptr inbounds nuw i8, ptr %.pre44.i, i64 12
  store i32 0, ptr %i.kl, align 4, !tbaa !51
  %i.km = load ptr, ptr %.pre44.i, align 8, !tbaa !52
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !890
  %i.kp = load ptr, ptr %.pre44.i, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !890
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.ks = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !867
  %.not.i.i.i.i.i.i123.i = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i.i.i.i123.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kt = add nsw i32 %i.kk, -1
  store i32 %i.kt, ptr %i.kh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.ku = atomicrmw volatile add ptr %i.kh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.kk, %bb.ch ], [ %i.ku, %bb.ci ]
  %i.kv = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.kv, label %bb.cj, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i, !prof !55

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre44.i) #25, !inline_history !891
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i:   ; preds = %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cf, %_ZN5arrow6StatusD2Ev.exit121.i
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !32, !noalias !867 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 4 uses
  %i.kz = load atomic i64, ptr %i.ky acquire, align 8 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 4294967297
  %i.lb = trunc i64 %i.kz to i32                  ; 2 uses
  br i1 %i.la, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.ky, align 8, !tbaa !49
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !51
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !52
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #25, !inline_history !892
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !52
end_hunk_3
begin_hunk_4_@_ZN5arrow6random20RandomArrayGenerator17BinaryWithRepeatsElliidlPNS_10MemoryPoolE:bb.a
  ret void

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.z, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6random20RandomArrayGenerator17StringWithRepeatsElliidlPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, i64 %7, ptr nofree readnone captures(none) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %12 = alloca %"class.std::shared_ptr.68", align 8 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr.45", align 8 ; 10 uses
  %15 = alloca %"class.arrow::StringBuilder", align 8 ; 36 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %.not = icmp sgt i64 %3, %2
  br i1 %.not, label %bb.b, label %.critedge49, !prof !55

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 3)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA35_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(35) @.str.1)
          to label %.critedge unwind label %bb.o  ; 0 uses

.critedge:                                        ; preds = %bb.b
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge49

.critedge49:                                      ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.e = call noundef ptr @_ZN5arrow19default_memory_poolEv()
  call void @_ZN5arrow6random20RandomArrayGenerator6StringEliidlPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %3, i32 noundef %4, i32 noundef %5, double noundef 0.000000e+00, i64 noundef 64, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.f = load ptr, ptr %11, align 8, !tbaa !87, !noalias !909 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNSt10shared_ptrIN5arrow11StringArrayEEC2INS0_5ArrayEEERKS_IT_EPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge49
  %i.h = call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN5arrow5ArrayE, ptr nonnull @_ZTIN5arrow11StringArrayE, i64 0) #25, !noalias !909 ; 2 uses
  %.not.not.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN5arrow11StringArrayEEC2INS0_5ArrayEEERKS_IT_EPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %12, align 8, !tbaa !912, !alias.scope !909
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32, !noalias !909 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !32, !alias.scope !909
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !909
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !909
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3, !noalias !909
  br label %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !909 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN5arrow11StringArrayEEC2INS0_5ArrayEEERKS_IT_EPS1_.exit.i: ; preds = %bb.c, %.critedge49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !909
  br label %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.d, %bb.f, %bb.g, %_ZNSt10shared_ptrIN5arrow11StringArrayEEC2INS0_5ArrayEEERKS_IT_EPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.q = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.r = add nsw i64 %3, -1
  invoke void @_ZN5arrow6random20RandomArrayGenerator5Int64EllldlPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.r, double noundef %6, i64 noundef 64, ptr noundef %i.q)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.s = load ptr, ptr %13, align 8, !tbaa !87, !noalias !915 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNSt10shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEEEC2INS0_5ArrayEEERKS_IT_EPS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call ptr @__dynamic_cast(ptr nonnull %i.s, ptr nonnull @_ZTIN5arrow5ArrayE, ptr nonnull @_ZTIN5arrow12NumericArrayINS_9Int64TypeEEE, i64 0) #25, !noalias !915 ; 2 uses
  %.not.not.i50 = icmp eq ptr %i.u, null
  br i1 %.not.not.i50, label %_ZNSt10shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEEEC2INS0_5ArrayEEERKS_IT_EPS3_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.u, ptr %14, align 8, !tbaa !716, !alias.scope !915
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32, !noalias !915 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !32, !alias.scope !915
  %.not.i.i.i.i51 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i51, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !915
  %.not.i.i.i.i.i52 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3, !noalias !915
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3, !noalias !915
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !915 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZNSt10shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEEEC2INS0_5ArrayEEERKS_IT_EPS3_.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !alias.scope !915
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.k, %bb.m, %bb.n, %_ZNSt10shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEEEC2INS0_5ArrayEEERKS_IT_EPS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ad = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %_ZN5arrow13StringBuilderC2Ev.exit unwind label %bb.q ; 4 uses

_ZN5arrow13StringBuilderC2Ev.exit:                ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !844
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 64, ptr %i.af, align 8, !tbaa !845
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !846
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ai, align 8, !tbaa !791
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ak, align 8, !tbaa !847
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.al, i8 0, i64 80, i1 false)
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !846
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 168 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.an, align 8, !tbaa !791
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ap, align 8, !tbaa !847
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 216
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !846
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 224
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.as, align 8, !tbaa !791
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 232
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.au, align 8, !tbaa !847
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %15, align 8, !tbaa !52
  %i.av = icmp sgt i64 %2, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow13StringBuilderC2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 240
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 184 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %.pre134 = load ptr, ptr %14, align 8, !tbaa !716 ; 2 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.bc, %_ZN5arrow13StringBuilderC2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(144) %15, ptr noundef nonnull %0)
          to label %bb.bd unwind label %bb.bn

bb.o:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.de

bb.p:                                             ; preds = %bb.h, %_ZSt20dynamic_pointer_castIN5arrow11StringArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.q:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int64TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.r:                                             ; preds = %.lr.ph, %bb.bc
  %22 = phi ptr [ %.pre134, %.lr.ph ], [ %26, %bb.bc ] ; 8 uses
  %23 = phi ptr [ %.pre134, %.lr.ph ], [ %27, %bb.bc ] ; 6 uses
  %.035132 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %bb.bc ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !148
  %i.bj = add nsw i64 %i.bi, %.035132             ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !46
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.y, label %bb.an

bb.t:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !651
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !787
  switch i32 %i.bt, label %bb.x [
    i32 27, label %bb.u
    i32 28, label %bb.v
    i32 38, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bu = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.035132)
          to label %_ZNK5arrow5Array7IsValidEl.exit unwind label %bb.ai

bb.v:                                             ; preds = %bb.t
  %i.bv = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.035132)
          to label %.noexc53 unwind label %bb.ai

.noexc53:                                         ; preds = %bb.v
  br i1 %i.bv, label %bb.an, label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bw = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.035132)
          to label %.noexc54 unwind label %bb.ai

.noexc54:                                         ; preds = %bb.w
  br i1 %i.bw, label %bb.an, label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.by = load atomic i64, ptr %i.bx seq_cst, align 8
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !138
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !788
  %.not131 = icmp eq i64 %i.by, %i.cb
  %.pre = load ptr, ptr %14, align 8, !tbaa !716  ; 3 uses
  br i1 %.not131, label %bb.an, label %bb.y

_ZNK5arrow5Array7IsValidEl.exit:                  ; preds = %bb.u
  br i1 %i.bu, label %bb.an, label %bb.y

bb.y:                                             ; preds = %.noexc53, %.noexc54, %bb.x, %bb.s, %_ZNK5arrow5Array7IsValidEl.exit
  %i.cc = phi ptr [ %22, %.noexc53 ], [ %22, %.noexc54 ], [ %.pre, %bb.x ], [ %22, %bb.s ], [ %22, %_ZNK5arrow5Array7IsValidEl.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !475
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.035132
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ch = load ptr, ptr %12, align 8, !tbaa !912  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !918
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cg ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !920
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.ck, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = sub nsw i32 %i.cr, %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(256) %15, ptr noundef %i.cp, i32 noundef %i.cs)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.aj

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.ct = load ptr, ptr %16, align 8, !tbaa !13   ; 6 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit62, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cv = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc57 unwind label %.body.thread ; 7 uses

.noexc57:                                         ; preds = %bb.z
  %i.cw = load i8, ptr %i.ct, align 8, !tbaa !773
  store i8 %i.cw, ptr %i.cv, align 8, !tbaa !773
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !781
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !782 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.dc, ptr %i.c, align 8, !tbaa !93
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc57
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i unwind label %bb.af  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !782
  %i.df = load i64, ptr %i.c, align 8, !tbaa !93
  store i64 %i.df, ptr %i.cz, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc57
  %i.dg = phi ptr [ %i.de, %.noexc.i ], [ %i.cz, %.noexc57 ] ; 2 uses
  switch i64 %i.dc, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dh = load i8, ptr %i.da, align 1, !tbaa !46
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i.i
  %i.di = load i64, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !783
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !782
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !22
  store <2 x ptr> %i.dq, ptr %i.dm, align 8, !tbaa !22
  %.not.i.i.i.i.i56 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i56, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !3
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %.noexc.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 56) #28
  br label %.body

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.ad, %bb.ae
  store ptr %i.cv, ptr %17, align 8, !tbaa !13
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.aj:                                            ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit64

.body.thread:                                     ; preds = %bb.z
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %17, align 8, !tbaa !13
  %.not.i58 = icmp eq ptr %i.eb, null
  br i1 %.not.i58, label %.body, label %bb.al, !prof !18

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %.body

_ZN5arrow6StatusD2Ev.exit62:                      ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.bc

.body:                                            ; preds = %bb.al, %bb.ak, %bb.af
  %.pn41.ph = phi { ptr, i32 } [ %i.ea, %bb.al ], [ %i.ea, %bb.ak ], [ %i.dw, %bb.af ] ; 2 uses
  %.pr = load ptr, ptr %16, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.not.i63 = icmp eq ptr %.pr, null
  br i1 %.not.i63, label %_ZN5arrow6StatusD2Ev.exit64, label %bb.am, !prof !56

bb.am:                                            ; preds = %.body.thread, %.body
  %.pn41120 = phi { ptr, i32 } [ %i.dz, %.body.thread ], [ %.pn41.ph, %.body ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZN5arrow6StatusD2Ev.exit64

_ZN5arrow6StatusD2Ev.exit64:                      ; preds = %bb.am, %.body, %bb.aj
  %.pn41.pn = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %.pn41.ph, %.body ], [ %.pn41120, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.db

bb.an:                                            ; preds = %.noexc53, %.noexc54, %bb.x, %bb.s, %_ZNK5arrow5Array7IsValidEl.exit
  %24 = phi ptr [ %22, %.noexc53 ], [ %22, %.noexc54 ], [ %.pre, %bb.x ], [ %22, %bb.s ], [ %22, %_ZNK5arrow5Array7IsValidEl.exit ]
  %25 = phi ptr [ %23, %.noexc53 ], [ %23, %.noexc54 ], [ %.pre, %bb.x ], [ %23, %bb.s ], [ %23, %_ZNK5arrow5Array7IsValidEl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !921
  %i.ec = load i64, ptr %i.aw, align 8, !tbaa !755, !noalias !924 ; 2 uses
  %i.ed = load ptr, ptr %15, align 8, !tbaa !52, !noalias !924
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !924
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull align 8 dereferenceable(256) %15)
          to label %.noexc65 unwind label %bb.ax, !inline_history !856 ; 2 uses

.noexc65:                                         ; preds = %bb.an
  %.not.i.not.i = icmp slt i64 %i.eg, %i.ec
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit5.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit5.thread.i:              ; preds = %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !921
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc65
  %i.eh = add nsw i64 %i.eg, 1
  %i.ei = shl nsw i64 %i.ec, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.eh, i64 %i.ei)
  %i.ej = load ptr, ptr %15, align 8, !tbaa !52, !noalias !924
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !924
  invoke void %i.el(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(256) %15, i64 noundef %.sroa.speculated.i.i.i)
          to label %.noexc66 unwind label %bb.ax, !inline_history !856

.noexc66:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !13, !noalias !927 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  store ptr %.pr.i, ptr %18, align 8, !tbaa !13, !alias.scope !927
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !921
  %i.em = icmp eq ptr %.pr.i, null
  br i1 %i.em, label %_ZN5arrow6StatusD2Ev.exit82, label %bb.ao

bb.ao:                                            ; preds = %.noexc66
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.en = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc73 unwind label %bb.ay  ; 7 uses

.noexc73:                                         ; preds = %bb.ao
  %i.eo = load i8, ptr %.pr.i, align 8, !tbaa !773
  store i8 %i.eo, ptr %i.en, align 8, !tbaa !773
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 3 uses
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !781
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !782 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.eu, ptr %i.b, align 8, !tbaa !93
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i.i.i71, label %._crit_edge.i.i.i.i67

.noexc.i.i.i71:                                   ; preds = %.noexc73
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i72 unwind label %bb.au ; 2 uses

.noexc.i72:                                       ; preds = %.noexc.i.i.i71
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !782
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ex, ptr %i.er, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i67

._crit_edge.i.i.i.i67:                            ; preds = %.noexc.i72, %.noexc73
  %i.ey = phi ptr [ %i.ew, %.noexc.i72 ], [ %i.er, %.noexc73 ] ; 2 uses
  switch i64 %i.eu, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i67
  %i.ez = load i8, ptr %i.es, align 1, !tbaa !46
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68: ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i.i.i67
  %i.fa = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !783
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !782
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fd, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr.i, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %.pr.i, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !32 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !22
  store <2 x ptr> %i.fi, ptr %i.fe, align 8, !tbaa !22
  %.not.i.i.i.i.i69 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i69, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i70 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i70, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !3
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.fn = atomicrmw volatile add ptr %i.fj, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %.noexc.i.i.i71
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 56) #28
  br label %.body74

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i68, %bb.as, %bb.at
  store ptr %i.en, ptr %19, align 8, !tbaa !13
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.an
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit84

bb.ay:                                            ; preds = %bb.ao
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.az:                                            ; preds = %bb.av
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %19, align 8, !tbaa !13
  %.not.i77 = icmp eq ptr %i.fs, null
  br i1 %.not.i77, label %.body74, label %bb.ba, !prof !18

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %.body74

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc66, %_ZN5arrow6StatusD2Ev.exit5.thread.i
  %i.ft = load i64, ptr %i.ax, align 8, !tbaa !795, !noalias !921
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = load ptr, ptr %i.an, align 8, !tbaa !791, !noalias !921
  %i.fw = load i64, ptr %i.ay, align 8, !tbaa !795, !noalias !921
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 %i.fw
  store i32 %i.fu, ptr %i.fx, align 1, !noalias !921
  %i.fy = load i64, ptr %i.ay, align 8, !tbaa !795, !noalias !921
  %i.fz = add nsw i64 %i.fy, 4
  store i64 %i.fz, ptr %i.ay, align 8, !tbaa !795, !noalias !921
  %i.ga = load ptr, ptr %i.ai, align 8, !tbaa !791, !noalias !921
  %i.gb = load i64, ptr %i.al, align 8, !tbaa !792, !noalias !921 ; 2 uses
  %i.gc = sdiv i64 %i.gb, 8
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 %i.gc ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !46, !noalias !921
  %i.gf = srem i64 %i.gb, 8
  %i.gg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !46, !noalias !921
  %i.gi = xor i8 %i.gh, -1
  %i.gj = and i8 %i.ge, %i.gi
  store i8 %i.gj, ptr %i.gd, align 1, !tbaa !46, !noalias !921
  %i.gk = load <2 x i64>, ptr %i.al, align 8, !tbaa !93, !noalias !921
  %i.gl = add nsw <2 x i64> %i.gk, splat (i64 1)
  store <2 x i64> %i.gl, ptr %i.al, align 8, !tbaa !93, !noalias !921
  %i.gm = load <2 x i64>, ptr %i.az, align 8, !tbaa !93, !noalias !921
  %i.gn = add nsw <2 x i64> %i.gm, splat (i64 1)
  store <2 x i64> %i.gn, ptr %i.az, align 8, !tbaa !93, !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bc

.body74:                                          ; preds = %bb.ba, %bb.az, %bb.ay, %bb.au
  %.pn38 = phi { ptr, i32 } [ %i.fo, %bb.au ], [ %i.fq, %bb.ay ], [ %i.fr, %bb.az ], [ %i.fr, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.go = load ptr, ptr %18, align 8, !tbaa !13
  %.not.i83 = icmp eq ptr %i.go, null
  br i1 %.not.i83, label %_ZN5arrow6StatusD2Ev.exit84, label %bb.bb, !prof !18

bb.bb:                                            ; preds = %.body74
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %_ZN5arrow6StatusD2Ev.exit84

_ZN5arrow6StatusD2Ev.exit84:                      ; preds = %bb.bb, %.body74, %bb.ax
  %.pn38.pn = phi { ptr, i32 } [ %i.fp, %bb.ax ], [ %.pn38, %.body74 ], [ %.pn38, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.db

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit62, %_ZN5arrow6StatusD2Ev.exit82
  %26 = phi ptr [ %i.cc, %_ZN5arrow6StatusD2Ev.exit62 ], [ %24, %_ZN5arrow6StatusD2Ev.exit82 ]
  %27 = phi ptr [ %i.cc, %_ZN5arrow6StatusD2Ev.exit62 ], [ %25, %_ZN5arrow6StatusD2Ev.exit82 ]
  %i.gp = add nuw nsw i64 %.035132, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !931

bb.bd:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.gq = load ptr, ptr %20, align 8, !tbaa !13   ; 6 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN5arrow6StatusD2Ev.exit100, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gs = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc91 unwind label %.body92.thread ; 7 uses

.noexc91:                                         ; preds = %bb.be
  %i.gt = load i8, ptr %i.gq, align 8, !tbaa !773
  store i8 %i.gt, ptr %i.gs, align 8, !tbaa !773
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 3 uses
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !781
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !782 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.gz, ptr %i.a, align 8, !tbaa !93
  %i.ha = icmp ugt i64 %i.gz, 15
  br i1 %i.ha, label %.noexc.i.i.i89, label %._crit_edge.i.i.i.i85

.noexc.i.i.i89:                                   ; preds = %.noexc91
  %i.hb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i90 unwind label %bb.bk ; 2 uses

.noexc.i90:                                       ; preds = %.noexc.i.i.i89
  store ptr %i.hb, ptr %i.gu, align 8, !tbaa !782
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i85

._crit_edge.i.i.i.i85:                            ; preds = %.noexc.i90, %.noexc91
  %i.hd = phi ptr [ %i.hb, %.noexc.i90 ], [ %i.gw, %.noexc91 ] ; 2 uses
  switch i64 %i.gz, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i85
  %i.he = load i8, ptr %i.gx, align 1, !tbaa !46
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.gx, i64 %i.gz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86: ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i.i85
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !783
  %i.hh = load ptr, ptr %i.gu, align 8, !tbaa !782
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store i8 0, ptr %i.hi, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !32 ; 2 uses
  %i.hn = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !22
  store <2 x ptr> %i.hn, ptr %i.hj, align 8, !tbaa !22
  %.not.i.i.i.i.i87 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i87, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i88 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i88, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !3
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.hs = atomicrmw volatile add ptr %i.ho, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bl

bb.bk:                                            ; preds = %.noexc.i.i.i89
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 56) #28
  br label %.body92

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i86, %bb.bi, %bb.bj
  store ptr %i.gs, ptr %21, align 8, !tbaa !13
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #27
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %._crit_edge
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit117

.body92.thread:                                   ; preds = %bb.be
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.da

bb.bo:                                            ; preds = %bb.bl
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %21, align 8, !tbaa !13
  %.not.i95 = icmp eq ptr %i.hx, null
  br i1 %.not.i95, label %.body92, label %bb.bp, !prof !18

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %.body92

_ZN5arrow6StatusD2Ev.exit100:                     ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 208
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_10BinaryTypeEEE, i64 16), ptr %15, align 8, !tbaa !52
  %.not.i.i.i.i.i101 = icmp eq ptr %.pre135, null
  br i1 %.not.i.i.i.i.i101, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit100
  %i.hy = getelementptr inbounds nuw i8, ptr %.pre135, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.hy, align 8, !tbaa !49
  %i.ic = getelementptr inbounds nuw i8, ptr %.pre135, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !51
  %i.id = load ptr, ptr %.pre135, align 8, !tbaa !52
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %.pre135) #25, !inline_history !932
  %i.ig = load ptr, ptr %.pre135, align 8, !tbaa !52
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %.pre135) #25, !inline_history !932
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i102 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i102, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.bt ], [ %i.il, %bb.bu ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.bv, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !55

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre135) #25, !inline_history !864
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.br, %_ZN5arrow6StatusD2Ev.exit100
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !32 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.ip, align 8, !tbaa !49
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !51
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #25, !inline_history !933
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
end_hunk_4
begin_hunk_5_@_ZN5arrow6random20RandomArrayGenerator10StringViewEliidSt8optionalIlElPNS_10MemoryPoolE:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit57.i

_ZN5arrow6StatusD2Ev.exit57.i:                    ; preds = %bb.n, %.body.i
  %.pn4913.i = phi { ptr, i32 } [ %.pn49.ph.i, %.body.i ], [ %.pn4912.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !937
  br label %bb.cr

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit55.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !937
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !937
  call void @_ZN5arrow6random20RandomArrayGenerator5Int32EliidlPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, i64 noundef %7, ptr noundef %8)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.an = load ptr, ptr %13, align 8, !tbaa !87, !noalias !943 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = call ptr @__dynamic_cast(ptr nonnull %i.an, ptr nonnull @_ZTIN5arrow5ArrayE, ptr nonnull @_ZTIN5arrow12NumericArrayINS_9Int32TypeEEE, i64 0) #25, !noalias !940 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.not.i.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ap, ptr %12, align 8, !tbaa !686, !alias.scope !940, !noalias !937
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32, !noalias !943 ; 5 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !32, !alias.scope !940, !noalias !937
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !943
  %.not.i.i.i.i.i58.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !940
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3, !noalias !940
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

bb.t:                                             ; preds = %bb.r
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4, !noalias !940 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !940, !noalias !937
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !32, !noalias !937 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i: ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.t, %bb.s
  %i.ay = phi ptr [ %.pre.i, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i ], [ %i.as, %bb.s ], [ %i.as, %bb.t ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  store i32 0, ptr %i.az, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !51
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !944
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !944
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.v:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !937
  %.not.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %bb.w ], [ %i.bm, %bb.x ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u, %_ZSt20dynamic_pointer_castIN5arrow12NumericArrayINS0_9Int32TypeEEENS0_5ArrayEESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !937
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i unwind label %bb.ae

_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bq = sext i32 %4 to i64                      ; 3 uses
  %i.br = icmp slt i32 %4, 0
  br i1 %i.br, label %bb.z, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.z:                                             ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc61.i unwind label %bb.af

.noexc61.i:                                       ; preds = %bb.z
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZN5arrow6random20RandomArrayGenerator4seedEv.exit.i
  %.not.i.i.i.i60.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i60.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #26
          to label %.noexc62.i unwind label %bb.af ; 5 uses

.noexc62.i:                                       ; preds = %bb.aa
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  store i8 0, ptr %i.bs, align 1, !tbaa !46
  %i.bu = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc62.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.bu, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc62.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.01.0.i = phi ptr [ %i.bs, %bb.ab ], [ %i.bs, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 9 uses
  %.sroa.11.0.i = phi ptr [ %i.bt, %bb.ab ], [ %i.bt, %.noexc62.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !937
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %i.bx, align 8, !tbaa !844, !noalias !937
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %7, ptr %i.by, align 8, !tbaa !845, !noalias !937
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i8 0, i64 16, i1 false), !noalias !937
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %8, ptr %i.ca, align 8, !tbaa !846, !noalias !937
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cb, align 8, !tbaa !791, !noalias !937
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !noalias !937
  store i64 %7, ptr %i.cd, align 8, !tbaa !847, !noalias !937
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i8 0, i64 80, i1 false), !noalias !937
  store ptr %8, ptr %i.cf, align 8, !tbaa !846, !noalias !937
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 168 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cg, align 8, !tbaa !791, !noalias !937
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false), !noalias !937
  store i64 %7, ptr %i.ci, align 8, !tbaa !847, !noalias !937
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 200
  store ptr %8, ptr %i.cj, align 8, !tbaa !945, !noalias !937
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 208
  store i64 %7, ptr %i.ck, align 8, !tbaa !952, !noalias !937
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 216 ; 2 uses
  store i64 32768, ptr %i.cl, align 8, !tbaa !953, !noalias !937
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cm, i8 0, i64 28, i1 false), !noalias !937
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !noalias !937
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17StringViewBuilderE, i64 16), ptr %14, align 8, !tbaa !52, !noalias !937
  %i.co = trunc nuw i8 %.sroa.2.0.copyload to i1
  br i1 %i.co, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store i64 %.sroa.0.0.copyload, ptr %i.cl, align 8, !tbaa !953, !noalias !937
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit130.i

bb.af:                                            ; preds = %bb.aa, %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit130.i

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.cr = icmp sgt i64 %2, 0
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  %.pre39.i = load ptr, ptr %12, align 8, !tbaa !686, !noalias !937 ; 2 uses
  br label %bb.ah

._crit_edge.i:                                    ; preds = %bb.bt, %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !937
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !937
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 %0)
          to label %bb.bu unwind label %bb.ce

bb.ah:                                            ; preds = %bb.bt, %.lr.ph.i
  %21 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %25, %bb.bt ] ; 8 uses
  %22 = phi ptr [ %.pre39.i, %.lr.ph.i ], [ %26, %bb.bt ] ; 6 uses
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.iy, %bb.bt ] ; 7 uses
  %.sroa.77.033.i = phi i32 [ %i.bp, %.lr.ph.i ], [ %.sroa.77.1.i, %bb.bt ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !141 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.cw, null
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !138 ; 6 uses
  br i1 %.not.i63.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !148
  %i.db = add nsw i64 %i.da, %.034.i              ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !46
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.ao, label %bb.be

bb.aj:                                            ; preds = %bb.ah
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !651
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !787
  switch i32 %i.dl, label %bb.an [
    i32 27, label %bb.ak
    i32 28, label %bb.al
    i32 38, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %_ZNK5arrow5Array7IsValidEl.exit.i unwind label %bb.az

bb.al:                                            ; preds = %bb.aj
  %i.dn = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %.noexc65.i unwind label %bb.az

.noexc65.i:                                       ; preds = %bb.al
  br i1 %i.dn, label %bb.be, label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.do = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, i64 noundef %.034.i)
          to label %.noexc66.i unwind label %bb.az

.noexc66.i:                                       ; preds = %bb.am
  br i1 %i.do, label %bb.be, label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dq = load atomic i64, ptr %i.dp seq_cst, align 8
  %i.dr = load ptr, ptr %i.cx, align 8, !tbaa !138
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !788
  %.not.i = icmp eq i64 %i.dq, %i.dt
  %.pre38.i = load ptr, ptr %12, align 8, !tbaa !686, !noalias !937 ; 3 uses
  br i1 %.not.i, label %bb.be, label %bb.ao

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.ak
  br i1 %i.dm, label %bb.be, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.an, %.noexc66.i, %.noexc65.i, %bb.ai
  %i.du = phi ptr [ %21, %.noexc65.i ], [ %21, %.noexc66.i ], [ %.pre38.i, %bb.an ], [ %21, %bb.ai ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !382
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.034.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add nsw i32 %.sroa.77.033.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.dz
  %.not7.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ao
  %i.ec = or i32 %.sroa.77.033.i, 3
  %i.ed = sext i32 %i.ec to i64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ %.sroa.03.1.i.i.i.i, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %.08.i.i.i.i.i = phi ptr [ %i.fb, %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.i, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.ee = mul i64 %.sroa.03.0.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.ef = lshr i64 %.sroa.03.0.i.i.i.i, 61
  %i.eg = lshr i64 %.sroa.03.0.i.i.i.i, 22
  %i.eh = xor i64 %i.eg, %.sroa.03.0.i.i.i.i
  %i.ei = add nuw nsw i64 %i.ef, 22
  %i.ej = lshr i64 %i.eh, %i.ei
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = mul nuw nsw i64 %i.ek, 58               ; 2 uses
  %i.em = and i64 %i.el, 4294967280
  %or.cond30.i = icmp eq i64 %i.em, 0
  br i1 %or.cond30.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.eo = mul i64 %i.en, 6364136223846793005      ; 2 uses
  %i.ep = lshr i64 %i.en, 61
  %i.eq = lshr i64 %i.en, 22
  %i.er = xor i64 %i.eq, %i.en
  %i.es = add nuw nsw i64 %i.ep, 22
  %i.et = lshr i64 %i.er, %i.es
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = mul nuw nsw i64 %i.eu, 58               ; 2 uses
  %i.ew = and i64 %i.ev, 4294967280
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i, !llvm.loop !132

_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ey = lshr i64 %.1.i.i.i.i.i.i.i.i.i, 32
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  %i.fa = add nuw nsw i8 %i.ez, 65
  store i8 %i.fa, ptr %.08.i.i.i.i.i, align 1, !tbaa !46
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i67.i = icmp eq ptr %i.fb, %i.eb
  br i1 %.not.i.i.i.i67.i, label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i: ; preds = %_ZNSt24uniform_int_distributionItE5_S_ndImN14arrow_vendored10pcg_detail6engineIjmNS3_12xsh_rs_mixinIjmEELb1ENS3_9no_streamImEENS3_18default_multiplierImEEEEjEET1_RT0_SC_.exit.i.i.i.i.i.i.i.i
  %.pre40.i = load ptr, ptr %i.dv, align 8, !tbaa !382
  %.phi.trans.insert41.i = getelementptr inbounds nuw [4 x i8], ptr %.pre40.i, i64 %.034.i
  %.pre42.i = load i32, ptr %.phi.trans.insert41.i, align 4, !tbaa !3
  %i.fc = sext i32 %.pre42.i to i64
  br label %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i

_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i: ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i, %bb.ao
  %i.fd = phi i64 [ %i.fc, %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.loopexit.i ], [ 0, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !937
  invoke void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(272) %14, ptr noundef %.sroa.01.0.i, i64 noundef %i.fd)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !937
  %i.fe = load ptr, ptr %15, align 8, !tbaa !13, !noalias !937 ; 6 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN5arrow6StatusD2Ev.exit83.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc74.i unwind label %.body75.thread.i ; 7 uses

.noexc74.i:                                       ; preds = %bb.aq
  %i.fh = load i8, ptr %i.fe, align 8, !tbaa !773
  store i8 %i.fh, ptr %i.fg, align 8, !tbaa !773
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !781
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !782 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !937
  store i64 %i.fn, ptr %i.c, align 8, !tbaa !93, !noalias !937
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i.i.i72.i, label %._crit_edge.i.i.i.i68.i

.noexc.i.i.i72.i:                                 ; preds = %.noexc74.i
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i73.i unwind label %bb.aw ; 2 uses

.noexc.i73.i:                                     ; preds = %.noexc.i.i.i72.i
  store ptr %i.fp, ptr %i.fi, align 8, !tbaa !782
  %i.fq = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !937
  store i64 %i.fq, ptr %i.fk, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i68.i

._crit_edge.i.i.i.i68.i:                          ; preds = %.noexc.i73.i, %.noexc74.i
  %i.fr = phi ptr [ %i.fp, %.noexc.i73.i ], [ %i.fk, %.noexc74.i ] ; 2 uses
  switch i64 %i.fn, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i68.i
  %i.fs = load i8, ptr %i.fl, align 1, !tbaa !46
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

bb.as:                                            ; preds = %._crit_edge.i.i.i.i68.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i: ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i.i68.i
  %i.ft = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !937 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !783
  %i.fv = load ptr, ptr %i.fi, align 8, !tbaa !782
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ft
  store i8 0, ptr %i.fw, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !937
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !32 ; 2 uses
  %i.gb = load <2 x ptr>, ptr %i.fy, align 8, !tbaa !22
  store <2 x ptr> %i.gb, ptr %i.fx, align 8, !tbaa !22
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i70.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !937
  %.not.i.i.i.i.i.i71.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i71.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !3
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.gg = atomicrmw volatile add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc.i.i.i72.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 56) #28
  br label %.body75.i

bb.ax:                                            ; preds = %bb.av, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i69.i
  store ptr %i.fg, ptr %16, align 8, !tbaa !13, !noalias !937
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #27
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ba:                                            ; preds = %_ZN5arrow6random12_GLOBAL__N_115GenerateOptionsIhSt24uniform_int_distributionItEE12GenerateDataEPhm.exit.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit85.i

.body75.thread.i:                                 ; preds = %bb.aq
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !937
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %16, align 8, !tbaa !13, !noalias !937
  %.not.i78.i = icmp eq ptr %i.gm, null
  br i1 %.not.i78.i, label %.body75.i, label %bb.bc, !prof !18

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %.body75.i

_ZN5arrow6StatusD2Ev.exit83.i:                    ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !937
  br label %bb.bt

.body75.i:                                        ; preds = %bb.bc, %bb.bb, %bb.aw
  %.pn41.ph.i = phi { ptr, i32 } [ %i.gl, %bb.bc ], [ %i.gl, %bb.bb ], [ %i.gh, %bb.aw ] ; 2 uses
  %.pr16.i = load ptr, ptr %15, align 8, !tbaa !13, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !937
  %.not.i84.i = icmp eq ptr %.pr16.i, null
  br i1 %.not.i84.i, label %_ZN5arrow6StatusD2Ev.exit85.i, label %bb.bd, !prof !56

bb.bd:                                            ; preds = %.body75.i, %.body75.thread.i
  %.pn4119.i = phi { ptr, i32 } [ %i.gk, %.body75.thread.i ], [ %.pn41.ph.i, %.body75.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %_ZN5arrow6StatusD2Ev.exit85.i

_ZN5arrow6StatusD2Ev.exit85.i:                    ; preds = %bb.bd, %.body75.i, %bb.ba
  %.pn41.pn.i = phi { ptr, i32 } [ %i.gj, %bb.ba ], [ %.pn41.ph.i, %.body75.i ], [ %.pn4119.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !937
  br label %bb.cp

bb.be:                                            ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.an, %.noexc66.i, %.noexc65.i, %bb.ai
  %23 = phi ptr [ %21, %.noexc65.i ], [ %21, %.noexc66.i ], [ %.pre38.i, %bb.an ], [ %21, %bb.ai ], [ %21, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  %24 = phi ptr [ %22, %.noexc65.i ], [ %22, %.noexc66.i ], [ %.pre38.i, %bb.an ], [ %22, %bb.ai ], [ %22, %_ZNK5arrow5Array7IsValidEl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !937
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !957
  %i.gn = load i64, ptr %i.cs, align 8, !tbaa !755, !noalias !958 ; 2 uses
  %i.go = load ptr, ptr %14, align 8, !tbaa !52, !noalias !958
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !961
  %i.gr = invoke noundef i64 %i.gq(ptr noundef nonnull align 8 dereferenceable(272) %14)
          to label %.noexc86.i unwind label %bb.bo, !inline_history !962 ; 2 uses

.noexc86.i:                                       ; preds = %bb.be
  %.not.i.not.i.i = icmp slt i64 %i.gr, %i.gn
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit5.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit5.thread.i.i:            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !957
  br label %_ZN5arrow6StatusD2Ev.exit103.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc86.i
  %i.gs = add nsw i64 %i.gr, 1
  %i.gt = shl nsw i64 %i.gn, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gs, i64 %i.gt)
  %i.gu = load ptr, ptr %14, align 8, !tbaa !52, !noalias !958
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !961
  invoke void %i.gw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(272) %14, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc87.i unwind label %bb.bo, !inline_history !962

.noexc87.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !13, !noalias !963 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  store ptr %.pr.i.i, ptr %17, align 8, !tbaa !13, !alias.scope !967, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !957
  %i.gx = icmp eq ptr %.pr.i.i, null
  br i1 %i.gx, label %_ZN5arrow6StatusD2Ev.exit103.i, label %bb.bf

bb.bf:                                            ; preds = %.noexc87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !937
  %i.gy = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc94.i unwind label %bb.bp ; 7 uses

.noexc94.i:                                       ; preds = %bb.bf
  %i.gz = load i8, ptr %.pr.i.i, align 8, !tbaa !773
  store i8 %i.gz, ptr %i.gy, align 8, !tbaa !773
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 3 uses
  store ptr %i.hc, ptr %i.ha, align 8, !tbaa !781
  %i.hd = load ptr, ptr %i.hb, align 8, !tbaa !782 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !937
  store i64 %i.hf, ptr %i.b, align 8, !tbaa !93, !noalias !937
  %i.hg = icmp ugt i64 %i.hf, 15
  br i1 %i.hg, label %.noexc.i.i.i92.i, label %._crit_edge.i.i.i.i88.i

.noexc.i.i.i92.i:                                 ; preds = %.noexc94.i
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i93.i unwind label %bb.bl ; 2 uses

.noexc.i93.i:                                     ; preds = %.noexc.i.i.i92.i
  store ptr %i.hh, ptr %i.ha, align 8, !tbaa !782
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !937
  store i64 %i.hi, ptr %i.hc, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i88.i

._crit_edge.i.i.i.i88.i:                          ; preds = %.noexc.i93.i, %.noexc94.i
  %i.hj = phi ptr [ %i.hh, %.noexc.i93.i ], [ %i.hc, %.noexc94.i ] ; 2 uses
  switch i64 %i.hf, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i88.i
  %i.hk = load i8, ptr %i.hd, align 1, !tbaa !46
  store i8 %i.hk, ptr %i.hj, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hj, ptr align 1 %i.hd, i64 %i.hf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i: ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i.i.i88.i
  %i.hl = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !937 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !783
  %i.hn = load ptr, ptr %i.ha, align 8, !tbaa !782
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hl
  store i8 0, ptr %i.ho, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !937
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %.pr.i.i, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !32 ; 2 uses
  %i.ht = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !22
  store <2 x ptr> %i.ht, ptr %i.hp, align 8, !tbaa !22
  %.not.i.i.i.i.i90.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i90.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !937
  %.not.i.i.i.i.i.i91.i = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i91.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !3
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.hy = atomicrmw volatile add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %.noexc.i.i.i92.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef 56) #28
  br label %.body95.i

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i89.i
  store ptr %i.gy, ptr %18, align 8, !tbaa !13, !noalias !937
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #27
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.be
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit105.i

bb.bp:                                            ; preds = %bb.bf
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i

bb.bq:                                            ; preds = %bb.bm
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %18, align 8, !tbaa !13, !noalias !937
  %.not.i98.i = icmp eq ptr %i.id, null
  br i1 %.not.i98.i, label %.body95.i, label %bb.br, !prof !18

bb.br:                                            ; preds = %bb.bq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %.body95.i

_ZN5arrow6StatusD2Ev.exit103.i:                   ; preds = %.noexc87.i, %_ZN5arrow6StatusD2Ev.exit5.thread.i.i
  %i.ie = load ptr, ptr %i.cg, align 8, !tbaa !791, !noalias !957
  %i.if = load i64, ptr %i.ct, align 8, !tbaa !795, !noalias !957
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false), !noalias !954
  %i.ih = load i64, ptr %i.ct, align 8, !tbaa !795, !noalias !957
  %i.ii = add nsw i64 %i.ih, 16
  store i64 %i.ii, ptr %i.ct, align 8, !tbaa !795, !noalias !957
  %i.ij = load ptr, ptr %i.cb, align 8, !tbaa !791, !noalias !957
  %i.ik = load i64, ptr %i.ce, align 8, !tbaa !792, !noalias !957 ; 2 uses
  %i.il = sdiv i64 %i.ik, 8
  %i.im = getelementptr inbounds i8, ptr %i.ij, i64 %i.il ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !46, !noalias !954
  %i.io = srem i64 %i.ik, 8
  %i.ip = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !46, !noalias !957
  %i.ir = xor i8 %i.iq, -1
  %i.is = and i8 %i.in, %i.ir
  store i8 %i.is, ptr %i.im, align 1, !tbaa !46, !noalias !954
  %i.it = load <2 x i64>, ptr %i.ce, align 8, !tbaa !93, !noalias !957
  %i.iu = add nsw <2 x i64> %i.it, splat (i64 1)
  store <2 x i64> %i.iu, ptr %i.ce, align 8, !tbaa !93, !noalias !957
  %i.iv = load <2 x i64>, ptr %i.cu, align 8, !tbaa !93, !noalias !957
  %i.iw = add nsw <2 x i64> %i.iv, splat (i64 1)
  store <2 x i64> %i.iw, ptr %i.cu, align 8, !tbaa !93, !noalias !957
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !937
  br label %bb.bt

.body95.i:                                        ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bl
  %.pn38.i = phi { ptr, i32 } [ %i.hz, %bb.bl ], [ %i.ib, %bb.bp ], [ %i.ic, %bb.bq ], [ %i.ic, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !937
  %i.ix = load ptr, ptr %17, align 8, !tbaa !13, !noalias !937
  %.not.i104.i = icmp eq ptr %i.ix, null
  br i1 %.not.i104.i, label %_ZN5arrow6StatusD2Ev.exit105.i, label %bb.bs, !prof !18

bb.bs:                                            ; preds = %.body95.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN5arrow6StatusD2Ev.exit105.i

_ZN5arrow6StatusD2Ev.exit105.i:                   ; preds = %bb.bs, %.body95.i, %bb.bo
  %.pn38.pn.i = phi { ptr, i32 } [ %i.ia, %bb.bo ], [ %.pn38.i, %.body95.i ], [ %.pn38.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !937
  br label %bb.cp

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit103.i, %_ZN5arrow6StatusD2Ev.exit83.i
  %25 = phi ptr [ %i.du, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %23, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %26 = phi ptr [ %i.du, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %24, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %.sroa.77.1.i = phi i32 [ %i.ea, %_ZN5arrow6StatusD2Ev.exit83.i ], [ %.sroa.77.033.i, %_ZN5arrow6StatusD2Ev.exit103.i ]
  %i.iy = add nuw nsw i64 %.034.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iy, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ah, !llvm.loop !968

bb.bu:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !937
  %i.iz = load ptr, ptr %19, align 8, !tbaa !13, !noalias !937 ; 6 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_ZN5arrow6StatusD2Ev.exit121.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jb = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc112.i unwind label %.body113.thread.i ; 7 uses

.noexc112.i:                                      ; preds = %bb.bv
  %i.jc = load i8, ptr %i.iz, align 8, !tbaa !773
  store i8 %i.jc, ptr %i.jb, align 8, !tbaa !773
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 3 uses
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !781
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !782 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !937
  store i64 %i.ji, ptr %i.a, align 8, !tbaa !93, !noalias !937
  %i.jj = icmp ugt i64 %i.ji, 15
  br i1 %i.jj, label %.noexc.i.i.i110.i, label %._crit_edge.i.i.i.i106.i

.noexc.i.i.i110.i:                                ; preds = %.noexc112.i
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i111.i unwind label %bb.cb ; 2 uses

.noexc.i111.i:                                    ; preds = %.noexc.i.i.i110.i
  store ptr %i.jk, ptr %i.jd, align 8, !tbaa !782
  %i.jl = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !937
  store i64 %i.jl, ptr %i.jf, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i106.i

._crit_edge.i.i.i.i106.i:                         ; preds = %.noexc.i111.i, %.noexc112.i
  %i.jm = phi ptr [ %i.jk, %.noexc.i111.i ], [ %i.jf, %.noexc112.i ] ; 2 uses
  switch i64 %i.ji, label %bb.bx [
    i64 1, label %bb.bw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i106.i
  %i.jn = load i8, ptr %i.jg, align 1, !tbaa !46
  store i8 %i.jn, ptr %i.jm, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i106.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jg, i64 %i.ji, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i: ; preds = %bb.bx, %bb.bw, %._crit_edge.i.i.i.i106.i
  %i.jo = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !937 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !783
  %i.jq = load ptr, ptr %i.jd, align 8, !tbaa !782
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jo
  store i8 0, ptr %i.jr, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !937
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !32 ; 2 uses
  %i.jw = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !22
  store <2 x ptr> %i.jw, ptr %i.js, align 8, !tbaa !22
  %.not.i.i.i.i.i108.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i108.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !937
  %.not.i.i.i.i.i.i109.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i.i.i109.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !3
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.kb = atomicrmw volatile add ptr %i.jx, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc.i.i.i110.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 56) #28
  br label %.body113.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i107.i
  store ptr %i.jb, ptr %20, align 8, !tbaa !13, !noalias !937
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #27
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %._crit_edge.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit128.i

.body113.thread.i:                                ; preds = %bb.bv
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !937
  br label %bb.co

bb.cf:                                            ; preds = %bb.cc
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %20, align 8, !tbaa !13, !noalias !937
  %.not.i116.i = icmp eq ptr %i.kg, null
  br i1 %.not.i116.i, label %.body113.i, label %bb.cg, !prof !18

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %.body113.i

_ZN5arrow6StatusD2Ev.exit121.i:                   ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !937
  call void @_ZN5arrow17BinaryViewBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !937
  %.not.i.i.i122.i = icmp eq ptr %.sroa.01.0.i, null
  br i1 %.not.i.i.i122.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit121.i
  %i.kh = ptrtoint ptr %.sroa.11.0.i to i64
  %i.ki = ptrtoint ptr %.sroa.01.0.i to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.0.i, i64 noundef %i.kj) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.ch, %_ZN5arrow6StatusD2Ev.exit121.i
  %i.kk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !32, !noalias !937 ; 8 uses
  %.not.i.i123.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i123.i, label %_ZN5arrow6randomL19GenerateBinaryArrayINS_14StringViewTypeEiEESt10shared_ptrINS_5ArrayEEPNS0_20RandomArrayGeneratorEliidSt8optionalIlElPNS_10MemoryPoolE.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kn = load atomic i64, ptr %i.km acquire, align 8 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 4294967297
  %i.kp = trunc i64 %i.kn to i32                  ; 2 uses
  br i1 %i.ko, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.km, align 8, !tbaa !49
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 0, ptr %i.kq, align 4, !tbaa !51
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !52
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #25, !inline_history !969
  %i.ku = load ptr, ptr %i.kl, align 8, !tbaa !52
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #25, !inline_history !969
  br label %_ZN5arrow6randomL19GenerateBinaryArrayINS_14StringViewTypeEiEESt10shared_ptrINS_5ArrayEEPNS0_20RandomArrayGeneratorEliidSt8optionalIlElPNS_10MemoryPoolE.exit

bb.ck:                                            ; preds = %bb.ci
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !937
  %.not.i.i.i124.i = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i124.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ky = add nsw i32 %i.kp, -1
  store i32 %i.ky, ptr %i.km, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125.i

bb.cm:                                            ; preds = %bb.ck
  %i.kz = atomicrmw volatile add ptr %i.km, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i126.i = phi i32 [ %i.kp, %bb.cl ], [ %i.kz, %bb.cm ]
  %i.la = icmp eq i32 %.0.i.i.i.i126.i, 1
  br i1 %i.la, label %bb.cn, label %_ZN5arrow6randomL19GenerateBinaryArrayINS_14StringViewTypeEiEESt10shared_ptrINS_5ArrayEEPNS0_20RandomArrayGeneratorEliidSt8optionalIlElPNS_10MemoryPoolE.exit, !prof !55

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #25
  br label %_ZN5arrow6randomL19GenerateBinaryArrayINS_14StringViewTypeEiEESt10shared_ptrINS_5ArrayEEPNS0_20RandomArrayGeneratorEliidSt8optionalIlElPNS_10MemoryPoolE.exit

.body113.i:                                       ; preds = %bb.cg, %bb.cf, %bb.cb
  %.pn.ph.i = phi { ptr, i32 } [ %i.kf, %bb.cg ], [ %i.kf, %bb.cf ], [ %i.kc, %bb.cb ] ; 2 uses
  %.pr25.i = load ptr, ptr %19, align 8, !tbaa !13, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !937
  %.not.i127.i = icmp eq ptr %.pr25.i, null
  br i1 %.not.i127.i, label %_ZN5arrow6StatusD2Ev.exit128.i, label %bb.co, !prof !56

bb.co:                                            ; preds = %.body113.i, %.body113.thread.i
  %.pn28.i = phi { ptr, i32 } [ %i.ke, %.body113.thread.i ], [ %.pn.ph.i, %.body113.i ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
end_hunk_5
