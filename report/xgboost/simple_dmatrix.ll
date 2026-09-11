Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/simple_dmatrix?download=true
inline.NumInlined: 4408
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7xgboost4data13SimpleDMatrix5SliceENS_6common4SpanIKiLm18446744073709551615EEE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %.noexc unwind label %bb.cj

.noexc:                                           ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.du, ptr noundef nonnull align 8 dereferenceable(19) %i.dv, i64 19, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !130
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !130
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !131 ; 4 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i.i.i64, label %bb.cc, label %bb.aa

bb.aa:                                            ; preds = %.noexc
  %.not7.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i65 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i65, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !132
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !132
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.eh = atomicrmw volatile add ptr %i.ed, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !131
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.aa
  %i.ei = phi ptr [ %i.ec, %bb.aa ], [ %i.ec, %bb.ac ], [ %.pr.pre.i.i.i.i, %bb.ad ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ej, align 8, !tbaa !134
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !135
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #18, !inline_history !3
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #18, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i9.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i9.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66

bb.ai:                                            ; preds = %bb.ag
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i67 = phi i32 [ %i.em, %bb.ah ], [ %i.ew, %bb.ai ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i67, 1
  br i1 %i.ex, label %bb.aj, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !136

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66, %bb.af, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !131
  br label %bb.cc

bb.ak:                                            ; preds = %bb.a
  %i.ey = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 5472) #30
  br label %.body

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEEC2IPKivEET_S5_RKS0_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.am:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit, %_ZN7xgboost7ContextD2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.g
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ao unwind label %bb.at     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc68 unwind label %bb.au

.noexc68:                                         ; preds = %bb.ao
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !120, !noalias !467
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %.noexc68
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !128, !noalias !467 ; 2 uses
  %i.fi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_5EntryEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.aq unwind label %bb.av     ; 6 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorImE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.ar unwind label %bb.aw     ; 5 uses

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.fk = icmp ne ptr %i.fh, null
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 3 uses
  br label %bb.ax

bb.as:                                            ; preds = %bb.bi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.fp = add nuw i64 %.sroa.7.0117, 1            ; 2 uses
  %.not = icmp eq i64 %i.fp, %1
  br i1 %.not, label %._crit_edge, label %bb.ax

._crit_edge:                                      ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::Context") align 8 %6, ptr noundef nonnull align 8 dereferenceable(5084) %i.bk)
          to label %bb.bm unwind label %bb.bx

bb.at:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.au:                                            ; preds = %.noexc68, %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.aq
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %.lr.ph, %bb.as
  %.sroa.7.0117 = phi i64 [ 0, %.lr.ph ], [ %i.fp, %bb.as ] ; 3 uses
  %.0116 = phi i64 [ 0, %.lr.ph ], [ %i.gf, %bb.as ]
  %exitcond127.not = icmp eq i64 %.sroa.7.0117, %1
  br i1 %exitcond127.not, label %bb.ay, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKiLm18446744073709551615EEELb0EEdeEv.exit, !prof !136

bb.ay:                                            ; preds = %bb.ax
  call void @_ZSt9terminatev() #27
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.ax
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.7.0117
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !132
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !123 ; 2 uses
  %i.ga = load i64, ptr %i.fx, align 8, !tbaa !123 ; 3 uses
  %i.gb = icmp eq i64 %i.fz, %i.ga
  %i.gc = or i1 %i.fk, %i.gb
  br i1 %i.gc, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEmiES7_.exit.i, label %bb.az, !prof !220

bb.az:                                            ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKiLm18446744073709551615EEELb0EEdeEv.exit
  call void @_ZSt9terminatev() #27
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEmiES7_.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKiLm18446744073709551615EEELb0EEdeEv.exit
  %i.gd = sub i64 %i.fz, %i.ga                    ; 5 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ga ; 3 uses
  %i.gf = add i64 %i.gd, %.0116                   ; 3 uses
  %i.gg = icmp sgt i64 %i.gd, 0
  br i1 %i.gg, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i.peel, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i.peel: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEmiES7_.exit.i
  %i.gh = load ptr, ptr %i.fl, align 8, !tbaa !127 ; 3 uses
  %i.gi = load ptr, ptr %i.fm, align 8, !tbaa !221
  %.not.i.i.i92.peel = icmp eq ptr %i.gh, %i.gi
  br i1 %.not.i.i.i92.peel, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i.peel
  %i.gj = load i64, ptr %i.ge, align 4
  store i64 %i.gj, ptr %i.gh, align 4
  %i.gk = load ptr, ptr %i.fl, align 8, !tbaa !127
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store ptr %i.gl, ptr %i.fl, align 8, !tbaa !127
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel

bb.bb:                                            ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i.peel
  %i.gm = load ptr, ptr %i.fi, align 8, !tbaa !128 ; 4 uses
  %i.gn = ptrtoint ptr %i.gh to i64
  %i.go = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 5 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %.loopexit120.invoke, label %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.peel

_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.peel: ; preds = %bb.bb
  %i.gr = ashr exact i64 %i.gp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.peel = call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i.i.i.peel, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gs, i64 1152921504606846975)
  %i.gv = select i1 %i.gt, i64 1152921504606846975, i64 %i.gu ; 3 uses
  %.not.i.i.i.i.i93.peel = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i93.peel)
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #28
          to label %.noexc95.peel unwind label %.loopexit.loopexit.split-lp ; 4 uses

.noexc95.peel:                                    ; preds = %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.peel
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %i.gp ; 2 uses
  %i.gz = load i64, ptr %i.ge, align 4
  store i64 %i.gz, ptr %i.gy, align 4
  %i.ha = icmp sgt i64 %i.gp, 0
  br i1 %i.ha, label %bb.bc, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.peel

bb.bc:                                            ; preds = %.noexc95.peel
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gx, ptr align 4 %i.gm, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.peel

_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.peel: ; preds = %bb.bc, %.noexc95.peel
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.peel = icmp eq ptr %i.gm, null
  br i1 %.not.i17.i.i.i.i.peel, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.peel, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.peel
  %i.hc = load ptr, ptr %i.fm, align 8, !tbaa !221
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.hd, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.he) #30
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.peel

_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.peel: ; preds = %bb.bd, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.peel
  store ptr %i.gx, ptr %i.fi, align 8, !tbaa !128
  store ptr %i.hb, ptr %i.fl, align 8, !tbaa !127
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gv
  store ptr %i.hf, ptr %i.fm, align 8, !tbaa !221
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel: ; preds = %bb.ba, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.peel
  %i.hg = phi ptr [ %i.hb, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.peel ], [ %i.gl, %bb.ba ]
  %exitcond.peel.not = icmp eq i64 %i.gd, 1
  br i1 %exitcond.peel.not, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit, label %.peel.next

.peel.next:                                       ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i
  %i.hh = phi ptr [ %8, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.hg, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel ] ; 3 uses
  %.sroa.4.07.i = phi i64 [ %i.ii, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i ], [ 1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel ] ; 3 uses
  %i.hi = icmp ult i64 %.sroa.4.07.i, %i.gd
  br i1 %i.hi, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i, label %.loopexit119, !prof !220

.loopexit119:                                     ; preds = %.peel.next
  call void @_ZSt9terminatev() #27
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %.peel.next
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.4.07.i ; 2 uses
  %i.hk = load ptr, ptr %i.fm, align 8, !tbaa !221
  %.not.i.i.i92 = icmp eq ptr %i.hh, %i.hk
  br i1 %.not.i.i.i92, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i
  %i.hl = load i64, ptr %i.hj, align 4
  store i64 %i.hl, ptr %i.hh, align 4
  %i.hm = load ptr, ptr %i.fl, align 8, !tbaa !127
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  store ptr %i.hn, ptr %i.fl, align 8, !tbaa !127
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i

bb.bf:                                            ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.i
  %i.ho = load ptr, ptr %i.fi, align 8, !tbaa !128 ; 4 uses
  %i.hp = ptrtoint ptr %i.hh to i64
  %i.hq = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 5 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775800
  br i1 %i.hs, label %.loopexit120.invoke, label %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.loopexit120.invoke:                              ; preds = %bb.bj, %bb.bb, %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #29
          to label %.loopexit120.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit120.cont:                                ; preds = %.loopexit120.invoke
  unreachable

_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bf
  %i.ht = ashr exact i64 %i.hr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 1152921504606846975)
  %i.hx = select i1 %i.hv, i64 1152921504606846975, i64 %i.hw ; 3 uses
  %.not.i.i.i.i.i93 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i93)
  %i.hy = shl nuw nsw i64 %i.hx, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #28
          to label %.noexc95 unwind label %.loopexit.loopexit ; 4 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hr ; 2 uses
  %i.ib = load i64, ptr %i.hj, align 4
  store i64 %i.ib, ptr %i.ia, align 4
  %i.ic = icmp sgt i64 %i.hr, 0
  br i1 %i.ic, label %bb.bg, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

bb.bg:                                            ; preds = %.noexc95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hz, ptr align 4 %i.ho, i64 %i.hr, i1 false)
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i: ; preds = %bb.bg, %.noexc95
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  %i.ie = load ptr, ptr %i.fm, align 8, !tbaa !221
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ig) #30
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.bh, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  store ptr %i.hz, ptr %i.fi, align 8, !tbaa !128
  store ptr %i.id, ptr %i.fl, align 8, !tbaa !127
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  store ptr %i.ih, ptr %i.fm, align 8, !tbaa !221
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i
  %8 = phi ptr [ %i.id, %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.hn, %bb.be ]
  %i.ii = add nuw nsw i64 %.sroa.4.07.i, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ii, %i.gd
  br i1 %exitcond.not, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit, label %.peel.next, !llvm.loop !462

_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.i.peel, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEmiES7_.exit.i
  %i.ij = load ptr, ptr %i.fn, align 8, !tbaa !119 ; 4 uses
  %i.ik = load ptr, ptr %i.fo, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.ij, %i.ik
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit
  store i64 %i.gf, ptr %i.ij, align 8, !tbaa !123
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.il, ptr %i.fn, align 8, !tbaa !119
  br label %bb.as

bb.bj:                                            ; preds = %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKNS0_5EntryELm18446744073709551615EEELb0EEESt20back_insert_iteratorISt6vectorIS5_SaIS5_EEEET0_T_SF_SE_.exit
  %i.im = load ptr, ptr %i.fj, align 8, !tbaa !120 ; 4 uses
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.ip = sub i64 %i.in, %i.io                    ; 5 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775800
  br i1 %i.iq, label %.loopexit120.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bj
  %i.ir = ashr exact i64 %i.ip, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %i.is = add nsw i64 %.sroa.speculated.i.i.i, %i.ir ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.ir
  %i.iu = call i64 @llvm.umin.i64(i64 %i.is, i64 1152921504606846975)
  %i.iv = select i1 %i.it, i64 1152921504606846975, i64 %i.iu ; 3 uses
  %.not.i.i.i79 = icmp ne i64 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i79)
  %i.iw = shl nuw nsw i64 %i.iv, 3
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #28
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %i.ip ; 2 uses
  store i64 %i.gf, ptr %i.iy, align 8, !tbaa !123
  %i.iz = icmp sgt i64 %i.ip, 0
  br i1 %i.iz, label %bb.bk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.bk:                                            ; preds = %.noexc81
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr align 8 %i.im, i64 %i.ip, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.bk, %.noexc81
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.not.i17.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.jb = load ptr, ptr %i.fo, align 8, !tbaa !122
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.jd) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.bl, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ix, ptr %i.fj, align 8, !tbaa !120
  store ptr %i.ja, ptr %i.fn, align 8, !tbaa !119
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iv
  store ptr %i.je, ptr %i.fo, align 8, !tbaa !122
  br label %bb.as

.loopexit.loopexit:                               ; preds = %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.loopexit.split-lp:                      ; preds = %_ZNKSt6vectorIN7xgboost5EntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit120.invoke
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.jf = load ptr, ptr %0, align 8, !tbaa !23
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.jg(ptr noundef nonnull align 8 dereferenceable(5472) %0)
          to label %bb.bn unwind label %bb.by

bb.bn:                                            ; preds = %bb.bm
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !121
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !123
  invoke void @_ZNK7xgboost8MetaInfo5SliceEPKNS_7ContextENS_6common4SpanIKmLm18446744073709551615EEEm(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::MetaInfo") align 8 %7, ptr noundef nonnull align 8 dereferenceable(248) %i.jh, ptr noundef nonnull %6, i64 %i.bn, ptr %.sroa.0105.0, i64 noundef %i.jl)
          to label %bb.bo unwind label %bb.by

bb.bo:                                            ; preds = %bb.bn
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.jn(ptr noundef nonnull align 8 dereferenceable(5472) %i.a)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %bb.bo
  %i.jp = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN7xgboost8MetaInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.jo, ptr noundef nonnull align 8 dereferenceable(248) %7)
          to label %bb.bq unwind label %bb.bz     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7xgboost8MetaInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.jq = load ptr, ptr %i.bo, align 8, !tbaa !131 ; 8 uses
  %.not.i.i.i83 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i83, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.jr, align 8, !tbaa !134
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !135
  %i.jw = load ptr, ptr %i.jq, align 8, !tbaa !23
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #18, !inline_history !4
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !23
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #18, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i84 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i84, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

bb.bv:                                            ; preds = %bb.bt
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i86 = phi i32 [ %i.ju, %bb.bu ], [ %i.ke, %bb.bv ]
  %i.kf = icmp eq i32 %.0.i.i.i.i.i86, 1
  br i1 %i.kf, label %bb.bw, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !136

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #18
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85, %bb.bs, %bb.bq
  %i.kg = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.bq
  br i1 %i.kh, label %_ZN7xgboost7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ki = load i64, ptr %i.bq, align 8, !tbaa !45
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #30
  br label %_ZN7xgboost7ContextD2Ev.exit

_ZN7xgboost7ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.kk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit unwind label %bb.am ; 0 uses

bb.bx:                                            ; preds = %._crit_edge
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.by:                                            ; preds = %bb.bn, %bb.bm
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bp, %bb.bo
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost8MetaInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %7) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn = phi { ptr, i32 } [ %i.kn, %bb.bz ], [ %i.km, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN7xgboost7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(5084) dereferenceable(5084) %6) #18
  br label %bb.cb

end_hunk_0
