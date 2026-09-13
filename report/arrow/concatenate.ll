Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/concatenate?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BuffersEmRKSt6vectorINS0_5RangeESaIS3_EE:bb.a
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #20, !inline_history !20
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #20, !inline_history !20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.ai ], [ %i.dc, %bb.aj ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dd, label %bb.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !66

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !73 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !180

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.ad
  %i.de = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.cm, %bb.ad ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !84, !range !85, !noundef !86
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ae, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.bn, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, label %.loopexit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !110 ; 2 uses
  %.pre53 = load ptr, ptr %.pre52, align 8, !tbaa !89
  br label %.critedge

bb.am:                                            ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.au

.critedge:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, %bb.f
  %i.dj = phi ptr [ %.pre53, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %i.ad, %bb.f ] ; 2 uses
  %i.dk = phi ptr [ %.pre52, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %i.ae, %bb.f ] ; 2 uses
  %i.dl = add nuw i64 %.02049, 1                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !91
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 4
  %.not = icmp ult i64 %i.dl, %i.dr
  br i1 %.not, label %bb.f, label %.critedge33.loopexit, !llvm.loop !967

.critedge33.loopexit:                             ; preds = %.critedge
  %.pre54 = load ptr, ptr %3, align 8, !tbaa !116
  %.pre56 = load ptr, ptr %i.ab, align 8, !tbaa !115
  %.pre57 = load ptr, ptr %i.i, align 8, !tbaa !164
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %bb.c, %.critedge33.loopexit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit
  %i.ds = phi ptr [ %.pre57, %.critedge33.loopexit ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.dt = phi ptr [ %.pre56, %.critedge33.loopexit ], [ %i.k, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.du = phi ptr [ %.pre54, %.critedge33.loopexit ], [ %i.k, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit ], [ null, %bb.c ]
  store ptr null, ptr %0, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !116
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !115
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ds, ptr %i.dx, align 8, !tbaa !164
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pre58 = load ptr, ptr %3, align 8, !tbaa !116 ; 3 uses
  %.pre60 = load ptr, ptr %i.ab, align 8, !tbaa !115 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre58, %.pre60
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %.pre58, %.loopexit ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ea, align 8, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !62
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #20, !inline_history !18
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #20, !inline_history !18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.aq ], [ %i.en, %bb.ar ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.as, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !66

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ao, %.lr.ph.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ep, %.pre60
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i47 = load ptr, ptr %3, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.eq = phi ptr [ %.pr.i47, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre58, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !164
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.au:                                            ; preds = %bb.t, %bb.am, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.di, %bb.am ], [ %i.bo, %bb.t ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !tbaa !167  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !168 ; 6 uses
  %i.b = ptrtoint ptr %.val8 to i64               ; 2 uses
  %i.c = ptrtoint ptr %.val7 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 9 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %2, label %bb.f

2:                                                ; preds = %bb.a
  %3 = sub nuw i64 %1, %i.e                       ; 11 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit, label %bb.b

bb.b:                                             ; preds = %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.b
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %i.e, 576460752303423487         ; 2 uses
  %i.n = icmp ule i64 %i.k, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.k, %3
  br i1 %.not28.i, label %bb.c, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %3, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.07.i.i.i.i.prol = phi ptr [ %i.q, %.preheader.i.prol ], [ %.val8, %.preheader.i.preheader ] ; 3 uses
  %.056.i.i.i.i.prol = phi i64 [ %i.p, %.preheader.i.prol ], [ %3, %.preheader.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  store i64 -1, ptr %.07.i.i.i.i.prol, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !148
  %i.p = add i64 %.056.i.i.i.i.prol, -1           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !973

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.q, %.preheader.i.prol ]
  %.07.i.i.i.i.unr = phi ptr [ %.val8, %.preheader.i.preheader ], [ %i.q, %.preheader.i.prol ]
  %.056.i.i.i.i.unr = phi i64 [ %3, %.preheader.i.preheader ], [ %i.p, %.preheader.i.prol ]
  %i.r = sub i64 %i.e, %1
  %i.s = icmp ugt i64 %i.r, -8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.07.i.i.i.i = phi ptr [ %i.aj, %.preheader.i ], [ %.07.i.i.i.i.unr, %.preheader.i.prol.loopexit ] ; 17 uses
  %.056.i.i.i.i = phi i64 [ %i.ai, %.preheader.i ], [ %.056.i.i.i.i.unr, %.preheader.i.prol.loopexit ]
  store i64 -1, ptr %.07.i.i.i.i, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 16
  store i64 -1, ptr %i.u, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 24
  store i64 0, ptr %i.v, align 8, !tbaa !148
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 32
  store i64 -1, ptr %i.w, align 8, !tbaa !147
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 56
  store i64 0, ptr %i.z, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 64
  store i64 -1, ptr %i.aa, align 8, !tbaa !147
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 72
  store i64 0, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 80
  store i64 -1, ptr %i.ac, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 88
  store i64 0, ptr %i.ad, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 96
  store i64 -1, ptr %i.ae, align 8, !tbaa !147
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !148
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 112
  store i64 -1, ptr %i.ag, align 8, !tbaa !147
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 120
  store i64 0, ptr %i.ah, align 8, !tbaa !148
  %i.ai = add i64 %.056.i.i.i.i, -8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.preheader.i, !llvm.loop !974

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.aj, %.preheader.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !168
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.m, %3
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 1, 0) %3)
  %i.al = add nuw nsw i64 %.sroa.speculated.i.i, %i.e
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #22 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.d ; 3 uses
  %xtraiter15 = and i64 %3, 7                     ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i, %.prol.preheader
  %.07.i.i.i32.i.prol = phi ptr [ %i.as, %.prol.preheader ], [ %i.ap, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.056.i.i.i33.i.prol = phi i64 [ %i.ar, %.prol.preheader ], [ %3, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.prol.preheader ], [ 0, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  store i64 -1, ptr %.07.i.i.i32.i.prol, align 8, !tbaa !147
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.prol, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !148
  %i.ar = add i64 %.056.i.i.i33.i.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.prol, i64 16 ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !975

.prol.loopexit:                                   ; preds = %.prol.preheader, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.07.i.i.i32.i.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.as, %.prol.preheader ]
  %.056.i.i.i33.i.unr = phi i64 [ %3, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %.prol.preheader ]
  %i.at = sub i64 %i.e, %1
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new: ; preds = %.prol.loopexit, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new
  %.07.i.i.i32.i = phi ptr [ %i.bl, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new ], [ %.07.i.i.i32.i.unr, %.prol.loopexit ] ; 17 uses
  %.056.i.i.i33.i = phi i64 [ %i.bk, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new ], [ %.056.i.i.i33.i.unr, %.prol.loopexit ]
  store i64 -1, ptr %.07.i.i.i32.i, align 8, !tbaa !147
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !148
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 16
  store i64 -1, ptr %i.aw, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 24
  store i64 0, ptr %i.ax, align 8, !tbaa !148
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 32
  store i64 -1, ptr %i.ay, align 8, !tbaa !147
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !148
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 48
  store i64 -1, ptr %i.ba, align 8, !tbaa !147
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 56
  store i64 0, ptr %i.bb, align 8, !tbaa !148
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 64
  store i64 -1, ptr %i.bc, align 8, !tbaa !147
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 72
  store i64 0, ptr %i.bd, align 8, !tbaa !148
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 80
  store i64 -1, ptr %i.be, align 8, !tbaa !147
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 88
  store i64 0, ptr %i.bf, align 8, !tbaa !148
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 96
  store i64 -1, ptr %i.bg, align 8, !tbaa !147
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !148
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 112
  store i64 -1, ptr %i.bi, align 8, !tbaa !147
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 120
  store i64 0, ptr %i.bj, align 8, !tbaa !148
  %i.bk = add i64 %.056.i.i.i33.i, -8             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i, i64 128
  %.not.i.i.i34.i.7 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i34.i.7, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new, !llvm.loop !974

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.new, %.prol.loopexit
  %.not1.i.i.i.i = icmp eq ptr %.val7, %.val8
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.val7, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i, i64 16, i1 false), !tbaa.struct !172, !alias.scope !979
  %i.bm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16
  %.not.i.i.i37.i = icmp eq ptr %i.bm, %.val8
  br i1 %.not.i.i.i37.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit35.i
  %.not.i38.i = icmp eq ptr %.val7, null
  br i1 %.not.i38.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE13_M_deallocateEPS2_m.exit39.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef %i.bq) #23
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE13_M_deallocateEPS2_m.exit39.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE13_M_deallocateEPS2_m.exit39.i: ; preds = %bb.e, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !167
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %3
  store ptr %i.br, ptr %i.a, align 8, !tbaa !168
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !169
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.bt = icmp ult i64 %1, %i.e
  br i1 %i.bt, label %bb.g, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.val7, i64 %1 ; 2 uses
  %.not.i9 = icmp eq ptr %.val8, %i.bu
  br i1 %.not.i9, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_15RangeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_15RangeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !168
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_15RangeES2_EvT_S4_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE13_M_deallocateEPS2_m.exit39.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_15RangeEmS2_ET_S4_T0_RSaIT1_E.exit.i, %2, %bb.f
  ret void
}

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.116") align 8, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.27", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !73
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !73
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !66

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !65
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !100    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.m = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !65
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #20, !inline_history !980
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !73 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !180

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !84, !range !85, !noundef !86
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !182    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.q ; 13 uses

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !182
  store ptr null, ptr %1, align 8, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !981
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21, label %bb.c

bb.c:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow6BufferESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !59
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pr.pre.i, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !62
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !26
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #20, !inline_history !26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

end_hunk_0
