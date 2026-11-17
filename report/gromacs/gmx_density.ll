Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_density?download=true
inline.NumInlined: 233
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z11gmx_densityiPPc:bb.a
  %i.pz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.pv, i64 noundef 0, i64 noundef %i.px, ptr noundef nonnull %i.pt, i64 noundef %i.py)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qa = load i32, ptr @_ZZ11gmx_densityiPPcE5ngrps, align 4, !tbaa !11
  %i.qb = sext i32 %i.qa to i64
  %i.qc = icmp slt i64 %indvars.iv.next, %i.qb
  br i1 %i.qc, label %.lr.ph, label %._crit_edge, !llvm.loop !109

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %._crit_edge9.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i52, %switch.lookup, %bb.bc, %bb.ba, %._crit_edge, %bb.bn, %bb.bo
  %lpad.loopexit.split-lp405 = landingpad { ptr, i32 }
          cleanup
  br label %.body61

.body61:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %eh.lpad-body62 = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body

bb.bb:                                            ; preds = %._crit_edge
  %i.qd = load i32, ptr @_ZZ11gmx_densityiPPcE7nslices, align 4, !tbaa !11 ; 5 uses
  %i.qe = load ptr, ptr %12, align 8, !tbaa !71   ; 3 uses
  %i.qf = load ptr, ptr %i.pn, align 8, !tbaa !73
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = load float, ptr %i.o, align 4, !tbaa !31
  %i.qi = load i8, ptr @_ZZ11gmx_densityiPPcE7bCenter, align 1, !tbaa !120, !range !121, !noundef !122
  %i.qj = trunc nuw i8 %i.qi to i1                ; 4 uses
  %i.qk = load i8, ptr @_ZZ11gmx_densityiPPcE11bSymmetrize, align 1, !tbaa !120, !range !121, !noundef !122
  %i.ql = trunc nuw i8 %i.qk to i1                ; 2 uses
  %i.qm = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.pr, ptr %i.c, align 8, !tbaa !17
  %i.qn = select i1 %i.ql, ptr @.str.106, ptr @.str.107
  %i.qo = select i1 %i.qj, ptr @.str.108, ptr @.str.109
  %i.qp = load ptr, ptr @_ZZ11gmx_densityiPPcE8dens_opt, align 16, !tbaa !17
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !21
  %switch.tableidx = add i8 %i.qq, -99            ; 3 uses
  %i.qr = icmp ult i8 %switch.tableidx, 12
  br i1 %i.qr, label %switch.hole_check, label %bb.bc

bb.bc:                                            ; preds = %switch.hole_check, %bb.bb
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL12plot_densityPPdPKciN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEfPS2_bbPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.73, i32 noundef 529) #22
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.bc
  unreachable

switch.hole_check:                                ; preds = %bb.bb
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 3077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.bc

switch.lookup:                                    ; preds = %switch.hole_check
  %i.qs = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Z11gmx_densityiPPc, i64 %i.qs
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.qt, ptr %3, align 8, !tbaa !74
  %i.qu = select i1 %i.qj, i64 42, i64 23         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.qu, ptr %i.b, align 8, !tbaa !75
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %bb.bk  ; 2 uses

.noexc.i:                                         ; preds = %.noexc59
  store ptr %i.qv, ptr %3, align 8, !tbaa !26
  %i.qw = load i64, ptr %i.b, align 8, !tbaa !75
  store i64 %i.qw, ptr %i.qt, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.qv, ptr noundef nonnull align 1 dereferenceable(23) %i.qo, i64 %i.qu, i1 false)
  %i.qx = load i64, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !72
  %i.qz = load ptr, ptr %3, align 8, !tbaa !26
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qx
  store i8 0, ptr %i.ra, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.rb, ptr %4, align 8, !tbaa !74
  %i.rc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.rc, ptr %i.a, align 8, !tbaa !75
  %i.rd = icmp ugt i64 %i.rc, 15
  br i1 %i.rd, label %.noexc.i53.i, label %._crit_edge.i.i52.i

.noexc.i53.i:                                     ; preds = %.noexc.i
  %i.re = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55.i unwind label %bb.bl ; 2 uses

.noexc55.i:                                       ; preds = %.noexc.i53.i
  store ptr %i.re, ptr %4, align 8, !tbaa !26
  %i.rf = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.rf, ptr %i.rb, align 8, !tbaa !21
  br label %._crit_edge.i.i52.i

._crit_edge.i.i52.i:                              ; preds = %.noexc55.i, %.noexc.i
  %i.rg = phi ptr [ %i.re, %.noexc55.i ], [ %i.rb, %.noexc.i ] ; 2 uses
  switch i64 %i.rc, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %bb.bf
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i52.i
  %i.rh = load i8, ptr %switch.load, align 1, !tbaa !21
  store i8 %i.rh, ptr %i.rg, align 1, !tbaa !21
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge.i.i52.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rg, ptr nonnull align 1 %switch.load, i64 %i.rc, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %._crit_edge.i.i52.i
  %i.ri = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ri, ptr %i.rj, align 8, !tbaa !72
  %i.rk = load ptr, ptr %4, align 8, !tbaa !26
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.ri
  store i8 0, ptr %i.rl, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.rm = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.qn, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.qm)
          to label %bb.bg unwind label %bb.bm     ; 12 uses

bb.bg:                                            ; preds = %bb.bf
  %i.rn = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.rb
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.bg
  %i.rp = load i64, ptr %i.rb, align 8, !tbaa !21
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.rr = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.qt
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.rt = load i64, ptr %i.qt, align 8, !tbaa !21
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i.i49, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i50, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, ptr noundef nonnull %i.rw) #21
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i50

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i50: ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %i.rx = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i50
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !21
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i52

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i52:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.sc = ptrtoint ptr %i.qf to i64
  %i.sd = sub i64 %i.sc, %i.qg
  %.fr.i = freeze i64 %i.sd                       ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.fr.i
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.rm, ptr %i.qe, ptr %i.se, ptr noundef %i.qm)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i52
  %i.sf = icmp sgt i32 %i.qd, 0
  br i1 %i.sf, label %.lr.ph8.i, label %._crit_edge9.i

.lr.ph8.i:                                        ; preds = %.noexc60
  %i.sg = fpext float %i.qh to double             ; 4 uses
  %i.sh = uitofp nneg i32 %i.qd to double
  %i.si = fmul nnan double %i.sh, 5.000000e-01    ; 2 uses
  %i.sj = ashr i64 %.fr.i, 5                      ; 3 uses
  %i.sk = icmp sgt i64 %i.sj, 0
  br i1 %i.sk, label %.lr.ph8.split.us.i, label %.lr.ph8.split.i

.lr.ph8.split.us.i:                               ; preds = %.lr.ph8.i
  %i.sl = zext nneg i32 %i.qd to i64              ; 3 uses
  %i.sm = select ninf i1 %i.qj, double %i.si, double 0.000000e+00 ; 2 uses
  br i1 %i.ql, label %.lr.ph8.split.us.split.us.i, label %.lr.ph8.split.us.split.i

.lr.ph8.split.us.split.us.i:                      ; preds = %.lr.ph8.split.us.i, %._crit_edge.split.us.us.us.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %._crit_edge.split.us.us.us.i ], [ 0, %.lr.ph8.split.us.i ] ; 4 uses
  %i.sn = trunc nuw nsw i64 %indvars.iv33.i to i32
  %i.so = uitofp nneg i32 %i.sn to double
  %.pn52.in.i = fsub nnan ninf double %i.so, %i.sm
  %.pn52.i = fadd nnan double %.pn52.in.i, 5.000000e-01
  %.044.in.us.us.i = fmul double %.pn52.i, %i.sg
  %.044.us.us.i = fptrunc double %.044.in.us.us.i to float
  %i.sp = fpext float %.044.us.us.i to double
  %i.sq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.114, double noundef %i.sp) #21 ; 0 uses
  %i.sr = xor i64 %indvars.iv33.i, -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph8.split.us.split.us.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %bb.bi ], [ 0, %.lr.ph8.split.us.split.us.i ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv29.i
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !36 ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv33.i
  %i.sv = load double, ptr %i.su, align 8, !tbaa !67
  %i.sw = getelementptr [8 x i8], ptr %i.st, i64 %i.sl
  %i.sx = getelementptr [8 x i8], ptr %i.sw, i64 %i.sr
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !67
  %i.sz = fadd double %i.sv, %i.sy
  %i.ta = fmul double %i.sz, 5.000000e-01
  %.045.us.us.us.i = fptrunc double %i.ta to float
  %i.tb = load ptr, ptr @_ZZ11gmx_densityiPPcE8dens_opt, align 16, !tbaa !17
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !21
  %i.td = icmp eq i8 %i.tc, 109
  %i.te = fpext float %.045.us.us.us.i to double  ; 2 uses
  %i.tf = fmul double %i.te, f0x3A6071F778ED6AAF
  %i.tg = fdiv double %i.tf, f0x3A53CE9A36F23C11
  %.sink.i = select i1 %i.td, double %i.tg, double %i.te
  %i.th = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.115, double noundef %.sink.i) #21 ; 0 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next30.i, %i.sj
  br i1 %exitcond32.not.i, label %._crit_edge.split.us.us.us.i, label %bb.bi, !llvm.loop !110

._crit_edge.split.us.us.us.i:                     ; preds = %bb.bi
  %fputc.us.us.i = call i32 @fputc(i32 10, ptr %i.rm) ; 0 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %i.sl
  br i1 %exitcond37.not.i, label %._crit_edge9.i, label %.lr.ph8.split.us.split.us.i, !llvm.loop !111

.lr.ph8.split.us.split.i:                         ; preds = %.lr.ph8.split.us.i, %._crit_edge.split.us13.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %._crit_edge.split.us13.i ], [ 0, %.lr.ph8.split.us.i ] ; 3 uses
  %i.ti = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.tj = uitofp nneg i32 %i.ti to double
  %.pn51.in.i = fsub nnan ninf double %i.tj, %i.sm
  %.pn51.i = fadd nnan double %.pn51.in.i, 5.000000e-01
  %.044.in.us.i = fmul double %.pn51.i, %i.sg
  %.044.us.i = fptrunc double %.044.in.us.i to float
  %i.tk = fpext float %.044.us.i to double
  %i.tl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.114, double noundef %i.tk) #21 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph8.split.us.split.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %bb.bj ], [ 0, %.lr.ph8.split.us.split.i ] ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.i54
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !36
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv25.i
  %i.tp = load double, ptr %i.to, align 8, !tbaa !67
  %.045.us12.i = fptrunc double %i.tp to float
  %i.tq = load ptr, ptr @_ZZ11gmx_densityiPPcE8dens_opt, align 16, !tbaa !17
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !21
  %i.ts = icmp eq i8 %i.tr, 109
  %i.tt = fpext float %.045.us12.i to double      ; 2 uses
  %i.tu = fmul double %i.tt, f0x3A6071F778ED6AAF
  %i.tv = fdiv double %i.tu, f0x3A53CE9A36F23C11
  %.sink56.i = select i1 %i.ts, double %i.tv, double %i.tt
  %i.tw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.115, double noundef %.sink56.i) #21 ; 0 uses
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next.i55, %i.sj
  br i1 %exitcond24.not.i, label %._crit_edge.split.us13.i, label %bb.bj, !llvm.loop !110

._crit_edge.split.us13.i:                         ; preds = %bb.bj
  %fputc.us.i = call i32 @fputc(i32 10, ptr %i.rm) ; 0 uses
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next26.i, %i.sl
  br i1 %exitcond28.not.i, label %._crit_edge9.i, label %.lr.ph8.split.us.split.i, !llvm.loop !111

.lr.ph8.split.i:                                  ; preds = %.lr.ph8.i
  br i1 %i.qj, label %.lr.ph8.split.split.us.i, label %.lr.ph8.split.split.i

.lr.ph8.split.split.us.i:                         ; preds = %.lr.ph8.split.i, %.lr.ph8.split.split.us.i
  %.0467.us14.i = phi i32 [ %i.ud, %.lr.ph8.split.split.us.i ], [ 0, %.lr.ph8.split.i ] ; 2 uses
  %i.tx = uitofp nneg i32 %.0467.us14.i to double
  %i.ty = fsub nnan ninf double %i.tx, %i.si
  %i.tz = fadd nnan double %i.ty, 5.000000e-01
  %i.ua = fmul double %i.tz, %i.sg
  %.044.us16.i = fptrunc double %i.ua to float
  %i.ub = fpext float %.044.us16.i to double
  %i.uc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.114, double noundef %i.ub) #21 ; 0 uses
  %fputc.us17.i = call i32 @fputc(i32 10, ptr %i.rm) ; 0 uses
  %i.ud = add nuw nsw i32 %.0467.us14.i, 1        ; 2 uses
  %exitcond22.not.i = icmp eq i32 %i.ud, %i.qd
  br i1 %exitcond22.not.i, label %._crit_edge9.i, label %.lr.ph8.split.split.us.i, !llvm.loop !111

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.split.i, %.lr.ph8.split.split.i
  %.0467.i = phi i32 [ %i.uj, %.lr.ph8.split.split.i ], [ 0, %.lr.ph8.split.i ] ; 2 uses
  %i.ue = uitofp nneg i32 %.0467.i to double
  %i.uf = fadd nnan double %i.ue, 5.000000e-01
  %i.ug = fmul double %i.uf, %i.sg
  %.044.i = fptrunc double %i.ug to float
  %i.uh = fpext float %.044.i to double
  %i.ui = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rm, ptr noundef nonnull @.str.114, double noundef %i.uh) #21 ; 0 uses
  %fputc.i = call i32 @fputc(i32 10, ptr %i.rm)   ; 0 uses
  %i.uj = add nuw nsw i32 %.0467.i, 1             ; 2 uses
  %exitcond.not.i53 = icmp eq i32 %i.uj, %i.qd
  br i1 %exitcond.not.i53, label %._crit_edge9.i, label %.lr.ph8.split.split.i, !llvm.loop !111

bb.bk:                                            ; preds = %.noexc59
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

bb.bl:                                            ; preds = %.noexc.i53.i
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

bb.bm:                                            ; preds = %bb.bf
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.un = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.rb
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %bb.bm
  %i.up = load i64, ptr %i.rb, align 8, !tbaa !21
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i, %bb.bl
  %.pn.i47 = phi { ptr, i32 } [ %i.ul, %bb.bl ], [ %i.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i ], [ %i.um, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ur = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.qt
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i
  %i.ut = load i64, ptr %i.qt, align 8, !tbaa !21
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i, %bb.bk
  %.pn.pn.i = phi { ptr, i32 } [ %i.uk, %bb.bk ], [ %.pn.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i ], [ %.pn.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body61

._crit_edge9.i:                                   ; preds = %.lr.ph8.split.split.i, %.lr.ph8.split.split.us.i, %._crit_edge.split.us13.i, %._crit_edge.split.us.us.us.i, %.noexc60
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.rm)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %._crit_edge9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.uv = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.uw = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.69, i32 noundef 5, ptr noundef nonnull %10)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.uv, ptr noundef %i.uw, ptr noundef nonnull @.str.80)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.ux = load ptr, ptr %12, align 8, !tbaa !71   ; 3 uses
  %i.uy = load ptr, ptr %i.pn, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ux, %i.uy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ve, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ux, %bb.bp ] ; 3 uses
  %i.uz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vb = icmp eq ptr %i.uz, %i.va
  br i1 %i.vb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vc = load i64, ptr %i.va, align 8, !tbaa !21
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vd) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.ve, %i.uy
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.bp
  %i.vf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ux, %bb.bp ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.vg = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !76
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vf to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vk) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.br

bb.br:                                            ; preds = %bb.b, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.vl = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 16, !tbaa !71 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.vm, %i.vo
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70, label %.lr.ph.i.i.i.i65

.lr.ph.i.i.i.i65:                                 ; preds = %bb.br, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68
  %.05.i.i.i.i66 = phi ptr [ %i.vu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68 ], [ %i.vm, %bb.br ] ; 3 uses
  %i.vp = load ptr, ptr %.05.i.i.i.i66, align 8, !tbaa !26 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 16 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i65
  %i.vs = load i64, ptr %i.vq, align 8, !tbaa !21
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vt) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67
  %i.vu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 32 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.vu, %i.vo
  br i1 %.not.i.i.i.i69, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i65, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68
  %.pr.i.i = load ptr, ptr %i.vl, align 16, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.br
  %i.vv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.vm, %bb.br ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70
  %i.vw = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.vx = load ptr, ptr %i.vw, align 16, !tbaa !76
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %i.vv to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.wa) #25
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70, %bb.bs
  %i.wb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !71 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.we = load ptr, ptr %i.wd, align 16, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.wc, %i.we
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70.1, label %.lr.ph.i.i.i.i65.1

.lr.ph.i.i.i.i65.1:                               ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1
  %.05.i.i.i.i66.1 = phi ptr [ %i.wk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1 ], [ %i.wc, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.wf = load ptr, ptr %.05.i.i.i.i66.1, align 8, !tbaa !26 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66.1, i64 16 ; 2 uses
  %i.wh = icmp eq ptr %i.wf, %i.wg
  br i1 %i.wh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67.1: ; preds = %.lr.ph.i.i.i.i65.1
  %i.wi = load i64, ptr %i.wg, align 8, !tbaa !21
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wj) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1: ; preds = %.lr.ph.i.i.i.i65.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67.1
  %i.wk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66.1, i64 32 ; 2 uses
  %.not.i.i.i.i69.1 = icmp eq ptr %i.wk, %i.we
  br i1 %.not.i.i.i.i69.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i65.1, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68.1
  %.pr.i.i.1 = load ptr, ptr %i.wb, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i70.1

end_hunk_0
