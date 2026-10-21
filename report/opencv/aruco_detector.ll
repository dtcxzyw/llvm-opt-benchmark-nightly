Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4511
inline.NumDeleted: 1555
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS_5Size_IiEERSt6vectorIS7_INS_6Point_IfEESaIS9_EESaISB_EERS7_IS7_INS8_IiEESaISF_EESaISH_EEi:bb.a
_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i175: ; preds = %bb.aq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i173
  store ptr %i.pa, ptr %i.oj, align 8, !tbaa !247
  store ptr %i.pd, ptr %i.ok, align 8, !tbaa !249
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.oy
  store ptr %i.ph, ptr %i.om, align 8, !tbaa !248
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit.split-lp394.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i170, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp756 = landingpad { ptr, i32 }
          cleanup
  br label %.body257.thread

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i175, %bb.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ah, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.al, %bb.w
  %storemerge115 = add nuw i64 %storemerge115443, 1 ; 2 uses
  %i.pi = load ptr, ptr %i.bi, align 8, !tbaa !118 ; 2 uses
  %i.pj = load ptr, ptr %12, align 8, !tbaa !117  ; 3 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = sdiv exact i64 %i.pm, 88
  %i.po = icmp ult i64 %storemerge115, %i.pn
  br i1 %i.po, label %bb.w, label %._crit_edge445, !llvm.loop !505

._crit_edge445:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %.preheader392.._crit_edge445_crit_edge
  %.pre-phi549 = phi i64 [ %.pre548, %.preheader392.._crit_edge445_crit_edge ], [ %i.gh, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.pre-phi545 = phi i64 [ %.pre544, %.preheader392.._crit_edge445_crit_edge ], [ %i.ge, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %i.pp = phi ptr [ %i.fv, %.preheader392.._crit_edge445_crit_edge ], [ %i.pj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.pq = phi ptr [ %i.fw, %.preheader392.._crit_edge445_crit_edge ], [ %i.pi, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gc
  %i.ps = icmp ugt i64 %.pre-phi545, -9223372036854775808
  %storemerge.idx.i.i.i.i.i143 = select i1 %i.ps, i64 -8, i64 0
  %storemerge.i.i.i.i.i144 = getelementptr inbounds i8, ptr %i.pr, i64 %storemerge.idx.i.i.i.i.i143 ; 2 uses
  %i.pt = load i64, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !47 ; 2 uses
  %i.pu = and i64 %i.pt, %.pre-phi549
  %.not374 = icmp eq i64 %i.pu, 0
  br i1 %.not374, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge445
  %i.pv = xor i64 %.pre-phi549, -1
  %i.pw = and i64 %i.pt, %i.pv
  store i64 %i.pw, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !47
  %i.px = load ptr, ptr %i.fp, align 8, !tbaa !243
  %i.py = load ptr, ptr %14, align 8, !tbaa !244
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = sdiv exact i64 %i.qb, 24
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %storemerge446
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.qf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.at unwind label %bb.as     ; 4 uses

bb.as:                                            ; preds = %bb.ar
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %16, align 8, !tbaa !247  ; 2 uses
  %.not.i.i4.i183 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i4.i183, label %.body185, label %.body185.sink.split

bb.at:                                            ; preds = %bb.ar
  store ptr %i.qf, ptr %16, align 8, !tbaa !247
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 4 uses
  store ptr %i.qi, ptr %i.ft, align 8, !tbaa !248
  store i64 %storemerge446, ptr %i.qf, align 8, !tbaa !47
  store ptr %i.qi, ptr %i.fu, align 8, !tbaa !249
  %i.qj = load ptr, ptr %i.fp, align 8, !tbaa !243 ; 6 uses
  %i.qk = load ptr, ptr %i.fs, align 8, !tbaa !250
  %.not.i.i188 = icmp eq ptr %i.qj, %i.qk
  br i1 %.not.i.i188, label %bb.au, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190.thread

_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190.thread: ; preds = %bb.at
  store ptr %i.qf, ptr %i.qj, align 8, !tbaa !247
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %i.qi, ptr %i.ql, align 8, !tbaa !249
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store ptr %i.qi, ptr %i.qm, align 8, !tbaa !248
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store ptr %i.qn, ptr %i.fp, align 8, !tbaa !243
  br label %_ZNSt6vectorImSaImEED2Ev.exit193

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.qj, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190 unwind label %bb.aw

_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190: ; preds = %bb.au
  %.pr359 = load ptr, ptr %16, align 8, !tbaa !247 ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %.pr359, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorImSaImEED2Ev.exit193, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190
  %i.qo = load ptr, ptr %i.ft, align 8, !tbaa !248
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %.pr359 to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %.pr359, i64 noundef %i.qr) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit193

_ZNSt6vectorImSaImEED2Ev.exit193:                 ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190.thread, %_ZNSt6vectorIS_ImSaImEESaIS1_EE9push_backEOS1_.exit190, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qt = load ptr, ptr %16, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i194, label %.body185, label %.body185.sink.split

.body185.sink.split:                              ; preds = %bb.aw, %bb.as
  %.sink705 = phi ptr [ %i.qh, %bb.as ], [ %i.qt, %bb.aw ] ; 2 uses
  %.pn116.ph = phi { ptr, i32 } [ %i.qg, %bb.as ], [ %i.qs, %bb.aw ]
  %i.qu = load ptr, ptr %i.ft, align 8, !tbaa !248
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %.sink705 to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %.sink705, i64 noundef %i.qx) #33
  br label %.body185

.body185:                                         ; preds = %.body185.sink.split, %bb.aw, %bb.as
  %.pn116 = phi { ptr, i32 } [ %i.qg, %bb.as ], [ %i.qs, %bb.aw ], [ %.pn116.ph, %.body185.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.body257.thread

bb.ax:                                            ; preds = %._crit_edge445, %_ZNSt6vectorImSaImEED2Ev.exit193
  %i.qy = ptrtoint ptr %i.pq to i64
  %i.qz = ptrtoint ptr %i.pp to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = sdiv exact i64 %i.ra, 88
  %i.rc = icmp ult i64 %storemerge115442, %i.rb
  br i1 %i.rc, label %.preheader392, label %._crit_edge447, !llvm.loop !506

._crit_edge466.loopexit:                          ; preds = %.thread363
  %.pre541 = load ptr, ptr %i.gl, align 8, !tbaa !243
  %.pre542 = load ptr, ptr %14, align 8, !tbaa !244
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %._crit_edge447
  %i.rd = phi ptr [ %.pre542, %._crit_edge466.loopexit ], [ %i.gk, %._crit_edge447 ]
  %i.re = phi ptr [ %.pre541, %._crit_edge466.loopexit ], [ %i.gk, %._crit_edge447 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rd to i64
  %i.rh = sub i64 %i.rf, %i.rg
  %i.ri = sdiv exact i64 %i.rh, 24
  invoke void @_ZNSt6vectorIN2cv5aruco19MarkerCandidateTreeESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ri)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge466
  %i.rj = load ptr, ptr %i.bi, align 8, !tbaa !118 ; 3 uses
  %i.rk = load ptr, ptr %12, align 8, !tbaa !117  ; 7 uses
  %.not483 = icmp eq ptr %i.rj, %i.rk
  br i1 %.not483, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %.preheader
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rn = ptrtoint ptr %i.rj to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = sdiv exact i64 %i.rp, 88
  br label %bb.bl

bb.ay:                                            ; preds = %.lr.ph465, %.thread363
  %.sroa.0267.0462 = phi ptr [ %i.gk, %.lr.ph465 ], [ %i.abo, %.thread363 ] ; 6 uses
  %i.rr = load i8, ptr %i.gn, align 8, !tbaa !514, !range !82, !noundef !83
  %i.rs = trunc nuw i8 %i.rr to i1
  %i.rt = load ptr, ptr %.sroa.0267.0462, align 8, !tbaa !251 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0267.0462, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !251 ; 2 uses
  br i1 %i.rs, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS9_5Size_IiEERS3_IS3_INS9_6Point_IfEESaISI_EESaISK_EERS3_IS3_INSH_IiEESaISO_EESaISQ_EEiEUlRKmSV_E_EEEvT_SY_T0_(ptr %i.rt, ptr %i.rv)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS7_5Size_IiEERS3_IS3_INS7_6Point_IfEESaISG_EESaISI_EERS3_IS3_INSF_IiEESaISM_EESaISO_EEiEUlRKmST_E_EvT_SV_T0_.exit unwind label %.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.rt, ptr %i.rv)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS7_5Size_IiEERS3_IS3_INS7_6Point_IfEESaISG_EESaISI_EERS3_IS3_INSF_IiEESaISM_EESaISO_EEiEUlRKmST_E_EvT_SV_T0_.exit unwind label %.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS7_5Size_IiEERS3_IS3_INS7_6Point_IfEESaISG_EESaISI_EERS3_IS3_INSF_IiEESaISM_EESaISO_EEiEUlRKmST_E_EvT_SV_T0_.exit: ; preds = %bb.ba, %bb.az
  %i.rw = load ptr, ptr %.sroa.0267.0462, align 8, !tbaa !247 ; 3 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !47 ; 5 uses
  %i.ry = load ptr, ptr %12, align 8, !tbaa !117
  %i.rz = getelementptr inbounds nuw [88 x i8], ptr %i.ry, i64 %i.rx ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !140 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !140 ; 2 uses
  %.not373448 = icmp eq ptr %i.sa, %i.sc
  br i1 %.not373448, label %.critedge, label %.lr.ph451

.lr.ph451:                                        ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS7_5Size_IiEERS3_IS3_INS7_6Point_IfEESaISG_EESaISI_EERS3_IS3_INSF_IiEESaISM_EESaISO_EEiEUlRKmST_E_EvT_SV_T0_.exit
  %i.sd = load i32, ptr %i.d, align 8, !tbaa !512 ; 2 uses
  %i.se = sitofp i32 %i.sd to float               ; 2 uses
  %i.sf = xor i32 %i.sd, -1                       ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %.lr.ph451
  %.079450 = phi i1 [ false, %.lr.ph451 ], [ %spec.select129, %bb.be ]
  %.sroa.0263.0449 = phi ptr [ %i.sa, %.lr.ph451 ], [ %i.st, %bb.be ] ; 3 uses
  %i.sg = load float, ptr %.sroa.0263.0449, align 4, !tbaa !144 ; 2 uses
  %i.sh = fcmp olt float %i.sg, %i.se
  br i1 %i.sh, label %.thread363, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0263.0449, i64 4
  %i.sj = load float, ptr %i.si, align 4, !tbaa !145 ; 2 uses
  %i.sk = fcmp olt float %i.sj, %i.se
  br i1 %i.sk, label %.thread363, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sl = load i32, ptr %2, align 4, !tbaa !86
  %i.sm = add i32 %i.sl, %i.sf
  %i.sn = sitofp i32 %i.sm to float
  %i.so = fcmp ogt float %i.sg, %i.sn
  br i1 %i.so, label %.thread363, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sp = load i32, ptr %i.go, align 4, !tbaa !87
  %i.sq = add i32 %i.sp, %i.sf
  %i.sr = sitofp i32 %i.sq to float
  %i.ss = fcmp ogt float %i.sj, %i.sr             ; 2 uses
  %spec.select129 = select i1 %i.ss, i1 true, i1 %.079450 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0263.0449, i64 8 ; 2 uses
  %.not373 = icmp eq ptr %i.st, %i.sc
  %or.cond480 = select i1 %i.ss, i1 true, i1 %.not373
  br i1 %or.cond480, label %._crit_edge452, label %bb.bb

._crit_edge452:                                   ; preds = %bb.be
  br i1 %spec.select129, label %.thread363, label %.critedge

.critedge:                                        ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN2cv5aruco13ArucoDetector17ArucoDetectorImpl24filterTooCloseCandidatesERKNS7_5Size_IiEERS3_IS3_INS7_6Point_IfEESaISG_EESaISI_EERS3_IS3_INSF_IiEESaISM_EESaISO_EEiEUlRKmST_E_EvT_SV_T0_.exit, %._crit_edge452
  %i.su = sdiv i64 %i.rx, 64
  %i.sv = getelementptr inbounds [8 x i8], ptr %.sroa.0327.0646, i64 %i.su
  %i.sw = and i64 %i.rx, -9223372036854775745
  %i.sx = icmp ugt i64 %i.sw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i199 = select i1 %i.sx, i64 -8, i64 0
  %storemerge.i.i.i.i.i200 = getelementptr inbounds i8, ptr %i.sv, i64 %storemerge.idx.i.i.i.i.i199 ; 2 uses
  %i.sy = and i64 %i.rx, 63
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = load i64, ptr %storemerge.i.i.i.i.i200, align 8, !tbaa !47
  %i.tb = or i64 %i.ta, %i.sz
  store i64 %i.tb, ptr %storemerge.i.i.i.i.i200, align 8, !tbaa !47
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0267.0462, i64 8 ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !249
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.rw to i64
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = icmp ugt i64 %i.tg, 8
  br i1 %i.th, label %.lr.ph460, label %.thread363

.lr.ph460:                                        ; preds = %.critedge, %_ZNSt6vectorIN2cv5aruco15MarkerCandidateESaIS2_EE9push_backERKS2_.exit
  %i.ti = phi ptr [ %i.abi, %_ZNSt6vectorIN2cv5aruco15MarkerCandidateESaIS2_EE9push_backERKS2_.exit ], [ %i.rw, %.critedge ] ; 2 uses
  %.078458 = phi i64 [ %i.abg, %_ZNSt6vectorIN2cv5aruco15MarkerCandidateESaIS2_EE9push_backERKS2_.exit ], [ 1, %.critedge ] ; 2 uses
  %.080457 = phi i64 [ %.181, %_ZNSt6vectorIN2cv5aruco15MarkerCandidateESaIS2_EE9push_backERKS2_.exit ], [ %i.rx, %.critedge ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %.078458
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !47 ; 3 uses
  %i.tl = load ptr, ptr %12, align 8, !tbaa !117  ; 3 uses
  %i.tm = getelementptr inbounds nuw [88 x i8], ptr %i.tl, i64 %i.tk ; 7 uses
  %i.tn = getelementptr inbounds nuw [88 x i8], ptr %i.tl, i64 %.080457
  %.val = load ptr, ptr %i.tm, align 8            ; 9 uses
  %.val130 = load ptr, ptr %i.tn, align 8         ; 7 uses
  %i.to = getelementptr i8, ptr %.val, i64 4
  %i.tp = getelementptr i8, ptr %.val130, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.tr = getelementptr inbounds nuw i8, ptr %.val130, i64 8
  %i.ts = getelementptr i8, ptr %.val, i64 12
  %i.tt = getelementptr i8, ptr %.val130, i64 12
  %i.tu = getelementptr i8, ptr %.val, i64 20
  %i.tv = getelementptr i8, ptr %.val130, i64 20
  %i.tw = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.tx = getelementptr inbounds nuw i8, ptr %.val130, i64 24
  %i.ty = getelementptr i8, ptr %.val, i64 28
  %i.tz = getelementptr i8, ptr %.val130, i64 28
  %i.ua = load <8 x float>, ptr %.val, align 4, !tbaa !142 ; 6 uses
  %i.ub = load <8 x float>, ptr %.val130, align 4, !tbaa !142 ; 3 uses
  %i.uc = load <2 x float>, ptr %i.tu, align 4, !tbaa !142 ; 2 uses
  %i.ud = load <2 x float>, ptr %i.to, align 4, !tbaa !142 ; 2 uses
  %i.ue = load <2 x float>, ptr %i.tv, align 4, !tbaa !142
  %i.uf = load <2 x float>, ptr %i.tp, align 4, !tbaa !142
  %i.ug = load <2 x float>, ptr %i.tq, align 4, !tbaa !142 ; 3 uses
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.val10.1.i208 = load float, ptr %i.ts, align 4, !tbaa !145
  %i.ui = load <2 x float>, ptr %i.tr, align 4, !tbaa !142 ; 2 uses
  %.val12.1.i210 = load float, ptr %i.tt, align 4, !tbaa !145
  %i.uj = load <2 x float>, ptr %i.tw, align 4, !tbaa !142 ; 4 uses
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ul = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.val10.3.i216 = load float, ptr %i.ty, align 4, !tbaa !145
  %i.um = load <2 x float>, ptr %i.tx, align 4, !tbaa !142 ; 2 uses
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.val12.3.i218 = load float, ptr %i.tz, align 4, !tbaa !145
  %i.uo = shufflevector <2 x float> %i.ud, <2 x float> %i.uc, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.up = insertelement <4 x float> %i.uo, float %.val10.1.i208, i64 1
  %i.uq = insertelement <4 x float> %i.up, float %.val10.3.i216, i64 3 ; 3 uses
  %i.ur = shufflevector <2 x float> %i.uf, <2 x float> %i.ue, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.us = insertelement <4 x float> %i.ur, float %.val12.1.i210, i64 1
  %i.ut = insertelement <4 x float> %i.us, float %.val12.3.i218, i64 3
  %i.uu = fsub <4 x float> %i.uq, %i.ut           ; 2 uses
  %i.uv = fmul <4 x float> %i.uu, %i.uu
  %i.uw = shufflevector <2 x float> %i.ug, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ux = shufflevector <8 x float> %i.ua, <8 x float> %i.uw, <4 x i32> <i32 0, i32 8, i32 4, i32 poison>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> %i.ul, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.uz = shufflevector <2 x float> %i.ui, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.va = shufflevector <8 x float> %i.ub, <8 x float> %i.uz, <4 x i32> <i32 0, i32 8, i32 4, i32 poison>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.un, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.vc = fsub <4 x float> %i.uy, %i.vb           ; 2 uses
  %i.vd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vc, <4 x float> %i.vc, <4 x float> %i.uv) ; 4 uses
  %i.ve = extractelement <4 x float> %i.vd, i64 0
  %i.vf = fadd float %i.ve, 0.000000e+00
  %i.vg = extractelement <4 x float> %i.vd, i64 1
  %i.vh = fadd float %i.vf, %i.vg
  %i.vi = extractelement <4 x float> %i.vd, i64 2
  %i.vj = fadd float %i.vh, %i.vi
  %i.vk = extractelement <4 x float> %i.vd, i64 3
  %i.vl = fadd float %i.vj, %i.vk
  %i.vm = fmul float %i.vl, 2.500000e-01          ; 2 uses
  %i.vn = fcmp olt float %i.vm, f0x7F7FFFFF
  %.sroa.speculated.i219 = select i1 %i.vn, float %i.vm, float f0x7F7FFFFF ; 2 uses
  %i.vo = shufflevector <8 x float> %i.ua, <8 x float> poison, <4 x i32> <i32 poison, i32 4, i32 poison, i32 0>
  %i.vp = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> %i.vo, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.vr = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.vs = shufflevector <4 x float> %i.vq, <4 x float> %i.vr, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.vt = shufflevector <8 x float> %i.ub, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.vu = shufflevector <2 x float> %i.ui, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> %i.vu, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.vw = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vx = shufflevector <4 x float> %i.vv, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vy = fsub <4 x float> %i.vs, %i.vx           ; 2 uses
  %i.vz = shufflevector <2 x float> %i.uc, <2 x float> %i.ud, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 3 uses
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> %i.vp, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> %i.vr, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wc = shufflevector <4 x float> %i.ur, <4 x float> %i.vu, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.we = fsub <4 x float> %i.wb, %i.wd           ; 2 uses
  %i.wf = fmul <4 x float> %i.we, %i.we
  %i.wg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vy, <4 x float> %i.vy, <4 x float> %i.wf) ; 4 uses
  %i.wh = extractelement <4 x float> %i.wg, i64 0
  %i.wi = fadd float %i.wh, 0.000000e+00
  %i.wj = extractelement <4 x float> %i.wg, i64 1
  %i.wk = fadd float %i.wi, %i.wj
  %i.wl = extractelement <4 x float> %i.wg, i64 2
  %i.wm = fadd float %i.wk, %i.wl
  %i.wn = extractelement <4 x float> %i.wg, i64 3
  %i.wo = fadd float %i.wm, %i.wn
  %i.wp = fmul float %i.wo, 2.500000e-01          ; 2 uses
  %i.wq = fcmp olt float %i.wp, %.sroa.speculated.i219
  %.sroa.speculated.1.i220 = select i1 %i.wq, float %i.wp, float %.sroa.speculated.i219 ; 2 uses
  %i.wr = shufflevector <2 x float> %i.uj, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ws = shufflevector <8 x float> %i.ua, <8 x float> %i.wr, <4 x i32> <i32 4, i32 8, i32 0, i32 poison>
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> %i.uh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wu = fsub <4 x float> %i.wt, %i.vb           ; 2 uses
  %i.wv = shufflevector <4 x float> %i.vz, <4 x float> %i.vp, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.vr, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.wx = fsub <4 x float> %i.ww, %i.wd           ; 2 uses
  %i.wy = fmul <4 x float> %i.wx, %i.wx
  %i.wz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wu, <4 x float> %i.wu, <4 x float> %i.wy) ; 4 uses
  %i.xa = extractelement <4 x float> %i.wz, i64 0
  %i.xb = fadd float %i.xa, 0.000000e+00
  %i.xc = extractelement <4 x float> %i.wz, i64 1
  %i.xd = fadd float %i.xb, %i.xc
  %i.xe = extractelement <4 x float> %i.wz, i64 2
  %i.xf = fadd float %i.xe, %i.xd
  %i.xg = extractelement <4 x float> %i.wz, i64 3
  %i.xh = fadd float %i.xf, %i.xg
  %i.xi = fmul float %i.xh, 2.500000e-01          ; 2 uses
  %i.xj = fcmp olt float %i.xi, %.sroa.speculated.1.i220
  %.sroa.speculated.2.i221 = select i1 %i.xj, float %i.xi, float %.sroa.speculated.1.i220 ; 2 uses
  %i.xk = shufflevector <8 x float> %i.ua, <8 x float> poison, <4 x i32> <i32 6, i32 0, i32 2, i32 4>
  %i.xl = fsub <4 x float> %i.xk, %i.vt           ; 2 uses
  %i.xm = shufflevector <8 x float> %i.ua, <8 x float> poison, <4 x i32> <i32 7, i32 1, i32 3, i32 5>
  %i.xn = shufflevector <8 x float> %i.ub, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.xo = fsub <4 x float> %i.xm, %i.xn           ; 2 uses
  %i.xp = fmul <4 x float> %i.xo, %i.xo
  %i.xq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xl, <4 x float> %i.xl, <4 x float> %i.xp) ; 4 uses
  %i.xr = extractelement <4 x float> %i.xq, i64 0
  %i.xs = fadd float %i.xr, 0.000000e+00
  %i.xt = extractelement <4 x float> %i.xq, i64 1
  %i.xu = fadd float %i.xt, %i.xs
  %i.xv = extractelement <4 x float> %i.xq, i64 2
  %i.xw = fadd float %i.xv, %i.xu
  %i.xx = extractelement <4 x float> %i.xq, i64 3
  %i.xy = fadd float %i.xx, %i.xw
  %i.xz = fmul float %i.xy, 2.500000e-01          ; 2 uses
  %i.ya = fcmp olt float %i.xz, %.sroa.speculated.2.i221
  %.sroa.speculated.3.i224 = select i1 %i.ya, float %i.xz, float %.sroa.speculated.2.i221
  %i.yb = call noundef float @sqrtf(float noundef %.sroa.speculated.3.i224) #31
  %i.yc = load i32, ptr %i.gp, align 8, !tbaa !80
  %i.yd = getelementptr i8, ptr %i.tm, i64 8      ; 2 uses
  %.val134 = load ptr, ptr %i.yd, align 8         ; 2 uses
  %i.ye = shufflevector <8 x float> %i.uw, <8 x float> %i.ua, <4 x i32> <i32 0, i32 12, i32 poison, i32 8>
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> %i.uk, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.yg = fsub <4 x float> %i.uy, %i.yf           ; 2 uses
  %i.yh = shufflevector <4 x float> %i.vz, <4 x float> %i.uq, <4 x i32> <i32 5, i32 1, i32 7, i32 3>
  %i.yi = fsub <4 x float> %i.uq, %i.yh           ; 2 uses
  %i.yj = fmul <4 x float> %i.yi, %i.yi
  %i.yk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yg, <4 x float> %i.yg, <4 x float> %i.yj) ; 4 uses
  %i.yl = extractelement <4 x float> %i.yk, i64 0
  %i.ym = call noundef float @sqrtf(float noundef %i.yl) #31
  %i.yn = fadd float %i.ym, 0.000000e+00
  %i.yo = extractelement <4 x float> %i.yk, i64 1
  %i.yp = call noundef float @sqrtf(float noundef %i.yo) #31
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = extractelement <4 x float> %i.yk, i64 2
  %i.ys = call noundef float @sqrtf(float noundef %i.yr) #31
  %i.yt = fadd float %i.yq, %i.ys
  %i.yu = extractelement <4 x float> %i.yk, i64 3
  %i.yv = call noundef float @sqrtf(float noundef %i.yu) #31
  %i.yw = fadd float %i.yt, %i.yv
  %i.yx = shl nsw i32 %i.yc, 1
  %i.yy = add nsw i32 %i.yx, %5
  %i.yz = ptrtoint ptr %.val134 to i64
  %i.za = ptrtoint ptr %.val to i64
  %i.zb = sub i64 %i.yz, %i.za                    ; 4 uses
  %i.zc = ashr exact i64 %i.zb, 3
  %i.zd = uitofp i64 %i.zc to float
  %i.ze = sitofp i32 %i.yy to float
  %i.zf = fmul nnan float %i.ze, %i.zd
  %i.zg = fdiv float %i.yw, %i.zf
  %i.zh = load float, ptr %i.gq, align 8, !tbaa !515
  %i.zi = fmul float %i.zh, %i.zg
  %i.zj = fcmp ogt float %i.yb, %i.zi
  br i1 %i.zj, label %bb.bf, label %_ZNSt6vectorIN2cv5aruco15MarkerCandidateESaIS2_EE9push_backERKS2_.exit

bb.bf:                                            ; preds = %.lr.ph460
  %i.zk = load i64, ptr %i.ti, align 8, !tbaa !47
  %i.zl = getelementptr inbounds nuw [88 x i8], ptr %i.tl, i64 %i.zk ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 72 ; 3 uses
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !239 ; 12 uses
end_hunk_0
