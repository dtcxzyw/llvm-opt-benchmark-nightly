Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parking_lot-7d7078129c5db231.parking_lot.7f8199df39d1a375-cgu.1?download=true
inline.NumInlined: 184
inline.NumDeleted: 105
begin_hunk_0_@_RNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB4_7Condvar19wait_until_internal:bb.a
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.y, label %.noexc24, !prof !11

bb.y:                                             ; preds = %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16create_hashtable()
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.y, %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i
  %.sroa.0.0.i37.i = phi ptr [ %i.cf, %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i ], [ %i.ch, %bb.y ] ; 4 uses
  %i.ci = load atomic i64, ptr %.sroa.0.0.i monotonic, align 8, !noalias !75 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.i, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !noalias !75, !noundef !7
  %i.cl = mul i64 %i.ci, -7046029254386353131
  %i.cm = sub i32 0, %i.ck
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = lshr i64 %i.cl, %i.co                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !75, !noundef !7 ; 2 uses
  %i.cs = icmp ult i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.z, label %.invoke

bb.z:                                             ; preds = %.noexc24
  %i.ct = load ptr, ptr %.sroa.0.0.i37.i, align 8, !noalias !75, !nonnull !7, !noundef !7
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.ct, i64 %i.cp ; 11 uses
  %i.cv = cmpxchg weak ptr %i.cu, i64 0, i64 1 acquire monotonic, align 8, !noalias !75
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  br i1 %i.cw, label %.noexc26, label %bb.aa, !prof !10

.invoke:                                          ; preds = %.noexc15, %.noexc24
  %i.cx = phi i64 [ %i.cp, %.noexc24 ], [ %i.x, %.noexc15 ]
  %i.cy = phi i64 [ %i.cr, %.noexc24 ], [ %i.z, %.noexc15 ]
  %i.cz = phi ptr [ @22, %.noexc24 ], [ @17, %.noexc15 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %i.cu)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.aa, %bb.z
  %i.da = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE monotonic, align 8, !noalias !75
  %i.db = icmp eq ptr %i.da, %.sroa.0.0.i37.i
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc26
  %i.dc = load atomic i64, ptr %.sroa.0.0.i monotonic, align 8, !noalias !75
  %i.dd = icmp eq i64 %i.dc, %i.ci
  br i1 %i.dd, label %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc26
  %i.de = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !75 ; 2 uses
  %i.df = and i64 %i.de, 2
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ult i64 %i.de, 4
  %or.cond.i38.i = or i1 %i.dh, %i.dg
  br i1 %or.cond.i38.i, label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge, label %bb.ad, !prof !8

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cu)
          to label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge: ; preds = %bb.ad, %bb.ac
  br label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i

_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i: ; preds = %bb.ab
  %i.di = load atomic i32, ptr %i.aw monotonic, align 8, !noalias !75
  %.not35.i = icmp eq i32 %i.di, 0
  br i1 %.not35.i, label %bb.ae, label %.preheader48.i

.preheader48.i:                                   ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %.sroa.023.065.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.025.066.i = load ptr, ptr %.sroa.023.065.i, align 8, !noalias !75, !noundef !7 ; 4 uses
  %i.dj = icmp eq ptr %.sroa.025.066.i, null
  br i1 %i.dj, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader48.i
  %i.dk = icmp eq ptr %.sroa.025.066.i, %.sroa.0.0.i
  br i1 %i.dk, label %.lr.ph.i._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %i.dl = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !75 ; 2 uses
  %i.dm = and i64 %i.dl, 2
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult i64 %i.dl, 4
  %or.cond11.i = or i1 %i.do, %i.dn
  br i1 %or.cond11.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %bb.af, !prof !8

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cu)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.dp = icmp ne i64 %i.dr, %i.ci
  %spec.select.i = select i1 %i.dp, i1 %.sroa.018.068.i76, i1 false ; 2 uses
  %i.dq = icmp eq ptr %.sroa.025.0.i, %.sroa.0.0.i
  br i1 %i.dq, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.018.068.i76 = phi i1 [ %spec.select.i, %.lr.ph.i ], [ true, %.lr.ph.i.preheader ]
  %.sroa.025.070.i75 = phi ptr [ %.sroa.025.0.i, %.lr.ph.i ], [ %.sroa.025.066.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.dr = load atomic i64, ptr %.sroa.025.070.i75 monotonic, align 8, !noalias !75
  %.sroa.023.0.i = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i75, i64 8
  %.sroa.025.0.i = load ptr, ptr %.sroa.023.0.i, align 8, !noalias !75, !noundef !7 ; 4 uses
  %i.ds = icmp eq ptr %.sroa.025.0.i, null
  br i1 %i.ds, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i

.lr.ph.i._crit_edge.loopexit:                     ; preds = %.lr.ph.i
  %i.dt = xor i1 %spec.select.i, true
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i._crit_edge.loopexit, %.lr.ph.i.preheader
  %.sroa.025.070.i.lcssa = phi ptr [ %.sroa.025.066.i, %.lr.ph.i.preheader ], [ %.sroa.025.0.i, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.017.069.i.lcssa = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.025.070.i75, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.018.068.i.lcssa = phi i1 [ false, %.lr.ph.i.preheader ], [ %i.dt, %.lr.ph.i._crit_edge.loopexit ]
  %.pn67.i.lcssa = phi ptr [ %i.cu, %.lr.ph.i.preheader ], [ %.sroa.025.070.i75, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.023.0.le.i = getelementptr inbounds nuw i8, ptr %.pn67.i.lcssa, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i.lcssa, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !75, !noundef !7 ; 3 uses
  store ptr %i.dv, ptr %.sroa.023.0.le.i, align 8, !noalias !75
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !75, !noundef !7
  %i.dy = icmp eq ptr %i.dx, %.sroa.0.0.i
  br i1 %i.dy, label %bb.ag, label %.preheader47.i

.preheader47.i:                                   ; preds = %.lr.ph.i._crit_edge
  %i.dz = icmp eq ptr %i.dv, null
  br i1 %i.dz, label %.loopexit.i, label %.lr.ph72.i

bb.ag:                                            ; preds = %.lr.ph.i._crit_edge
  store ptr %.sroa.017.069.i.lcssa, ptr %i.dw, align 8, !noalias !75
  br label %.loopexit.i

.lr.ph72.i:                                       ; preds = %.preheader47.i, %bb.ah
  %.sroa.019.071.i = phi ptr [ %i.ee, %bb.ah ], [ %i.dv, %.preheader47.i ] ; 2 uses
  %i.ea = load atomic i64, ptr %.sroa.019.071.i monotonic, align 8, !noalias !75
  %i.eb = icmp eq i64 %i.ea, %i.ci
  br i1 %i.eb, label %.loopexit.i.thread, label %bb.ah

.loopexit.i.thread:                               ; preds = %.lr.ph72.i
  %i.ec = icmp ne i64 %i.ci, %i.c
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

bb.ah:                                            ; preds = %.lr.ph72.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.019.071.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !75, !noundef !7 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.loopexit.i, label %.lr.ph72.i

.loopexit.i:                                      ; preds = %bb.ah, %bb.ag, %.preheader47.i
  %i.eg = icmp ne i64 %i.ci, %i.c                 ; 2 uses
  %brmerge.i.i.i = or i1 %i.eg, %.sroa.018.068.i.lcssa
  br i1 %brmerge.i.i.i, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i
  store atomic ptr null, ptr %0 monotonic, align 8, !noalias !77
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i: ; preds = %.lr.ph, %.loopexit.i.thread, %bb.ai, %.loopexit.i, %.preheader48.i
  %.sroa.040.0.shrunk = phi i1 [ false, %.preheader48.i ], [ %i.eg, %.loopexit.i ], [ false, %bb.ai ], [ %i.ec, %.loopexit.i.thread ], [ false, %.lr.ph ] ; 2 uses
  %i.eh = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !75 ; 2 uses
  %i.ei = and i64 %i.eh, 2
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = icmp ult i64 %i.eh, 4
  %or.cond15.i = or i1 %i.ek, %i.ej
  br i1 %or.cond15.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, label %bb.aj, !prof !8

bb.aj:                                            ; preds = %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cu)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp158

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split: ; preds = %.lr.ph75.i, %.noexc23, %bb.ae, %bb.af, %.preheader.i, %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !noalias !75, !noundef !7
  %i.en = icmp eq i64 %i.em, 1
  br label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, %bb.n, %bb.p, %bb.aj
  %.sroa.044.0 = phi i1 [ true, %bb.n ], [ false, %bb.aj ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ true, %bb.p ], [ false, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.sroa.040.1.shrunk = phi i1 [ false, %bb.n ], [ %.sroa.040.0.shrunk, %bb.aj ], [ %.sroa.040.0.shrunk, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.p ], [ true, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %or.cond = phi i1 [ false, %bb.n ], [ false, %bb.aj ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.p ], [ %i.en, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.val9 = load i64, ptr %i.b, align 8, !range !72, !noundef !7
  %i.eo = icmp eq i64 %.val9, 0
  br i1 %i.eo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit
  %i.ep = atomicrmw add ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11NUM_THREADS, i64 -1 monotonic, align 8 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70
  br i1 %.sroa.044.0, label %bb.am, label %bb.al, !prof !11

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  br i1 %or.cond, label %.thread54, label %bb.an

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.eq = cmpxchg weak ptr %1, i8 0, i8 1 acquire monotonic, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %.sroa.08.0.a = xor i1 %.sroa.040.1.shrunk, true
  br label %.thread54

bb.ap:                                            ; preds = %bb.an
  %i.er = call noundef zeroext i1 @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %1, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.ao

.thread54:                                        ; preds = %bb.ao, %bb.al
  %.sroa.08.0 = phi i1 [ false, %bb.al ], [ %.sroa.08.0.a, %bb.ao ]
  ret i1 %.sroa.08.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandlej8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !85, !noundef !7 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !85, !nonnull !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !85 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !86
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.p, !prof !87

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i, label %bb.p, !prof !87

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !86
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #21, !noalias !86 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 3
  %i.u = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #21, !noalias !86 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !86
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !86
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !86
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !86
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.n, !prof !87

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  store i64 0, ptr %i.a, align 8, !noalias !88
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !88
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #21, !noalias !86
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #22
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBO_13thread_parker3imp12UnparkHandleEEj8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !95 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !96, !noundef !7 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !96, !nonnull !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !96 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !97
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 24                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i, !prof !98

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i, !prof !98

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !97
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #21, !noalias !97 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #21, !noalias !97 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !97
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !97
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !97
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(200) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.g, 24
end_hunk_0
