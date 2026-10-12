Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hydorder?download=true
inline.NumInlined: 289
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z12gmx_hydorderiPPc:bb.a
  %i.ags = fpext <2 x float> %i.agr to <2 x double>
  %i.agt = insertelement <2 x double> %i.afl, double %i.afw, i64 1
  %i.agu = fmul <2 x double> %i.agt, %i.ags
  %i.agv = fdiv <2 x double> %i.agu, %i.aew       ; 2 uses
  %i.agw = load ptr, ptr %i.afe, align 8, !tbaa !134
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv416.i
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !117
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv413.i
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !119
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv408.i
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !93
  %i.ahd = fpext float %i.ahc to double
  %i.ahe = extractelement <2 x double> %i.agv, i64 0
  %i.ahf = extractelement <2 x double> %i.agv, i64 1
  %i.ahg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aee, ptr noundef nonnull @.str.69, double noundef %i.agn, double noundef %i.ahe, double noundef %i.ahf, double noundef %i.ahd) #15 ; 0 uses
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, %wide.trip.count338.i.i
  br i1 %exitcond412.not.i, label %._crit_edge356.i, label %bb.br, !llvm.loop !62

bb.bs:                                            ; preds = %.noexc106
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  %i.ahi = load ptr, ptr %25, align 8, !tbaa !20  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.adf
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i: ; preds = %bb.bs
  %i.ahk = load i64, ptr %i.adf, align 8, !tbaa !21
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.ahm = load ptr, ptr %24, align 8, !tbaa !20  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.adc
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i
  %i.aho = load i64, ptr %i.adc, align 8, !tbaa !21
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.bw

bb.bt:                                            ; preds = %.noexc107
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  %i.ahr = load ptr, ptr %28, align 8, !tbaa !20  ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.aeb
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i: ; preds = %bb.bt
  %i.aht = load i64, ptr %i.aeb, align 8, !tbaa !21
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.ahv = load ptr, ptr %27, align 8, !tbaa !20  ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, %i.ady
  br i1 %i.ahw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i
  %i.ahx = load i64, ptr %i.ady, align 8, !tbaa !21
  %i.ahy = add i64 %i.ahx, 1
  call void @_ZdlPvm(ptr noundef %i.ahv, i64 noundef %i.ahy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %bb.bw

._crit_edge356.i:                                 ; preds = %bb.br
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count287.i.i
  br i1 %exitcond325.not, label %._crit_edge358.split.i.loopexit, label %.preheader324.i, !llvm.loop !63

._crit_edge358.split.i.loopexit:                  ; preds = %._crit_edge356.i
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count292.i.i
  br i1 %exitcond326.not, label %._crit_edge360.i, label %.preheader325.i, !llvm.loop !64

._crit_edge360.i:                                 ; preds = %._crit_edge358.split.i.loopexit, %.preheader325.lr.ph.i, %bb.bq
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next420.i, %i.aex
  br i1 %exitcond327.not, label %._crit_edge363.i, label %bb.bq, !llvm.loop !65

._crit_edge363.i:                                 ; preds = %._crit_edge360.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.adi)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %._crit_edge363.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.aee)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc108, %.noexc105
  %i.ahz = fadd float %i.ch, %i.ci
  %i.aia = fmul float %i.ahz, 5.000000e-01        ; 2 uses
  %i.aib = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.32, i32 noundef 454, i64 noundef 2, i64 noundef 8)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc110:                                        ; preds = %.noexc109
  %i.aic = sext i32 %.1 to i64                    ; 3 uses
  %i.aid = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.32, i32 noundef 455, i64 noundef range(i64 -2147483648, 2147483648) %i.aic, i64 noundef 8)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %.noexc110
  store ptr %i.aid, ptr %i.aib, align 8, !tbaa !117
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 8 ; 5 uses
  %i.aif = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.32, i32 noundef 456, i64 noundef range(i64 -2147483648, 2147483648) %i.aic, i64 noundef 8)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %.noexc111
  store ptr %i.aif, ptr %i.aie, align 8, !tbaa !117
  %i.aig = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.32, i32 noundef 461, i64 noundef range(i64 -2147483648, 2147483648) %i.ef, i64 noundef 4)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc113:                                        ; preds = %.noexc112
  %i.aih = icmp sgt i32 %.1, 0                    ; 3 uses
  br i1 %i.aih, label %.lr.ph371.i, label %._crit_edge372.i

.lr.ph371.i:                                      ; preds = %.noexc113
  %i.aii = mul nsw i32 %i.eg, %i.cv
  %i.aij = sext i32 %i.aii to i64                 ; 2 uses
  %i.aik = sdiv i32 %i.ee, 2                      ; 2 uses
  %i.ail = add nsw i32 %i.aik, -1
  %i.aim = add nsw i32 %i.ee, -1
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge368.i, %.lr.ph371.i
  %indvars.iv428.i = phi i64 [ 0, %.lr.ph371.i ], [ %indvars.iv.next429.i, %._crit_edge368.i ] ; 6 uses
  %i.ain = load ptr, ptr %i.aib, align 8, !tbaa !117
  %i.aio = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.32, i32 noundef 466, i64 noundef range(i64 -2147483648, 2147483648) %i.aij, i64 noundef 4)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit

.noexc114:                                        ; preds = %bb.bu
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.ain, i64 %indvars.iv428.i
  store ptr %i.aio, ptr %i.aip, align 8, !tbaa !119
  %i.aiq = load ptr, ptr %i.aie, align 8, !tbaa !117
  %i.air = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.32, i32 noundef 467, i64 noundef range(i64 -2147483648, 2147483648) %i.aij, i64 noundef 4)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit

.noexc115:                                        ; preds = %.noexc114
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv428.i
  store ptr %i.air, ptr %i.ais, align 8, !tbaa !119
  br i1 %i.ed, label %._crit_edge368.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.noexc115
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %.1317.i, i64 %indvars.iv428.i ; 2 uses
  br i1 %i.fd, label %.preheader.i, label %._crit_edge368.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge366.i
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %._crit_edge366.i ], [ 0, %.preheader.lr.ph.i ] ; 4 uses
  %i.aiu = trunc nuw nsw i64 %indvars.iv425.i to i32
  %i.aiv = mul nuw nsw i32 %i.eg, %i.aiu
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc118, %.preheader.i
  %indvars.iv422.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next423.i, %.noexc118 ] ; 4 uses
  invoke void @_Z10rangeArrayPii(ptr noundef %i.aig, i32 noundef %i.ee)
          to label %.noexc116 unwind label %.loopexit

.noexc116:                                        ; preds = %bb.bv
  %i.aiw = load ptr, ptr %i.ait, align 8, !tbaa !134
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %indvars.iv425.i
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !117
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv422.i
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !119
  %i.ajb = invoke noundef i32 @_Z15start_binsearchPfPiiifi(ptr noundef %i.aja, ptr noundef %i.aig, i32 noundef 0, i32 noundef %i.ail, float noundef %i.aia, i32 noundef 1)
          to label %.noexc117 unwind label %.loopexit

.noexc117:                                        ; preds = %.noexc116
  %i.ajc = load ptr, ptr %i.ait, align 8, !tbaa !134
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ajc, i64 %indvars.iv425.i
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !117
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %indvars.iv422.i
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !119
  %i.ajh = invoke noundef i32 @_Z15start_binsearchPfPiiifi(ptr noundef %i.ajg, ptr noundef %i.aig, i32 noundef %i.aik, i32 noundef %i.aim, float noundef %i.aia, i32 noundef -1)
          to label %.noexc118 unwind label %.loopexit

.noexc118:                                        ; preds = %.noexc117
  %i.aji = sext i32 %i.ajb to i64
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aji
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !81
  %i.ajl = sitofp i32 %i.ajk to float
  %i.ajm = fadd nnan float %i.ajl, 5.000000e-01
  %i.ajn = fmul float %i.cf, %i.ajm
  %i.ajo = load ptr, ptr %i.aib, align 8, !tbaa !117
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv428.i
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !119
  %i.ajr = trunc nuw nsw i64 %indvars.iv422.i to i32
  %i.ajs = add nsw i32 %i.aiv, %i.ajr
  %36 = sext i32 %i.ajs to i64                    ; 2 uses
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %36
  store float %i.ajn, ptr %i.ajt, align 4, !tbaa !93
  %i.aju = sext i32 %i.ajh to i64
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !81
  %i.ajx = sitofp i32 %i.ajw to float
  %i.ajy = fadd nnan float %i.ajx, 5.000000e-01
  %i.ajz = fmul float %i.cf, %i.ajy
  %i.aka = load ptr, ptr %i.aie, align 8, !tbaa !117
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.aka, i64 %indvars.iv428.i
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !119
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.akc, i64 %36
  store float %i.ajz, ptr %i.akd, align 4, !tbaa !93
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next423.i, %wide.trip.count287.i.i
  br i1 %exitcond328.not, label %._crit_edge366.i, label %bb.bv, !llvm.loop !66

._crit_edge366.i:                                 ; preds = %.noexc118
  %indvars.iv.next426.i = add nuw nsw i64 %indvars.iv425.i, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next426.i, %wide.trip.count292.i.i
  br i1 %exitcond329.not, label %._crit_edge368.i, label %.preheader.i, !llvm.loop !67

._crit_edge368.i:                                 ; preds = %._crit_edge366.i, %.preheader.lr.ph.i, %.noexc115
  %indvars.iv.next429.i = add nuw nsw i64 %indvars.iv428.i, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next429.i, %i.aic
  br i1 %exitcond330.not, label %._crit_edge372.i, label %bb.bu, !llvm.loop !68

._crit_edge372.i:                                 ; preds = %._crit_edge368.i, %.noexc113
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.32, i32 noundef 491, ptr noundef %.1319.i)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %._crit_edge372.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.32, i32 noundef 492, ptr noundef %.1317.i)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i, %bb.ao, %bb.an, %bb.am
  %.pn214.i = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.ahq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i ], [ %i.ahh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i ], [ %i.dx, %bb.an ], [ %i.dw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.body

bb.bx:                                            ; preds = %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ake = load float, ptr @_ZZ12gmx_hydorderiPPcE8binwidth, align 4, !tbaa !93 ; 6 uses
  %i.akf = load i32, ptr @_ZZ12gmx_hydorderiPPcE7nlevels, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i32 %i.akf, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.akg = add i32 %i.cv, 1                       ; 4 uses
  %i.akh = sext i32 %i.akg to i64
  %i.aki = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.32, i32 noundef 515, i64 noundef range(i64 -2147483648, 2147483648) %i.akh, i64 noundef 4)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc136:                                        ; preds = %bb.bx
  %i.akj = add i32 %i.eg, 1                       ; 4 uses
  %i.akk = sext i32 %i.akj to i64
  %i.akl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.32, i32 noundef 516, i64 noundef range(i64 -2147483648, 2147483648) %i.akk, i64 noundef 4)
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc137:                                        ; preds = %.noexc136
  %i.akm = invoke noundef ptr @_Z9mk_matrixiib(i32 noundef %i.cv, i32 noundef %i.eg, i1 noundef zeroext false)
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc138:                                        ; preds = %.noexc137
  %i.akn = invoke noundef ptr @_Z9mk_matrixiib(i32 noundef %i.cv, i32 noundef %i.eg, i1 noundef zeroext false)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc139:                                        ; preds = %.noexc138
  %.not267.i = icmp slt i32 %i.cv, 0
  br i1 %.not267.i, label %.preheader233.i, label %iter.check632

iter.check632:                                    ; preds = %.noexc139
  %wide.trip.count.i = zext i32 %i.akg to i64     ; 6 uses
  %min.iters.check615 = icmp ult i32 %i.akg, 4
  br i1 %min.iters.check615, label %.lr.ph.i121.preheader, label %vector.main.loop.iter.check616

vector.main.loop.iter.check616:                   ; preds = %iter.check632
  %min.iters.check617 = icmp ult i32 %i.akg, 32
  br i1 %min.iters.check617, label %vec.epilog.ph636, label %vector.ph618

vector.ph618:                                     ; preds = %vector.main.loop.iter.check616
  %i.ako = and i64 %wide.trip.count.i, 28
  %n.vec619 = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  %broadcast.splatinsert620 = insertelement <8 x float> poison, float %i.ake, i64 0
  %broadcast.splat621 = shufflevector <8 x float> %broadcast.splatinsert620, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body622

vector.body622:                                   ; preds = %vector.ph618, %vector.body622
  %index623 = phi i64 [ 0, %vector.ph618 ], [ %index.next628, %vector.body622 ] ; 2 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index623 ; 5 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 32 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 64 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akp, i64 96 ; 2 uses
  %wide.load624 = load <8 x float>, ptr %i.akp, align 4, !tbaa !93
  %wide.load625 = load <8 x float>, ptr %i.akq, align 4, !tbaa !93
  %wide.load626 = load <8 x float>, ptr %i.akr, align 4, !tbaa !93
  %wide.load627 = load <8 x float>, ptr %i.aks, align 4, !tbaa !93
  %i.akt = fadd <8 x float> %broadcast.splat621, %wide.load624
  %i.aku = fadd <8 x float> %broadcast.splat621, %wide.load625
  %i.akv = fadd <8 x float> %broadcast.splat621, %wide.load626
  %i.akw = fadd <8 x float> %broadcast.splat621, %wide.load627
  store <8 x float> %i.akt, ptr %i.akp, align 4, !tbaa !93
  store <8 x float> %i.aku, ptr %i.akq, align 4, !tbaa !93
  store <8 x float> %i.akv, ptr %i.akr, align 4, !tbaa !93
  store <8 x float> %i.akw, ptr %i.aks, align 4, !tbaa !93
  %index.next628 = add nuw i64 %index623, 32      ; 2 uses
  %i.akx = icmp eq i64 %index.next628, %n.vec619
  br i1 %i.akx, label %middle.block629, label %vector.body622, !llvm.loop !69

middle.block629:                                  ; preds = %vector.body622
  %cmp.n630 = icmp eq i64 %n.vec619, %wide.trip.count.i
  br i1 %cmp.n630, label %.preheader233.i, label %vec.epilog.iter.check634

vec.epilog.iter.check634:                         ; preds = %middle.block629
  %min.epilog.iters.check635 = icmp eq i64 %i.ako, 0
  br i1 %min.epilog.iters.check635, label %.lr.ph.i121.preheader, label %vec.epilog.ph636, !prof !126

vec.epilog.ph636:                                 ; preds = %vector.main.loop.iter.check616, %vec.epilog.iter.check634
  %vec.epilog.resume.val631 = phi i64 [ %n.vec619, %vec.epilog.iter.check634 ], [ 0, %vector.main.loop.iter.check616 ]
  %n.vec637 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert638 = insertelement <4 x float> poison, float %i.ake, i64 0
  %broadcast.splat639 = shufflevector <4 x float> %broadcast.splatinsert638, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body640

vec.epilog.vector.body640:                        ; preds = %vec.epilog.vector.body640, %vec.epilog.ph636
  %index641 = phi i64 [ %vec.epilog.resume.val631, %vec.epilog.ph636 ], [ %index.next643, %vec.epilog.vector.body640 ] ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index641 ; 2 uses
  %wide.load642 = load <4 x float>, ptr %i.aky, align 4, !tbaa !93
  %i.akz = fadd <4 x float> %broadcast.splat639, %wide.load642
  store <4 x float> %i.akz, ptr %i.aky, align 4, !tbaa !93
  %index.next643 = add nuw i64 %index641, 4       ; 2 uses
  %i.ala = icmp eq i64 %index.next643, %n.vec637
  br i1 %i.ala, label %vec.epilog.middle.block644, label %vec.epilog.vector.body640, !llvm.loop !70

vec.epilog.middle.block644:                       ; preds = %vec.epilog.vector.body640
  %cmp.n645 = icmp eq i64 %n.vec637, %wide.trip.count.i
  br i1 %cmp.n645, label %.preheader233.i, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %iter.check632, %vec.epilog.iter.check634, %vec.epilog.middle.block644
  %indvars.iv.i122.ph = phi i64 [ 0, %iter.check632 ], [ %n.vec619, %vec.epilog.iter.check634 ], [ %n.vec637, %vec.epilog.middle.block644 ]
  br label %.lr.ph.i121

.preheader233.i:                                  ; preds = %.lr.ph.i121, %middle.block629, %vec.epilog.middle.block644, %.noexc139
  %.not128269.i = icmp slt i32 %i.eg, 0
  br i1 %.not128269.i, label %._crit_edge.i125, label %iter.check665

iter.check665:                                    ; preds = %.preheader233.i
  %wide.trip.count307.i = zext i32 %i.akj to i64  ; 6 uses
  %min.iters.check648 = icmp ult i32 %i.akj, 4
  br i1 %min.iters.check648, label %.lr.ph271.i.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %iter.check665
  %min.iters.check650 = icmp ult i32 %i.akj, 32
  br i1 %min.iters.check650, label %vec.epilog.ph669, label %vector.ph651

vector.ph651:                                     ; preds = %vector.main.loop.iter.check649
  %i.alb = and i64 %wide.trip.count307.i, 28
  %n.vec652 = and i64 %wide.trip.count307.i, 4294967264 ; 4 uses
  %broadcast.splatinsert653 = insertelement <8 x float> poison, float %i.ake, i64 0
  %broadcast.splat654 = shufflevector <8 x float> %broadcast.splatinsert653, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body655

vector.body655:                                   ; preds = %vector.ph651, %vector.body655
  %index656 = phi i64 [ 0, %vector.ph651 ], [ %index.next661, %vector.body655 ] ; 2 uses
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %index656 ; 5 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 64 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 96 ; 2 uses
  %wide.load657 = load <8 x float>, ptr %i.alc, align 4, !tbaa !93
  %wide.load658 = load <8 x float>, ptr %i.ald, align 4, !tbaa !93
  %wide.load659 = load <8 x float>, ptr %i.ale, align 4, !tbaa !93
  %wide.load660 = load <8 x float>, ptr %i.alf, align 4, !tbaa !93
  %i.alg = fadd <8 x float> %broadcast.splat654, %wide.load657
  %i.alh = fadd <8 x float> %broadcast.splat654, %wide.load658
  %i.ali = fadd <8 x float> %broadcast.splat654, %wide.load659
  %i.alj = fadd <8 x float> %broadcast.splat654, %wide.load660
  store <8 x float> %i.alg, ptr %i.alc, align 4, !tbaa !93
  store <8 x float> %i.alh, ptr %i.ald, align 4, !tbaa !93
  store <8 x float> %i.ali, ptr %i.ale, align 4, !tbaa !93
  store <8 x float> %i.alj, ptr %i.alf, align 4, !tbaa !93
  %index.next661 = add nuw i64 %index656, 32      ; 2 uses
  %i.alk = icmp eq i64 %index.next661, %n.vec652
  br i1 %i.alk, label %middle.block662, label %vector.body655, !llvm.loop !71

middle.block662:                                  ; preds = %vector.body655
  %cmp.n663 = icmp eq i64 %n.vec652, %wide.trip.count307.i
  br i1 %cmp.n663, label %._crit_edge.i125, label %vec.epilog.iter.check667

vec.epilog.iter.check667:                         ; preds = %middle.block662
  %min.epilog.iters.check668 = icmp eq i64 %i.alb, 0
  br i1 %min.epilog.iters.check668, label %.lr.ph271.i.preheader, label %vec.epilog.ph669, !prof !126

vec.epilog.ph669:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check667
  %vec.epilog.resume.val664 = phi i64 [ %n.vec652, %vec.epilog.iter.check667 ], [ 0, %vector.main.loop.iter.check649 ]
  %n.vec670 = and i64 %wide.trip.count307.i, 4294967292 ; 3 uses
end_hunk_0
