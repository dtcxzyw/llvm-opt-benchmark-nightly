Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_chi?download=true
inline.NumInlined: 1583
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_Z7gmx_chiiPPc:bb.a
  %i.aps = fneg float %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 100
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !183
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.apv
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 20
  store float %i.aps, ptr %i.apx, align 4, !tbaa !60
  %i.apy = load float, ptr %i.apq, align 4, !tbaa !33
  %i.apz = fneg float %i.apy
  %i.aqa = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 96
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !182
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.aqc
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 20
  store float %i.apz, ptr %i.aqe, align 4, !tbaa !60
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 224 ; 2 uses
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !33
  %i.aqh = fneg float %i.aqg
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 104
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !184
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.aqk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 20
  store float %i.aqh, ptr %i.aqm, align 4, !tbaa !60
  %i.aqn = load float, ptr %i.aqf, align 4, !tbaa !33
  %i.aqo = fneg float %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 108
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !186
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 20
  store float %i.aqo, ptr %i.aqt, align 4, !tbaa !60
  br i1 %i.ami, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.ev
  %i.aqu = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 112 ; 8 uses
  br i1 %i.apn, label %.epil.preheader1155, label %.lr.ph360.i.new

._crit_edge361.i.loopexit.unr-lcssa:              ; preds = %bb.fg
  br i1 %lcmp.mod1157.not, label %._crit_edge361.i, label %.epil.preheader1155

.epil.preheader1155:                              ; preds = %._crit_edge361.i.loopexit.unr-lcssa, %.lr.ph360.i
  %indvars.iv400.i.epil.init = phi i64 [ 0, %.lr.ph360.i ], [ %indvars.iv.next401.i.3, %._crit_edge361.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1158)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ey, %.epil.preheader1155
  %indvars.iv400.i.epil = phi i64 [ %indvars.iv400.i.epil.init, %.epil.preheader1155 ], [ %indvars.iv.next401.i.epil, %bb.ey ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader1155 ], [ %epil.iter.next, %bb.ey ]
  %i.aqv = add nuw nsw i64 %indvars.iv400.i.epil, 3 ; 2 uses
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aqv
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !13
  %.not215.i.epil = icmp eq i32 %i.aqx, -1
  br i1 %.not215.i.epil, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.aqv
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !33
  %i.ara = fneg float %i.aqz
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %indvars.iv400.i.epil
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 4
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !13
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 20
  store float %i.ara, ptr %i.arg, align 4, !tbaa !60
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %indvars.iv.next401.i.epil = add nuw nsw i64 %indvars.iv400.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1156
  br i1 %epil.iter.cmp.not, label %._crit_edge361.i, label %bb.ew, !llvm.loop !147

._crit_edge361.i:                                 ; preds = %._crit_edge361.i.loopexit.unr-lcssa, %bb.ey, %bb.ev
  %i.arh = getelementptr inbounds nuw i8, ptr %.sroa.0.0363.i, i64 400 ; 2 uses
  %.not331.i = icmp eq ptr %i.arh, %i.aja
  br i1 %.not331.i, label %._crit_edge365.i, label %bb.ev

.lr.ph360.i.new:                                  ; preds = %.lr.ph360.i, %bb.fg
  %indvars.iv400.i = phi i64 [ %indvars.iv.next401.i.3, %bb.fg ], [ 0, %.lr.ph360.i ] ; 7 uses
  %niter1160 = phi i64 [ %niter1160.next.3, %bb.fg ], [ 0, %.lr.ph360.i ]
  %i.ari = or disjoint i64 %indvars.iv400.i, 3    ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.ari
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !13 ; 2 uses
  %.not215.i = icmp eq i32 %i.ark, -1
  br i1 %.not215.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph360.i.new
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.ari
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !33
  %i.arn = fneg float %i.arm
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %indvars.iv400.i
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !13
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 20
  store float %i.arn, ptr %i.art, align 4, !tbaa !60
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.lr.ph360.i.new
  %i.aru = add nuw nsw i64 %indvars.iv400.i, 4    ; 2 uses
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aru
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !13 ; 2 uses
  %.not215.i.1 = icmp eq i32 %i.arw, -1
  br i1 %.not215.i.1, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.aru
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !33
  %i.arz = fneg float %i.ary
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %indvars.iv400.i
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !13
  %i.asd = sext i32 %i.asc to i64
  %i.ase = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 20
  store float %i.arz, ptr %i.asf, align 4, !tbaa !60
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.asg = add nuw nsw i64 %indvars.iv400.i, 5    ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !13
  %.not215.i.2 = icmp eq i32 %i.asi, -1
  br i1 %.not215.i.2, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.asg
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !33
  %i.asl = fneg float %i.ask
  %i.asm = sext i32 %i.ark to i64
  %i.asn = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.asm
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 20
  store float %i.asl, ptr %i.aso, align 4, !tbaa !60
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.asp = add nuw nsw i64 %indvars.iv400.i, 6    ; 2 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.asp
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !13
  %.not215.i.3 = icmp eq i32 %i.asr, -1
  br i1 %.not215.i.3, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.asp
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !33
  %i.asu = fneg float %i.ast
  %i.asv = sext i32 %i.arw to i64
  %i.asw = getelementptr inbounds [52 x i8], ptr %i.aph, i64 %i.asv
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 20
  store float %i.asu, ptr %i.asx, align 4, !tbaa !60
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %indvars.iv.next401.i.3 = add nuw nsw i64 %indvars.iv400.i, 4 ; 2 uses
  %niter1160.next.3 = add i64 %niter1160, 4       ; 2 uses
  %niter1160.ncmp.3 = icmp eq i64 %niter1160.next.3, %unroll_iter1159
  br i1 %niter1160.ncmp.3, label %._crit_edge361.i.loopexit.unr-lcssa, label %.lr.ph360.i.new, !llvm.loop !148

bb.fh:                                            ; preds = %._crit_edge365.i
  %i.asy = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull @.str.126)
          to label %bb.fi unwind label %bb.fl     ; 14 uses

bb.fi:                                            ; preds = %bb.fh
  %i.asz = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i285.i = icmp eq ptr %i.ata, null
  br i1 %.not.i.i.i285.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i286.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.asz, ptr noundef nonnull %i.ata) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i286.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i286.i: ; preds = %bb.fj, %bb.fi
  %i.atb = load ptr, ptr %19, align 8, !tbaa !27  ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.atd = icmp eq ptr %i.atb, %i.atc
  br i1 %i.atd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit289.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i286.i
  %i.ate = load i64, ptr %i.atc, align 8, !tbaa !28
  %i.atf = add i64 %i.ate, 1
  call void @_ZdlPvm(ptr noundef %i.atb, i64 noundef %i.atf) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit289.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit289.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i286.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.245, i64 28, i64 1, ptr %i.asy) ; 0 uses
  %fwrite203.i = call i64 @fwrite(ptr nonnull @.str.246, i64 69, i64 1, ptr %i.asy) ; 0 uses
  invoke void @_Z13write_pdbfileP8_IO_FILEPKcPK7t_atomsPA3_Kf7PbcTypeS8_ciP12gmx_conect_t(ptr noundef %i.asy, ptr noundef null, ptr noundef nonnull %27, ptr noundef %i.ajd, i32 noundef %i.aje, ptr noundef nonnull %i.t, i8 noundef signext 32, i32 noundef 0, ptr noundef null)
          to label %.preheader335.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.preheader335.i:                                  ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit289.i
  %i.atg = load i32, ptr %27, align 8, !tbaa !177 ; 4 uses
  %i.ath = icmp sgt i32 %i.atg, 0
  br i1 %i.ath, label %.lr.ph370.preheader.i, label %._crit_edge371.i

.lr.ph370.preheader.i:                            ; preds = %.preheader335.i
  %wide.trip.count408.i = zext nneg i32 %i.atg to i64 ; 3 uses
  %i.ati = icmp ult i32 %i.atg, 32
  br i1 %i.ati, label %.lr.ph370.i.preheader, label %.lr.ph370.preheader.i.new

.lr.ph370.preheader.i.new:                        ; preds = %.lr.ph370.preheader.i
  %unroll_iter1167 = and i64 %wide.trip.count408.i, 2147483616 ; 3 uses
  br label %.lr.ph370.i.epil.preheader

.lr.ph370.i.epil.preheader:                       ; preds = %.lr.ph370.i.epil.preheader, %.lr.ph370.preheader.i.new
  %indvars.iv405.i.epil.init = phi i64 [ 0, %.lr.ph370.preheader.i.new ], [ %index.next1043, %.lr.ph370.i.epil.preheader ] ; 6 uses
  %vec.phi1017 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %80, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1018 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %81, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1019 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %82, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1020 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %83, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1021 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %68, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1022 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %69, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1023 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %70, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1024 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %71, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1025 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %56, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1026 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %57, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1027 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %58, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %vec.phi1028 = phi <8 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i.new ], [ %59, %.lr.ph370.i.epil.preheader ] ; 3 uses
  %41 = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %indvars.iv405.i.epil.init
  %42 = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %indvars.iv405.i.epil.init
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 96
  %44 = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %indvars.iv405.i.epil.init
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 192
  %46 = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %indvars.iv405.i.epil.init
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 288
  %wide.vec = load <24 x float>, ptr %41, align 4, !tbaa !33 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1029 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1030 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1031 = load <24 x float>, ptr %43, align 4, !tbaa !33 ; 3 uses
  %strided.vec1032 = shufflevector <24 x float> %wide.vec1031, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1033 = shufflevector <24 x float> %wide.vec1031, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1034 = shufflevector <24 x float> %wide.vec1031, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1035 = load <24 x float>, ptr %45, align 4, !tbaa !33 ; 3 uses
  %strided.vec1036 = shufflevector <24 x float> %wide.vec1035, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1037 = shufflevector <24 x float> %wide.vec1035, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1038 = shufflevector <24 x float> %wide.vec1035, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1039 = load <24 x float>, ptr %47, align 4, !tbaa !33 ; 3 uses
  %strided.vec1040 = shufflevector <24 x float> %wide.vec1039, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1041 = shufflevector <24 x float> %wide.vec1039, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1042 = shufflevector <24 x float> %wide.vec1039, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %48 = freeze <8 x float> %strided.vec           ; 3 uses
  %49 = freeze <8 x float> %strided.vec1032       ; 3 uses
  %50 = freeze <8 x float> %strided.vec1036       ; 3 uses
  %51 = freeze <8 x float> %strided.vec1040       ; 3 uses
  %52 = fcmp olt <8 x float> %48, %vec.phi1025
  %53 = fcmp olt <8 x float> %49, %vec.phi1026
  %54 = fcmp olt <8 x float> %50, %vec.phi1027
  %55 = fcmp olt <8 x float> %51, %vec.phi1028
  %56 = select <8 x i1> %52, <8 x float> %48, <8 x float> %vec.phi1025 ; 2 uses
  %57 = select <8 x i1> %53, <8 x float> %49, <8 x float> %vec.phi1026 ; 2 uses
  %58 = select <8 x i1> %54, <8 x float> %50, <8 x float> %vec.phi1027 ; 2 uses
  %59 = select <8 x i1> %55, <8 x float> %51, <8 x float> %vec.phi1028 ; 2 uses
  %60 = freeze <8 x float> %strided.vec1029       ; 3 uses
  %61 = freeze <8 x float> %strided.vec1033       ; 3 uses
  %62 = freeze <8 x float> %strided.vec1037       ; 3 uses
  %63 = freeze <8 x float> %strided.vec1041       ; 3 uses
  %64 = fcmp olt <8 x float> %60, %vec.phi1021
  %65 = fcmp olt <8 x float> %61, %vec.phi1022
  %66 = fcmp olt <8 x float> %62, %vec.phi1023
  %67 = fcmp olt <8 x float> %63, %vec.phi1024
  %68 = select <8 x i1> %64, <8 x float> %60, <8 x float> %vec.phi1021 ; 2 uses
  %69 = select <8 x i1> %65, <8 x float> %61, <8 x float> %vec.phi1022 ; 2 uses
  %70 = select <8 x i1> %66, <8 x float> %62, <8 x float> %vec.phi1023 ; 2 uses
  %71 = select <8 x i1> %67, <8 x float> %63, <8 x float> %vec.phi1024 ; 2 uses
  %72 = freeze <8 x float> %strided.vec1030       ; 3 uses
  %73 = freeze <8 x float> %strided.vec1034       ; 3 uses
  %74 = freeze <8 x float> %strided.vec1038       ; 3 uses
  %75 = freeze <8 x float> %strided.vec1042       ; 3 uses
  %76 = fcmp olt <8 x float> %72, %vec.phi1017
  %77 = fcmp olt <8 x float> %73, %vec.phi1018
  %78 = fcmp olt <8 x float> %74, %vec.phi1019
  %79 = fcmp olt <8 x float> %75, %vec.phi1020
  %80 = select <8 x i1> %76, <8 x float> %72, <8 x float> %vec.phi1017 ; 2 uses
  %81 = select <8 x i1> %77, <8 x float> %73, <8 x float> %vec.phi1018 ; 2 uses
  %82 = select <8 x i1> %78, <8 x float> %74, <8 x float> %vec.phi1019 ; 2 uses
  %83 = select <8 x i1> %79, <8 x float> %75, <8 x float> %vec.phi1020 ; 2 uses
  %index.next1043 = add nuw i64 %indvars.iv405.i.epil.init, 32 ; 2 uses
  %84 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %72, /* (nan nzero) */ i32 35)
  %85 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %73, /* (nan nzero) */ i32 35)
  %86 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %74, /* (nan nzero) */ i32 35)
  %87 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %75, /* (nan nzero) */ i32 35)
  %88 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %60, /* (nan nzero) */ i32 35)
  %89 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %61, /* (nan nzero) */ i32 35)
  %90 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %62, /* (nan nzero) */ i32 35)
  %91 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %63, /* (nan nzero) */ i32 35)
  %92 = or <8 x i1> %84, %88
  %93 = or <8 x i1> %85, %89
  %94 = or <8 x i1> %86, %90
  %95 = or <8 x i1> %87, %91
  %96 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %48, /* (nan nzero) */ i32 35)
  %97 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %49, /* (nan nzero) */ i32 35)
  %98 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %50, /* (nan nzero) */ i32 35)
  %99 = call <8 x i1> @llvm.is.fpclass.v8f32(<8 x float> %51, /* (nan nzero) */ i32 35)
  %100 = or <8 x i1> %92, %96
  %101 = or <8 x i1> %93, %97
  %102 = or <8 x i1> %94, %98
  %103 = or <8 x i1> %95, %99
  %104 = or <8 x i1> %100, %101
  %105 = or <8 x i1> %104, %102
  %106 = or <8 x i1> %105, %103
  %107 = bitcast <8 x i1> %106 to i8
  %lcmp.mod1166 = icmp ne i8 %107, 0              ; 15 uses
  %108 = icmp eq i64 %index.next1043, %unroll_iter1167
  %109 = or i1 %lcmp.mod1166, %108
  br i1 %109, label %.lr.ph370.i.epil, label %.lr.ph370.i.epil.preheader, !llvm.loop !149

.lr.ph370.i.epil:                                 ; preds = %.lr.ph370.i.epil.preheader
  %110 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1017, <8 x float> %80
  %111 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1018, <8 x float> %81
  %112 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1019, <8 x float> %82
  %113 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1020, <8 x float> %83
  %114 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1021, <8 x float> %68
  %115 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1022, <8 x float> %69
  %116 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1023, <8 x float> %70
  %117 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1024, <8 x float> %71
  %118 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1025, <8 x float> %56
  %119 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1026, <8 x float> %57
  %120 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1027, <8 x float> %58
  %121 = select i1 %lcmp.mod1166, <8 x float> %vec.phi1028, <8 x float> %59
  %122 = select i1 %lcmp.mod1166, i64 %indvars.iv405.i.epil.init, i64 %unroll_iter1167
  %rdx.minmax = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %110, <8 x float> %111)
  %rdx.minmax1045 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %112)
  %rdx.minmax1046 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax1045, <8 x float> %113)
  %123 = call nnan float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax1046) ; 2 uses
  %rdx.minmax1047 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %114, <8 x float> %115)
  %rdx.minmax1048 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax1047, <8 x float> %116)
  %rdx.minmax1049 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax1048, <8 x float> %117)
  %124 = call nnan float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax1049)
  %rdx.minmax1050 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %118, <8 x float> %119)
  %rdx.minmax1051 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax1050, <8 x float> %120)
  %rdx.minmax1052 = call nnan <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax1051, <8 x float> %121)
  %125 = call nnan float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax1052)
  %cmp.n1053 = icmp ne i64 %unroll_iter1167, %wide.trip.count408.i
  %.not1083 = or i1 %cmp.n1053, %lcmp.mod1166
  %126 = insertelement <2 x float> poison, float %125, i64 0
  %127 = insertelement <2 x float> %126, float %124, i64 1 ; 2 uses
  br i1 %.not1083, label %.lr.ph370.i.preheader, label %._crit_edge371.loopexit.i

.lr.ph370.i.preheader:                            ; preds = %.lr.ph370.preheader.i, %.lr.ph370.i.epil
  %indvars.iv405.i.ph = phi i64 [ 0, %.lr.ph370.preheader.i ], [ %122, %.lr.ph370.i.epil ]
  %.0327368.i.ph = phi float [ 1.000000e+03, %.lr.ph370.preheader.i ], [ %123, %.lr.ph370.i.epil ]
  %.ph = phi <2 x float> [ splat (float 1.000000e+03), %.lr.ph370.preheader.i ], [ %127, %.lr.ph370.i.epil ]
  br label %.lr.ph370.i

._crit_edge371.loopexit.i:                        ; preds = %.lr.ph370.i, %.lr.ph370.i.epil
  %.sroa.speculated.i.lcssa = phi float [ %123, %.lr.ph370.i.epil ], [ %.sroa.speculated.i.3, %.lr.ph370.i ]
  %128 = phi <2 x float> [ %127, %.lr.ph370.i.epil ], [ %i.auc, %.lr.ph370.i ]
  %i.atj = fmul <2 x float> %128, splat (float 1.000000e+01)
  %i.atk = fmul float %.sroa.speculated.i.lcssa, 1.000000e+01
  %i.atl = fpext float %i.atk to double
  br label %._crit_edge371.i

._crit_edge371.i:                                 ; preds = %._crit_edge371.loopexit.i, %.preheader335.i
  %.0327.lcssa.i = phi double [ 1.000000e+04, %.preheader335.i ], [ %i.atl, %._crit_edge371.loopexit.i ] ; 10 uses
  %i.atm = phi <2 x float> [ splat (float 1.000000e+04), %.preheader335.i ], [ %i.atj, %._crit_edge371.loopexit.i ] ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 10 uses
  %i.ato = add i32 %i.atg, 1
  %i.atp = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.atq = add nsw i32 %i.atp, 1
  %i.atr = fadd double %.0327.lcssa.i, 0.000000e+00
  %i.ats = fptrunc double %i.atr to float
  %i.att = extractelement <2 x float> %i.atm, i64 0 ; 10 uses
  %i.atu = extractelement <2 x float> %i.atm, i64 1 ; 10 uses
  %i.atv = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.ato, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.atq, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.ats, float noundef 0.000000e+00, float noundef -0.000000e+00, ptr noundef nonnull @.str.20)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fk:                                            ; preds = %._crit_edge365.i
  %i.atw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fh
  %i.atx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn201.i = phi { ptr, i32 } [ %i.atx, %bb.fl ], [ %i.atw, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.loopexit.split-lp.i132

.lr.ph370.i:                                      ; preds = %.lr.ph370.i.preheader, %.lr.ph370.i
  %indvars.iv405.i = phi i64 [ %niter1168.next.3, %.lr.ph370.i ], [ %indvars.iv405.i.ph, %.lr.ph370.i.preheader ] ; 2 uses
  %.0327368.i = phi float [ %.sroa.speculated.i.3, %.lr.ph370.i ], [ %.0327368.i.ph, %.lr.ph370.i.preheader ] ; 2 uses
  %i.aty = phi <2 x float> [ %i.auc, %.lr.ph370.i ], [ %.ph, %.lr.ph370.i.preheader ] ; 2 uses
  %i.atz = getelementptr inbounds nuw [12 x i8], ptr %i.ajd, i64 %indvars.iv405.i ; 2 uses
  %i.aua = load <2 x float>, ptr %i.atz, align 4, !tbaa !33 ; 2 uses
  %i.aub = fcmp olt <2 x float> %i.aua, %i.aty
  %i.auc = select <2 x i1> %i.aub, <2 x float> %i.aua, <2 x float> %i.aty ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !33 ; 2 uses
  %i.auf = fcmp olt float %i.aue, %.0327368.i
  %.sroa.speculated.i.3 = select i1 %i.auf, float %i.aue, float %.0327368.i ; 2 uses
  %niter1168.next.3 = add nuw nsw i64 %indvars.iv405.i, 1 ; 2 uses
  %niter1168.ncmp.3 = icmp eq i64 %niter1168.next.3, %wide.trip.count408.i
  br i1 %niter1168.ncmp.3, label %._crit_edge371.loopexit.i, label %.lr.ph370.i, !llvm.loop !150

bb.fn:                                            ; preds = %._crit_edge371.i
  %i.aug = load i32, ptr %27, align 8, !tbaa !177
  %i.auh = add i32 %i.aug, 2
  %i.aui = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.auj = add nsw i32 %i.aui, 1
  %i.auk = fadd double %.0327.lcssa.i, 1.200000e+00
  %i.aul = fptrunc double %i.auk to float
  %i.aum = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.auh, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.auj, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.aul, float noundef 0.000000e+00, float noundef -1.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fo:                                            ; preds = %bb.fn
  %i.aun = load i32, ptr %27, align 8, !tbaa !177
  %i.auo = add i32 %i.aun, 3
  %i.aup = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.auq = add nsw i32 %i.aup, 1
  %i.aur = fadd double %.0327.lcssa.i, 2.400000e+00
  %i.aus = fptrunc double %i.aur to float
  %i.aut = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.auo, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.auq, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.aus, float noundef 0.000000e+00, float noundef -2.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fp unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  %i.auu = load i32, ptr %27, align 8, !tbaa !177
  %i.auv = add i32 %i.auu, 4
  %i.auw = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.aux = add nsw i32 %i.auw, 1
  %i.auy = fadd double %.0327.lcssa.i, f0x400CCCCCCCCCCCCC
  %i.auz = fptrunc double %i.auy to float
  %i.ava = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.auv, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.aux, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.auz, float noundef 0.000000e+00, float noundef -3.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fq unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  %i.avb = load i32, ptr %27, align 8, !tbaa !177
  %i.avc = add i32 %i.avb, 5
  %i.avd = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.ave = add nsw i32 %i.avd, 1
  %i.avf = fadd double %.0327.lcssa.i, 4.800000e+00
  %i.avg = fptrunc double %i.avf to float
  %i.avh = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.avc, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.ave, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.avg, float noundef 0.000000e+00, float noundef -4.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fr:                                            ; preds = %bb.fq
  %i.avi = load i32, ptr %27, align 8, !tbaa !177
  %i.avj = add i32 %i.avi, 6
  %i.avk = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.avl = add nsw i32 %i.avk, 1
  %i.avm = fadd double %.0327.lcssa.i, 6.000000e+00
  %i.avn = fptrunc double %i.avm to float
  %i.avo = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.avj, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.avl, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.avn, float noundef 0.000000e+00, float noundef -5.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fs:                                            ; preds = %bb.fr
  %i.avp = load i32, ptr %27, align 8, !tbaa !177
  %i.avq = add i32 %i.avp, 7
  %i.avr = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.avs = add nsw i32 %i.avr, 1
  %i.avt = fadd double %.0327.lcssa.i, f0x401CCCCCCCCCCCCC
  %i.avu = fptrunc double %i.avt to float
  %i.avv = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.avq, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.avs, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.avu, float noundef 0.000000e+00, float noundef -6.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.ft:                                            ; preds = %bb.fs
  %i.avw = load i32, ptr %27, align 8, !tbaa !177
  %i.avx = add i32 %i.avw, 8
  %i.avy = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.avz = add nsw i32 %i.avy, 1
  %i.awa = fadd double %.0327.lcssa.i, 8.400000e+00
  %i.awb = fptrunc double %i.awa to float
  %i.awc = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.avx, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.avz, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.awb, float noundef 0.000000e+00, float noundef f0xBF333333, ptr noundef nonnull @.str.20)
          to label %bb.fu unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.awd = load i32, ptr %27, align 8, !tbaa !177
  %i.awe = add i32 %i.awd, 9
  %i.awf = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.awg = add nsw i32 %i.awf, 1
  %i.awh = fadd double %.0327.lcssa.i, f0x4023333333333333
  %i.awi = fptrunc double %i.awh to float
  %i.awj = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.awe, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.awg, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.awi, float noundef 0.000000e+00, float noundef -8.000000e-01, ptr noundef nonnull @.str.20)
          to label %bb.fv unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  %i.awk = load i32, ptr %27, align 8, !tbaa !177
  %i.awl = add i32 %i.awk, 10
  %i.awm = load i32, ptr %i.atn, align 8, !tbaa !198
  %i.awn = add nsw i32 %i.awm, 1
  %i.awo = fadd double %.0327.lcssa.i, f0x4025999999999999
  %i.awp = fptrunc double %i.awo to float
  %i.awq = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.asy, i32 noundef 0, i32 noundef %i.awl, ptr noundef nonnull @.str.247, i8 noundef signext 32, ptr noundef nonnull @.str.248, i8 noundef signext 32, i32 noundef %i.awn, i8 noundef signext 32, float noundef %i.att, float noundef %i.atu, float noundef %i.awp, float noundef 0.000000e+00, float noundef f0xBF666666, ptr noundef nonnull @.str.20)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.fw:                                            ; preds = %bb.fv
  %i.awr = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.asy)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %._crit_edge371.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit289.i, %bb.et, %._crit_edge354.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %lpad.loopexit.split-lp381.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i132

bb.fx:                                            ; preds = %bb.fw, %bb.er
  %fwrite204.i = call i64 @fwrite(ptr nonnull @.str.249, i64 24, i64 1, ptr %i.cw) ; 0 uses
  %fwrite205.i = call i64 @fwrite(ptr nonnull @.str.250, i64 10, i64 1, ptr %i.cw) ; 0 uses
  br i1 %i.ajg, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %fwrite206.i = call i64 @fwrite(ptr nonnull @.str.251, i64 6, i64 1, ptr %i.cw) ; 0 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  br i1 %i.aji, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %fwrite207.i = call i64 @fwrite(ptr nonnull @.str.252, i64 5, i64 1, ptr %i.cw) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %or.cond.i = and i1 %i.cu, %i.ami               ; 2 uses
  br i1 %or.cond.i, label %.lr.ph377.preheader.i, label %.loopexit333.i

.lr.ph377.preheader.i:                            ; preds = %bb.gb
  %wide.trip.count414.i = zext nneg i32 %i.aiy to i64
  br label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i, %.lr.ph377.preheader.i
  %indvars.iv411.i = phi i64 [ 0, %.lr.ph377.preheader.i ], [ %indvars.iv.next412.i, %.lr.ph377.i ] ; 2 uses
  %i.aws = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %indvars.iv411.i
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 160
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !27
  %i.awv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.253, ptr noundef %i.awu) #24 ; 0 uses
  %indvars.iv.next412.i = add nuw nsw i64 %indvars.iv411.i, 1 ; 2 uses
  %exitcond415.not.i = icmp eq i64 %indvars.iv.next412.i, %wide.trip.count414.i
  br i1 %exitcond415.not.i, label %.loopexit333.i, label %.lr.ph377.i, !llvm.loop !151

.loopexit333.i:                                   ; preds = %.lr.ph377.i, %bb.gb
  %fwrite208.i = call i64 @fwrite(ptr nonnull @.str.254, i64 11, i64 1, ptr %i.cw) ; 0 uses
  br i1 %i.ajg, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.loopexit333.i
  %i.aww = load i32, ptr %i.j, align 16, !tbaa !13
  %i.awx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.255, i32 noundef %i.aww) #24 ; 0 uses
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.loopexit333.i
  br i1 %i.aji, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.awy = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !13
  %i.axa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.255, i32 noundef %i.awz) #24 ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  br i1 %or.cond.i, label %.lr.ph379.preheader.i, label %.loopexit346

.lr.ph379.preheader.i:                            ; preds = %bb.gf
  %wide.trip.count419.i = zext nneg i32 %i.aiy to i64
  br label %.lr.ph379.i

.lr.ph379.i:                                      ; preds = %.lr.ph379.i, %.lr.ph379.preheader.i
  %indvars.iv416.i = phi i64 [ 0, %.lr.ph379.preheader.i ], [ %indvars.iv.next417.i, %.lr.ph379.i ] ; 2 uses
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv416.i
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 12
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !13
  %i.axe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.255, i32 noundef %i.axd) #24 ; 0 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond420.not.i = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count419.i
  br i1 %exitcond420.not.i, label %.loopexit346, label %.lr.ph379.i, !llvm.loop !152

.loopexit.split-lp.i132:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %bb.fm, %bb.ek
  %.pn211.pn.i = phi { ptr, i32 } [ %.pn197.pn.pn.i, %bb.ek ], [ %.pn201.i, %bb.fm ], [ %lpad.loopexit.split-lp381.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm11EED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %.body144

.loopexit346:                                     ; preds = %.lr.ph379.i, %bb.gf
  %fputc210.i = call i32 @fputc(i32 10, ptr %i.cw) ; 0 uses
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm11EED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.axf = load i8, ptr @_ZZ7gmx_chiiPPcE5bRama, align 1, !tbaa !174, !range !175, !noundef !176
  %i.axg = trunc nuw i8 %i.axf to i1
  %.pre497.pre502 = load i32, ptr %i.w, align 4, !tbaa !13 ; 5 uses
  %.pre499.pre504 = load ptr, ptr %33, align 8, !tbaa !51 ; 5 uses
  %.pre501.pre506 = load ptr, ptr %i.fg, align 8, !tbaa !50 ; 3 uses
  br i1 %i.axg, label %bb.gg, label %bb.hn

bb.gg:                                            ; preds = %.loopexit346
  %i.axh = load i8, ptr @_ZZ7gmx_chiiPPcE5bViol, align 1, !tbaa !174, !range !175, !noundef !176
  %i.axi = trunc nuw i8 %i.axh to i1              ; 3 uses
  %i.axj = load i8, ptr @_ZZ7gmx_chiiPPcE9bRamOmega, align 1, !tbaa !174, !range !175, !noundef !176
  %i.axk = trunc nuw i8 %i.axj to i1
  %i.axl = load ptr, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
end_hunk_0
begin_hunk_1_@_ZL9rama_filePKcS0_S0_S0_PK16gmx_output_env_t:bb.a
  %fwrite38 = call i64 @fwrite(ptr nonnull @.str.216, i64 22, i64 1, ptr %i.ab) ; 0 uses
  %fwrite39 = call i64 @fwrite(ptr nonnull @.str.217, i64 25, i64 1, ptr %i.ab) ; 0 uses
  %fwrite40 = call i64 @fwrite(ptr nonnull @.str.273, i64 16, i64 1, ptr %i.ab) ; 0 uses
  %fwrite41 = call i64 @fwrite(ptr nonnull @.str.274, i64 22, i64 1, ptr %i.ab) ; 0 uses
  %fwrite42 = call i64 @fwrite(ptr nonnull @.str.275, i64 22, i64 1, ptr %i.ab) ; 0 uses
  %fwrite43 = call i64 @fwrite(ptr nonnull @.str.276, i64 25, i64 1, ptr %i.ab) ; 0 uses
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.277, i64 16, i64 1, ptr %i.ab) ; 0 uses
  %fwrite45 = call i64 @fwrite(ptr nonnull @.str.278, i64 17, i64 1, ptr %i.ab) ; 0 uses
  %fwrite46 = call i64 @fwrite(ptr nonnull @.str.279, i64 29, i64 1, ptr %i.ab) ; 0 uses
  %fwrite47 = call i64 @fwrite(ptr nonnull @.str.280, i64 22, i64 1, ptr %i.ab) ; 0 uses
  %fwrite48 = call i64 @fwrite(ptr nonnull @.str.281, i64 23, i64 1, ptr %i.ab) ; 0 uses
  %fwrite49 = call i64 @fwrite(ptr nonnull @.str.282, i64 27, i64 1, ptr %i.ab) ; 0 uses
  %fwrite50 = call i64 @fwrite(ptr nonnull @.str.283, i64 27, i64 1, ptr %i.ab) ; 0 uses
  %fwrite51 = call i64 @fwrite(ptr nonnull @.str.284, i64 28, i64 1, ptr %i.ab) ; 0 uses
  %fwrite52 = call i64 @fwrite(ptr nonnull @.str.285, i64 22, i64 1, ptr %i.ab) ; 0 uses
  %fwrite53 = call i64 @fwrite(ptr nonnull @.str.286, i64 15, i64 1, ptr %i.ab) ; 0 uses
  %fwrite54 = call i64 @fwrite(ptr nonnull @.str.287, i64 20, i64 1, ptr %i.ab) ; 0 uses
  %fwrite55 = call i64 @fwrite(ptr nonnull @.str.288, i64 20, i64 1, ptr %i.ab) ; 0 uses
  %fwrite56 = call i64 @fwrite(ptr nonnull @.str.220, i64 10, i64 1, ptr %i.ab) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret ptr %i.ab
}

declare void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !28
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6
  %i.au = load i64, ptr %i.as, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7
  %i.aw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8
  ret void
}

declare void @_Z11do_autocorrPKcPK16gmx_output_env_tS0_iiPPffmb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #3

declare void @_Z11done_symtabP8t_symtab(ptr noundef) local_unnamed_addr #3

declare void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i1> @llvm.is.fpclass.v8f32(<8 x float>, i32 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { cold }
attributes #27 = { cold nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = distinct !{!3, !54}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!14, !14, i64 0}
!20 = !{!"p1 _ZTS16gmx_output_env_t", !14, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!15, !15, i64 0}
!23 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !16, i64 8, !9, i64 16}
!27 = !{!26, !15, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!"bool", !9, i64 0}
!30 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"float", !9, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 _ZTS8t_symtab", !14, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 float", !14, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS7t_atoms", !14, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS6t_atom", !14, i64 0}
!41 = !{!"any p2 pointer", !14, i64 0}
!42 = !{!"any p3 pointer", !41, i64 0}
!43 = !{!"p3 omnipotent char", !42, i64 0}
!44 = !{!"p1 _ZTS9t_resinfo", !14, i64 0}
!45 = !{!"p1 _ZTS9t_pdbinfo", !14, i64 0}
!46 = !{!"_ZTS7t_atoms", !10, i64 0, !40, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !10, i64 40, !44, i64 48, !45, i64 56, !29, i64 64, !29, i64 65, !29, i64 66, !29, i64 67, !29, i64 68}
!47 = !{!46, !45, i64 56}
!48 = !{!"p1 _ZTS7t_dlist", !14, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseI7t_dlistSaIS0_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 8}
!51 = !{!49, !48, i64 0}
!52 = !{!"_ZTS9t_dihatms", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !9, i64 28}
!53 = !{!"_ZTS7t_dlist", !9, i64 0, !10, i64 12, !26, i64 16, !9, i64 48, !52, i64 84, !9, i64 148, !9, i64 184, !9, i64 220, !9, i64 256}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!25, !15, i64 0}
!56 = !{!26, !16, i64 8}
!57 = !{!53, !10, i64 12}
!58 = !{!"_ZTS13PdbRecordType", !9, i64 0}
!59 = !{!"_ZTS9t_pdbinfo", !58, i64 0, !10, i64 4, !9, i64 8, !9, i64 9, !32, i64 16, !32, i64 20, !29, i64 24, !9, i64 28}
!60 = !{!59, !32, i64 20}
!61 = !{!16, !16, i64 0}
!62 = !{!"p1 int", !14, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!49, !48, i64 16}
!65 = !{!18, !17, i64 0}
!66 = !{!18, !17, i64 8}
!67 = !{!18, !17, i64 16}
!68 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!69 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!70 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !69, i64 0}
!71 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !32, i64 0, !16, i64 8}
!72 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !68, i64 0, !16, i64 8, !70, i64 16, !16, i64 24, !71, i64 32, !69, i64 48}
!73 = !{!72, !68, i64 0}
!74 = !{!72, !16, i64 8}
!75 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!76 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!77 = !{!"_ZTSSt18_Rb_tree_node_base", !75, i64 0, !76, i64 8, !76, i64 16, !76, i64 24}
!78 = !{!"_ZTSSt15_Rb_tree_header", !77, i64 0, !16, i64 32}
!79 = !{!78, !76, i64 8}
!80 = !{!78, !76, i64 16}
!81 = !{!78, !16, i64 32}
!82 = !{!72, !69, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!84 = !{!83, !62, i64 0}
!85 = !{!83, !62, i64 16}
!86 = !{!83, !62, i64 8}
!87 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !14, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 0}
!90 = !{!88, !87, i64 8}
!91 = !{!88, !87, i64 16}
!92 = !{!76, !76, i64 0}
!93 = !{!17, !17, i64 0}
!94 = !{!70, !69, i64 0}
!95 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !14, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEE", !14, i64 0}
!98 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !95, i64 0, !97, i64 8}
!99 = !{!98, !97, i64 8}
!100 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !14, i64 0}
!101 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEE", !14, i64 0}
!102 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeE", !100, i64 0, !101, i64 8}
!103 = !{!102, !101, i64 8}
!104 = !{!72, !16, i64 24}
!105 = !{!69, !69, i64 0}
!106 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !16, i64 0}
!107 = !{!106, !16, i64 0}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = !{!77, !76, i64 24}
!110 = !{!77, !76, i64 16}
!111 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS8_IiSaIiEESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !14, i64 0}
!112 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_IiSaIiEESaISA_EEEE", !14, i64 0}
!113 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS8_IiSaIiEESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeE", !111, i64 0, !112, i64 8}
!114 = !{!113, !112, i64 8}
!115 = distinct !{!115, i1 true, !"_ZL12make_chi_indN3gmx8ArrayRefI7t_dlistEE"}
!116 = distinct !{!116, !115, !"_ZL12make_chi_indN3gmx8ArrayRefI7t_dlistEE: argument 0"}
!117 = distinct !{!117, !54}
!118 = distinct !{!118, !54}
!119 = distinct !{!119, !54}
!120 = distinct !{!120, !54}
!121 = distinct !{!121, !188, !189}
!122 = distinct !{!122, !188, !189}
!123 = distinct !{!123, !189, !188}
!124 = distinct !{!124, !54, !188, !189}
!125 = distinct !{!125, !54, !188, !189}
!126 = distinct !{!126, !192}
!127 = distinct !{!127, !54, !188}
!128 = distinct !{!128, !54, !188, !189}
!129 = distinct !{!129, !54, !188, !189}
!130 = distinct !{!130, !192}
!131 = distinct !{!131, !54, !188}
!132 = distinct !{!132, !54, !188, !189}
!133 = distinct !{!133, !54, !188, !189}
!134 = distinct !{!134, !192}
!135 = distinct !{!135, !54, !188}
!136 = distinct !{!136, !54, !188, !189}
!137 = distinct !{!137, !54, !188, !189}
!138 = distinct !{!138, !192}
!139 = distinct !{!139, !54, !188}
!140 = distinct !{!140, !54}
!141 = distinct !{!141, !54}
!142 = distinct !{!142, !54}
!143 = distinct !{!143, !54}
!144 = distinct !{!144, !54, !188, !189}
!145 = distinct !{!145, !54, !188, !189}
!146 = distinct !{!146, !54, !189, !188}
!147 = distinct !{!147, !192}
!148 = distinct !{!148, !54}
!149 = distinct !{!149, !54, !188, !189}
!150 = distinct !{!150, !54, !189, !188}
!151 = distinct !{!151, !54}
!152 = distinct !{!152, !54}
!153 = distinct !{!153, !54}
!154 = distinct !{!154, !54}
!155 = distinct !{!155, !54}
!156 = distinct !{!156, !54}
!157 = distinct !{!157, !54}
!158 = distinct !{!158, !54}
!159 = distinct !{!159, !54}
!160 = distinct !{!160, !54}
!161 = distinct !{!161, !54}
!162 = distinct !{!162, !54}
!163 = distinct !{!163, !54}
!164 = distinct !{!164, !54}
!165 = distinct !{!165, !54}
!166 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !18, i64 0}
!167 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !166, i64 0}
!168 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !167, i64 0}
!169 = !{!"_ZTS8t_filenm", !10, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !168, i64 32}
!170 = !{!169, !10, i64 0}
!171 = !{!169, !15, i64 8}
!172 = !{!169, !15, i64 16}
!173 = !{!169, !16, i64 24}
!174 = !{!29, !29, i64 0}
!175 = !{i8 0, i8 2}
!176 = !{}
!177 = !{!46, !10, i64 0}
!178 = !{!45, !45, i64 0}
!179 = !{!48, !48, i64 0}
!180 = !{!116}
!181 = !{!53, !10, i64 88}
!182 = !{!53, !10, i64 96}
!183 = !{!53, !10, i64 100}
!184 = !{!53, !10, i64 104}
!185 = !{!53, !10, i64 92}
!186 = !{!53, !10, i64 108}
!187 = !{!53, !10, i64 84}
!188 = !{!"llvm.loop.isvectorized", i32 1}
!189 = !{!"llvm.loop.unroll.runtime.disable"}
!190 = !{!"branch_weights", i32 8, i32 24}
!191 = !{!"branch_weights", i32 4, i32 28}
!192 = !{!"llvm.loop.unroll.disable"}
!193 = !{!"_ZTSN3gmx12ArrayRefIterI7t_dlistEE", !48, i64 0}
!194 = !{!193, !48, i64 0}
!195 = !{!"_ZTS7PbcType", !9, i64 0}
!196 = !{!195, !195, i64 0}
!197 = !{!46, !29, i64 68}
!198 = !{!46, !10, i64 40}
!199 = !{!"double", !9, i64 0}
!200 = !{!199, !199, i64 0}
!201 = distinct !{!201, !54}
!202 = distinct !{!202, !54}
!203 = distinct !{!203, !54}
!204 = distinct !{!204, !54}
!205 = distinct !{!205, !54}
!206 = distinct !{!206, !54}
!207 = distinct !{!207, !54}
!208 = distinct !{!208, !54}
!209 = distinct !{!209, !54}
!210 = distinct !{!210, !54}
!211 = !{!71, !32, i64 0}
!212 = !{!78, !75, i64 0}
!213 = !{!78, !76, i64 24}
!214 = !{!59, !32, i64 16}
!215 = !{!"_ZTS9t_karplus", !15, i64 0, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28}
!216 = !{!215, !32, i64 24}
!217 = !{!215, !32, i64 28}
!218 = !{!215, !15, i64 0}
!219 = distinct !{!219, !54}
!220 = distinct !{!220, !54}
!221 = !{!102, !100, i64 0}
!222 = !{!71, !16, i64 8}
!223 = distinct !{!223, !54}
!224 = !{!72, !69, i64 48}
!225 = distinct !{!225, !54}
!226 = distinct !{!226, !54}
!227 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!228 = !{!111, !111, i64 0}
!229 = distinct !{!229, !54}
!230 = distinct !{!230, !54}
!231 = distinct !{!231, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!234 = distinct !{!234, !54}
!235 = distinct !{!235, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!238 = !{!232}
!239 = !{!233}
!240 = !{!232, !233}
!241 = !{!236}
!242 = !{!237}
!243 = !{!236, !237}
!244 = distinct !{!244, !54}
end_hunk_1
