Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_nested?download=true
inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_126HistogramBinUpdateFunctionINS_16HistogramFunctorEbNS0_14HistogramExactEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m:bb.a
  store i32 0, ptr %i.bd, align 4, !tbaa !126
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !2
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25, !inline_history !2
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i46

bb.y:                                             ; preds = %bb.w
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i.i.i.i43 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44

bb.aa:                                            ; preds = %bb.y
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i45 = phi i32 [ %i.bc, %bb.z ], [ %i.bm, %bb.aa ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i.i45, 1
  br i1 %i.bn, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i46, !prof !127

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i46

_ZN6duckdb15SelectionVectorD2Ev.exit.i46:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !123 ; 8 uses
  %.not.i.i.i.i1.i47 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i1.i47, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit51, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bq, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !126
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !122
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25, !inline_history !3
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !122
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit51

bb.ae:                                            ; preds = %bb.ac
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i.i.i2.i48 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i2.i48, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i49

bb.ag:                                            ; preds = %bb.ae
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i49: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i50 = phi i32 [ %i.bt, %bb.af ], [ %i.cd, %bb.ag ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i4.i50, 1
  br i1 %i.ce, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit51, !prof !127

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit51

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit51:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i46, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i49, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aj:                                            ; preds = %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ak:                                            ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %.lr.ph, %bb.aw
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %bb.aw ] ; 6 uses
  %i.cj = load ptr, ptr %8, align 8, !tbaa !189
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !190 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.058
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93
  %i.cn = zext i32 %i.cm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.an, %bb.am
  %i.co = phi i64 [ %i.cn, %bb.an ], [ %.058, %bb.am ] ; 3 uses
  %i.cp = load ptr, ptr %i.o, align 8, !tbaa !214 ; 2 uses
  %.not.i52 = icmp eq ptr %i.cp, null
  br i1 %.not.i52, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cq = lshr i64 %i.co, 6
  %i.cr = and i64 %i.co, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !132
  %i.cu = shl nuw i64 1, %i.cr
  %i.cv = and i64 %i.ct, %i.cu
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %bb.aw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cw = load ptr, ptr %7, align 8, !tbaa !189
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !190 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cx, null
  br i1 %.not.i53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit54, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.058
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !93
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit54

_ZNK6duckdb15SelectionVector9get_indexEm.exit54:  ; preds = %bb.ao, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.db = phi i64 [ %i.da, %bb.ao ], [ %.058, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !250 ; 4 uses
  %.val = load ptr, ptr %i.dd, align 8, !tbaa !254 ; 2 uses
  %.not57 = icmp eq ptr %.val, null
  br i1 %.not57, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit54
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIbE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef %4, i64 noundef %.058)
          to label %._crit_edge61 unwind label %bb.aq

._crit_edge61:                                    ; preds = %bb.ap
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !254
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %._crit_edge61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit54
  %i.df = phi ptr [ %.pre, %._crit_edge61 ], [ %.val, %_ZNK6duckdb15SelectionVector9get_indexEm.exit54 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.co
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !256, !range !257, !noundef !197
  %i.di = trunc nuw i8 %i.dh to i1                ; 2 uses
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !259 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !259 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !260 ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = shl nsw i64 %i.dq, 3
  %i.ds = zext i32 %i.dn to i64
  %i.dt = add i64 %i.dr, %i.ds                    ; 4 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i.i, label %_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.as
  %.038.i.i.i = phi i64 [ %.1.i.i.i, %bb.as ], [ %i.dt, %bb.ar ] ; 2 uses
  %.sroa.023.037.i.i.i = phi ptr [ %.sroa.023.1.i.i.i, %bb.as ], [ %i.dj, %bb.ar ] ; 2 uses
  %.sroa.6.036.i.i.i = phi i32 [ %.sroa.6.1.i.i.i, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %i.dv = lshr i64 %.038.i.i.i, 1                 ; 3 uses
  %i.dw = zext i32 %.sroa.6.036.i.i.i to i64
  %i.dx = add nuw nsw i64 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.023.037.i.i.i, i64 %i.dy ; 2 uses
  %i.ea = and i64 %i.dx, 63
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !132
  %9 = shl nuw i64 1, %i.ea
  %10 = and i64 %i.eb, %9
  %11 = icmp eq i64 %10, 0
  %i.ec = and i1 %11, %i.di
  br i1 %i.ec, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i, label %bb.as

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i:        ; preds = %.lr.ph.i.i.i
  %i.ed = trunc i64 %i.dx to i32
  %i.ee = and i32 %i.ed, 63                       ; 2 uses
  %i.ef = add nuw nsw i32 %i.ee, 1
  %i.eg = icmp eq i32 %i.ee, 63                   ; 2 uses
  %spec.select34.i.i.i = select i1 %i.eg, i32 0, i32 %i.ef
  %spec.select35.idx.i.i.i = select i1 %i.eg, i64 8, i64 0
  %spec.select35.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select35.idx.i.i.i
  %i.eh = xor i64 %i.dv, -1
  %i.ei = add nsw i64 %.038.i.i.i, %i.eh
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.6.1.i.i.i = phi i32 [ %spec.select34.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ %.sroa.6.036.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.023.1.i.i.i = phi ptr [ %spec.select35.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ %.sroa.023.037.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.ei, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ %i.dv, %.lr.ph.i.i.i ] ; 2 uses
  %i.ej = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ej, label %.lr.ph.i.i.i, label %_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i, !llvm.loop !12

_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i: ; preds = %bb.as, %bb.ar
  %.sroa.6.0.lcssa.i.i.i = phi i32 [ 0, %bb.ar ], [ %.sroa.6.1.i.i.i, %bb.as ] ; 2 uses
  %.sroa.023.0.lcssa.i.i.i = phi ptr [ %i.dj, %bb.ar ], [ %.sroa.023.1.i.i.i, %bb.as ] ; 3 uses
  %i.ek = icmp eq ptr %.sroa.023.0.lcssa.i.i.i, %i.dl
  %i.el = icmp eq i32 %.sroa.6.0.lcssa.i.i.i, %i.dn
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %i.em, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i
  %i.en = zext nneg i32 %.sroa.6.0.lcssa.i.i.i to i64 ; 2 uses
  %i.eo = load i64, ptr %.sroa.023.0.lcssa.i.i.i, align 8, !tbaa !132
  %i.ep = lshr i64 %i.eo, %i.en
  %i.eq = trunc i64 %i.ep to i1
  %i.er = xor i1 %i.di, %i.eq
  br i1 %i.er, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.es = ptrtoint ptr %.sroa.023.0.lcssa.i.i.i to i64
  %i.et = sub i64 %i.es, %i.dp
  %i.eu = shl nsw i64 %i.et, 3
  %i.ev = add nsw i64 %i.eu, %i.en
  br label %bb.av

bb.av:                                            ; preds = %_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i, %bb.at, %bb.au
  %.0.i55 = phi i64 [ %i.ev, %bb.au ], [ %i.dt, %_ZSt11lower_boundISt19_Bit_const_iteratorbET_S1_S1_RKT0_.exit.i ], [ %i.dt, %bb.at ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !261
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !263
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.0.i55 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !132
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !132
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.av
  %i.fc = add nuw i64 %.058, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.am, !llvm.loop !1428

.body:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.aq, %bb.al, %bb.ak
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ak ], [ %i.de, %bb.aq ], [ %i.ci, %bb.al ], [ %.pn9.i.i.i, %bb.h ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #25
  br label %bb.ax

bb.ax:                                            ; preds = %.body, %bb.aj
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.cg, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ai
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ax ], [ %i.cf, %bb.ai ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_126HistogramBinUpdateFunctionINS_16HistogramFunctorEhNS0_14HistogramExactEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.c unwind label %bb.aj

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit unwind label %bb.ak

_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !184
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !185
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.i = load ptr, ptr %5, align 8, !tbaa !108    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i.i.i, label %bb.h, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i.i.i, label %bb.h, label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %.body

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_ZN6duckdb16HistogramFunctor11PrepareDataERNS_6VectorEmRbRNS_19UnifiedVectorFormatE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !186
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit unwind label %bb.al

_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit: ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !186
  %.not63 = icmp eq i64 %4, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.am

._crit_edge:                                      ; preds = %bb.av, %_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.r, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !126
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !2
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !2
end_hunk_0
