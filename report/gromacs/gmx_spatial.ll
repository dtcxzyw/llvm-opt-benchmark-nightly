Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_spatial?download=true
inline.NumInlined: 201
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z11gmx_spatialiPPc:bb.a
  %i.ph = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.pe) ; 2 uses
  %i.pi = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.pd) ; 2 uses
  br i1 %cmp.n704, label %._crit_edge467.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv551.ph = phi i64 [ %i.nn, %iter.check ], [ %i.nw, %vec.epilog.iter.check ], [ %i.nx, %vec.epilog.middle.block ]
  %.2181465.us.us.us.ph = phi i64 [ %.1180473.us.us.us, %iter.check ], [ %i.ox, %vec.epilog.iter.check ], [ %i.pg, %vec.epilog.middle.block ]
  %.2184464.us.us.us.ph = phi i32 [ %.1183472.us.us.us, %iter.check ], [ %i.oy, %vec.epilog.iter.check ], [ %i.ph, %vec.epilog.middle.block ]
  %.2188463.us.us.us.ph = phi i32 [ %.1187471.us.us.us, %iter.check ], [ %i.oz, %vec.epilog.iter.check ], [ %i.pi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %vec.epilog.scalar.ph ], [ %indvars.iv551.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2181465.us.us.us = phi i64 [ %i.pm, %vec.epilog.scalar.ph ], [ %.2181465.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.2184464.us.us.us = phi i32 [ %.3185.us.us.us, %vec.epilog.scalar.ph ], [ %.2184464.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.2188463.us.us.us = phi i32 [ %spec.select265.us.us.us, %vec.epilog.scalar.ph ], [ %.2188463.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %indvars.iv551
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !38 ; 3 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = add nsw i64 %.2181465.us.us.us, %i.pl   ; 2 uses
  %spec.select265.us.us.us = call i32 @llvm.smax.i32(i32 %i.pk, i32 %.2188463.us.us.us) ; 2 uses
  %.3185.us.us.us = call i32 @llvm.smin.i32(i32 %i.pk, i32 %.2184464.us.us.us) ; 2 uses
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.pn = icmp slt i64 %indvars.iv.next552, %i.no
  br i1 %i.pn, label %vec.epilog.scalar.ph, label %._crit_edge467.us.us.us, !llvm.loop !31

._crit_edge467.us.us.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i64 [ %i.pg, %vec.epilog.middle.block ], [ %i.ox, %middle.block ], [ %i.pm, %vec.epilog.scalar.ph ] ; 3 uses
  %spec.select265.us.us.us.lcssa = phi i32 [ %i.pi, %vec.epilog.middle.block ], [ %i.oz, %middle.block ], [ %spec.select265.us.us.us, %vec.epilog.scalar.ph ] ; 3 uses
  %.3185.us.us.us.lcssa = phi i32 [ %i.ph, %vec.epilog.middle.block ], [ %i.oy, %middle.block ], [ %.3185.us.us.us, %vec.epilog.scalar.ph ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1 ; 2 uses
  %i.po = icmp slt i64 %indvars.iv.next555, %i.nq
  br i1 %i.po, label %iter.check, label %._crit_edge475.split.us.us.us, !llvm.loop !32

._crit_edge475.split.us.us.us:                    ; preds = %._crit_edge467.us.us.us
  %indvars.iv.next558 = add nsw i64 %indvars.iv557, 1 ; 2 uses
  %i.pp = icmp slt i64 %indvars.iv.next558, %i.ns
  br i1 %i.pp, label %.preheader382.us.us, label %._crit_edge485.loopexit, !llvm.loop !33

.split.us:                                        ; preds = %bb.as
  %i.pq = trunc nuw nsw i64 %indvars.iv546 to i32
  %i.pr = trunc nuw nsw i64 %indvars.iv541 to i32
  %i.ps = trunc nuw nsw i64 %indvars.iv536 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.77, i32 noundef %i.pq, i32 noundef %i.pr, i32 noundef %i.ps, i32 noundef %i.ma)
          to label %.noexc283 unwind label %bb.ba

.noexc283:                                        ; preds = %.split.us
  %i.pt = load ptr, ptr %2, align 8, !tbaa !17
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.76, ptr noundef %i.pt, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_spatialiPPcENK3$_0clEv", ptr noundef nonnull @.str.56, i32 noundef 422) #17
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.noexc283
  unreachable

bb.az:                                            ; preds = %.noexc283
  %i.pu = landingpad { ptr, i32 }
          cleanup
  %i.pv = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281: ; preds = %bb.az
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !18
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body.thread

bb.ba:                                            ; preds = %.split.us
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge485.loopexit:                          ; preds = %._crit_edge475.split.us.us.us
  %i.qb = sitofp i64 %.lcssa to double            ; 2 uses
  %i.qc = sitofp i32 %.3185.us.us.us.lcssa to double ; 2 uses
  %i.qd = uitofp nneg i32 %spec.select265.us.us.us.lcssa to double
  %i.qe = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qf = insertelement <2 x double> %i.qe, double %i.qc, i64 1
  br label %._crit_edge485

._crit_edge485:                                   ; preds = %._crit_edge485.loopexit, %.preheader383
  %.0186.lcssa = phi double [ 0.000000e+00, %.preheader383 ], [ %i.qd, %._crit_edge485.loopexit ] ; 2 uses
  %.0182.lcssa = phi double [ 9.990000e+02, %.preheader383 ], [ %i.qc, %._crit_edge485.loopexit ]
  %.0179.lcssa = phi double [ 0.000000e+00, %.preheader383 ], [ %i.qb, %._crit_edge485.loopexit ]
  %i.qg = phi <2 x double> [ <double 0.000000e+00, double 9.990000e+02>, %.preheader383 ], [ %i.qf, %._crit_edge485.loopexit ]
  %i.qh = mul nsw i32 %i.kc, %i.kk
  %i.qi = mul nsw i32 %i.qh, %i.ks                ; 4 uses
  %i.qj = load i8, ptr @_ZZ11gmx_spatialiPPcE8bCALCDIV, align 1, !tbaa !79, !range !80, !noundef !81
  %i.qk = trunc nuw i8 %i.qj to i1
  %i.ql = sitofp i32 %i.qi to double
  %i.qm = uitofp nneg i32 %i.iq to double
  %i.qn = fmul nnan double %i.qm, %i.ql
  %i.qo = fdiv double %i.qn, %.0179.lcssa
  %.0178 = select i1 %i.qk, double %i.qo, double 1.000000e+00 ; 4 uses
  br i1 %i.nj, label %.preheader380.lr.ph, label %._crit_edge504

.preheader380.lr.ph:                              ; preds = %._crit_edge485
  %i.qp = icmp slt <2 x i32> %i.ix, %i.iz         ; 2 uses
  %i.qq = uitofp nneg i32 %i.iq to double
  %i.qr = extractelement <2 x i1> %i.qp, i64 0
  br i1 %i.qr, label %.preheader380.us.preheader, label %.preheader380

.preheader380.us.preheader:                       ; preds = %.preheader380.lr.ph
  %i.qs = sext i32 %i.kr to i64
  %i.qt = sext i32 %i.kq to i64
  %i.qu = sext i32 %i.kj to i64
  %i.qv = sext i32 %i.ki to i64
  %i.qw = sext i32 %i.iu to i64
  %i.qx = sext i32 %i.iy to i64
  %i.qy = extractelement <2 x i1> %i.qp, i64 1
  br label %.preheader380.us

.preheader380.us:                                 ; preds = %.preheader380.us.preheader, %._crit_edge502.us
  %indvars.iv566 = phi i64 [ %i.qw, %.preheader380.us.preheader ], [ %indvars.iv.next567, %._crit_edge502.us ] ; 2 uses
  %i.qz = mul nsw i64 %i.fm, %indvars.iv566
  %i.ra = getelementptr inbounds [4 x i8], ptr %.sroa.0359.0, i64 %i.qz
  br i1 %i.qy, label %.preheader.us.us, label %.preheader.us506

.preheader.us506:                                 ; preds = %.preheader380.us, %.preheader.us506
  %.0501.us507 = phi i32 [ %i.rb, %.preheader.us506 ], [ %i.kj, %.preheader380.us ]
  %fputc248.us508 = call i32 @fputc(i32 10, ptr %i.ja) ; 0 uses
  %i.rb = add nsw i32 %.0501.us507, 1             ; 2 uses
  %i.rc = icmp slt i32 %i.rb, %i.ki
  br i1 %i.rc, label %.preheader.us506, label %._crit_edge502.us, !llvm.loop !34

.preheader.us.us:                                 ; preds = %.preheader380.us, %._crit_edge500.us.us
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %._crit_edge500.us.us ], [ %i.qu, %.preheader380.us ] ; 2 uses
  %i.rd = mul nsw i64 %indvars.iv563, %i.fb
  %i.re = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.rd
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader.us.us
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %bb.bb ], [ %i.qs, %.preheader.us.us ] ; 2 uses
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %indvars.iv560
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !38
  %i.rh = sitofp i32 %i.rg to double
  %i.ri = fmul double %.0178, %i.rh
  %i.rj = fdiv double %i.ri, %i.qq
  %i.rk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.68, double noundef %i.rj) #15 ; 0 uses
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, 1 ; 2 uses
  %i.rl = icmp slt i64 %indvars.iv.next561, %i.qt
  br i1 %i.rl, label %bb.bb, label %._crit_edge500.us.us, !llvm.loop !35

._crit_edge500.us.us:                             ; preds = %bb.bb
  %fputc248.us.us = call i32 @fputc(i32 10, ptr %i.ja) ; 0 uses
  %indvars.iv.next564 = add nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.rm = icmp slt i64 %indvars.iv.next564, %i.qv
  br i1 %i.rm, label %.preheader.us.us, label %._crit_edge502.us, !llvm.loop !34

._crit_edge502.us:                                ; preds = %.preheader.us506, %._crit_edge500.us.us
  %fputc.us = call i32 @fputc(i32 10, ptr %i.ja)  ; 0 uses
  %indvars.iv.next567 = add nsw i64 %indvars.iv566, 1 ; 2 uses
  %i.rn = icmp slt i64 %indvars.iv.next567, %i.qx
  br i1 %i.rn, label %.preheader380.us, label %._crit_edge504, !llvm.loop !36

.preheader380:                                    ; preds = %.preheader380.lr.ph, %.preheader380
  %.0162503 = phi i32 [ %i.ro, %.preheader380 ], [ %i.iu, %.preheader380.lr.ph ]
  %fputc = call i32 @fputc(i32 10, ptr %i.ja)     ; 0 uses
  %i.ro = add nsw i32 %.0162503, 1                ; 2 uses
  %i.rp = icmp slt i32 %i.ro, %i.iy
  br i1 %i.rp, label %.preheader380, label %._crit_edge504, !llvm.loop !36

._crit_edge504:                                   ; preds = %.preheader380, %._crit_edge502.us, %._crit_edge485
  %i.rq = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.ja)
          to label %bb.bc unwind label %bb.be     ; 0 uses

bb.bc:                                            ; preds = %._crit_edge504
  %i.rr = load i8, ptr @_ZZ11gmx_spatialiPPcE8bCALCDIV, align 1, !tbaa !79, !range !80, !noundef !81
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.rt = fdiv double 1.000000e+00, %.0178
  %i.ru = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %i.qi, double noundef %i.rt) ; 0 uses
  %i.rv = fmul double %.0178, %.0182.lcssa
  %i.rw = uitofp nneg i32 %i.iq to double         ; 2 uses
  %i.rx = fdiv double %i.rv, %i.rw
  %i.ry = fmul double %.0178, %.0186.lcssa
  %i.rz = fdiv double %i.ry, %i.rw
  %i.sa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef 1.000000e+00, double noundef %i.rx, double noundef %i.rz) ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge504
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %bb.bc
  %i.sc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.qi) ; 0 uses
  %i.sd = uitofp nneg i32 %i.iq to double         ; 2 uses
  %i.se = sitofp i32 %i.qi to double
  %i.sf = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.sg = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = fdiv <2 x double> %i.qg, %i.sg          ; 2 uses
  %11 = extractelement <2 x double> %i.sh, i64 0
  %12 = fdiv double %11, %i.se
  %13 = fdiv double %.0186.lcssa, %i.sd
  %i.si = extractelement <2 x double> %i.sh, i64 1
  %i.sj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, double noundef %12, double noundef %i.si, double noundef %13) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.not.i.i.i286 = icmp eq ptr %.sroa.0359.0, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sk = ptrtoint ptr %.sroa.0359.0 to i64
  %i.sl = sub i64 %.sroa.10.0, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0, i64 noundef %i.sl) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.body:                                            ; preds = %.loopexit388, %.loopexit.split-lp, %bb.aw, %bb.be
  %.pn252.pn = phi { ptr, i32 } [ %i.sb, %bb.be ], [ %.pn242, %bb.aw ], [ %lpad.loopexit, %.loopexit388 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i287 = icmp eq ptr %.sroa.0359.0, null
  br i1 %.not.i.i.i287, label %_ZNSt6vectorIiSaIiEED2Ev.exit288, label %.body.thread

.body.thread:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ba, %.body
  %.pn252.pn375 = phi { ptr, i32 } [ %.pn252.pn, %.body ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.qa, %bb.ba ]
  %i.sm = ptrtoint ptr %.sroa.0359.0 to i64
  %i.sn = sub i64 %.sroa.10.0, %i.sm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0, i64 noundef %i.sn) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit288

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bh, %bb.bg, %bb.b
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 16, !tbaa !91 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !92 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.sp, %i.sr
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.sx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.sp, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ss = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !18
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i289 = icmp eq ptr %i.sx, %i.sr
  br i1 %.not.i.i.i.i289, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.so, align 16, !tbaa !91
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.sy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.sp, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.ta = load ptr, ptr %i.sz, align 16, !tbaa !93
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = ptrtoint ptr %i.sy to i64
  %i.td = sub i64 %i.tb, %i.tc
  call void @_ZdlPvm(ptr noundef nonnull %i.sy, i64 noundef %i.td) #16
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bi
  %i.te = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !91 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !tbaa !92 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.tf, %i.th
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.tn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1 ], [ %i.tf, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.ti = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !17 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 16 ; 2 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.tl = load i64, ptr %i.tj, align 8, !tbaa !18
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tm) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1
  %i.tn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.i289.1 = icmp eq ptr %i.tn, %i.th
  br i1 %.not.i.i.i.i289.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.te, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8t_filenmD2Ev.exit
  %i.to = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.tf, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.to, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8t_filenmD2Ev.exit.1, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.tp = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !93
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %i.to to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.tt) #16
  br label %_ZN8t_filenmD2Ev.exit.1

_ZN8t_filenmD2Ev.exit.1:                          ; preds = %bb.bj, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.tu = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 16, !tbaa !91 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !92 ; 2 uses
  %.not4.i.i.i.i.2 = icmp eq ptr %i.tv, %i.tx
  br i1 %.not4.i.i.i.i.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZN8t_filenmD2Ev.exit.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.05.i.i.i.i.2 = phi ptr [ %i.ud, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2 ], [ %i.tv, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %i.ty = load ptr, ptr %.05.i.i.i.i.2, align 8, !tbaa !17 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 16 ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2
  %i.ub = load i64, ptr %i.tz, align 8, !tbaa !18
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.uc) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2
  %i.ud = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 32 ; 2 uses
  %.not.i.i.i.i289.2 = icmp eq ptr %i.ud, %i.tx
  br i1 %.not.i.i.i.i289.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.pr.i.i.2 = load ptr, ptr %i.tu, align 16, !tbaa !91
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, %_ZN8t_filenmD2Ev.exit.1
  %i.ue = phi ptr [ %.pr.i.i.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2 ], [ %i.tv, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %.not.i.i1.i.i.2 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i1.i.i.2, label %_ZN8t_filenmD2Ev.exit.2, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
  %i.uf = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ug = load ptr, ptr %i.uf, align 16, !tbaa !93
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = ptrtoint ptr %i.ue to i64
  %i.uj = sub i64 %i.uh, %i.ui
  call void @_ZdlPvm(ptr noundef nonnull %i.ue, i64 noundef %i.uj) #16
  br label %_ZN8t_filenmD2Ev.exit.2

_ZN8t_filenmD2Ev.exit.2:                          ; preds = %bb.bk, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 0

_ZNSt6vectorIiSaIiEED2Ev.exit288:                 ; preds = %bb.z, %.body, %.body.thread, %bb.v, %bb.s, %bb.c
  %.pn252.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn240, %bb.v ], [ %i.ae, %bb.c ], [ %i.fl, %bb.z ], [ %.pn252.pn, %.body ], [ %.pn252.pn375, %.body.thread ]
  %i.uk = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.ul = load ptr, ptr %i.uk, align 16, !tbaa !91 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !92 ; 2 uses
  %.not4.i.i.i.i290 = icmp eq ptr %i.ul, %i.un
  br i1 %.not4.i.i.i.i290, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i298, label %.lr.ph.i.i.i.i291

.lr.ph.i.i.i.i291:                                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit288, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i294
  %.05.i.i.i.i292 = phi ptr [ %i.ut, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i294 ], [ %i.ul, %_ZNSt6vectorIiSaIiEED2Ev.exit288 ] ; 3 uses
  %i.uo = load ptr, ptr %.05.i.i.i.i292, align 8, !tbaa !17 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i292, i64 16 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i293: ; preds = %.lr.ph.i.i.i.i291
  %i.ur = load i64, ptr %i.up, align 8, !tbaa !18
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.us) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i294

end_hunk_0
