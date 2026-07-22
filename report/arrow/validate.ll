inline.NumInlined: 3493
inline.NumDeleted: 1066
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv:bb.a
  br label %.body68.i

.body68.i:                                        ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.ed, %bb.aa ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ] ; 2 uses
  %i.ee = load ptr, ptr %15, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i: ; preds = %.body68.i
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !92, !noalias !47
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i: ; preds = %.body68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i, %bb.z
  %.pn41.i = phi { ptr, i32 } [ %i.ec, %bb.z ], [ %eh.lpad-body69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i ], [ %eh.lpad-body69.i, %.body68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !47
  br label %bb.bj

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18, !noalias !47
  %i.ej = lshr exact i64 %i.ac, 4                 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %.not36139.i = icmp sgt i32 %i.ek, 0
  br i1 %.not36139.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.el = ashr i64 %i.di, 3
  %i.em = and i64 %i.di, 7
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = zext i1 %i.en to i64
  %i.ep = add nsw i64 %i.el, %i.eo                ; 2 uses
  %sext.i = shl i64 %i.ai, 28
  %i.eq = ashr i64 %sext.i, 32                    ; 2 uses
  %.sroa.gep148.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  %.not213.i = icmp eq i64 %.fr, 0
  %i.er = and i64 %i.ej, 2147483647
  %umax54 = call i64 @llvm.umax.i64(i64 %i.er, i64 1) ; 2 uses
  br i1 %.not213.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.thread.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.thread.i.us ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i.us ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !104, !noalias !47 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.et, null
  br i1 %.not.i.i.us, label %.thread.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.split.us
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i.us
  %i.ev = icmp slt i64 %indvars.iv.i.us, %i.eq
  %spec.select.i.us = select i1 %i.ev, ptr %i.eu, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !47
  store i64 0, ptr %i.g, align 8, !tbaa !82, !noalias !47
  %i.ew = load i32, ptr %spec.select.i.us, align 8, !tbaa !107, !noalias !47
  switch i32 %i.ew, label %bb.ad [
    i32 2, label %._crit_edge149.i.us
    i32 0, label %._crit_edge149.i.us
  ]

._crit_edge149.i.us:                              ; preds = %bb.ac, %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !110, !noalias !47
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %.split41.us, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge149.i.us, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !47
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.ad, %.lr.ph.i.split.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next.i.us, %umax54
  br i1 %exitcond55.not, label %._crit_edge.i, label %.lr.ph.i.split.us, !llvm.loop !117

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.fb = icmp slt i64 %indvars.iv.i, %i.eq       ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !104, !noalias !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.split
  %spec.select.i = select i1 %i.fb, ptr %i.fc, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !47
  %i.fe = load i32, ptr %spec.select.i, align 8, !tbaa !107, !noalias !47
  switch i32 %i.fe, label %bb.ar [
    i32 2, label %bb.af
    i32 0, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  store i64 %i.ep, ptr %i.g, align 8, !tbaa !82, !noalias !47
  br label %._crit_edge149.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %spec.select.sroa.sel.i = select i1 %i.fb, ptr %.sroa.gep.i, ptr %.sroa.gep148.i
  %i.ff = load i64, ptr %spec.select.sroa.sel.i, align 8, !tbaa !119, !noalias !47
  %i.fg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.di, i64 %i.ff) ; 2 uses
  %i.fh = extractvalue { i64, i1 } %i.fg, 1
  %i.fi = extractvalue { i64, i1 } %i.fg, 0       ; 2 uses
  store i64 %i.fi, ptr %i.g, align 8, !noalias !47
  br i1 %i.fh, label %.split.us, label %._crit_edge149.i

.split.us:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !47
  %i.fj = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !47
  invoke void %i.fl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.ah unwind label %bb.ak, !noalias !47

bb.ah:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !120
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 1 dereferenceable(40) @.str.7)
          to label %.noexc81.i unwind label %bb.al, !noalias !47

.noexc81.i:                                       ; preds = %bb.ah
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc81.i
  %i.fm = load ptr, ptr %8, align 8, !tbaa !88, !noalias !120 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i: ; preds = %bb.ai
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !92, !noalias !120
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i

bb.aj:                                            ; preds = %.noexc81.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %8, align 8, !tbaa !88, !noalias !120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i: ; preds = %bb.aj
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !92, !noalias !120
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !120
  br label %.body82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !120
  %i.fx = load ptr, ptr %16, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !92, !noalias !47
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !47
  br label %bb.at

bb.ak:                                            ; preds = %.split.us
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i

bb.al:                                            ; preds = %bb.ah
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

.body82.i:                                        ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i
  %eh.lpad-body83.i = phi { ptr, i32 } [ %i.gd, %bb.al ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i ] ; 2 uses
  %i.ge = load ptr, ptr %16, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i: ; preds = %.body82.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !92, !noalias !47
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i: ; preds = %.body82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i, %bb.ak
  %.pn31.i = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %eh.lpad-body83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i ], [ %eh.lpad-body83.i, %.body82.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !47
  br label %bb.as

._crit_edge149.i:                                 ; preds = %bb.ag, %bb.af
  %i.gj = phi i64 [ %i.fi, %bb.ag ], [ %i.ep, %bb.af ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !110, !noalias !47
  %i.gm = icmp slt i64 %i.gl, %i.gj
  br i1 %i.gm, label %.split41.us, label %bb.ar

.split41.us:                                      ; preds = %._crit_edge149.i, %._crit_edge149.i.us
  %.us-phi = phi i64 [ %indvars.iv.i.us, %._crit_edge149.i.us ], [ %indvars.iv.i, %._crit_edge149.i ]
  %.us-phi42 = phi ptr [ %i.es, %._crit_edge149.i.us ], [ %i.fa, %._crit_edge149.i ]
  %i.gn = trunc nuw nsw i64 %.us-phi to i32
  store i32 %i.gn, ptr %i.f, align 4, !tbaa !3, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !47
  %i.go = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !47
  invoke void %i.gq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ap, !noalias !47

bb.am:                                            ; preds = %.split41.us
  %i.gr = load ptr, ptr %1, align 8, !tbaa !39, !noalias !47, !nonnull !40, !align !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.gt = load ptr, ptr %.us-phi42, align 8, !tbaa !104, !noalias !47
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !110, !noalias !47
  store i64 %i.gv, ptr %i.h, align 8, !tbaa !82, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !125
  invoke void @_ZN5arrow8internal12JoinToStringIJRA9_KcRiRA29_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_RKlRA21_S2_RlRA15_S2_lEEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(29) @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(13) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 1 dereferenceable(21) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc93.i unwind label %bb.aq, !noalias !47

.noexc93.i:                                       ; preds = %bb.am
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc93.i
  %i.gw = load ptr, ptr %7, align 8, !tbaa !88, !noalias !125 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i: ; preds = %bb.an
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !92, !noalias !125
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i

bb.ao:                                            ; preds = %.noexc93.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %7, align 8, !tbaa !88, !noalias !125 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i: ; preds = %bb.ao
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !92, !noalias !125
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !125
  br label %.body94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.hh = load ptr, ptr %17, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !92, !noalias !47
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !47
  br label %bb.at

bb.ap:                                            ; preds = %.split41.us
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.aq:                                            ; preds = %bb.am
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i

.body94.i:                                        ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i
  %eh.lpad-body95.i = phi { ptr, i32 } [ %i.hn, %bb.aq ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.ho = load ptr, ptr %17, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %.body94.i
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !92, !noalias !47
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.body94.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %bb.ap
  %.pn33.i = phi { ptr, i32 } [ %i.hm, %bb.ap ], [ %eh.lpad-body95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %eh.lpad-body95.i, %.body94.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !47
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge149.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !47
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %.lr.ph.i.split
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %umax54
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i.split, !llvm.loop !117

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ], [ %.pn31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18, !noalias !47
  br label %bb.bj

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18, !noalias !47
  br label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit.i

._crit_edge.i:                                    ; preds = %.thread.i, %.thread.i.us, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18, !noalias !47
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !130, !range !75, !noalias !47, !noundef !40
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !138, !noalias !47
  %.not135.i = icmp eq ptr %i.hx, null            ; 2 uses
  br i1 %i.hv, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %._crit_edge.i
  br i1 %.not135.i, label %bb.av, label %.thread133.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !47
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !47
  invoke void %i.ia(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.aw unwind label %bb.az, !noalias !47

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !139
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA29_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 1 dereferenceable(29) @.str.13)
          to label %.noexc107.i unwind label %bb.ba, !noalias !47

.noexc107.i:                                      ; preds = %bb.aw
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc107.i
  %i.ib = load ptr, ptr %6, align 8, !tbaa !88, !noalias !139 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i106.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105.i: ; preds = %bb.ax
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !92, !noalias !139
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i106.i

bb.ay:                                            ; preds = %.noexc107.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %6, align 8, !tbaa !88, !noalias !139 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i103.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i102.i: ; preds = %bb.ay
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !92, !noalias !139
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i103.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i103.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !139
  br label %.body108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i106.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !139
  %i.im = load ptr, ptr %18, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i106.i
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !92, !noalias !47
  %i.iq = add i64 %i.ip, 1
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14Decimal256TypeE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !835
  br label %.loopexit3.i

.loopexit3.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit105.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !808
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !278, !noalias !794 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !279, !noalias !794 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit3.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %i.do, %.loopexit3.i ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !noalias !794, !inline_history !280
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i.i.i.i13, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !281

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !278, !noalias !794
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %.loopexit3.i
  %i.ds = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.do, %.loopexit3.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !282, !noalias !794
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #19, !noalias !794, !inline_history !283
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i

_ZN5arrow9ArraySpanD2Ev.exit.i:                   ; preds = %bb.w, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !794
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateDecimalsINS_14Decimal256TypeEEENS_6StatusERKT_.exit

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph32.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.s, %bb.r
  %lpad.loopexit4.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.f
  %lpad.loopexit9.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.noexc.i, %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i92.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i90.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i92.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit4.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit9.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #18, !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !794
  br label %common.resume.i

bb.x:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !838
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateDecimalsINS_14Decimal256TypeEEENS_6StatusERKT_.exit

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateDecimalsINS_14Decimal256TypeEEENS_6StatusERKT_.exit: ; preds = %bb.x, %_ZN5arrow9ArraySpanD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_8ListTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !39, !noalias !841, !nonnull !40, !align !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206, !noalias !841
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138, !noalias !841 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !841
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !844
  store ptr %i.g, ptr %2, align 8, !tbaa !33, !noalias !844
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !36, !range !75, !noalias !844, !noundef !40
  store i8 %i.j, ptr %i.h, align 8, !tbaa !36, !noalias !844
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(9) %2), !noalias !841, !inline_history !847
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !844
  %i.k = load ptr, ptr %5, align 8, !tbaa !149, !noalias !841
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !841
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.f, !noalias !841, !inline_history !848

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !849
  invoke void @_ZN5arrow8internal12JoinToStringIJRA27_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc17 unwind label %bb.g

.noexc17:                                         ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc17
  %i.m = load ptr, ptr %3, align 8, !tbaa !88, !noalias !849 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92, !noalias !849
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc17
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !88, !noalias !849 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !92, !noalias !849
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !849
  br label %.body18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !849
  %i.x = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !92
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !841
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body18
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !92
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %eh.lpad-body19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body19, %.body18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !841
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !841
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !98, !noalias !841
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53, !noalias !841
  %i.an = add nsw i64 %i.am, %i.ak
  %.val.i = load ptr, ptr %1, align 8, !tbaa !39, !noalias !841 ; 6 uses
  %.val46.i = load i8, ptr %i.i, align 8, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53, !noalias !857 ; 3 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 40
  %.val.val.i = load ptr, ptr %i.aq, align 8, !tbaa !77, !noalias !857
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104, !noalias !857 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !464, !noalias !857
  %.not.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i10, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %bb.j

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i: ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i, %bb.h
  %i.av = icmp sgt i64 %i.ap, 0
  br i1 %i.av, label %bb.i, label %_ZN5arrow6StatusD2Ev.exit9.thread

bb.i:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(37) @.str.32)
          to label %_ZN5arrow6StatusD2Ev.exit9 unwind label %bb.s

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i
  store ptr null, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !841
  br label %_ZN5arrow6StatusD2Ev.exit5

bb.j:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !857
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !110, !noalias !857 ; 3 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !82, !noalias !857
  %i.ay = icmp sgt i64 %i.ap, 0
  %i.az = icmp sgt i64 %i.ax, 0
  %or.cond.i11 = or i1 %i.ay, %i.az
  br i1 %or.cond.i11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !98, !noalias !857
  %i.bc = add i64 %i.ap, 1
  %i.bd = add i64 %i.bc, %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = phi i64 [ %i.bd, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.bf = sdiv i64 %i.ax, 4
  %i.bg = icmp slt i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !858
  invoke void @_ZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(30) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(33) @.str.34, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %bb.m
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o, !noalias !841

bb.n:                                             ; preds = %.noexc12
  %i.bi = load ptr, ptr %4, align 8, !tbaa !88, !noalias !858 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !92, !noalias !858
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #19, !noalias !841
  br label %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i

bb.o:                                             ; preds = %.noexc12
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %4, align 8, !tbaa !88, !noalias !858 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i: ; preds = %bb.o
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !92, !noalias !858
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #19, !noalias !841
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !858
  br label %.body

_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !858
  br label %.noexc13

bb.p:                                             ; preds = %bb.l
  %i.bt = trunc nuw i8 %.val46.i to i1
  %i.bu = icmp sgt i64 %i.be, 0
  %or.cond3.i = and i1 %i.bu, %i.bt
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIiEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr nonnull %.val.i, i64 noundef %i.an)
          to label %.noexc13 unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr null, ptr %7, align 8, !tbaa !149, !alias.scope !863, !noalias !841
  br label %.noexc13

.noexc13:                                         ; preds = %bb.q, %bb.r, %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !857
  br label %_ZN5arrow6StatusD2Ev.exit9

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %.noexc13, %bb.i
  %.pr = load ptr, ptr %7, align 8, !tbaa !149    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !841
  %i.bv = icmp eq ptr %.pr, null
  br i1 %i.bv, label %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit9
  %.pre = load ptr, ptr %1, align 8, !tbaa !39, !noalias !841
  br label %_ZN5arrow6StatusD2Ev.exit5

bb.s:                                             ; preds = %bb.q, %bb.m, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i
  %.pn35.i = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i ], [ %i.bw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !841
  br label %bb.ag

_ZN5arrow6StatusD2Ev.exit5:                       ; preds = %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge, %_ZN5arrow6StatusD2Ev.exit9.thread
  %8 = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge ], [ %.val.i, %_ZN5arrow6StatusD2Ev.exit9.thread ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !53 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %bb.t, label %bb.af

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !181, !range !75, !noundef !40
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.by
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 4 uses
  %i.cp = icmp slt i32 %i.cm, 0
  %i.cq = icmp slt i32 %i.co, 0
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.71)
          to label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !841
  %i.cs = sub nsw i32 %i.co, %i.cm                ; 2 uses
  store i32 %i.cs, ptr %i.b, align 4, !tbaa !3, !noalias !841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !841
  %i.ct = load i64, ptr %i.al, align 8, !tbaa !53 ; 4 uses
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !82, !noalias !841
  %i.cu = sext i32 %i.cs to i64
  %i.cv = icmp slt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5arrow6Status7InvalidIJRA33_KcRKiRA36_S2_RKlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(33) @.str.72, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(36) @.str.73, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.21)
          to label %.critedge.critedge.i unwind label %bb.z, !inline_history !848

bb.z:                                             ; preds = %bb.ab, %bb.ad, %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !841
  br label %bb.ag

bb.aa:                                            ; preds = %bb.x
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = icmp slt i64 %i.ct, %i.cx
  %i.cz = zext nneg i32 %i.co to i64
  %i.da = icmp slt i64 %i.ct, %i.cz
  %or.cond42.i = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond42.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5arrow6Status8FromArgsIJRA40_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(40) @.str.74)
          to label %.critedge.critedge.i unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.db = icmp samesign ugt i32 %i.cm, %i.co
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(51) @.str.75)
          to label %.critedge.critedge.i unwind label %bb.z

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !841
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t, %_ZN5arrow6StatusD2Ev.exit5
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !866
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit

.critedge.critedge.i:                             ; preds = %bb.ad, %bb.ab, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !841
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit

bb.ag:                                            ; preds = %bb.z, %bb.w, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn35.i, %.body ], [ %i.cw, %bb.z ], [ %i.cr, %bb.w ]
  %i.dc = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ah, !prof !182

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !869, !range !75, !noundef !40
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !841
  resume { ptr, i32 } %.pn37.pn.pn.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZN5arrow6StatusD2Ev.exit9, %bb.af, %.critedge.critedge.i
  %i.dg = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %.not.i2 = icmp eq ptr %i.dg, null
  br i1 %.not.i2, label %_ZN5arrow6StatusD2Ev.exit3, label %bb.aj, !prof !182

bb.aj:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZN5arrow6StatusD2Ev.exit3, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit3

_ZN5arrow6StatusD2Ev.exit3:                       ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_8ListTypeEEENS_6StatusERKT_.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !841
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_13LargeListTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !39, !noalias !875, !nonnull !40, !align !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206, !noalias !875
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138, !noalias !875 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !875
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !878
  store ptr %i.g, ptr %2, align 8, !tbaa !33, !noalias !878
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !36, !range !75, !noalias !878, !noundef !40
  store i8 %i.j, ptr %i.h, align 8, !tbaa !36, !noalias !878
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(9) %2), !noalias !875, !inline_history !881
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !878
  %i.k = load ptr, ptr %5, align 8, !tbaa !149, !noalias !875
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !875
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.f, !noalias !875, !inline_history !882

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !883
  invoke void @_ZN5arrow8internal12JoinToStringIJRA27_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc17 unwind label %bb.g

.noexc17:                                         ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc17
  %i.m = load ptr, ptr %3, align 8, !tbaa !88, !noalias !883 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92, !noalias !883
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc17
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !88, !noalias !883 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !92, !noalias !883
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !883
  br label %.body18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !883
  %i.x = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !92
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !875
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body18
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !92
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %eh.lpad-body19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body19, %.body18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !875
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !875
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !98, !noalias !875
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53, !noalias !875
  %i.an = add nsw i64 %i.am, %i.ak
  %.val.i = load ptr, ptr %1, align 8, !tbaa !39, !noalias !875 ; 6 uses
  %.val45.i = load i8, ptr %i.i, align 8, !noalias !875
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53, !noalias !891 ; 3 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 40
  %.val.val.i = load ptr, ptr %i.aq, align 8, !tbaa !77, !noalias !891
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104, !noalias !891 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !464, !noalias !891
  %.not.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i10, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %bb.j

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i: ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i, %bb.h
  %i.av = icmp sgt i64 %i.ap, 0
  br i1 %i.av, label %bb.i, label %_ZN5arrow6StatusD2Ev.exit9.thread

bb.i:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(37) @.str.32)
          to label %_ZN5arrow6StatusD2Ev.exit9 unwind label %bb.s

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i
  store ptr null, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !875
  br label %_ZN5arrow6StatusD2Ev.exit5

bb.j:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !891
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !110, !noalias !891 ; 3 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !82, !noalias !891
  %i.ay = icmp sgt i64 %i.ap, 0
  %i.az = icmp sgt i64 %i.ax, 0
  %or.cond.i11 = or i1 %i.ay, %i.az
  br i1 %or.cond.i11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !98, !noalias !891
  %i.bc = add i64 %i.ap, 1
  %i.bd = add i64 %i.bc, %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = phi i64 [ %i.bd, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.bf = sdiv i64 %i.ax, 8
  %i.bg = icmp slt i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !892
  invoke void @_ZN5arrow8internal12JoinToStringIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(30) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(33) @.str.34, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %bb.m
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o, !noalias !875

bb.n:                                             ; preds = %.noexc12
  %i.bi = load ptr, ptr %4, align 8, !tbaa !88, !noalias !892 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !92, !noalias !892
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #19, !noalias !875
  br label %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i

bb.o:                                             ; preds = %.noexc12
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %4, align 8, !tbaa !88, !noalias !892 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i: ; preds = %bb.o
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !92, !noalias !892
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #19, !noalias !875
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !892
  br label %.body

_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !892
  br label %.noexc13

bb.p:                                             ; preds = %bb.l
  %i.bt = trunc nuw i8 %.val45.i to i1
  %i.bu = icmp sgt i64 %i.be, 0
  %or.cond3.i = and i1 %i.bu, %i.bt
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl20FullyValidateOffsetsIlEENS_6StatusEl(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr nonnull %.val.i, i64 noundef %i.an)
          to label %.noexc13 unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr null, ptr %7, align 8, !tbaa !149, !alias.scope !897, !noalias !875
  br label %.noexc13

.noexc13:                                         ; preds = %bb.q, %bb.r, %_ZN5arrow6Status7InvalidIJRA30_KcRKlRA33_S2_S6_RA14_S2_S6_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !891
  br label %_ZN5arrow6StatusD2Ev.exit9

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %.noexc13, %bb.i
  %.pr = load ptr, ptr %7, align 8, !tbaa !149    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !875
  %i.bv = icmp eq ptr %.pr, null
  br i1 %i.bv, label %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit

_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit9
  %.pre = load ptr, ptr %1, align 8, !tbaa !39, !noalias !875
  br label %_ZN5arrow6StatusD2Ev.exit5

bb.s:                                             ; preds = %bb.q, %bb.m, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i
  %.pn35.i = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i ], [ %i.bw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !875
  br label %bb.ag

_ZN5arrow6StatusD2Ev.exit5:                       ; preds = %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge, %_ZN5arrow6StatusD2Ev.exit9.thread
  %8 = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit9._ZN5arrow6StatusD2Ev.exit5_crit_edge ], [ %.val.i, %_ZN5arrow6StatusD2Ev.exit9.thread ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !53 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %bb.t, label %bb.af

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !181, !range !75, !noundef !40
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !82 ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.by
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !82 ; 4 uses
  %i.cp = icmp slt i64 %i.cm, 0
  %i.cq = icmp slt i64 %i.co, 0
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.71)
          to label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !875
  %i.cs = sub nsw i64 %i.co, %i.cm                ; 2 uses
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !82, !noalias !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !875
  %i.ct = load i64, ptr %i.al, align 8, !tbaa !53 ; 4 uses
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !82, !noalias !875
  %i.cu = icmp slt i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5arrow6Status7InvalidIJRA33_KcRKlRA36_S2_S6_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(33) @.str.72, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(36) @.str.73, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.21)
          to label %.critedge.critedge.i unwind label %bb.z, !inline_history !882

bb.z:                                             ; preds = %bb.ab, %bb.ad, %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !875
  br label %bb.ag

bb.aa:                                            ; preds = %bb.x
  %i.cw = icmp sgt i64 %i.cm, %i.ct
  %i.cx = icmp sgt i64 %i.co, %i.ct
  %or.cond41.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond41.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5arrow6Status8FromArgsIJRA40_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(40) @.str.74)
          to label %.critedge.critedge.i unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cy = icmp samesign ugt i64 %i.cm, %i.co
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(51) @.str.75)
          to label %.critedge.critedge.i unwind label %bb.z

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !875
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t, %_ZN5arrow6StatusD2Ev.exit5
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !900
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit

.critedge.critedge.i:                             ; preds = %bb.ad, %bb.ab, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !875
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit

bb.ag:                                            ; preds = %bb.z, %bb.w, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn35.i, %.body ], [ %i.cv, %bb.z ], [ %i.cr, %bb.w ]
  %i.cz = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ah, !prof !182

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !875
  resume { ptr, i32 } %.pn37.pn.pn.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZN5arrow6StatusD2Ev.exit9, %bb.af, %.critedge.critedge.i
  %i.dd = load ptr, ptr %5, align 8, !tbaa !149   ; 2 uses
  %.not.i2 = icmp eq ptr %i.dd, null
  br i1 %.not.i2, label %_ZN5arrow6StatusD2Ev.exit3, label %bb.aj, !prof !182

bb.aj:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit3, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit3

_ZN5arrow6StatusD2Ev.exit3:                       ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListLikeINS_13LargeListTypeEEENS_6StatusERKT_.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !875
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_12ListViewTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !39, !noalias !903, !nonnull !40, !align !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206, !noalias !903
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138, !noalias !903 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !906
  store ptr %i.i, ptr %2, align 8, !tbaa !33, !noalias !906
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !36, !range !75, !noalias !906, !noundef !40
  store i8 %i.l, ptr %i.j, align 8, !tbaa !36, !noalias !906
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %2), !noalias !903, !inline_history !909
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !906
  %i.m = load ptr, ptr %7, align 8, !tbaa !149, !noalias !903
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !903
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.c unwind label %bb.f, !noalias !903, !inline_history !910

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !911
  invoke void @_ZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(35) @.str.76, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc14
  %i.o = load ptr, ptr %3, align 8, !tbaa !88, !noalias !911 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !92, !noalias !911
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc14
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !88, !noalias !911 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !tbaa !92, !noalias !911
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !911
  br label %.body15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !911
  %i.z = load ptr, ptr %8, align 8, !tbaa !88     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !92
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !903
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListViewINS_12ListViewTypeEEENS_6StatusERKT_.exit

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ] ; 2 uses
  %i.ag = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body15
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !92
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %eh.lpad-body16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body16, %.body15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !903
  br label %.body

bb.h:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53, !noalias !903 ; 4 uses
  %.val.i = load ptr, ptr %1, align 8, !tbaa !39, !noalias !903 ; 5 uses
  %.val10.i = load i8, ptr %i.k, align 8, !noalias !903
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.an = getelementptr i8, ptr %.val.i, i64 40
  %.val9.val.i = load ptr, ptr %i.an, align 8, !tbaa !77, !noalias !916 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val9.val.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104, !noalias !916 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !464, !noalias !916 ; 2 uses
  %.not1.i = icmp eq ptr %i.ar, null
  br i1 %.not1.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i, label %bb.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.thread.i: ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i, %bb.h
  invoke void @_ZN5arrow6Status8FromArgsIJRA23_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(23) @.str.77)
          to label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl16ValidateListViewINS_12ListViewTypeEEENS_6StatusERKT_.exit unwind label %bb.ab

bb.i:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val9.val.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104, !noalias !916 ; 3 uses
  %.not.i.i.i11.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i11.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit12.thread.i, label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit12.i

_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl13IsBufferValidEi.exit12.i: ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a
  %i.aco = icmp eq ptr %i.acn, null
  br i1 %i.aco, label %_ZN5arrow6StatusD2Ev.exit86, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.ct unwind label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN5arrow6Status7InvalidIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.107, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.acp = load ptr, ptr %58, align 8, !tbaa !88  ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.acr = icmp eq ptr %i.acp, %i.acq
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.cu
  %i.acs = load i64, ptr %i.acq, align 8, !tbaa !92
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.act) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.acu = load ptr, ptr %57, align 8, !tbaa !149 ; 2 uses
  %.not.i78 = icmp eq ptr %i.acu, null
  br i1 %.not.i78, label %_ZN5arrow6StatusD2Ev.exit79, label %bb.cv, !prof !182

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 1
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !869, !range !75, !noundef !40
  %i.acx = trunc nuw i8 %i.acw to i1
  br i1 %i.acx, label %_ZN5arrow6StatusD2Ev.exit79, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %57) #18
  br label %_ZN5arrow6StatusD2Ev.exit79

_ZN5arrow6StatusD2Ev.exit79:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %.critedge

bb.cx:                                            ; preds = %.invoke, %bb.cq
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.cy:                                            ; preds = %bb.cs
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.cz:                                            ; preds = %bb.ct
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = load ptr, ptr %58, align 8, !tbaa !88  ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.cz
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !92
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.adf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.cy
  %.pn21 = phi { ptr, i32 } [ %i.acz, %bb.cy ], [ %i.ada, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.ada, %bb.cz ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.adg = load ptr, ptr %57, align 8, !tbaa !149 ; 2 uses
  %.not.i83 = icmp eq ptr %i.adg, null
  br i1 %.not.i83, label %.body37, label %bb.da, !prof !182

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !869, !range !75, !noundef !40
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %.body37, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %57) #18
  br label %.body37

.body37:                                          ; preds = %bb.db, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.cx, %.body.i516.i.i, %bb.ch, %.body.i446.i.i, %bb.bx, %.body.i376.i.i, %bb.bn, %.body.i306.i.i, %bb.bd, %.body.i236.i.i, %bb.at, %.body.i166.i.i, %bb.aj, %.body.i96.i.i, %bb.z, %.body.i.i.i, %bb.p
  %.pn21.pn = phi { ptr, i32 } [ %eh.lpad-body.i517.i.i, %.body.i516.i.i ], [ %i.acy, %bb.cx ], [ %eh.lpad-body.i447.i.i, %.body.i446.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i97.i.i, %.body.i96.i.i ], [ %eh.lpad-body.i167.i.i, %.body.i166.i.i ], [ %eh.lpad-body.i237.i.i, %.body.i236.i.i ], [ %eh.lpad-body.i307.i.i, %.body.i306.i.i ], [ %eh.lpad-body.i377.i.i, %.body.i376.i.i ], [ %i.bz, %bb.p ], [ %i.fi, %bb.z ], [ %i.ir, %bb.aj ], [ %i.ma, %bb.at ], [ %i.pj, %bb.bd ], [ %i.ss, %bb.bn ], [ %i.wb, %bb.bx ], [ %i.zi, %bb.ch ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn21, %bb.da ], [ %.pn21, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.df

_ZN5arrow6StatusD2Ev.exit86:                      ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit86, %_ZN5arrow6StatusD2Ev.exit34
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1510
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit79, %_ZN5arrow6StatusD2Ev.exit, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.adk = load ptr, ptr %54, align 8, !tbaa !149 ; 2 uses
  %.not.i87 = icmp eq ptr %i.adk, null
  br i1 %.not.i87, label %_ZN5arrow6StatusD2Ev.exit88, label %bb.dd, !prof !182

bb.dd:                                            ; preds = %.critedge
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 1
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !869, !range !75, !noundef !40
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %_ZN5arrow6StatusD2Ev.exit88, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #18
  br label %_ZN5arrow6StatusD2Ev.exit88

_ZN5arrow6StatusD2Ev.exit88:                      ; preds = %.critedge, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  br label %bb.di

bb.df:                                            ; preds = %.body37, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %.body37 ], [ %i.bk, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  %i.ado = load ptr, ptr %54, align 8, !tbaa !149 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ado, null
  br i1 %.not.i89, label %_ZN5arrow6StatusD2Ev.exit90, label %bb.dg, !prof !182

bb.dg:                                            ; preds = %bb.df
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !869, !range !75, !noundef !40
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %_ZN5arrow6StatusD2Ev.exit90, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #18
  br label %_ZN5arrow6StatusD2Ev.exit90

_ZN5arrow6StatusD2Ev.exit90:                      ; preds = %bb.df, %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  resume { ptr, i32 } %.pn21.pn.pn

bb.di:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit88, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_17RunEndEncodedTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %5 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %8 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %11 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !419
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1052
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !165
  switch i32 %i.v, label %bb.ev [
    i32 5, label %bb.b
    i32 7, label %bb.az
    i32 9, label %bb.cx
  ]

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1513, !nonnull !40, !align !41 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !205, !noalias !1513
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !206, !noalias !1513 ; 5 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 32
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = ashr exact i64 %i.ad, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18, !noalias !1513
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !82, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !1516
  call void @_ZN5arrow8internal12JoinToStringIJRA62_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(62) @.str.114, ptr noundef nonnull align 8 dereferenceable(8) %i.k), !noalias !1516
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %9, align 8, !tbaa !88, !noalias !1516 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56: ; preds = %bb.d
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !92, !noalias !1516
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %9, align 8, !tbaa !88, !noalias !1516 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i53: ; preds = %bb.e
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !92, !noalias !1516
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i54

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZN5arrow6StatusD2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i99, %_ZN5arrow6StatusD2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i76, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i54
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i54 ], [ %.pn40.pn.pn.pn.pn.pn.i, %_ZN5arrow6StatusD2Ev.exit ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i76 ], [ %.pn40.pn.pn.pn.pn.pn.i9, %_ZN5arrow6StatusD2Ev.exit59 ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i99 ], [ %.pn40.pn.pn.pn.pn.pn.i23, %_ZN5arrow6StatusD2Ev.exit82 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i54: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !1516
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18, !noalias !1513
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.f:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %.not36.i = icmp eq ptr %i.as, %i.at
  br i1 %.not36.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104
  %.not.i52 = icmp eq ptr %i.au, null
  br i1 %.not.i52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.115)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !138 ; 2 uses
  %.not109 = icmp eq ptr %i.aw, null
  br i1 %.not109, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.116)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !138
  %.not110 = icmp eq ptr %i.ax, null
  br i1 %.not110, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.117)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !1521
  store ptr %i.aw, ptr %10, align 8, !tbaa !33, !noalias !1521
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !36, !range !75, !noalias !1521, !noundef !40
  store i8 %i.ba, ptr %i.ay, align 8, !tbaa !36, !noalias !1521
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(9) %10), !inline_history !1524
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !1521
  %i.bb = load ptr, ptr %21, align 8, !tbaa !149
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.o unwind label %bb.p, !inline_history !1525

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.at unwind label %bb.p, !inline_history !1525

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18, !noalias !1513
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !1526
  store ptr %i.bf, ptr %11, align 8, !tbaa !33, !noalias !1526
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bh = load i8, ptr %i.az, align 8, !tbaa !36, !range !75, !noalias !1526, !noundef !40
  store i8 %i.bh, ptr %i.bg, align 8, !tbaa !36, !noalias !1526
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(9) %11)
          to label %bb.r unwind label %bb.u, !inline_history !1524

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !1526
  %i.bi = load ptr, ptr %22, align 8, !tbaa !149
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.t unwind label %bb.v, !inline_history !1525

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5arrow6Status7InvalidIJRA23_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(23) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %.critedge.i unwind label %bb.v, !inline_history !1525

bb.u:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit42

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18, !noalias !1513
  %i.bn = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1513, !nonnull !40, !align !41 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = invoke noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bn)
          to label %bb.x unwind label %bb.y, !inline_history !1525

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1513, !nonnull !40, !align !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !98
  invoke void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef %i.bq, i64 noundef %i.bt)
          to label %_ZN5arrow6StatusD2Ev.exit50 unwind label %bb.y, !inline_history !1525

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.x
  %i.bu = load ptr, ptr %23, align 8, !tbaa !149  ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18, !noalias !1513
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN5arrow6StatusD2Ev.exit46, label %.critedge.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18, !noalias !1513
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !138
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !53
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit46
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1529
  br label %.critedge.i

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit46
  %i.cb = load i8, ptr %i.az, align 8, !tbaa !36, !range !75, !noalias !1513, !noundef !40
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18, !noalias !1513
  %i.cd = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1513, !nonnull !40, !align !41
  invoke void @_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %24, ptr noundef nonnull align 8 dereferenceable(120) %i.cd)
          to label %bb.ac unwind label %bb.ae, !inline_history !1525

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !278 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !232
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.ch ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !227 ; 2 uses
  %i.cn = load i16, ptr %i.ck, align 2, !tbaa !1230 ; 2 uses
  %i.co = icmp slt i16 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5arrow6Status7InvalidIJRA62_KcRKsEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(62) @.str.120, ptr noundef nonnull align 2 dereferenceable(2) %i.ck)
          to label %.critedge48.i unwind label %bb.af, !inline_history !1525

bb.ae:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18, !noalias !1513
  %.not39.i.not129 = icmp sgt i64 %i.cm, 1
  br i1 %.not39.i.not129, label %.lr.ph131.preheader, label %.critedge50.i

.lr.ph131.preheader:                              ; preds = %bb.ag
  %i.cr = zext nneg i16 %i.cn to i64
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %bb.aj
  %storemerge.i130 = phi i64 [ %i.cy, %bb.aj ], [ 1, %.lr.ph131.preheader ] ; 4 uses
  %i.cs = phi i64 [ %i.cv, %bb.aj ], [ %i.cr, %.lr.ph131.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18, !noalias !1513
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %storemerge.i130
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !1230
  %i.cv = sext i16 %i.cu to i64                   ; 3 uses
  store i64 %i.cv, ptr %i.n, align 8, !tbaa !82, !noalias !1513
  %.not38.i = icmp slt i64 %i.cs, %i.cv
  br i1 %.not38.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph131
  store i64 %storemerge.i130, ptr %i.m, align 8, !tbaa !82, !noalias !1513
  store i64 %i.cs, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18, !noalias !1513
  %i.cw = add nsw i64 %storemerge.i130, -1
  store i64 %i.cw, ptr %i.o, align 8, !tbaa !82, !noalias !1513
  invoke void @_ZN5arrow6Status7InvalidIJRA80_KcRlRA6_S2_RKlRA15_S2_lS7_S5_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(80) @.str.121, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(15) @.str.123, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.ak unwind label %bb.ai, !inline_history !1525

bb.ai:                                            ; preds = %bb.ah
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18, !noalias !1513
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18, !noalias !1513
  %i.cy = add nuw nsw i64 %storemerge.i130, 1     ; 2 uses
  %exitcond148.not = icmp eq i64 %i.cy, %i.cm
  br i1 %exitcond148.not, label %.critedge50.i, label %.lr.ph131, !llvm.loop !1532

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18, !noalias !1513
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %24) #18, !inline_history !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !1513
  br label %.critedge.i

bb.al:                                            ; preds = %bb.ai, %bb.af
  %.pn40.pn.i = phi { ptr, i32 } [ %i.cx, %bb.ai ], [ %i.cq, %bb.af ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %24) #18, !inline_history !1525
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ae
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.i, %bb.al ], [ %i.cp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !1513
  br label %bb.aq

.critedge50.i:                                    ; preds = %bb.aj, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18, !noalias !1513
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %24) #18, !inline_history !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !1513
  br label %bb.an

bb.an:                                            ; preds = %.critedge50.i, %bb.aa
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1533
  br label %.critedge.i

.critedge48.i:                                    ; preds = %bb.ad
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %24) #18, !inline_history !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !1513
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ak, %.critedge48.i, %bb.an, %bb.z, %_ZN5arrow6StatusD2Ev.exit50, %bb.t
  %i.cz = load ptr, ptr %22, align 8, !tbaa !149  ; 2 uses
  %.not.i43 = icmp eq ptr %i.cz, null
  br i1 %.not.i43, label %_ZN5arrow6StatusD2Ev.exit44, label %bb.ao, !prof !182

bb.ao:                                            ; preds = %.critedge.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6StatusD2Ev.exit44, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  br label %_ZN5arrow6StatusD2Ev.exit44

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %.critedge.i, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18, !noalias !1513
  br label %bb.at

bb.aq:                                            ; preds = %bb.am, %bb.y, %bb.v
  %.pn40.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.i, %bb.am ], [ %i.bw, %bb.y ], [ %i.bm, %bb.v ] ; 3 uses
  %i.dd = load ptr, ptr %22, align 8, !tbaa !149  ; 2 uses
  %.not.i41 = icmp eq ptr %i.dd, null
  br i1 %.not.i41, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.ar, !prof !182

bb.ar:                                            ; preds = %bb.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #18
  br label %_ZN5arrow6StatusD2Ev.exit42

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.u
  %.pn40.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %.pn40.pn.pn.pn.i, %bb.aq ], [ %.pn40.pn.pn.pn.i, %bb.ar ], [ %.pn40.pn.pn.pn.i, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18, !noalias !1513
  br label %bb.aw

bb.at:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44, %bb.o
  %i.dh = load ptr, ptr %21, align 8, !tbaa !149  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dh, null
  br i1 %.not.i39, label %_ZN5arrow6StatusD2Ev.exit40, label %bb.au, !prof !182

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !869, !range !75, !noundef !40
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6StatusD2Ev.exit40, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  br label %_ZN5arrow6StatusD2Ev.exit40

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !1513
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit42, %bb.p
  %.pn40.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.i, %_ZN5arrow6StatusD2Ev.exit42 ], [ %i.be, %bb.p ]
  %i.dl = load ptr, ptr %21, align 8, !tbaa !149  ; 2 uses
  %.not.i38 = icmp eq ptr %i.dl, null
  br i1 %.not.i38, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ax, !prof !182

bb.ax:                                            ; preds = %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !869, !range !75, !noundef !40
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.aw, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !1513
  br label %common.resume

bb.az:                                            ; preds = %bb.a
  %i.dp = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1536, !nonnull !40, !align !41 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !205, !noalias !1536
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !206, !noalias !1536 ; 5 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 2 uses
  %.not.i7 = icmp eq i64 %i.dw, 32
  br i1 %.not.i7, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dx = ashr exact i64 %i.dw, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18, !noalias !1536
  store i64 %i.dx, ptr %i.f, align 8, !tbaa !82, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !1539
  call void @_ZN5arrow8internal12JoinToStringIJRA62_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(62) @.str.114, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !1539
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dy = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1539 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78: ; preds = %bb.bb
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !92, !noalias !1539
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #19
  br label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit80

bb.bc:                                            ; preds = %bb.ba
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %6, align 8, !tbaa !88, !noalias !1539 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i75: ; preds = %bb.bc
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !92, !noalias !1539
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i76: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1539
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit80: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18, !noalias !1536
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.bd:                                            ; preds = %bb.az
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !76
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !77 ; 2 uses
  %.not36.i8 = icmp eq ptr %i.el, %i.em
  br i1 %.not36.i8, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !104
  %.not.i74 = icmp eq ptr %i.en, null
  br i1 %.not.i74, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.115)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !138 ; 2 uses
  %.not107 = icmp eq ptr %i.ep, null
  br i1 %.not107, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.116)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.bi:                                            ; preds = %bb.bg
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !138
  %.not108 = icmp eq ptr %i.eq, null
  br i1 %.not108, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.117)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !1544
  store ptr %i.ep, ptr %7, align 8, !tbaa !33, !noalias !1544
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.et = load i8, ptr %i.es, align 8, !tbaa !36, !range !75, !noalias !1544, !noundef !40
  store i8 %i.et, ptr %i.er, align 8, !tbaa !36, !noalias !1544
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(9) %7), !inline_history !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !1544
  %i.eu = load ptr, ptr %17, align 8, !tbaa !149
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bm unwind label %bb.bn, !inline_history !1548

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %i.ew)
          to label %bb.cr unwind label %bb.bn, !inline_history !1548

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !1536
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !1549
  store ptr %i.ey, ptr %8, align 8, !tbaa !33, !noalias !1549
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fa = load i8, ptr %i.es, align 8, !tbaa !36, !range !75, !noalias !1549, !noundef !40
  store i8 %i.fa, ptr %i.ez, align 8, !tbaa !36, !noalias !1549
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(9) %8)
          to label %bb.bp unwind label %bb.bs, !inline_history !1547

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !1549
  %i.fb = load ptr, ptr %18, align 8, !tbaa !149
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.br unwind label %bb.bt, !inline_history !1548

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5arrow6Status7InvalidIJRA23_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(23) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %i.fd)
          to label %.critedge.i12 unwind label %bb.bt, !inline_history !1548

bb.bs:                                            ; preds = %bb.bo
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit63

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bu:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !1536
  %i.fg = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1536, !nonnull !40, !align !41 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !53
  %i.fj = invoke noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.fg)
          to label %bb.bv unwind label %bb.bw, !inline_history !1548

bb.bv:                                            ; preds = %bb.bu
  %i.fk = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1536, !nonnull !40, !align !41
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !98
  invoke void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 noundef %i.fj, i64 noundef %i.fm)
          to label %_ZN5arrow6StatusD2Ev.exit71 unwind label %bb.bw, !inline_history !1548

_ZN5arrow6StatusD2Ev.exit71:                      ; preds = %bb.bv
  %i.fn = load ptr, ptr %19, align 8, !tbaa !149  ; 2 uses
  store ptr %i.fn, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !1536
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN5arrow6StatusD2Ev.exit67, label %.critedge.i12

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !1536
  br label %bb.co

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit71
  %i.fq = load ptr, ptr %i.dt, align 8, !tbaa !138
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !53
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1552
  br label %.critedge.i12

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.fu = load i8, ptr %i.es, align 8, !tbaa !36, !range !75, !noalias !1536, !noundef !40
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.bz, label %bb.cl

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !1536
  %i.fw = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1536, !nonnull !40, !align !41
  invoke void @_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %20, ptr noundef nonnull align 8 dereferenceable(120) %i.fw)
          to label %bb.ca unwind label %bb.cc, !inline_history !1548

bb.ca:                                            ; preds = %bb.bz
  %i.fx = getelementptr inbounds nuw i8, ptr %20, i64 104
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !278 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !231
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !232
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.ga ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !227 ; 2 uses
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !3  ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 1
  br i1 %i.gh, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN5arrow6Status7InvalidIJRA62_KcRKiEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(62) @.str.120, ptr noundef nonnull align 4 dereferenceable(4) %i.gd)
          to label %.critedge48.i20 unwind label %bb.cd, !inline_history !1548

bb.cc:                                            ; preds = %bb.bz
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cd:                                            ; preds = %bb.cb
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18, !noalias !1536
  %.not39.i17.not120 = icmp sgt i64 %i.gf, 1
  br i1 %.not39.i17.not120, label %.lr.ph122.preheader, label %.critedge50.i19

.lr.ph122.preheader:                              ; preds = %bb.ce
  %i.gk = zext nneg i32 %i.gg to i64
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.ch
  %storemerge.i16121 = phi i64 [ %i.gr, %bb.ch ], [ 1, %.lr.ph122.preheader ] ; 4 uses
  %i.gl = phi i64 [ %i.go, %bb.ch ], [ %i.gk, %.lr.ph122.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18, !noalias !1536
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %storemerge.i16121
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = sext i32 %i.gn to i64                   ; 3 uses
  store i64 %i.go, ptr %i.i, align 8, !tbaa !82, !noalias !1536
  %.not38.i18 = icmp slt i64 %i.gl, %i.go
  br i1 %.not38.i18, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph122
  store i64 %storemerge.i16121, ptr %i.h, align 8, !tbaa !82, !noalias !1536
  store i64 %i.gl, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18, !noalias !1536
  %i.gp = add nsw i64 %storemerge.i16121, -1
  store i64 %i.gp, ptr %i.j, align 8, !tbaa !82, !noalias !1536
  invoke void @_ZN5arrow6Status7InvalidIJRA80_KcRlRA6_S2_RKlRA15_S2_lS7_S5_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(80) @.str.121, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(15) @.str.123, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ci unwind label %bb.cg, !inline_history !1548

bb.cg:                                            ; preds = %bb.cf
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !1536
  br label %bb.cj

bb.ch:                                            ; preds = %.lr.ph122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18, !noalias !1536
  %i.gr = add nuw nsw i64 %storemerge.i16121, 1   ; 2 uses
  %exitcond147.not = icmp eq i64 %i.gr, %i.gf
  br i1 %exitcond147.not, label %.critedge50.i19, label %.lr.ph122, !llvm.loop !1555

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !1536
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %20) #18, !inline_history !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !1536
  br label %.critedge.i12

bb.cj:                                            ; preds = %bb.cg, %bb.cd
  %.pn40.pn.i15 = phi { ptr, i32 } [ %i.gq, %bb.cg ], [ %i.gj, %bb.cd ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %20) #18, !inline_history !1548
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cc
  %.pn40.pn.pn.i14 = phi { ptr, i32 } [ %.pn40.pn.i15, %bb.cj ], [ %i.gi, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !1536
  br label %bb.co

.critedge50.i19:                                  ; preds = %bb.ch, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !1536
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %20) #18, !inline_history !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !1536
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge50.i19, %bb.by
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1556
  br label %.critedge.i12

.critedge48.i20:                                  ; preds = %bb.cb
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %20) #18, !inline_history !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !1536
  br label %.critedge.i12

.critedge.i12:                                    ; preds = %bb.ci, %.critedge48.i20, %bb.cl, %bb.bx, %_ZN5arrow6StatusD2Ev.exit71, %bb.br
  %i.gs = load ptr, ptr %18, align 8, !tbaa !149  ; 2 uses
  %.not.i64 = icmp eq ptr %i.gs, null
  br i1 %.not.i64, label %_ZN5arrow6StatusD2Ev.exit65, label %bb.cm, !prof !182

bb.cm:                                            ; preds = %.critedge.i12
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !869, !range !75, !noundef !40
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6StatusD2Ev.exit65, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  br label %_ZN5arrow6StatusD2Ev.exit65

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %.critedge.i12, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !1536
  br label %bb.cr

bb.co:                                            ; preds = %bb.ck, %bb.bw, %bb.bt
  %.pn40.pn.pn.pn.i11 = phi { ptr, i32 } [ %.pn40.pn.pn.i14, %bb.ck ], [ %i.fp, %bb.bw ], [ %i.ff, %bb.bt ] ; 3 uses
  %i.gw = load ptr, ptr %18, align 8, !tbaa !149  ; 2 uses
  %.not.i62 = icmp eq ptr %i.gw, null
  br i1 %.not.i62, label %_ZN5arrow6StatusD2Ev.exit63, label %bb.cp, !prof !182

bb.cp:                                            ; preds = %bb.co
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !869, !range !75, !noundef !40
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %_ZN5arrow6StatusD2Ev.exit63, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  br label %_ZN5arrow6StatusD2Ev.exit63

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %bb.cq, %bb.cp, %bb.co, %bb.bs
  %.pn40.pn.pn.pn.pn.i10 = phi { ptr, i32 } [ %i.fe, %bb.bs ], [ %.pn40.pn.pn.pn.i11, %bb.co ], [ %.pn40.pn.pn.pn.i11, %bb.cp ], [ %.pn40.pn.pn.pn.i11, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !1536
  br label %bb.cu

bb.cr:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit65, %bb.bm
  %i.ha = load ptr, ptr %17, align 8, !tbaa !149  ; 2 uses
  %.not.i60 = icmp eq ptr %i.ha, null
  br i1 %.not.i60, label %_ZN5arrow6StatusD2Ev.exit61, label %bb.cs, !prof !182

bb.cs:                                            ; preds = %bb.cr
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !869, !range !75, !noundef !40
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %_ZN5arrow6StatusD2Ev.exit61, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  br label %_ZN5arrow6StatusD2Ev.exit61

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %bb.cr, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !1536
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.cu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit63, %bb.bn
  %.pn40.pn.pn.pn.pn.pn.i9 = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.i10, %_ZN5arrow6StatusD2Ev.exit63 ], [ %i.ex, %bb.bn ]
  %i.he = load ptr, ptr %17, align 8, !tbaa !149  ; 2 uses
  %.not.i58 = icmp eq ptr %i.he, null
  br i1 %.not.i58, label %_ZN5arrow6StatusD2Ev.exit59, label %bb.cv, !prof !182

bb.cv:                                            ; preds = %bb.cu
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !869, !range !75, !noundef !40
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %_ZN5arrow6StatusD2Ev.exit59, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  br label %_ZN5arrow6StatusD2Ev.exit59

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !1536
  br label %common.resume

bb.cx:                                            ; preds = %bb.a
  %i.hi = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1559, !nonnull !40, !align !41 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !205, !noalias !1559
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !206, !noalias !1559 ; 5 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %.not.i21 = icmp eq i64 %i.hp, 32
  br i1 %.not.i21, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hq = ashr exact i64 %i.hp, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !1559
  store i64 %i.hq, ptr %i.a, align 8, !tbaa !82, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1562
  call void @_ZN5arrow8internal12JoinToStringIJRA62_KcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(62) @.str.114, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1562
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.hr = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1562 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101: ; preds = %bb.cz
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !92, !noalias !1562
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #19
  br label %_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit103

bb.da:                                            ; preds = %bb.cy
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1562 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i98: ; preds = %bb.da
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !92, !noalias !1562
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i99: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1562
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA62_KcmEEES0_DpOT_.exit103: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !1559
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.db:                                            ; preds = %bb.cx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.id = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !76
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !77 ; 2 uses
  %.not36.i22 = icmp eq ptr %i.ie, %i.if
  br i1 %.not36.i22, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !104
  %.not.i97 = icmp eq ptr %i.ig, null
  br i1 %.not.i97, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZN5arrow6Status8FromArgsIJRA53_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(53) @.str.115)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.de:                                            ; preds = %bb.dc, %bb.db
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  %i.ii = load ptr, ptr %i.hm, align 8, !tbaa !138 ; 2 uses
  %.not = icmp eq ptr %i.ii, null
  br i1 %.not, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.116)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.dg:                                            ; preds = %bb.de
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !138
  %.not106 = icmp eq ptr %i.ij, null
  br i1 %.not106, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.117)
  br label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl21ValidateRunEndEncodedIsEENS_6StatusERKNS_17RunEndEncodedTypeE.exit

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !1567
  store ptr %i.ii, ptr %4, align 8, !tbaa !33, !noalias !1567
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !36, !range !75, !noalias !1567, !noundef !40
  store i8 %i.im, ptr %i.ik, align 8, !tbaa !36, !noalias !1567
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(9) %4), !inline_history !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !1567
  %i.in = load ptr, ptr %13, align 8, !tbaa !149
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ip = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.dk unwind label %bb.dl, !inline_history !1571

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN5arrow6Status7InvalidIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %i.ip)
          to label %bb.ep unwind label %bb.dl, !inline_history !1571

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dm:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !1559
  %i.ir = load ptr, ptr %i.ih, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !1572
  store ptr %i.ir, ptr %5, align 8, !tbaa !33, !noalias !1572
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.it = load i8, ptr %i.il, align 8, !tbaa !36, !range !75, !noalias !1572, !noundef !40
  store i8 %i.it, ptr %i.is, align 8, !tbaa !36, !noalias !1572
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %bb.dn unwind label %bb.dq, !inline_history !1570

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1572
  %i.iu = load ptr, ptr %14, align 8, !tbaa !149
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.iw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.dp unwind label %bb.dr, !inline_history !1571

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN5arrow6Status7InvalidIJRA23_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(23) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %i.iw)
          to label %.critedge.i26 unwind label %bb.dr, !inline_history !1571

bb.dq:                                            ; preds = %bb.dm
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit86

bb.dr:                                            ; preds = %bb.dp, %bb.do
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ds:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !1559
  %i.iz = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1559, !nonnull !40, !align !41 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !53
  %i.jc = invoke noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.iz)
          to label %bb.dt unwind label %bb.du, !inline_history !1571

bb.dt:                                            ; preds = %bb.ds
  %i.jd = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1559, !nonnull !40, !align !41
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !98
  invoke void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 noundef %i.jc, i64 noundef %i.jf)
          to label %_ZN5arrow6StatusD2Ev.exit94 unwind label %bb.du, !inline_history !1571

_ZN5arrow6StatusD2Ev.exit94:                      ; preds = %bb.dt
  %i.jg = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  store ptr %i.jg, ptr %0, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !1559
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %_ZN5arrow6StatusD2Ev.exit90, label %.critedge.i26

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !1559
  br label %bb.em

_ZN5arrow6StatusD2Ev.exit90:                      ; preds = %_ZN5arrow6StatusD2Ev.exit94
  %i.jj = load ptr, ptr %i.hm, align 8, !tbaa !138
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !53
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit90
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !1575
  br label %.critedge.i26

bb.dw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit90
  %i.jn = load i8, ptr %i.il, align 8, !tbaa !36, !range !75, !noalias !1559, !noundef !40
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.dx, label %bb.ej

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !1559
  %i.jp = load ptr, ptr %1, align 8, !tbaa !39, !noalias !1559, !nonnull !40, !align !41
  invoke void @_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(120) %i.jp)
          to label %bb.dy unwind label %bb.ea, !inline_history !1571

bb.dy:                                            ; preds = %bb.dx
  %i.jq = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !278 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !231
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !232
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.jt ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !227 ; 2 uses
  %i.jz = load i64, ptr %i.jw, align 8, !tbaa !82 ; 3 uses
  %i.ka = icmp slt i64 %i.jz, 1
  br i1 %i.ka, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN5arrow6Status7InvalidIJRA62_KcRKlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(62) @.str.120, ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %.critedge48.i34 unwind label %bb.eb, !inline_history !1571

bb.ea:                                            ; preds = %bb.dx
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eb:                                            ; preds = %bb.dz
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ec:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !1559
  store i64 %i.jz, ptr %i.b, align 8, !tbaa !82, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !1559
  store i64 1, ptr %i.c, align 8, !tbaa !82, !noalias !1559
  %.not39.i31.not114 = icmp sgt i64 %i.jy, 1
  br i1 %.not39.i31.not114, label %.lr.ph, label %.critedge50.i33

.lr.ph:                                           ; preds = %bb.ec, %bb.ef
  %storemerge.i30115 = phi i64 [ %i.ki, %bb.ef ], [ 1, %bb.ec ] ; 3 uses
  %i.kd = phi i64 [ %i.kf, %bb.ef ], [ %i.jz, %bb.ec ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !1559
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %storemerge.i30115
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !82 ; 4 uses
  store i64 %i.kf, ptr %i.d, align 8, !tbaa !82, !noalias !1559
  %.not38.i32 = icmp sgt i64 %i.kf, %i.kd
  br i1 %.not38.i32, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !1559
  %i.kg = add nsw i64 %storemerge.i30115, -1
  store i64 %i.kg, ptr %i.e, align 8, !tbaa !82, !noalias !1559
  invoke void @_ZN5arrow6Status7InvalidIJRA80_KcRlRA6_S2_RKlRA15_S2_lS7_S5_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(80) @.str.121, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(15) @.str.123, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.eg unwind label %bb.ee, !inline_history !1571

bb.ee:                                            ; preds = %bb.ed
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !1559
  br label %bb.eh

bb.ef:                                            ; preds = %.lr.ph
  store i64 %i.kf, ptr %i.b, align 8, !tbaa !82, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !1559
  %i.ki = add nuw nsw i64 %storemerge.i30115, 1   ; 3 uses
  store i64 %i.ki, ptr %i.c, align 8, !tbaa !82, !noalias !1559
  %exitcond.not = icmp eq i64 %i.ki, %i.jy
  br i1 %exitcond.not, label %.critedge50.i33, label %.lr.ph, !llvm.loop !1578

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !1559
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %16) #18, !inline_history !1571
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !1559
  br label %.critedge.i26

bb.eh:                                            ; preds = %bb.ee, %bb.eb
  %.pn40.pn.i29 = phi { ptr, i32 } [ %i.kh, %bb.ee ], [ %i.kc, %bb.eb ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %16) #18, !inline_history !1571
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ea
  %.pn40.pn.pn.i28 = phi { ptr, i32 } [ %.pn40.pn.i29, %bb.eh ], [ %i.kb, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !1559
  br label %bb.em

.critedge50.i33:                                  ; preds = %bb.ef, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !1559
end_hunk_2
