Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/convparm?download=true
inline.NumInlined: 552
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z25convertInteractionsOfTypeiRKN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEENS_8ArrayRefIK19MoleculeInformationEEPS8_15CombinationRuledfP10gmx_mtop_t:bb.a
  br label %bb.g

bb.g:                                             ; preds = %_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i, %bb.f
  %i.ba = phi ptr [ %i.az, %bb.f ], [ %i.bb, %_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #16
  br label %_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i

_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.h, %bb.g
  %i.bi = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bi, label %_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i.i.i, label %bb.g

_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i.i.i: ; preds = %_ZN15InteractionListD2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 2280) #16
  br label %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i.i.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 160
  br label %bb.j

bb.i:                                             ; preds = %bb.y
  %i.bk = load i8, ptr %i.t, align 8, !tbaa !98, !range !101, !noundef !102
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.z

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EED2Ev.exit, %bb.y
  %indvars.iv107 = phi i64 [ 0, %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EED2Ev.exit ], [ %indvars.iv.next108, %bb.y ] ; 5 uses
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !100
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv107 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  %.not.i.i84 = icmp eq ptr %i.bq, %i.bo
  br i1 %.not.i.i84, label %_ZNSt6vectorIiSaIiEE5clearEv.exit86, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i85

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i85:      ; preds = %bb.j
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !25
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit86

_ZNSt6vectorIiSaIiEE5clearEv.exit86:              ; preds = %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i85
  %i.br = getelementptr inbounds nuw [224 x i8], ptr %i.bj, i64 %indvars.iv107 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.y, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit86
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv107 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = and i64 %i.bz, 1
  %.not72 = icmp eq i64 %i.ca, 0
  br i1 %.not72, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 640, ptr noundef nonnull @.str.1) #18
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.x

bb.o:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !27
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 646, ptr noundef nonnull @.str.2) #18
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  %i.cg = and i64 %i.bz, 8
  %.not73 = icmp eq i64 %i.cg, 0
  br i1 %.not73, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 653, ptr noundef nonnull @.str.3) #18
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ci = trunc nuw nsw i64 %indvars.iv107 to i32
  tail call fastcc void @_ZL14enter_functionPK18InteractionsOfType19InteractionFunction15CombinationRulefP14gmx_ffparams_tP15InteractionListbb(ptr %i.bs, ptr %i.bu, i32 noundef %i.ci, i32 noundef %5, float noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bn, i1 noundef zeroext false, i1 noundef zeroext false)
  store i8 1, ptr %i.t, align 8, !tbaa !98
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.r ], [ %i.ch, %bb.v ], [ %i.cb, %bb.n ]
  resume { ptr, i32 } %.pn

bb.y:                                             ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE5clearEv.exit86
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %.not100 = icmp eq i64 %indvars.iv.next108, 95
  br i1 %.not100, label %bb.i, label %bb.j

bb.z:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !100
  %.not.i.i87 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i87, label %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2280
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN15InteractionListD2Ev.exit.i.i.i.i, %bb.aa
  %i.cl = phi ptr [ %i.ck, %bb.aa ], [ %i.cm, %_ZN15InteractionListD2Ev.exit.i.i.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -24 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN15InteractionListD2Ev.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #16
  br label %_ZN15InteractionListD2Ev.exit.i.i.i.i

_ZN15InteractionListD2Ev.exit.i.i.i.i:            ; preds = %bb.ac, %bb.ab
  %i.ct = icmp eq ptr %i.cm, %i.cj
  br i1 %i.ct, label %_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i, label %bb.ab

_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i: ; preds = %_ZN15InteractionListD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 2280) #16
  br label %_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %_ZNKSt14default_deleteIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEEEclEPS4_.exit.i.i, %bb.z, %bb.i, %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 72
  store float %7, ptr %i.cu, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14enter_functionPK18InteractionsOfType19InteractionFunction15CombinationRulefP14gmx_ffparams_tP15InteractionListbb(ptr nofree readonly %.0.val, ptr nofree readnone captures(address) %.8.val, i32 noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %9 = alloca %union.t_iparams, align 16          ; 62 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %.not1221 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not1221, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = fpext float %2 to double                 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 33 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 5 uses
  %i.v = sext i32 %0 to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.z = and i32 %1, -2
  %or.cond.i40.i = icmp eq i32 %i.z, 2            ; 4 uses
  %.not.i = icmp eq i32 %0, 54
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %sext = shl i64 %i.g, 30
  %i.ab = ashr i64 %sext, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.not = icmp eq ptr %4, null
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL18append_interactionP15InteractionListiN3gmx8ArrayRefIKiEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL18append_interactionP15InteractionListiN3gmx8ArrayRefIKiEE.exit
  %.sroa.04.022 = phi ptr [ %.0.val, %.lr.ph ], [ %i.uw, %_ZL18append_interactionP15InteractionListiN3gmx8ArrayRefIKiEE.exit ] ; 97 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !105 ; 45 uses
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp olt float %i.aj, f0x00800000
  store <2 x float> zeroinitializer, ptr %9, align 16, !tbaa !28
  br i1 %i.ak, label %bb.c, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.b
  store float 0.000000e+00, ptr %i.l, align 8, !tbaa !28
  br label %.thread434.i.i

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.am = load float, ptr %i.al, align 4, !tbaa !105
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp olt float %i.an, f0x00800000
  store float 0.000000e+00, ptr %i.l, align 8, !tbaa !28
  br i1 %i.ao, label %bb.d, label %.thread434.i.i

.thread434.i.i:                                   ; preds = %bb.c, %.thread.i.i
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !28
  br label %.thread438.i.i

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !105
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = fcmp olt float %i.ar, f0x00800000
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !28
  br i1 %i.as, label %bb.e, label %.thread438.i.i

.thread438.i.i:                                   ; preds = %bb.d, %.thread434.i.i
  store float 0.000000e+00, ptr %i.n, align 16, !tbaa !28
  br label %.thread443.i.i

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 36
  %i.au = load float, ptr %i.at, align 4, !tbaa !105
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp olt float %i.av, f0x00800000
  store float 0.000000e+00, ptr %i.n, align 16, !tbaa !28
  br i1 %i.aw, label %bb.f, label %.thread443.i.i

.thread443.i.i:                                   ; preds = %bb.e, %.thread438.i.i
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !28
  br label %.thread449.i.i

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !105
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp olt float %i.az, f0x00800000
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !28
  br i1 %i.ba, label %bb.g, label %.thread449.i.i

.thread449.i.i:                                   ; preds = %bb.f, %.thread443.i.i
  store float 0.000000e+00, ptr %i.p, align 8, !tbaa !28
  br label %.thread456.i.i

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !105
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fcmp olt float %i.bd, f0x00800000
  store float 0.000000e+00, ptr %i.p, align 8, !tbaa !28
  br i1 %i.be, label %bb.h, label %.thread456.i.i

.thread456.i.i:                                   ; preds = %bb.g, %.thread449.i.i
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !28
  br label %.thread464.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !105
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp olt float %i.bh, f0x00800000
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !28
  br i1 %i.bi, label %bb.i, label %.thread464.i.i

.thread464.i.i:                                   ; preds = %bb.h, %.thread456.i.i
  store float 0.000000e+00, ptr %i.r, align 16, !tbaa !28
  br label %.thread473.i.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 52
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !105
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp olt float %i.bl, f0x00800000
  store float 0.000000e+00, ptr %i.r, align 16, !tbaa !28
  br i1 %i.bm, label %bb.j, label %.thread473.i.i

.thread473.i.i:                                   ; preds = %bb.i, %.thread464.i.i
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !28
  br label %.thread483.i.i

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 56
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !105
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.bo)
  %i.bq = fcmp olt float %i.bp, f0x00800000
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !28
  br i1 %i.bq, label %bb.k, label %.thread483.i.i

.thread483.i.i:                                   ; preds = %bb.j, %.thread473.i.i
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !28
  br label %.thread494.i.i

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 60
  %i.bs = load float, ptr %i.br, align 4, !tbaa !105
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp olt float %i.bt, f0x00800000
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !28
  br i1 %i.bu, label %bb.l, label %.thread494.i.i

.thread494.i.i:                                   ; preds = %bb.k, %.thread483.i.i
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !28
  br label %.thread506.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 64
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !105
  %i.bx = tail call noundef float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp olt float %i.bx, f0x00800000
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !28
  br i1 %i.by, label %bb.m, label %.thread506.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 68
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !105
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.ca)
  %i.cc = fcmp olt float %i.cb, f0x00800000
  br i1 %i.cc, label %bb.n, label %.thread506.i.i

bb.n:                                             ; preds = %bb.m
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !27
  %i.ce = icmp eq i32 %i.cd, 3
  br i1 %i.ce, label %_ZL8IS_ANGLE19InteractionFunction.exit.i.i, label %_ZL8IS_ANGLE19InteractionFunction.exit.thread.i.i

_ZL8IS_ANGLE19InteractionFunction.exit.i.i:       ; preds = %bb.n
  %i.cf = load i32, ptr %i.y, align 4, !tbaa !12
  %i.cg = and i32 %i.cf, 32
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %_ZL8IS_ANGLE19InteractionFunction.exit.thread.i.i, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread

_ZL8IS_ANGLE19InteractionFunction.exit.thread.i.i: ; preds = %_ZL8IS_ANGLE19InteractionFunction.exit.i.i, %bb.n
  switch i32 %0, label %.thread506.i.i [
    i32 59, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 58, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 57, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 56, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 55, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 54, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 53, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 52, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 9, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 60, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 25, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 24, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 23, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 20, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
    i32 19, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread
  ]

.thread506.i.i:                                   ; preds = %_ZL8IS_ANGLE19InteractionFunction.exit.thread.i.i, %bb.m, %bb.l, %.thread494.i.i
  switch i32 %0, label %bb.bu [
end_hunk_0
begin_hunk_1_@_ZL14enter_functionPK18InteractionsOfType19InteractionFunction15CombinationRulefP14gmx_ffparams_tP15InteractionListbb:bb.a
  %.sink19.i.i = phi double [ %i.jj, %bb.az ], [ %i.jn, %bb.ba ], [ %i.ja, %bb.bb ]
  %i.jo = fptrunc double %.sink19.i.i to float
  store float %i.jo, ptr %i.k, align 4, !tbaa !105
  br label %bb.by

bb.bc:                                            ; preds = %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !105 ; 2 uses
  store float %i.jq, ptr %i.k, align 4, !tbaa !28
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 36
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 40
  %i.jt = load float, ptr %i.js, align 4, !tbaa !105
  %i.ju = load <2 x float>, ptr %i.jr, align 4, !tbaa !105
  store <2 x float> %i.ju, ptr %i.m, align 4, !tbaa !28
  %i.jv = tail call noundef float @llvm.fabs.f32(float %i.jq)
  %i.jw = fcmp olt float %i.jv, f0x00800000
  %i.jx = tail call float @llvm.fabs.f32(float %i.jt)
  %i.jy = fcmp olt float %i.jx, f0x00800000
  %or.cond420.i.i = select i1 %i.jw, i1 %i.jy, i1 false
  br i1 %or.cond420.i.i, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !105
  %i.kb = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.ka, i32 noundef -99, i32 noundef %0, ptr noundef nonnull @.str.5)
  store i32 %i.kb, ptr %i.l, align 8, !tbaa !28
  br label %bb.by

bb.be:                                            ; preds = %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !105
  store float %i.kd, ptr %i.k, align 4, !tbaa !28
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !105
  store <2 x float> %i.kf, ptr %i.m, align 4, !tbaa !28
  br label %bb.by

bb.bf:                                            ; preds = %.thread506.i.i
  store float %i.ai, ptr %i.m, align 4, !tbaa !28
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 48
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !105
  store <2 x float> %i.ki, ptr %9, align 16, !tbaa !28
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 56
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !105
  store float %i.kk, ptr %i.l, align 8, !tbaa !28
  %i.kl = tail call <11 x float> @llvm.masked.load.v11f32.p0(ptr nonnull align 4 %i.kg, <11 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <11 x float> poison), !tbaa !105
  %i.km = shufflevector <11 x float> %i.kl, <11 x float> poison, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 2, i32 3, i32 4>
  store <8 x float> %i.km, ptr %i.n, align 16, !tbaa !28
  br label %bb.by

bb.bg:                                            ; preds = %.thread506.i.i
  %i.kn = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.ai, i32 noundef 0, i32 noundef 53, ptr noundef nonnull @.str.6) ; 2 uses
  store i32 %i.kn, ptr %i.o, align 4, !tbaa !28
  %i.ko = add nsw i32 %i.kn, -1
  %or.cond.i.i = icmp ult i32 %i.ko, 8
  br i1 %or.cond.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
  %i.kp = load i32, ptr %i.o, align 4, !tbaa !28
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 339, ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef %i.kp) #18
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bx

bb.bk:                                            ; preds = %bb.bg
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !105
  store float %i.kt, ptr %i.n, align 16, !tbaa !28
  %i.ku = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.kr, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !105
  %i.kv = shufflevector <5 x float> %i.ku, <5 x float> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 0>
  store <4 x float> %i.kv, ptr %9, align 16, !tbaa !28
  br label %bb.by

bb.bl:                                            ; preds = %.thread506.i.i
  %i.kw = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.ai, i32 noundef 1, i32 noundef 56, ptr noundef nonnull @.str.10)
  %i.kx = add nsw i32 %i.kw, -1
  store i32 %i.kx, ptr %9, align 16, !tbaa !28
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !105
  %i.la = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.kz, i32 noundef 1, i32 noundef 56, ptr noundef nonnull @.str.8)
  store i32 %i.la, ptr %i.l, align 8, !tbaa !28
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !105
  %i.ld = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.lc, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @.str.11)
  store i32 %i.ld, ptr %i.k, align 4, !tbaa !28
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 36
  %i.lf = load <2 x float>, ptr %i.le, align 4, !tbaa !105
  store <2 x float> %i.lf, ptr %i.m, align 4, !tbaa !28
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 44
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !105
  store float %i.lh, ptr %i.o, align 4, !tbaa !28
  br label %bb.by

bb.bm:                                            ; preds = %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.lj = load <4 x float>, ptr %i.li, align 4, !tbaa !105
  store <4 x float> %i.lj, ptr %i.k, align 4, !tbaa !28
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 44
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !105
  store float %i.ll, ptr %i.o, align 4, !tbaa !28
  br label %bb.by

bb.bn:                                            ; preds = %.thread506.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !105
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.lp = load <2 x float>, ptr %i.lo, align 4, !tbaa !105 ; 4 uses
  %i.lq = extractelement <2 x float> %i.lp, i64 0
  %i.lr = fadd float %i.ai, %i.lq
  %i.ls = fpext float %i.lr to double
  %i.lt = fmul <2 x float> %i.lp, <float -2.000000e+00, float -4.000000e+00>
  store <2 x float> %i.lt, ptr %i.m, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !28
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 44
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !105
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 40
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !105 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 48
  %i.lz = load <2 x float>, ptr %i.ly, align 4, !tbaa !105 ; 4 uses
  %i.ma = extractelement <2 x float> %i.lz, i64 0
  %i.mb = fadd float %i.lx, %i.ma
  %i.mc = fpext float %i.mb to double
  %i.md = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.lx, i64 1
  %i.mf = fpext <2 x float> %i.me to <2 x double>
  %i.mg = fneg <2 x double> %i.mf
  %i.mh = shufflevector <2 x float> %i.lp, <2 x float> %i.lz, <2 x i32> <i32 0, i32 2>
  %i.mi = fpext <2 x float> %i.mh to <2 x double>
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mg)
  %i.mk = fmul <2 x double> %i.mj, splat (double 5.000000e-01) ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %i.lv, i64 1
  %i.mn = fpext <2 x float> %i.mm to <2 x double> ; 3 uses
  %i.mo = extractelement <2 x double> %i.mn, i64 0
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.ls, double 5.000000e-01, double %i.mo)
  %i.mq = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> %i.mk, <2 x i32> <i32 0, i32 2>
  %i.ms = fptrunc <2 x double> %i.mr to <2 x float>
  store <2 x float> %i.ms, ptr %9, align 16, !tbaa !28
  %i.mt = fneg <2 x double> %i.mn
  %i.mu = shufflevector <2 x float> %i.lp, <2 x float> %i.lz, <2 x i32> <i32 1, i32 3>
  %i.mv = fpext <2 x float> %i.mu to <2 x double>
  %i.mw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> splat (double 4.000000e+00), <2 x double> %i.mt)
  %i.mx = fptrunc <2 x double> %i.mw to <2 x float> ; 2 uses
  %i.my = extractelement <2 x float> %i.mx, i64 0
  store float %i.my, ptr %i.l, align 8, !tbaa !28
  %i.mz = extractelement <2 x double> %i.mn, i64 1
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mc, double 5.000000e-01, double %i.mz)
  %i.nb = insertelement <2 x double> %i.mk, double %i.na, i64 0
  %i.nc = fptrunc <2 x double> %i.nb to <2 x float>
  store <2 x float> %i.nc, ptr %i.p, align 8, !tbaa !28
  %i.nd = extractelement <2 x float> %i.mx, i64 1
  store float %i.nd, ptr %i.r, align 16, !tbaa !28
  %i.ne = fmul <2 x float> %i.lz, <float -2.000000e+00, float -4.000000e+00>
  store <2 x float> %i.ne, ptr %i.s, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !28
  br label %bb.by

bb.bo:                                            ; preds = %.thread506.i.i, %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !105
  store float %i.ng, ptr %i.k, align 4, !tbaa !28
  br label %bb.by

bb.bp:                                            ; preds = %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !105
  store float %i.ni, ptr %i.k, align 4, !tbaa !28
  br label %bb.by

bb.bq:                                            ; preds = %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i
  store float %i.ai, ptr %9, align 16, !tbaa !28
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.nk = load <4 x float>, ptr %i.nj, align 4, !tbaa !105
  store <4 x float> %i.nk, ptr %i.k, align 4, !tbaa !28
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 44
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !105
  store float %i.nm, ptr %i.o, align 4, !tbaa !28
  br label %bb.by

bb.br:                                            ; preds = %.thread506.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.no = load float, ptr %i.nn, align 4, !tbaa !105
  %i.np = fpext float %i.no to double             ; 2 uses
  %i.nq = fpext float %i.ai to double
  %i.nr = fmul double %i.nq, f0x3F91DF46A2529D39  ; 2 uses
  %i.ns = tail call double @cos(double noundef %i.nr) #17
  %10 = fmul double %i.ns, %i.np
  %11 = fptrunc double %10 to float
  store float %11, ptr %9, align 16, !tbaa !28
  %12 = tail call double @sin(double noundef %i.nr) #17
  %13 = fmul double %12, %i.np
  %14 = fptrunc double %13 to float
  store float %14, ptr %i.k, align 4, !tbaa !28
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.nu = load <4 x float>, ptr %i.nt, align 4, !tbaa !105
  store <4 x float> %i.nu, ptr %i.l, align 8, !tbaa !28
  br label %bb.by

bb.bs:                                            ; preds = %.thread506.i.i
  %i.nv = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.ai, i32 noundef 1, i32 noundef 74, ptr noundef nonnull @.str.12)
  store i32 %i.nv, ptr %9, align 16, !tbaa !28
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !105
  store float %i.nx, ptr %i.k, align 4, !tbaa !28
  br label %bb.by

bb.bt:                                            ; preds = %.thread506.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !105
  %i.oa = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nz, i64 1
  %i.oc = fptosi <2 x float> %i.ob to <2 x i32>
  store <2 x i32> %i.oc, ptr %9, align 16, !tbaa !28
  br label %bb.by

bb.bu:                                            ; preds = %.thread506.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 454, ptr noundef nonnull @.str.13, i32 noundef %0, ptr noundef nonnull @.str, i32 noundef 454) #18
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.od, %bb.bw ], [ %i.kq, %bb.bj ]
  resume { ptr, i32 } %.pn.i.i

bb.by:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bf, %bb.be, %bb.bd, %_ZL12set_ljparams15CombinationRuledddPfS0_.exit.i, %_ZL12set_ljparams15CombinationRuledddPfS0_.exit, %_ZL12set_ljparams15CombinationRuledddPfS0_.exit34, %_ZL12set_ljparams15CombinationRuledddPfS0_.exit37, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %_ZL17IS_RESTRAINT_TYPE19InteractionFunction.exit.thread.loopexit.i.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader.i.i, %.preheader422.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i, %.thread506.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18  ; 5 uses
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 6 uses
  br i1 %6, label %.critedge.i, label %bb.bz

.thread.i:                                        ; preds = %.thread506.i.i
  %i.oe = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.ai, i32 noundef 0, i32 noundef 54, ptr noundef nonnull @.str.8)
  store i32 %i.oe, ptr %i.o, align 4, !tbaa !28
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 28
  %i.og = load float, ptr %i.of, align 4, !tbaa !105
  %i.oh = tail call fastcc noundef i32 @_ZL11round_checkfi19InteractionFunctionPKc(float noundef %i.og, i32 noundef 1, i32 noundef 54, ptr noundef nonnull @.str.9)
  store i32 %i.oh, ptr %i.n, align 16, !tbaa !28
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.04.022, i64 32
  %i.oj = load <4 x float>, ptr %i.oi, align 4, !tbaa !105
  store <4 x float> %i.oj, ptr %9, align 16, !tbaa !28
  %.pre39 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %6, label %.critedge.i, label %.thread51.i

bb.bz:                                            ; preds = %bb.by
  br i1 %.not.i, label %.thread51.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bz
  %i.ok = ptrtoint ptr %.pre to i64
  %i.ol = ptrtoint ptr %.pre41 to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = lshr exact i64 %i.om, 2
  %i.oo = trunc i64 %i.on to i32                  ; 2 uses
  %.not3254.i = icmp slt i32 %i.i, %i.oo
  br i1 %.not3254.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.cb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cb ], [ %i.ab, %.preheader.i ] ; 4 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.pre41, i64 %indvars.iv.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !107
  %i.or = icmp eq i32 %i.oq, %0
  br i1 %i.or, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i
  %i.os = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ot = getelementptr inbounds nuw [48 x i8], ptr %i.os, i64 %indvars.iv.i ; 2 uses
  %i.ou = load i256, ptr %9, align 16
  %i.ov = load i256, ptr %i.ot, align 1
  %i.ow = xor i256 %i.ou, %i.ov
  %i.ox = getelementptr i8, ptr %9, i64 32
  %i.oy = getelementptr i8, ptr %i.ot, i64 32
  %i.oz = load i128, ptr %i.ox, align 16
  %i.pa = load i128, ptr %i.oy, align 1
  %i.pb = zext i128 %i.oz to i256
  %i.pc = zext i128 %i.pa to i256
  %i.pd = xor i256 %i.pb, %i.pc
  %i.pe = or i256 %i.ow, %i.pd
  %i.pf = icmp ne i256 %i.pe, 0
  %i.pg = zext i1 %i.pf to i32
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %_ZL12assign_param19InteractionFunctionP9t_iparamsN3gmx8ArrayRefIKfEE15CombinationRuled.exit.loopexit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.oo
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !104

.thread51.i:                                      ; preds = %.thread.i, %bb.bz
  %i.pi = phi ptr [ %.pre41, %bb.bz ], [ %.pre40, %.thread.i ] ; 5 uses
  %i.pj = phi ptr [ %.pre, %bb.bz ], [ %.pre39, %.thread.i ] ; 4 uses
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = lshr exact i64 %i.pm, 2
  %i.po = trunc i64 %i.pn to i32                  ; 2 uses
  %i.pp = add nsw i32 %i.po, -1                   ; 2 uses
  %i.pq = icmp sgt i32 %i.po, 0
  br i1 %i.pq, label %bb.cc, label %.critedge.i

bb.cc:                                            ; preds = %.thread51.i
  %i.pr = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !107
  %i.pu = icmp eq i32 %i.pt, %0
  br i1 %i.pu, label %bb.cd, label %.critedge.i

bb.cd:                                            ; preds = %bb.cc
  %i.pv = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw [48 x i8], ptr %i.pv, i64 %i.pr ; 2 uses
  %i.px = load i256, ptr %9, align 16
  %i.py = load i256, ptr %i.pw, align 1
  %i.pz = xor i256 %i.px, %i.py
  %i.qa = getelementptr i8, ptr %9, i64 32
  %i.qb = getelementptr i8, ptr %i.pw, i64 32
  %i.qc = load i128, ptr %i.qa, align 16
  %i.qd = load i128, ptr %i.qb, align 1
  %i.qe = zext i128 %i.qc to i256
  %i.qf = zext i128 %i.qd to i256
  %i.qg = xor i256 %i.qe, %i.qf
  %i.qh = or i256 %i.pz, %i.qg
  %i.qi = icmp ne i256 %i.qh, 0
  %i.qj = zext i1 %i.qi to i32
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %_ZL12enter_paramsP14gmx_ffparams_t19InteractionFunctionN3gmx8ArrayRefIKfEE15CombinationRulefib.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cb, %bb.cd, %bb.cc, %.thread51.i, %.preheader.i, %.thread.i, %bb.by
  %i.ql = phi ptr [ %.pre41, %bb.by ], [ %i.pi, %bb.cd ], [ %i.pi, %bb.cc ], [ %i.pi, %.thread51.i ], [ %.pre41, %.preheader.i ], [ %.pre40, %.thread.i ], [ %.pre41, %bb.cb ]
  %i.qm = phi ptr [ %.pre, %bb.by ], [ %i.pj, %bb.cd ], [ %i.pj, %bb.cc ], [ %i.pj, %.thread51.i ], [ %.pre, %.preheader.i ], [ %.pre39, %.thread.i ], [ %.pre, %bb.cb ]
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.ql to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = lshr exact i64 %i.qp, 2
  %i.qr = trunc i64 %i.qq to i32                  ; 2 uses
  %i.qs = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.qt = load ptr, ptr %i.ad, align 8, !tbaa !108
  %.not.i35.i = icmp eq ptr %i.qs, %i.qt
  br i1 %.not.i35.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.qs, ptr noundef nonnull align 16 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !109
  %i.qu = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 48
  store ptr %i.qv, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE9push_backERKS0_.exit.i

bb.cf:                                            ; preds = %.critedge.i
  %i.qw = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 4 uses
  %i.qx = ptrtoint ptr %i.qs to i64
  %i.qy = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 5 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775776
  br i1 %i.ra, label %bb.cg, label %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cg:                                            ; preds = %bb.cf
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #18
  unreachable

_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cf
  %i.rb = sdiv exact i64 %i.qz, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = tail call i64 @llvm.umin.i64(i64 %i.rc, i64 192153584101141162)
  %i.rf = select i1 %i.rd, i64 192153584101141162, i64 %i.re ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.rf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.rg = mul nuw nsw i64 %i.rf, 48
  %i.rh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #15 ; 4 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 %i.qz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ri, ptr noundef nonnull align 16 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !109
  %i.rj = icmp sgt i64 %i.qz, 0
  br i1 %i.rj, label %bb.ch, label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.ch:                                            ; preds = %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rh, ptr align 4 %i.qw, i64 %i.qz, i1 false)
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.ch, %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 48
  %.not.i17.i.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.ci

end_hunk_1
