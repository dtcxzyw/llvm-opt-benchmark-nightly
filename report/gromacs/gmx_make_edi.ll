Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_make_edi?download=true
inline.NumInlined: 148
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z12gmx_make_ediiPPc:bb.a
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.qi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qh, ptr noundef nonnull @.str.180, double noundef %i.qf) #20 ; 0 uses
  %.pre74.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %.phi.trans.insert75.i = getelementptr inbounds nuw i8, ptr %.pre74.i, i64 8
  %.pre76.i = load ptr, ptr %.phi.trans.insert75.i, align 8, !tbaa !97 ; 2 uses
  %.phi.trans.insert77.i = getelementptr inbounds nuw [8 x i8], ptr %.pre76.i, i64 %indvars.iv59.i
  %.pre78.i = load double, ptr %.phi.trans.insert77.i, align 8, !tbaa !34
  br label %bb.bx

bb.bw:                                            ; preds = %.noexc91
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ck

bb.bx:                                            ; preds = %bb.bv, %.lr.ph.split.i
  %i.qk = phi double [ %.pre78.i, %bb.bv ], [ %i.qf, %.lr.ph.split.i ]
  %i.ql = phi ptr [ %.pre76.i, %bb.bv ], [ %i.qd, %.lr.ph.split.i ] ; 2 uses
  %i.qm = fcmp olt double %i.qk, 0.000000e+00
  br i1 %i.qm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv59.i
  store double 0.000000e+00, ptr %i.qn, align 8, !tbaa !34
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge.i86, label %.lr.ph.split.i, !llvm.loop !63

._crit_edge.i86:                                  ; preds = %bb.bu, %bb.bz, %middle.block495, %vec.epilog.middle.block508, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.qo = load i32, ptr %i.op, align 4, !tbaa !10 ; 3 uses
  %.not4149.i = icmp eq i32 %i.qo, 0              ; 2 uses
  br i1 %i.ou, label %.preheader.i, label %.preheader43.i

.preheader43.i:                                   ; preds = %._crit_edge.i86
  br i1 %.not4149.i, label %.loopexit.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.preheader43.i
  %i.qp = mul nsw i32 %i.ox, 3
  %i.qq = add nsw i32 %i.qp, -6
  %i.qr = load ptr, ptr %i.d, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  br label %bb.cf

.preheader.i:                                     ; preds = %._crit_edge.i86
  br i1 %.not4149.i, label %.loopexit.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.qt = load ptr, ptr %i.d, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = fpext float %i.ow to double
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %.lr.ph51.i
  %indvars.iv67.i = phi i64 [ 0, %.lr.ph51.i ], [ %indvars.iv.next68.i, %bb.ce ] ; 2 uses
  %i.qw = phi i32 [ %i.qo, %.lr.ph51.i ], [ %i.ri, %bb.ce ] ; 2 uses
  %i.qx = icmp slt i32 %i.qw, 7
  br i1 %i.qx, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(68) @.str.156, i8 noundef zeroext 2)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.cb
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 508, ptr noundef nonnull @.str.181) #18
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc92
  unreachable

bb.cd:                                            ; preds = %.noexc92
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ck

bb.ce:                                            ; preds = %bb.ca
  %i.qz = load ptr, ptr %i.qu, align 8, !tbaa !97
  %i.ra = zext nneg i32 %i.qw to i64
  %i.rb = getelementptr [8 x i8], ptr %i.qz, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -8
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !34
  %i.re = fdiv double %i.rd, %i.qv
  %i.rf = fptrunc double %i.re to float
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv67.i
  store float %i.rf, ptr %i.rg, align 4, !tbaa !27
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next68.i
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !10 ; 2 uses
  %.not41.i = icmp eq i32 %i.ri, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.ca, !llvm.loop !64

bb.cf:                                            ; preds = %bb.cj, %.lr.ph48.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next65.i, %bb.cj ] ; 2 uses
  %i.rj = phi i32 [ %i.qo, %.lr.ph48.i ], [ %i.rv, %bb.cj ] ; 2 uses
  %i.rk = icmp sgt i32 %i.rj, %i.qq
  br i1 %i.rk, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(68) @.str.156, i8 noundef zeroext 2)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.cg
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 535, ptr noundef nonnull @.str.182) #18
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %.noexc93
  unreachable

bb.ci:                                            ; preds = %.noexc93
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.rm = load ptr, ptr %i.qs, align 8, !tbaa !97
  %i.rn = sext i32 %i.rj to i64
  %i.ro = getelementptr [8 x i8], ptr %i.rm, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 -8
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !34
  %i.rr = fdiv double 1.000000e+00, %i.rq
  %i.rs = fptrunc double %i.rr to float
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv64.i
  store float %i.rs, ptr %i.rt, align 4, !tbaa !27
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next65.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !10 ; 2 uses
  %.not.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.cf, !llvm.loop !65

.loopexit.i:                                      ; preds = %bb.cj, %bb.ce, %.preheader.i, %.preheader43.i
  %i.rw = load i32, ptr %i.c, align 4, !tbaa !10
  %i.rx = icmp sgt i32 %i.rw, 0
  br i1 %i.rx, label %.lr.ph54.i, label %._crit_edge55.i

.lr.ph54.i:                                       ; preds = %.loopexit.i, %.noexc94
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %.noexc94 ], [ 0, %.loopexit.i ] ; 2 uses
  %i.ry = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv70.i
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !97
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef 546, ptr noundef %i.sa)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %.lr.ph54.i
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.sb = load i32, ptr %i.c, align 4, !tbaa !10
  %i.sc = sext i32 %i.sb to i64
  %i.sd = icmp slt i64 %indvars.iv.next71.i, %i.sc
  br i1 %i.sd, label %.lr.ph54.i, label %._crit_edge55.i, !llvm.loop !66

._crit_edge55.i:                                  ; preds = %.noexc94, %.loopexit.i
  %i.se = load ptr, ptr %i.d, align 8, !tbaa !95
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.156, i32 noundef 548, ptr noundef %i.se)
          to label %_ZL16read_eigenvaluesPKiPKcPfbfi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ci, %bb.cd, %bb.bw
  %.pn.i85 = phi { ptr, i32 } [ %i.qy, %bb.cd ], [ %i.rl, %bb.ci ], [ %i.qj, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.body

_ZL16read_eigenvaluesPKiPKcPfbfi.exit:            ; preds = %._crit_edge55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cl

bb.cl:                                            ; preds = %_ZL16read_eigenvaluesPKiPKcPfbfi.exit, %bb.bo
  %i.sf = load float, ptr @_ZZ12gmx_make_ediiPPcE3tau, align 4, !tbaa !27
  store float %i.sf, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 136), align 8, !tbaa !99
  %i.sg = load float, ptr @_ZZ12gmx_make_ediiPPcE7deltaF0, align 4, !tbaa !27
  store float %i.sg, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 128), align 8, !tbaa !100
  %i.sh = load float, ptr @_ZZ12gmx_make_ediiPPcE6deltaF, align 4, !tbaa !27
  store float %i.sh, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 140), align 4, !tbaa !101
  %i.si = load i32, ptr @_ZZ12gmx_make_ediiPPcE7eqSteps, align 4, !tbaa !10
  store i32 %i.si, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 8), align 8, !tbaa !102
  %i.sj = load float, ptr @_ZZ12gmx_make_ediiPPcE1T, align 4, !tbaa !27
  %i.sk = fmul float %i.sj, f0x3C088889
  store float %i.sk, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 144), align 8, !tbaa !103
  %i.sl = load i8, ptr @_ZZ12gmx_make_ediiPPcE9bHarmonic, align 1, !tbaa !87, !range !88, !noundef !89
  store i8 %i.sl, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 132), align 4, !tbaa !104
  %i.sm = load i8, ptr @_ZZ12gmx_make_ediiPPcE9bRestrain, align 1, !tbaa !87, !range !88, !noundef !89
  %i.sn = trunc nuw i8 %i.sm to i1
  %i.so = load float, ptr @_ZZ12gmx_make_ediiPPcE8constEfl, align 4, !tbaa !27 ; 2 uses
  br i1 %i.sn, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sp = fneg float %i.so
  store float %i.sp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 148), align 4, !tbaa !105
  %i.sq = load float, ptr @_ZZ12gmx_make_ediiPPcE5alpha, align 4, !tbaa !27 ; 2 uses
  %i.sr = fneg float %i.sq
  %i.ss = fmul float %i.sq, %i.sr
  store float %i.ss, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 152), align 8, !tbaa !106
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  store float %i.so, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 148), align 4, !tbaa !105
  %i.st = load float, ptr @_ZZ12gmx_make_ediiPPcE5alpha, align 4, !tbaa !27 ; 2 uses
  %i.su = fmul float %i.st, %i.st
  store float %i.su, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 152), align 8, !tbaa !106
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.bn
  %i.sv = load i32, ptr %i.k, align 4, !tbaa !10  ; 2 uses
  store i32 %i.sv, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 124), align 4, !tbaa !107
  %i.sw = load i32, ptr %i.la, align 8, !tbaa !108
  store i32 %i.sw, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, align 8, !tbaa !109
  %i.sx = load i32, ptr %i.p, align 4, !tbaa !10
  %i.sy = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.sz = load ptr, ptr %i.o, align 8, !tbaa !13
  store i32 %i.sx, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 24), align 8, !tbaa !41
  store ptr %i.sz, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 32), align 8, !tbaa !110
  store ptr %i.sy, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 40), align 8, !tbaa !42
  %i.ta = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.tb = load ptr, ptr %i.n, align 8, !tbaa !13
  store i32 %i.sv, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 48), align 8, !tbaa !41
  store ptr %i.tb, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 56), align 8, !tbaa !110
  store ptr %i.ta, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 64), align 8, !tbaa !42
  %i.tc = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.149, i32 noundef 7, ptr noundef nonnull %11)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.tc, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.td = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE6listen, i64 16), align 16, !tbaa !13
  %i.te = load i32, ptr %i.td, align 4, !tbaa !10
  %.not62 = icmp eq i32 %i.te, 0
  br i1 %.not62, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tf = load ptr, ptr @stderr, align 8, !tbaa !93
  %fwrite = call i64 @fwrite(ptr nonnull @.str.167, i64 144, i64 1, ptr %i.tf) #21 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.tg = load i32, ptr %i.p, align 4, !tbaa !10
  %i.th = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ti = load i32, ptr %i.k, align 4, !tbaa !10
  %i.tj = load ptr, ptr %i.n, align 8, !tbaa !13
  invoke fastcc void @_ZL13get_structurePK7t_atomsPKcS3_P4edixiPiiS6_(ptr noundef %i.la, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 72), i32 noundef %i.tg, ptr noundef %i.th, i32 noundef %i.ti, ptr noundef %i.tj)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cp
  %i.tk = load ptr, ptr %i.n, align 8, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 72), align 8, !tbaa !41
  store ptr %i.tk, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 80), align 8, !tbaa !110
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 88), align 8, !tbaa !42
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.tl = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.151, i32 noundef 7, ptr noundef nonnull %11)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.tl, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.tm = load i32, ptr %i.p, align 4, !tbaa !10
  %i.tn = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.to = load i32, ptr %i.k, align 4, !tbaa !10
  %i.tp = load ptr, ptr %i.n, align 8, !tbaa !13
  invoke fastcc void @_ZL13get_structurePK7t_atomsPKcS3_P4edixiPiiS6_(ptr noundef %i.la, ptr noundef %i.be, ptr noundef %i.bh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 96), i32 noundef %i.tm, ptr noundef %i.tn, i32 noundef %i.to, ptr noundef %i.tp)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cv
  %i.tq = load ptr, ptr %i.n, align 8, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 96), align 8, !tbaa !41
  store ptr %i.tq, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 104), align 8, !tbaa !110
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 112), align 8, !tbaa !42
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.tr = load ptr, ptr %i.j, align 8, !tbaa !69  ; 7 uses
  %i.ts = load i32, ptr %i.g, align 4, !tbaa !10  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.cy
  %i.tt = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.192)
          to label %bb.cz unwind label %bb.df     ; 19 uses

bb.cz:                                            ; preds = %.noexc103
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i.i98, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i99, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.tu, ptr noundef nonnull %i.tv) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i99

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i99: ; preds = %bb.da, %bb.cz
  %i.tw = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i99
  %i.tz = load i64, ptr %i.tx, align 8, !tbaa !25
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.ua) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i101

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i101:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ub = load i32, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, align 8, !tbaa !109
  %i.uc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 4), align 4, !tbaa !111, !range !88, !noundef !89
  %i.ud = zext nneg i8 %i.uc to i32
  %i.ue = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 5), align 1, !tbaa !112, !range !88, !noundef !89
  %i.uf = zext nneg i8 %i.ue to i32
  %i.ug = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.193, i32 noundef 670, i32 noundef %i.ub, i32 noundef %i.ud, i32 noundef %i.uf) #16 ; 0 uses
  %i.uh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 12), align 4, !tbaa !80
  %i.ui = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 16), align 8, !tbaa !82
  %i.uj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 120), align 8, !tbaa !81
  %i.uk = fpext float %i.uj to double
  %i.ul = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.194, i32 noundef %i.uh, i32 noundef %i.ui, double noundef %i.uk) #16 ; 0 uses
  %i.um = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 8), align 8, !tbaa !102
  %i.un = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 128), align 8, !tbaa !100
  %i.uo = fpext float %i.un to double
  %i.up = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 140), align 4, !tbaa !101
  %i.uq = fpext float %i.up to double
  %i.ur = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 136), align 8, !tbaa !99
  %i.us = fpext float %i.ur to double
  %i.ut = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 148), align 4, !tbaa !105
  %i.uu = fpext float %i.ut to double
  %i.uv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 152), align 8, !tbaa !106
  %i.uw = fpext float %i.uv to double
  %i.ux = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 144), align 8, !tbaa !103
  %i.uy = fpext float %i.ux to double
  %i.uz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 132), align 4, !tbaa !104, !range !88, !noundef !89
  %i.va = zext nneg i8 %i.uz to i32
  %i.vb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 133), align 1, !tbaa !91, !range !88, !noundef !89
  %i.vc = zext nneg i8 %i.vb to i32
  %i.vd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.195, i32 noundef %i.um, double noundef %i.uo, double noundef %i.uq, double noundef %i.us, double noundef %i.uu, double noundef %i.uw, double noundef %i.uy, i32 noundef %i.va, i32 noundef %i.vc) #16 ; 0 uses
  %.sroa.02.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 24), align 8, !tbaa !10 ; 3 uses
  %.sroa.3.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 32), align 8, !tbaa !13
  %.sroa.43.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 40), align 8, !tbaa !16
  %i.ve = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.196, i32 noundef %.sroa.02.0.copyload.i) #16 ; 0 uses
  %i.vf = icmp sgt i32 %.sroa.02.0.copyload.i, 0
  br i1 %i.vf, label %.lr.ph.i.i, label %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i101
  %wide.trip.count.i.i = zext nneg i32 %.sroa.02.0.copyload.i to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.db ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i, i64 %indvars.iv.i.i
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !10
  %i.vi = add nsw i32 %i.vh, 1
  %i.vj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.43.0.copyload.i, i64 %indvars.iv.i.i ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !27
  %i.vl = fpext float %i.vk to double
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vn = load <2 x float>, ptr %i.vm, align 4, !tbaa !27
  %i.vo = fpext <2 x float> %i.vn to <2 x double> ; 2 uses
  %i.vp = extractelement <2 x double> %i.vo, i64 0
  %i.vq = extractelement <2 x double> %i.vo, i64 1
  %i.vr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.208, i32 noundef %i.vi, double noundef %i.vl, double noundef %i.vp, double noundef %i.vq) #16 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit.i, label %bb.db, !llvm.loop !67

_ZL11write_t_edxP8_IO_FILE4edixPKc.exit.i:        ; preds = %bb.db, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i101
  %.sroa.08.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 48), align 8, !tbaa !10 ; 3 uses
  %.sroa.310.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 56), align 8, !tbaa !13
  %.sroa.411.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 64), align 8, !tbaa !16
  %i.vs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.197, i32 noundef %.sroa.08.0.copyload.i) #16 ; 0 uses
  %i.vt = icmp sgt i32 %.sroa.08.0.copyload.i, 0
  br i1 %i.vt, label %.lr.ph.i67.i, label %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit72.i

.lr.ph.i67.i:                                     ; preds = %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit.i
  %wide.trip.count.i68.i = zext nneg i32 %.sroa.08.0.copyload.i to i64
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.lr.ph.i67.i
  %indvars.iv.i69.i = phi i64 [ 0, %.lr.ph.i67.i ], [ %indvars.iv.next.i70.i, %bb.dc ] ; 3 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.310.0.copyload.i, i64 %indvars.iv.i69.i
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !10
  %i.vw = add nsw i32 %i.vv, 1
  %i.vx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.411.0.copyload.i, i64 %indvars.iv.i69.i ; 2 uses
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !27
  %i.vz = fpext float %i.vy to double
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.wb = load <2 x float>, ptr %i.wa, align 4, !tbaa !27
  %i.wc = fpext <2 x float> %i.wb to <2 x double> ; 2 uses
  %i.wd = extractelement <2 x double> %i.wc, i64 0
  %i.we = extractelement <2 x double> %i.wc, i64 1
  %i.wf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.208, i32 noundef %i.vw, double noundef %i.vz, double noundef %i.wd, double noundef %i.we) #16 ; 0 uses
  %indvars.iv.next.i70.i = add nuw nsw i64 %indvars.iv.i69.i, 1 ; 2 uses
  %exitcond.not.i71.i = icmp eq i64 %indvars.iv.next.i70.i, %wide.trip.count.i68.i
  br i1 %exitcond.not.i71.i, label %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit72.i, label %bb.dc, !llvm.loop !67

_ZL11write_t_edxP8_IO_FILE4edixPKc.exit72.i:      ; preds = %bb.dc, %_ZL11write_t_edxP8_IO_FILE4edixPKc.exit.i
  %i.wg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE10edi_params, i64 124), align 4, !tbaa !107
  %i.wh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_make_ediiPPcE6listen, i64 48), align 16, !tbaa !13
  invoke fastcc void @_ZL12write_eigvecP8_IO_FILEiPiPPA3_fiPKcPf(ptr noundef %i.tt, i32 noundef %i.wg, ptr noundef %i.wh, ptr noundef readonly %i.tr, i32 noundef %i.ts, ptr noundef nonnull @.str.198, ptr noundef null)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
