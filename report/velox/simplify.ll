Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/simplify?download=true
inline.NumInlined: 440
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3re214SimplifyWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i:bb.a
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !53
  %i.bw = icmp ult i16 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.0.i83 = select i1 %i.bw, ptr %i.bx, ptr %i.by
  %i.bz = load ptr, ptr %.0.i83, align 8, !tbaa !54
  %i.ca = icmp eq ptr %i.bt, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bt)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.cb, align 1, !tbaa !55
  %i.cc = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !73
  %i.cg = zext i16 %i.cf to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i32 noundef 11, i32 noundef %i.cg)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  store i16 1, ptr %i.ch, align 2, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.bt, ptr %i.ci, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 1, ptr %i.cm, align 1, !tbaa !55
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 40) #20
  br label %bb.ae

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.co = load ptr, ptr %4, align 8, !tbaa !54    ; 7 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !49  ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 2
  br i1 %i.cq, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !53
  %i.ct = icmp ult i16 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %.0.i85 = select i1 %i.ct, ptr %i.cu, ptr %i.cv
  %i.cw = load ptr, ptr %.0.i85, align 8, !tbaa !54
  %i.cx = icmp eq ptr %i.co, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.co)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.cy, align 1, !tbaa !55
  %i.cz = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i8 %i.c, %i.cp
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !73
  %i.df = icmp eq i16 %i.dc, %i.de
  br i1 %i.df, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 6 uses
  %i.dh = load i8, ptr %1, align 8, !tbaa !49
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !73
  %i.dl = zext i16 %i.dk to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i32 noundef %i.di, i32 noundef %i.dl)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 1, ptr %i.dm, align 2, !tbaa !53
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.co, ptr %i.dn, align 8, !tbaa !54
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 1, ptr %i.do, align 1, !tbaa !55
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 40) #20
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  %i.dq = load ptr, ptr %4, align 8, !tbaa !54    ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !49
  %i.ds = icmp eq i8 %i.dr, 2
  br i1 %i.ds, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23
  %i.dw = load i32, ptr %i.dt, align 8, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !73
  %i.dz = zext i16 %i.dy to i32
  %i.ea = tail call noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef nonnull %i.dq, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dz) ; 2 uses
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dq)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 1, ptr %i.eb, align 1, !tbaa !55
  br label %bb.ad

bb.x:                                             ; preds = %bb.a
  %i.ec = tail call noundef ptr @_ZN3re214SimplifyWalker17SimplifyCharClassEPNS_6RegexpE(ptr noundef nonnull %1) ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 1, ptr %i.ed, align 1, !tbaa !55
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 570) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 27, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit unwind label %bb.aa

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ee = load i8, ptr %1, align 8, !tbaa !49
  %i.ef = zext i8 %i.ee to i32
  store i32 %i.ef, ptr %i.b, align 4, !tbaa !93
  %i.eg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.eh = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.ab ], [ %i.ei, %bb.aa ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.p, %bb.t, %bb.n, %bb.r, %bb.j, %bb.l, %bb.z, %bb.x, %._crit_edge, %.loopexit, %bb.b
  %.3 = phi ptr [ %i.eh, %bb.z ], [ %i.e, %bb.b ], [ %i.v, %._crit_edge ], [ %i.u, %.loopexit ], [ %i.ec, %bb.x ], [ %i.cd, %bb.l ], [ %i.co, %bb.r ], [ %i.cc, %bb.j ], [ %i.dg, %bb.t ], [ %i.cz, %bb.p ], [ %i.co, %bb.n ], [ %i.ea, %bb.w ], [ %i.dq, %bb.v ]
  ret ptr %.3

bb.ae:                                            ; preds = %bb.ac, %bb.u, %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bg, %bb.h ], [ %i.cn, %bb.m ], [ %i.dp, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !49      ; 2 uses
  %i.d = add i8 %i.c, -14
  %switch.i = icmp ult i8 %i.d, 6
  br i1 %switch.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.c, -5
  %switch = icmp ult i8 %i.e, 2
  br i1 %switch, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = load i16, ptr %i.f, align 2, !tbaa !53   ; 2 uses
  %i.h = icmp ult i16 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %i.h, ptr %i.i, ptr %i.j      ; 3 uses
  %i.k = zext i16 %i.g to i64                     ; 3 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.k ; 2 uses
  %7 = ptrtoint ptr %6 to i64
  %i.l = lshr i64 %i.k, 2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.g
  %.047.i.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.l, %bb.c ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %.0.i, %bb.c ] ; 9 uses
  %i.m = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !54
  %i.n = load i8, ptr %i.m, align 8, !tbaa !49
  %i.o = add i8 %i.n, -14
  %switch.i93 = icmp ult i8 %i.o, 6
  br i1 %switch.i93, label %bb.d, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = load i8, ptr %i.q, align 8, !tbaa !49
  %i.s = add i8 %i.r, -14
  %switch.i92 = icmp ult i8 %i.s, 6
  br i1 %switch.i92, label %bb.e, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = load i8, ptr %i.u, align 8, !tbaa !49
  %i.w = add i8 %i.v, -14
  %switch.i91 = icmp ult i8 %i.w, 6
  br i1 %switch.i91, label %bb.f, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit185

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = load i8, ptr %i.y, align 8, !tbaa !49
  %i.aa = add i8 %i.z, -14
  %switch.i90 = icmp ult i8 %i.aa, 6
  br i1 %switch.i90, label %bb.g, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit187

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32 ; 3 uses
  %i.ac = add nsw i64 %.047.i.i.i.i, -1
  %i.ad = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !103

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre.i.i.i.i = ptrtoint ptr %i.ab to i64
  %gepdiff = sub i64 %7, %.pre.i.i.i.i
  %i.ae = ashr exact i64 %gepdiff, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi53.i.i.i.i = phi i64 [ %i.ae, %._crit_edge.loopexit.i.i.i.i ], [ %i.k, %bb.c ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.ab, %._crit_edge.loopexit.i.i.i.i ], [ %.0.i, %bb.c ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !54
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !49
  %i.ah = add i8 %i.ag, -14
  %switch.i89 = icmp ult i8 %i.ah, 6
  br i1 %switch.i89, label %bb.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !54
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !49
  %i.al = add i8 %i.ak, -14
  %switch.i88 = icmp ult i8 %i.al, 6
  br i1 %switch.i88, label %bb.k, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.am, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !54
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !49
  %i.ap = add i8 %i.ao, -14
  %switch.i87 = icmp ult i8 %i.ap, 6
  br i1 %switch.i87, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit185: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit187: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit185, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit187, %bb.h, %bb.j, %bb.l
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %bb.l ], [ %i.as, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit187 ], [ %i.ar, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit185 ], [ %i.aq, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.at = icmp eq ptr %6, %.028.i.i.i.i
  br i1 %i.at, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %bb.m

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread: ; preds = %bb.l, %._crit_edge.i.i.i.i, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit, %bb.a
  %.sroa.speculated110 = tail call i32 @llvm.smin.i32(i32 %1, i32 1) ; 2 uses
  %i.au = icmp sgt i32 %2, 1
  br i1 %i.au, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit
  %.0133 = phi i32 [ %.sroa.speculated110, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread ], [ %1, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit ], [ %1, %bb.b ] ; 6 uses
  %i.av = icmp eq i32 %2, -1
  br i1 %i.av, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  switch i32 %.0133, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ax = tail call noundef ptr @_ZN3re26Regexp4StarEPS0_NS0_10ParseFlagsE(ptr noundef %i.aw, i32 noundef %3)
  br label %bb.aw

bb.p:                                             ; preds = %bb.n
  %i.ay = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.az = tail call noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %i.ay, i32 noundef %3)
  br label %bb.aw

bb.q:                                             ; preds = %bb.n
  %i.ba = icmp slt i32 %.0133, 0
  br i1 %i.ba, label %.noexc.i, label %.lr.ph.preheader, !prof !22

.noexc.i:                                         ; preds = %bb.q
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bb = zext nneg i32 %.0133 to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3                ; 3 uses
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #24 ; 5 uses
  %i.be = add nsw i32 %.0133, -1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.be to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.bf = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.t unwind label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.bg = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

bb.s:                                             ; preds = %.lr.ph
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit74

bb.t:                                             ; preds = %._crit_edge
  %i.bj = invoke noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %i.bf, i32 noundef %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = sext i32 %i.be to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bk
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !54
  %i.bm = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.bd, i32 noundef %.0133, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit unwind label %bb.v

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit:          ; preds = %bb.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bc) #20
  br label %bb.aw

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit74

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit74:        ; preds = %bb.v, %bb.s
  %.pn68 = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %i.bn, %bb.v ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bc) #20
  br label %common.resume

.thread:                                          ; preds = %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, %bb.m
  %.0133139 = phi i32 [ %.0133, %bb.m ], [ %.sroa.speculated110, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread ] ; 8 uses
  %.0134138 = phi i32 [ %2, %bb.m ], [ 1, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread ] ; 6 uses
  %i.bo = or i32 %.0134138, %.0133139
  %or.cond = icmp eq i32 %i.bo, 0
  br i1 %or.cond, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread
  %i.bp = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 3 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i32 noundef 2, i32 noundef %3)
          to label %bb.aw unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 40) #20
  br label %common.resume

bb.y:                                             ; preds = %.thread
  %i.br = icmp eq i32 %.0133139, 1
  %i.bs = icmp eq i32 %.0134138, 1
  %or.cond3 = and i1 %i.br, %i.bs
  br i1 %or.cond3, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.aw

bb.aa:                                            ; preds = %bb.y
  %i.bu = icmp sgt i32 %.0133139, 0
  br i1 %i.bu, label %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit76, label %bb.ag

_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit76:        ; preds = %bb.aa
  %i.bv = zext nneg i32 %.0133139 to i64          ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 3 uses
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 4 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ad
  %i.by = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.bx, i32 noundef %.0133139, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit78 unwind label %bb.af

bb.ac:                                            ; preds = %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit76, %bb.ad
  %indvars.iv171 = phi i64 [ 0, %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit76 ], [ %indvars.iv.next172, %bb.ad ] ; 2 uses
  %i.bz = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv171
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !54
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %i.bv
  br i1 %exitcond175.not, label %bb.ab, label %bb.ac, !llvm.loop !105

bb.ae:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit80
end_hunk_0
