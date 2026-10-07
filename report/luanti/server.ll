Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server9playSoundER18ServerPlayingSoundb:bb.a
  %.sroa.12.1.lcssa = phi ptr [ null, %bb.z ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.20.1.lcssa = phi ptr [ null, %bb.z ], [ %.sroa.20.2, %._crit_edge.loopexit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !633
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #37
  br label %bb.ar

bb.ab:                                            ; preds = %bb.y
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit113

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %.sroa.0137.0217 = phi ptr [ %i.dm, %.lr.ph ], [ %i.fo, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 2 uses
  %.sroa.20.1216 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.2, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 9 uses
  %.sroa.12.1215 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.2, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 7 uses
  %.sroa.0143.1214 = phi ptr [ null, %.lr.ph ], [ %.sroa.0143.2, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 11 uses
  %i.ea = load i16, ptr %.sroa.0137.0217, align 2, !tbaa !491 ; 3 uses
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !297
  %i.ec = invoke noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %i.eb, i16 noundef zeroext %i.ea)
          to label %bb.ad unwind label %bb.ae     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  %.not82 = icmp eq ptr %i.ec, null
  br i1 %.not82, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.af:                                            ; preds = %bb.ad
  %i.ee = load i64, ptr %i.dq, align 8, !tbaa !146 ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 336
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !146
  %i.ei = icmp eq i64 %i.ee, %i.eh
  br i1 %i.ei, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 328
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !140
  %i.el = load ptr, ptr %i.dp, align 8, !tbaa !140
  %bcmp.i = call i32 @bcmp(ptr %i.el, ptr %i.ek, i64 %i.ee)
  %i.em = icmp eq i32 %bcmp.i, 0
  br i1 %i.em, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 424
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !484 ; 3 uses
  %.not83 = icmp eq ptr %i.eo, null
  br i1 %.not83, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.ah

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ep, align 8, !tbaa !427 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !427
  %foldExtExtBinop = fsub nsz <2 x float> %.sroa.01.0.copyload.i, %.sroa.0.0.i
  %i.eq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop306 = fsub nsz <2 x float> %.sroa.01.0.copyload.i, %.sroa.0.0.i ; 2 uses
  %i.er = fsub nsz float %.sroa.22.0.copyload.i, %.sroa.11.0.i ; 2 uses
  %foldExtExtBinop308 = fmul nsz <2 x float> %foldExtExtBinop306, %foldExtExtBinop306
  %i.es = extractelement <2 x float> %foldExtExtBinop308, i64 1
  %i.et = call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.es)
  %i.eu = call nsz float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.et)
  %i.ev = call nsz noundef float @llvm.sqrt.f32(float %i.eu)
  %i.ew = load float, ptr %i.ds, align 8, !tbaa !1446
  %i.ex = fcmp nsz ogt float %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not.i108 = icmp eq ptr %.sroa.12.1215, %.sroa.20.1216
  br i1 %.not.i108, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.ea, ptr %.sroa.12.1215, align 2, !tbaa !491
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.12.1215, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.al:                                            ; preds = %bb.aj
  %i.ez = ptrtoint ptr %.sroa.20.1216 to i64
  %i.fa = ptrtoint ptr %.sroa.0143.1214 to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 6 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775806
  br i1 %i.fc, label %bb.am, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #35
          to label %.noexc110 unwind label %.loopexit.split-lp

.noexc110:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.fd = ashr exact i64 %i.fb, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add i64 %.sroa.speculated.i.i.i, %i.fd  ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 4611686018427387903)
  %i.fh = select i1 %i.ff, i64 4611686018427387903, i64 %i.fg ; 3 uses
  %.not.i.i.i109 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i109)
  %i.fi = shl nuw nsw i64 %i.fh, 1
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #38
          to label %.noexc111 unwind label %.loopexit ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.fb ; 2 uses
  store i16 %i.ea, ptr %i.fk, align 2, !tbaa !491
  %i.fl = icmp sgt i64 %i.fb, 0
  br i1 %i.fl, label %bb.an, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.an:                                            ; preds = %.noexc111
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.fj, ptr align 2 %.sroa.0143.1214, i64 %i.fb, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.an, %.noexc111
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %.not.i17.i.i = icmp eq ptr %.sroa.0143.1214, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.1214, i64 noundef %i.fb) #37
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fh
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ad
  %.sroa.0143.2 = phi ptr [ %.sroa.0143.1214, %bb.ad ], [ %.sroa.0143.1214, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.sroa.0143.1214, %bb.ai ], [ %.sroa.0143.1214, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.fj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.0143.1214, %bb.ak ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1215, %bb.ad ], [ %.sroa.12.1215, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.sroa.12.1215, %bb.ai ], [ %.sroa.12.1215, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.fm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.ey, %bb.ak ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1216, %bb.ad ], [ %.sroa.20.1216, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.sroa.20.1216, %bb.ai ], [ %.sroa.20.1216, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.fn, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.20.1216, %bb.ak ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0137.0217, i64 2 ; 2 uses
  %.not192 = icmp eq ptr %i.fo, %i.do
  br i1 %.not192, label %._crit_edge.loopexit, label %bb.ac

bb.ap:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae
  %.pn84.pn = phi { ptr, i32 } [ %i.ed, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fp = load ptr, ptr %5, align 8, !tbaa !528   ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorItSaItEED2Ev.exit113, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !633
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #37
  br label %_ZNSt6vectorItSaItEED2Ev.exit113

_ZNSt6vectorItSaItEED2Ev.exit113:                 ; preds = %bb.aq, %bb.ap, %bb.ab
  %.sroa.0143.3 = phi ptr [ null, %bb.ab ], [ %.sroa.0143.1214, %bb.ap ], [ %.sroa.0143.1214, %bb.aq ]
  %.sroa.20.3 = phi ptr [ null, %bb.ab ], [ %.sroa.20.1216, %bb.ap ], [ %.sroa.20.1216, %bb.aq ]
  %.pn84.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ab ], [ %.pn84.pn, %bb.ap ], [ %.pn84.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bw

bb.ar:                                            ; preds = %bb.aa, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.fv = icmp eq ptr %.sroa.0143.1.lcssa, %.sroa.12.1.lcssa
  br i1 %i.fv, label %bb.bu, label %bb.as

bb.as:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ar
  %.sroa.20.4175 = phi ptr [ %i.dk, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.20.1.lcssa, %bb.ar ] ; 2 uses
  %.sroa.12.3172 = phi ptr [ %i.dk, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.12.1.lcssa, %bb.ar ] ; 3 uses
  %.sroa.0143.4167 = phi ptr [ %i.dj, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0143.1.lcssa, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  br i1 %2, label %_ZN6Server11nextSoundIdEv.exit.thread177, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !1447 ; 4 uses
  %i.fy = icmp eq i32 %i.fx, 2147483647
  %i.fz = add nsw i32 %i.fx, 1
  %storemerge18.i = select i1 %i.fy, i32 0, i32 %i.fz ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.gb = load i64, ptr %i.ga, align 8
  %.fr.i = freeze i64 %i.gb
  %.not.not.i.i.i = icmp eq i64 %.fr.i, 0
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.gf = load ptr, ptr %i.gc, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1576
  br i1 %.not.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %bb.at, %.critedge.backedge.us.i
  %storemerge19.us.i = phi i32 [ %storemerge.us.i, %.critedge.backedge.us.i ], [ %storemerge18.i, %bb.at ] ; 5 uses
  %i.gh = icmp eq i32 %storemerge19.us.i, 0
  br i1 %i.gh, label %.critedge.backedge.us.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split.us.i, %bb.au
  %.sroa.06.0.in.i.i.us.i = phi ptr [ %.sroa.06.0.i.i.us.i, %bb.au ], [ %i.gg, %.lr.ph.split.us.i ]
  %.sroa.06.0.i.i.us.i = load ptr, ptr %.sroa.06.0.in.i.i.us.i, align 8, !tbaa !439 ; 3 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.06.0.i.i.us.i, null
  br i1 %.not.i.i.us.i, label %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split, label %bb.au

bb.au:                                            ; preds = %.preheader.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.i, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !127
  %i.gk = icmp eq i32 %storemerge19.us.i, %i.gj
  br i1 %i.gk, label %.critedge.backedge.us.i, label %.preheader.i, !llvm.loop !55

.critedge.backedge.us.i:                          ; preds = %bb.au, %.lr.ph.split.us.i
  %i.gl = icmp eq i32 %storemerge19.us.i, 2147483647
  %i.gm = add nsw i32 %storemerge19.us.i, 1
  %storemerge.us.i = select i1 %i.gl, i32 0, i32 %i.gm ; 2 uses
  %i.gn = icmp eq i32 %storemerge.us.i, %i.fx
  br i1 %i.gn, label %_ZN6Server11nextSoundIdEv.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !1445

.lr.ph.split.i:                                   ; preds = %bb.at, %.critedge.backedge.i
  %storemerge19.i = phi i32 [ %spec.select.i, %.critedge.backedge.i ], [ %storemerge18.i, %bb.at ] ; 9 uses
  %i.go = icmp eq i32 %storemerge19.i, 0
  br i1 %i.go, label %.critedge.backedge.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.i
  %i.gp = sext i32 %storemerge19.i to i64
  %i.gq = urem i64 %i.gp, %i.ge                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !492 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i, label %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !439 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !127
  %i.gw = icmp eq i32 %storemerge19.i, %i.gv
  br i1 %i.gw, label %.critedge.backedge.i, label %.lr.ph.i.i.i.i.i

bb.ax:                                            ; preds = %bb.ay
  %i.gx = icmp eq i32 %storemerge19.i, %i.ha
  br i1 %i.gx, label %.critedge.backedge.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw, %bb.ax
  %.020.i.i.i.i.i = phi ptr [ %i.gy, %bb.ax ], [ %i.gt, %bb.aw ]
  %i.gy = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !439 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not18.i.i.i.i.i, label %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !127 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = urem i64 %i.hb, %i.ge
  %.not19.i.i.i.i.i = icmp eq i64 %i.hc, %i.gq
  br i1 %.not19.i.i.i.i.i, label %bb.ax, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !56

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.ay
  br label %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split, !llvm.loop !56

.critedge.backedge.i:                             ; preds = %bb.ax, %bb.aw, %.lr.ph.split.i
  %i.hd = icmp eq i32 %storemerge19.i, 2147483647
  %i.he = add nsw i32 %storemerge19.i, 1
  %spec.select.i = select i1 %i.hd, i32 0, i32 %i.he ; 2 uses
  %7 = icmp eq i32 %spec.select.i, %i.fx
  br i1 %7, label %_ZN6Server11nextSoundIdEv.exit.thread, label %.lr.ph.split.i, !llvm.loop !1445

_ZN6Server11nextSoundIdEv.exit.thread177.sink.split: ; preds = %bb.av, %.lr.ph.i.i.i.i.i, %.preheader.i, %..loopexit_crit_edge21.i.i.i.i.i
  %storemerge17.i.sink288 = phi i32 [ %storemerge19.i, %.lr.ph.i.i.i.i.i ], [ %storemerge19.us.i, %.preheader.i ], [ %storemerge19.i, %..loopexit_crit_edge21.i.i.i.i.i ], [ %storemerge19.i, %bb.av ] ; 2 uses
  store i32 %storemerge17.i.sink288, ptr %i.fw, align 8, !tbaa !1447
  br label %_ZN6Server11nextSoundIdEv.exit.thread177

_ZN6Server11nextSoundIdEv.exit.thread177:         ; preds = %bb.as, %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split
  %storemerge17.i.sink = phi i32 [ %storemerge17.i.sink288, %_ZN6Server11nextSoundIdEv.exit.thread177.sink.split ], [ -1, %bb.as ] ; 3 uses
  store i32 %storemerge17.i.sink, ptr %i.d, align 4, !tbaa !127
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !814
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !1448
  %i.hj = fmul nsz float %i.hg, %i.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 32, i1 false)
  store i16 63, ptr %i.hk, align 8, !tbaa !305
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i16 0, ptr %i.hl, align 2, !tbaa !306
  %i.hm = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEi(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %storemerge17.i.sink)
          to label %bb.az unwind label %bb.bl

bb.az:                                            ; preds = %_ZN6Server11nextSoundIdEv.exit.thread177
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !140
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !146
  %i.hr = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(36) %i.hm, i64 %i.hq, ptr %i.ho)
          to label %bb.ba unwind label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.hs = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.hr, float noundef %i.hj)
          to label %bb.bb unwind label %bb.bl

bb.bb:                                            ; preds = %bb.ba
  %i.ht = load i8, ptr %1, align 8, !tbaa !543
  %i.hu = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEh(ptr noundef nonnull align 8 dereferenceable(36) %i.hs, i8 noundef zeroext %i.ht)
          to label %bb.bc unwind label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.hv = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %i.hu, <2 x float> %.sroa.0.0.i, float %.sroa.11.0.i)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hx = load i16, ptr %i.hw, align 8, !tbaa !544
  %i.hy = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEt(ptr noundef nonnull align 8 dereferenceable(36) %i.hv, i16 noundef zeroext %i.hx)
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !1449, !range !141, !noundef !93
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEb(ptr noundef nonnull align 8 dereferenceable(36) %i.hy, i1 noundef zeroext %i.ib)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ie = load float, ptr %i.id, align 4, !tbaa !1450
  %i.if = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.ic, float noundef %i.ie)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ih = load float, ptr %i.ig, align 8, !tbaa !1451
  %i.ii = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.if, float noundef %i.ih)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ij = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEb(ptr noundef nonnull align 8 dereferenceable(36) %i.ii, i1 noundef zeroext %2)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.il = load float, ptr %i.ik, align 4, !tbaa !1452
  %i.im = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.ij, float noundef %i.il)
          to label %bb.bj unwind label %bb.bl     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.in = xor i1 %2, true                         ; 2 uses
  %.not193220 = icmp eq ptr %.sroa.0143.4167, %.sroa.12.3172
  br i1 %.not193220, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.bj
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  br i1 %2, label %.lr.ph223.split.us, label %.lr.ph223.split

.lr.ph223.split.us:                               ; preds = %.lr.ph223, %bb.bk
  %.sroa.0131.0221.us = phi ptr [ %i.ir, %bb.bk ], [ %.sroa.0143.4167, %.lr.ph223 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.iq = load i16, ptr %.sroa.0131.0221.us, align 2, !tbaa !491
  invoke void @_ZN15ClientInterface10sendCustomEthP13NetworkPacketb(ptr noundef nonnull align 8 dereferenceable(152) %i.ip, i16 noundef zeroext %i.iq, i8 noundef zeroext 0, ptr noundef nonnull %6, i1 noundef zeroext %i.in)
          to label %bb.bk unwind label %.split.us

bb.bk:                                            ; preds = %.lr.ph223.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0131.0221.us, i64 2 ; 2 uses
  %.not193.us = icmp eq ptr %i.ir, %.sroa.12.3172
  br i1 %.not193.us, label %._crit_edge224, label %.lr.ph223.split.us

.split.us:                                        ; preds = %.lr.ph223.split.us
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge224:                                   ; preds = %bb.bn, %bb.bk, %bb.bj
  br i1 %2, label %bb.bq, label %bb.bo

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %_ZN6Server11nextSoundIdEv.exit.thread177
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.lr.ph223.split:                                  ; preds = %.lr.ph223, %bb.bn
  %.sroa.0131.0221 = phi ptr [ %i.iy, %bb.bn ], [ %.sroa.0143.4167, %.lr.ph223 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.iu = load i16, ptr %.sroa.0131.0221, align 2, !tbaa !491
  store i16 %i.iu, ptr %i.e, align 2, !tbaa !491
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.io, ptr %3, align 8, !tbaa !1454
  %i.iv = invoke { ptr, i8 } @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKtSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeItLb0EEEEEEEESt4pairINS1_14_Node_iteratorItLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.io, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE6insertERKt.exit unwind label %.split ; 0 uses

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE6insertERKt.exit: ; preds = %.lr.ph223.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.iw = load i16, ptr %i.e, align 2, !tbaa !491
  invoke void @_ZN15ClientInterface10sendCustomEthP13NetworkPacketb(ptr noundef nonnull align 8 dereferenceable(152) %i.ip, i16 noundef zeroext %i.iw, i8 noundef zeroext 0, ptr noundef nonnull %6, i1 noundef zeroext %i.in)
          to label %bb.bn unwind label %.split

.split:                                           ; preds = %.lr.ph223.split, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE6insertERKt.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.ix, %.split ], [ %i.is, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.bs

bb.bn:                                            ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE6insertERKt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0131.0221, i64 2 ; 2 uses
  %.not193 = icmp eq ptr %i.iy, %.sroa.12.3172
  br i1 %.not193, label %._crit_edge224, label %.lr.ph223.split

bb.bo:                                            ; preds = %._crit_edge224
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.ja = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNSt8__detail9_Map_baseIiSt4pairIKi18ServerPlayingSoundESaIS4_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.iz, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt13unordered_mapIi18ServerPlayingSoundSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEEixERS6_.exit unwind label %bb.bp

_ZNSt13unordered_mapIi18ServerPlayingSoundSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEEixERS6_.exit: ; preds = %bb.bo
  %i.jb = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN18ServerPlayingSoundaSEOS_(ptr noundef nonnull align 8 dereferenceable(208) %i.ja, ptr noundef nonnull align 8 dereferenceable(208) %1) #34 ; 0 uses
  %.pre242 = load i32, ptr %i.d, align 4, !tbaa !127
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt13unordered_mapIi18ServerPlayingSoundSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEEixERS6_.exit, %._crit_edge224
  %i.jd = phi i32 [ %.pre242, %_ZNSt13unordered_mapIi18ServerPlayingSoundSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEEixERS6_.exit ], [ %storemerge17.i.sink, %._crit_edge224 ]
  %i.je = load ptr, ptr %6, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i118, label %_ZN13NetworkPacketD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !308
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %_ZN6Server11nextSoundIdEv.exit.thread

bb.bs:                                            ; preds = %bb.bm, %bb.bp, %bb.bl
  %.pn77.pn = phi { ptr, i32 } [ %i.it, %bb.bl ], [ %.us-phi, %bb.bm ], [ %i.jc, %bb.bp ]
  %i.jk = load ptr, ptr %6, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i119, label %_ZN13NetworkPacketD2Ev.exit120, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !308
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #37
  br label %_ZN13NetworkPacketD2Ev.exit120

_ZN13NetworkPacketD2Ev.exit120:                   ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.bw

_ZN6Server11nextSoundIdEv.exit.thread:            ; preds = %.critedge.backedge.i, %.critedge.backedge.us.i, %_ZN13NetworkPacketD2Ev.exit
  %.1 = phi i32 [ %i.jd, %_ZN13NetworkPacketD2Ev.exit ], [ 0, %.critedge.backedge.us.i ], [ 0, %.critedge.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ar, %_ZN6Server11nextSoundIdEv.exit.thread
  %.sroa.0143.5 = phi ptr [ %.sroa.0143.1.lcssa, %bb.ar ], [ %.sroa.0143.4167, %_ZN6Server11nextSoundIdEv.exit.thread ] ; 3 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.1.lcssa, %bb.ar ], [ %.sroa.20.4175, %_ZN6Server11nextSoundIdEv.exit.thread ]
  %.2 = phi i32 [ -1, %bb.ar ], [ %.1, %_ZN6Server11nextSoundIdEv.exit.thread ] ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %.sroa.0143.5, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorItSaItEED2Ev.exit122, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jq = ptrtoint ptr %.sroa.20.5 to i64
  %i.jr = ptrtoint ptr %.sroa.0143.5 to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.5, i64 noundef %i.js) #37
  br label %_ZNSt6vectorItSaItEED2Ev.exit122

bb.bw:                                            ; preds = %_ZN13NetworkPacketD2Ev.exit120, %_ZNSt6vectorItSaItEED2Ev.exit113
  %.sroa.0143.6 = phi ptr [ %.sroa.0143.3, %_ZNSt6vectorItSaItEED2Ev.exit113 ], [ %.sroa.0143.4167, %_ZN13NetworkPacketD2Ev.exit120 ] ; 3 uses
  %.sroa.20.6 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorItSaItEED2Ev.exit113 ], [ %.sroa.20.4175, %_ZN13NetworkPacketD2Ev.exit120 ]
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn, %_ZNSt6vectorItSaItEED2Ev.exit113 ], [ %.pn77.pn, %_ZN13NetworkPacketD2Ev.exit120 ] ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.0143.6, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorItSaItEED2Ev.exit124, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = ptrtoint ptr %.sroa.20.6 to i64
  %i.ju = ptrtoint ptr %.sroa.0143.6 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.6, i64 noundef %i.jv) #37
  br label %_ZNSt6vectorItSaItEED2Ev.exit124

_ZNSt6vectorItSaItEED2Ev.exit124:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bw, %bb.bx
  %.pn84.pn.pn.pn191 = phi { ptr, i32 } [ %.pn84.pn.pn.pn, %bb.bx ], [ %.pn84.pn.pn.pn, %bb.bw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  resume { ptr, i32 } %.pn84.pn.pn.pn191

_ZNSt6vectorItSaItEED2Ev.exit122:                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.bv, %bb.bu, %_ZNK18ServerPlayingSound6getPosEP17ServerEnvironmentPb.exit
  %.3 = phi i32 [ -1, %_ZNK18ServerPlayingSound6getPosEP17ServerEnvironmentPb.exit ], [ %.2, %bb.bv ], [ %.2, %bb.bu ], [ -1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ -1, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit ]
  ret i32 %.3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEi(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(208) ptr @_ZN18ServerPlayingSoundaSEOS_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(26) %1, i64 26, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !140  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !140  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !128

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !120
  store i8 %i.l, ptr %i.c, align 1, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !146  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !146
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !120
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.a, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !146
  store i64 %i.s, ptr %i.q, align 8, !tbaa !146
  %i.t = load i64, ptr %i.g, align 8, !tbaa !120
  store i64 %i.t, ptr %i.d, align 8, !tbaa !120
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !120
  store ptr %i.f, ptr %i.a, align 8, !tbaa !140
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.w, ptr %i.x, align 8, !tbaa !146
  %i.y = load i64, ptr %i.g, align 8, !tbaa !120
  store i64 %i.y, ptr %i.d, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !140
  store i64 %i.u, ptr %i.g, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !146
  store i8 0, ptr %i.z, align 1, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !140 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !140 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !146 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i9 = icmp eq ptr %1, %0
  br i1 %.not21.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14, label %bb.i, !prof !128

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ak, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !120
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10: ; preds = %bb.k, %bb.j, %bb.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !146 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !146
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !140
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !120
  %.pre.i11 = load ptr, ptr %i.ac, align 8, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

.thread.i13:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !140
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = load i64, ptr %i.as, align 8, !tbaa !146
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !146
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !120
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !120
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !120
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !140
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !146
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !146
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !120
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !120
  %.not.i8 = icmp eq ptr %i.ad, null
end_hunk_0
