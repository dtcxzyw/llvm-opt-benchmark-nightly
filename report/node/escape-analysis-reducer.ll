inline.NumInlined: 691
inline.NumDeleted: 380
begin_hunk_0_@_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE:bb.a
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i.i, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %i.cf, %i.cy
  br i1 %i.cz, label %_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.da = call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor11MutableNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef %i.da, ptr noundef %i.cf, i32 noundef %i.db) #13
  br label %_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler13NodeHashCache11Constructor17ReplaceValueInputEPNS1_4NodeEi.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load ptr, ptr %1, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.j, label %._crit_edge, !llvm.loop !13

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dh, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %6, align 8
  %cond.i5.i = icmp eq i16 %i.c, 59
  br i1 %cond.i5.i, label %.lr.ph.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit

.lr.ph.i:                                         ; preds = %bb.q, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i
  %i.di = phi ptr [ %i.dx, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i ], [ %i.a, %bb.q ]
  %.06.i = phi ptr [ %i.dw, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i ], [ %1, %bb.q ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #14
  unreachable

bb.s:                                             ; preds = %.lr.ph.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.do, 251658240
  %i.dp = ptrtoint ptr %.06.i to i64
  %i.dq = add i64 %i.dp, 32
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = add i64 %i.dt, 16
  %i.dv = inttoptr i64 %i.du to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i

_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i: ; preds = %bb.t, %bb.s
  %.sink.i.i.i.i.i = phi ptr [ %i.dv, %bb.t ], [ %i.dr, %bb.s ]
  %i.dw = load ptr, ptr %.sink.i.i.i.i.i, align 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i16, ptr %i.dy, align 8
  %cond.i.i = icmp eq i16 %i.dz, 59
  br i1 %cond.i.i, label %.lr.ph.i, label %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit, !llvm.loop !14

_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i, %bb.q
  %.0.lcssa.i = phi ptr [ %1, %bb.q ], [ %i.dw, %_ZN2v88internal8compiler14NodeProperties15IsValueIdentityEPNS1_4NodeEPS4_.exit.i ]
  %i.ea = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetVirtualObjectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.0.lcssa.i) #13 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not = icmp eq ptr %i.ea, null
  br i1 %.not, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i8, ptr %i.eb, align 8, !range !7, !noundef !8
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = call noundef zeroext i1 @_ZN2v88internal8compiler12Deduplicator10SeenBeforeEPKNS1_13VirtualObjectE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.ea)
  br i1 %i.ee, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = load ptr, ptr %i.eg, align 8
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = trunc i64 %i.el to i32
  %i.en = shl i32 %i.em, 1
  %i.eo = icmp sgt i32 %i.en, 7
  br i1 %i.eo, label %.lr.ph83, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

.lr.ph83:                                         ; preds = %.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eq = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer12ObjectIdNodeEPKNS1_13VirtualObjectE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull %i.ea)
  br label %bb.ah

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit
  %i.er = ptrtoint ptr %.sroa.8.1 to i64
  %i.es = ptrtoint ptr %.sroa.13.1 to i64
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit, %.preheader
  %.sroa.8.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.er, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit ]
  %.sroa.13.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.es, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0.1, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit ] ; 3 uses
  %i.et = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.eu = sub i64 %.sroa.8.0.lcssa, %i.et
  %i.ev = lshr exact i64 %i.eu, 3
  %i.ew = trunc i64 %i.ev to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11ObjectStateEji(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i32 noundef %i.fd, i32 noundef %i.ew) #13
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ff, align 8
  call void @_ZN2v88internal8compiler13NodeHashCache11ConstructorC2EPS2_PKNS1_8OperatorEiPPNS1_4NodeENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %i.ex, ptr noundef %i.fe, i32 noundef %i.ew, ptr noundef nonnull %.sroa.0.0.lcssa, i64 %.sroa.0.0.copyload.i.i)
  %i.fg = call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor3GetEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fh = sub i64 %.sroa.13.0.lcssa, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.fh) #15
  br label %bb.ah

bb.x:                                             ; preds = %.lr.ph83, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit
  %.05182 = phi i32 [ 0, %.lr.ph83 ], [ %i.gj, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.0.081 = phi ptr [ null, %.lr.ph83 ], [ %.sroa.0.1, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 6 uses
  %.sroa.13.080 = phi ptr [ null, %.lr.ph83 ], [ %.sroa.13.1, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %.sroa.8.079 = phi ptr [ null, %.lr.ph83 ], [ %.sroa.8.1, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.sroa.0.0.copyload.i58 = load ptr, ptr %i.dh, align 8
  store ptr %.sroa.0.0.copyload.i58, ptr %7, align 8
  %i.fi = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult21GetVirtualObjectFieldEPKNS1_13VirtualObjectEiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.ea, i32 noundef %.05182, ptr noundef %2) #13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not54 = icmp eq ptr %i.fi, null
  br i1 %.not54, label %bb.y, label %bb.z, !prof !5

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fj = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 792 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.fl, null
  br i1 %.not.i59, label %bb.aa, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.fm = load ptr, ptr %i.fj, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #13
  %i.fq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fm, ptr noundef %i.fp, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #13 ; 2 uses
  store ptr %i.fq, ptr %i.fk, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.z, %bb.aa
  %i.fr = phi ptr [ %i.fq, %bb.aa ], [ %i.fl, %bb.z ]
  %.not55 = icmp eq ptr %i.fi, %i.fr
  br i1 %.not55, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.fs = call noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer16ReduceDeoptStateEPNS1_4NodeES4_PNS1_12DeduplicatorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull %i.fi, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %.not.i.i60 = icmp eq ptr %.sroa.8.079, %.sroa.13.080
  br i1 %.not.i.i60, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.fs, ptr %.sroa.8.079, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.8.079, i64 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fu = ptrtoint ptr %.sroa.13.080 to i64
  %i.fv = ptrtoint ptr %.sroa.0.081 to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 6 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.ae, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.fy = ashr exact i64 %i.fw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 1152921504606846975)
  %i.gc = select i1 %i.ga, i64 1152921504606846975, i64 %i.gb ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #16 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.fw ; 2 uses
  store ptr %i.fs, ptr %i.gf, align 8
  %i.gg = icmp sgt i64 %i.fw, 0
  br i1 %i.gg, label %bb.af, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ge, ptr align 8 %.sroa.0.081, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.af, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.081, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.081, i64 noundef %i.fw) #15
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ac, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %.sroa.8.1 = phi ptr [ %.sroa.8.079, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.gh, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ft, %bb.ac ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.080, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.gi, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.13.080, %bb.ac ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.081, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ], [ %i.ge, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0.081, %bb.ac ] ; 2 uses
  %i.gj = add nuw nsw i32 %.05182, 8              ; 2 uses
  %i.gk = load ptr, ptr %i.ef, align 8
  %i.gl = load ptr, ptr %i.eg, align 8
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = shl i32 %i.gp, 1
  %i.gr = and i32 %i.gq, -8
  %i.gs = icmp slt i32 %i.gj, %i.gr
  br i1 %i.gs, label %bb.x, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.loopexit, !llvm.loop !15

bb.ah:                                            ; preds = %bb.w, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, %bb.u, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit, %._crit_edge, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5
  %.1 = phi ptr [ %i.bl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.5 ], [ %i.bw, %._crit_edge ], [ %1, %bb.u ], [ %i.eq, %bb.w ], [ %i.fg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit ], [ %1, %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13NodeHashCache11Constructor12ReplaceInputEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ]
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %1, %i.q
  br i1 %i.r, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor11MutableNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 251658240
  %.not.i.i5 = icmp eq i32 %i.v, 251658240
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = add i64 %i.w, 32
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  br i1 %.not.i.i5, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = sext i32 %2 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.af, %1
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.d
  %i.ag = sext i32 %2 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.ai, %1
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.aj = phi ptr [ %i.ah, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ae, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ak = phi ptr [ %i.ai, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.af, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.al = phi ptr [ %i.s, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.z, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.am = xor i32 %2, -1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %.not14.i = icmp eq ptr %i.ak, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef %i.ao) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %1, ptr %i.aj, align 8
  %.not15.i = icmp eq ptr %1, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ao) #13
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.g, %bb.f, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler13NodeHashCache11Constructor3GetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %0, align 8                ; 8 uses
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %.not.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.j = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.j, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef %i.f, ptr noundef %i.l) #13
  br i1 %i.m, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS2_13NodeHashCache12NodeHashCodeENS5_10NodeEqualsENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread7.i, label %bb.d, !llvm.loop !16

bb.f:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_ZN2v88internal8compiler14NodeProperties8HashCodeEPNS1_4NodeE(ptr noundef %i.f) #13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13NodeHashCache5QueryEPNS1_4NodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.g ], [ %i.ae, %bb.i ]
  %.015.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.0.i.i.i.i.i, %bb.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.ab, %bb.i ] ; 3 uses
  %i.x = icmp eq i64 %i.n, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIPN2v88internal8compiler4NodeES5_NS_9_IdentityENS3_13NodeHashCache10NodeEqualsENS7_12NodeHashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS5_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties6EqualsEPNS1_4NodeES4_(ptr noundef %i.f, ptr noundef %i.z) #13
end_hunk_0
