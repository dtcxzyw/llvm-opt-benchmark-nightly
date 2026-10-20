Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_setup?download=true
inline.NumInlined: 472
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z14getDDGridSetupRKN3gmx8MDLoggerE6DDRoleRKNS_7MpiCommEiRKNS_13DomdecOptionsERK10DDSettingsRK12DDSystemInfofRK10gmx_mtop_tRK10t_inputrecRKNS_25SeparatePmeRanksPermittedEPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEP11gmx_ddbox_t:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %.noexc39.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc39.i
  store ptr %i.ag, ptr %29, align 8, !tbaa !27, !alias.scope !179
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !28
  store i64 %i.an, ptr %i.af, align 8, !tbaa !28, !alias.scope !179
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.ao = phi i64 [ %i.ak, %bb.j ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !23, !alias.scope !179
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !27
  store i64 0, ptr %i.ap, align 8, !tbaa !23
  store i8 0, ptr %i.ah, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23 ; 2 uses
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.at = sub i64 4611686018427387903, %i.as
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc40.i unwind label %bb.o

.noexc40.i:                                       ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.k
  %i.av = load ptr, ptr %29, align 8, !tbaa !27
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %i.av, i64 noundef %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.ax = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.af
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.az = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  %i.bb = load ptr, ptr %30, align 8, !tbaa !27   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.m:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

bb.n:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.af
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.o
  %i.bl = load i64, ptr %i.af, align 8, !tbaa !28
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %i.bi, %bb.o ] ; 2 uses
  %i.bn = load ptr, ptr %30, align 8, !tbaa !27   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !28
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i, %bb.m
  %.pn.pn.i = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %.body.i

bb.p:                                             ; preds = %bb.g
  %i.bs = invoke noundef float @_Z17pme_load_estimateRK10gmx_mtop_tRK10t_inputrecPA3_Kf(ptr noundef nonnull align 8 dereferenceable(768) %9, ptr noundef nonnull align 8 dereferenceable(888) %10, ptr noundef %12)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc53.i:                                       ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !17 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %._crit_edge.i.i, label %bb.q

._crit_edge.i.i:                                  ; preds = %.noexc53.i
  %.pre.i52.i = fpext float %i.bs to double
  br label %bb.t

bb.q:                                             ; preds = %.noexc53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store ptr %i.bw, ptr %24, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !23
  %i.by = fpext float %i.bs to double             ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull @.str.23, double noundef %i.by)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.bz)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i unwind label %bb.s, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i: ; preds = %bb.r
  %i.cd = load ptr, ptr %24, align 8, !tbaa !27   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bw
  br i1 %i.ce, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i
  %i.cf = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit.i.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %24, align 8, !tbaa !27   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZN3gmx14LogEntryWriterD2Ev.exit51.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i.i: ; preds = %bb.s
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit51.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit51.i.i:           ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %.body.i

bb.t:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i, %._crit_edge.i.i
  %.pre-phi.i.i = phi double [ %.pre.i52.i, %._crit_edge.i.i ], [ %i.by, %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i ] ; 2 uses
  %i.cm = sdiv i32 %4, 2                          ; 4 uses
  %i.cn = sitofp i32 %i.cm to double
  %i.co = sitofp i32 %4 to double                 ; 2 uses
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fmul double %.pre-phi.i.i, f0x3FEE666666666666 ; 2 uses
  %i.cr = fcmp ogt double %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cs = add nsw i32 %4, 15
  %i.ct = sdiv i32 %i.cs, 16                      ; 2 uses
  %i.cu = sdiv i32 %4, 3                          ; 2 uses
  %.not64.i.i = icmp sgt i32 %i.ct, %i.cu
  br i1 %.not64.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.w, %bb.u
  %.not4666.i.i = icmp slt i32 %4, 2
  br i1 %.not4666.i.i, label %.thread.i.i, label %.lr.ph68.preheader.i.i

.lr.ph68.preheader.i.i:                           ; preds = %.preheader.i.i
  %35 = call i32 @llvm.smax.i32(i32 %i.cm, i32 1) ; 2 uses
  %smax.i.i = add nuw nsw i32 %35, 1
  br label %.lr.ph68.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.w
  %.065.i.i = phi i32 [ %i.cy, %bb.w ], [ %i.ct, %bb.u ] ; 5 uses
  %i.cv = srem i32 %4, %.065.i.i
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cx = invoke fastcc noundef zeroext i1 @_ZL16fits_pp_pme_perfiif(i32 noundef %4, i32 noundef %.065.i.i, float noundef %i.bs)
          to label %.noexc54.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54.i:                                       ; preds = %bb.v
  br i1 %i.cx, label %.thread.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc54.i, %.lr.ph.i.i
  %i.cy = add nsw i32 %.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.065.i.i, %i.cu
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !177

.lr.ph68.i.i:                                     ; preds = %bb.x, %.lr.ph68.preheader.i.i
  %.167.i.i = phi i32 [ %i.da, %bb.x ], [ 1, %.lr.ph68.preheader.i.i ] ; 4 uses
  %i.cz = invoke fastcc noundef zeroext i1 @_ZL16fits_pp_pme_perfiif(i32 noundef %4, i32 noundef %.167.i.i, float noundef %i.bs)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55.i:                                       ; preds = %.lr.ph68.i.i
  br i1 %i.cz, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %.noexc55.i
  %i.da = add nuw nsw i32 %.167.i.i, 1
  %exitcond73.not.i.i = icmp eq i32 %.167.i.i, %35
  br i1 %exitcond73.not.i.i, label %.thread.i.i, label %.lr.ph68.i.i, !llvm.loop !178

.thread.i.i:                                      ; preds = %.noexc54.i, %bb.x, %.noexc55.i, %.preheader.i.i
  %.2.i.i = phi i32 [ %smax.i.i, %bb.x ], [ 1, %.preheader.i.i ], [ %.167.i.i, %.noexc55.i ], [ %.065.i.i, %.noexc54.i ] ; 5 uses
  %i.db = icmp sgt i32 %.2.i.i, %i.cm
  br i1 %i.db, label %.thread.thread.i.i, label %bb.aa

.thread.thread.i.i:                               ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 1 dereferenceable(68) @.str, i8 noundef zeroext 2)
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56.i:                                       ; preds = %.thread.thread.i.i
  %i.dc = fmul double %i.cq, %i.co
  %i.dd = call double @llvm.rint.f64(double %i.dc)
  %i.de = fptosi double %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !139
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !140
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 239, ptr noundef nonnull @.str.24, double noundef %.pre-phi.i.i, i32 noundef %i.de, i32 noundef %i.cm, i32 noundef %i.dg, i32 noundef %i.di) #19
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc56.i
  unreachable

bb.z:                                             ; preds = %.noexc56.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %.body.i

bb.aa:                                            ; preds = %.thread.i.i
  %i.dk = load ptr, ptr %i.bt, align 8, !tbaa !17 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store ptr %i.dm, ptr %26, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.dn, align 8, !tbaa !23
  %i.do = sub nsw i32 %4, %.2.i.i
  %i.dp = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull @.str.25, i32 noundef %i.do, i32 noundef %.2.i.i)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(40) %i.dp)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit52.i.i unwind label %bb.ad, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit52.i.i: ; preds = %bb.ac
  %i.dt = load ptr, ptr %26, align 8, !tbaa !27   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %_ZN3gmx14LogEntryWriterD2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit52.i.i
  %i.dv = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit55.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit55.i.i:           ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit52.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %26, align 8, !tbaa !27   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %_ZN3gmx14LogEntryWriterD2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i: ; preds = %bb.ad
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit58.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit58.i.i:           ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %.body.i

_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i: ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit55.i.i, %bb.aa, %bb.t
  %.044.i.i = phi i32 [ 0, %bb.t ], [ %.2.i.i, %bb.aa ], [ %.2.i.i, %_ZN3gmx14LogEntryWriterD2Ev.exit55.i.i ]
  %i.ec = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ed = add i64 %i.ec, -4611686018427387883
  %i.ee = icmp ult i64 %i.ed, 21
  br i1 %i.ee, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i57.i

bb.ae:                                            ; preds = %_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58.i:                                       ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i57.i: ; preds = %_ZL10guess_npmeRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecPA3_Kfi.exit.i
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.18, i64 noundef 21)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %.024.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i ], [ %.val32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i ], [ %.044.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i57.i ] ; 3 uses
  %.not.i = icmp sgt i32 %.024.i, %4
  br i1 %.not.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL23getNumPmeOnlyRanksToUseRKN3gmx8MDLoggerERKNS_13DomdecOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_25SeparatePmeRanksPermittedEPA3_KfiENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 914) #19
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !17 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ak, label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph68.i.i, %bb.v, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i57.i, %bb.ae, %.thread.thread.i.i, %bb.p, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  store ptr %i.ej, ptr %31, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !23
  %i.el = load ptr, ptr %28, align 8, !tbaa !27
  %i.em = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull @.str.19, i32 noundef %.024.i, ptr noundef %i.el)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull align 8 dereferenceable(40) %i.em)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit63.i unwind label %bb.aj, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit63.i: ; preds = %bb.ai
  %i.eq = load ptr, ptr %31, align 8, !tbaa !27   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ej
  br i1 %i.er, label %_ZN3gmx14LogEntryWriterD2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit63.i
  %i.es = load i64, ptr %i.ej, align 8, !tbaa !28
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit66.i

_ZN3gmx14LogEntryWriterD2Ev.exit66.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit63.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %31, align 8, !tbaa !27   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ej
  br i1 %i.ew, label %_ZN3gmx14LogEntryWriterD2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i: ; preds = %bb.aj
  %i.ex = load i64, ptr %i.ej, align 8, !tbaa !28
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit69.i

_ZN3gmx14LogEntryWriterD2Ev.exit69.i:             ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %.body.i

bb.ak:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit66.i, %bb.ag
  %i.ez = load ptr, ptr %28, align 8, !tbaa !27   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.z
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %bb.ak
  %i.fb = load i64, ptr %i.z, align 8, !tbaa !28
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %_ZL23getNumPmeOnlyRanksToUseRKN3gmx8MDLoggerERKNS_13DomdecOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_25SeparatePmeRanksPermittedEPA3_Kfi.exit

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3gmx14LogEntryWriterD2Ev.exit69.i, %_ZN3gmx14LogEntryWriterD2Ev.exit58.i.i, %bb.z, %_ZN3gmx14LogEntryWriterD2Ev.exit51.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %i.dx, %_ZN3gmx14LogEntryWriterD2Ev.exit58.i.i ], [ %i.dj, %bb.z ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ %i.eu, %_ZN3gmx14LogEntryWriterD2Ev.exit69.i ], [ %i.ch, %_ZN3gmx14LogEntryWriterD2Ev.exit51.i.i ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fd = load ptr, ptr %28, align 8, !tbaa !27   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.z
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i: ; preds = %.body.i
  %i.ff = load i64, ptr %i.z, align 8, !tbaa !28
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
end_hunk_0
