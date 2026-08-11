inline.NumInlined: 184
inline.NumDeleted: 105
begin_hunk_0_@_RNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB4_7Condvar19wait_until_internal:bb.a
  %i.cp = sub i32 0, %i.cn
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %i.co, %i.cr                   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !56, !noundef !5 ; 2 uses
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.z, label %.invoke

bb.z:                                             ; preds = %.noexc24
  %i.cw = load ptr, ptr %.sroa.0.0.i37.i, align 8, !noalias !56, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %i.cs ; 11 uses
  %i.cy = cmpxchg weak ptr %i.cx, i64 0, i64 1 acquire monotonic, align 8, !noalias !56
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %.noexc26, label %bb.aa, !prof !50

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.aa, %bb.z
  %i.da = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE monotonic, align 8, !noalias !56
  %i.db = icmp eq ptr %i.da, %.sroa.0.0.i37.i
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc26
  %i.dc = load atomic i64, ptr %.sroa.0.0.i monotonic, align 8, !noalias !56
  %i.dd = icmp eq i64 %i.dc, %i.cl
  br i1 %i.dd, label %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc26
  %i.de = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !56 ; 2 uses
  %i.df = and i64 %i.de, 2
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ult i64 %i.de, 4
  %or.cond.i38.i = or i1 %i.dh, %i.dg
  br i1 %or.cond.i38.i, label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge, label %bb.ad, !prof !15

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge unwind label %.loopexit

_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge: ; preds = %bb.ad, %bb.ac
  br label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i

_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i: ; preds = %bb.ab
  %i.di = load atomic i32, ptr %i.az monotonic, align 8, !noalias !56
  %.not35.i = icmp eq i32 %i.di, 0
  br i1 %.not35.i, label %bb.ae, label %.preheader48.i

.preheader48.i:                                   ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %.sroa.023.065.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.025.066.i = load ptr, ptr %.sroa.023.065.i, align 8, !noalias !56, !noundef !5 ; 4 uses
  %i.dj = icmp eq ptr %.sroa.025.066.i, null
  br i1 %i.dj, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader48.i
  %i.dk = icmp eq ptr %.sroa.025.066.i, %.sroa.0.0.i
  br i1 %i.dk, label %.lr.ph.i._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %i.dl = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !56 ; 2 uses
  %i.dm = and i64 %i.dl, 2
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult i64 %i.dl, 4
  %or.cond11.i = or i1 %i.do, %i.dn
  br i1 %or.cond11.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %bb.af, !prof !15

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.dp = icmp ne i64 %i.dr, %i.cl
  %spec.select.i = select i1 %i.dp, i1 %.sroa.018.068.i70, i1 false ; 2 uses
  %i.dq = icmp eq ptr %.sroa.025.0.i, %.sroa.0.0.i
  br i1 %i.dq, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.018.068.i70 = phi i1 [ %spec.select.i, %.lr.ph.i ], [ true, %.lr.ph.i.preheader ]
  %.sroa.025.070.i69 = phi ptr [ %.sroa.025.0.i, %.lr.ph.i ], [ %.sroa.025.066.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.dr = load atomic i64, ptr %.sroa.025.070.i69 monotonic, align 8, !noalias !56
  %.sroa.023.0.i = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i69, i64 8
  %.sroa.025.0.i = load ptr, ptr %.sroa.023.0.i, align 8, !noalias !56, !noundef !5 ; 4 uses
  %i.ds = icmp eq ptr %.sroa.025.0.i, null
  br i1 %i.ds, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i

.lr.ph.i._crit_edge.loopexit:                     ; preds = %.lr.ph.i
  %i.dt = xor i1 %spec.select.i, true
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i._crit_edge.loopexit, %.lr.ph.i.preheader
  %.sroa.025.070.i.lcssa = phi ptr [ %.sroa.025.066.i, %.lr.ph.i.preheader ], [ %.sroa.025.0.i, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.017.069.i.lcssa = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.025.070.i69, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.018.068.i.lcssa = phi i1 [ false, %.lr.ph.i.preheader ], [ %i.dt, %.lr.ph.i._crit_edge.loopexit ]
  %.pn67.i.lcssa = phi ptr [ %i.cx, %.lr.ph.i.preheader ], [ %.sroa.025.070.i69, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.023.0.le.i = getelementptr inbounds nuw i8, ptr %.pn67.i.lcssa, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i.lcssa, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !56, !noundef !5 ; 3 uses
  store ptr %i.dv, ptr %.sroa.023.0.le.i, align 8, !noalias !56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !56, !noundef !5
  %i.dy = icmp eq ptr %i.dx, %.sroa.0.0.i
  br i1 %i.dy, label %bb.ag, label %.preheader47.i

.preheader47.i:                                   ; preds = %.lr.ph.i._crit_edge
  %i.dz = icmp eq ptr %i.dv, null
  br i1 %i.dz, label %.loopexit.i, label %.lr.ph72.i

bb.ag:                                            ; preds = %.lr.ph.i._crit_edge
  store ptr %.sroa.017.069.i.lcssa, ptr %i.dw, align 8, !noalias !56
  br label %.loopexit.i

.lr.ph72.i:                                       ; preds = %.preheader47.i, %bb.ah
  %.sroa.019.071.i = phi ptr [ %i.ee, %bb.ah ], [ %i.dv, %.preheader47.i ] ; 2 uses
  %i.ea = load atomic i64, ptr %.sroa.019.071.i monotonic, align 8, !noalias !56
  %i.eb = icmp eq i64 %i.ea, %i.cl
  br i1 %i.eb, label %.loopexit.i.thread, label %bb.ah

.loopexit.i.thread:                               ; preds = %.lr.ph72.i
  %i.ec = icmp ne i64 %i.cl, %i.c
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

bb.ah:                                            ; preds = %.lr.ph72.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.019.071.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !56, !noundef !5 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.loopexit.i, label %.lr.ph72.i

.loopexit.i:                                      ; preds = %bb.ah, %bb.ag, %.preheader47.i
  %i.eg = icmp ne i64 %i.cl, %i.c                 ; 3 uses
  %brmerge.i.i.i = or i1 %i.eg, %.sroa.018.068.i.lcssa
  br i1 %brmerge.i.i.i, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i
  store atomic ptr null, ptr %0 monotonic, align 8, !noalias !65
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i: ; preds = %.lr.ph, %.loopexit.i.thread, %bb.ai, %.loopexit.i, %.preheader48.i
  %.sroa.0.094.shrunk = phi i1 [ false, %.preheader48.i ], [ %i.eg, %.loopexit.i ], [ %i.eg, %bb.ai ], [ %i.ec, %.loopexit.i.thread ], [ false, %.lr.ph ] ; 2 uses
  %i.eh = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !56 ; 2 uses
  %i.ei = and i64 %i.eh, 2
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = icmp ult i64 %i.eh, 4
  %or.cond15.i = or i1 %i.ek, %i.ej
  br i1 %or.cond15.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, label %bb.aj, !prof !15

bb.aj:                                            ; preds = %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %bb.b, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split: ; preds = %.noexc23, %.lr.ph75.i, %bb.ae, %bb.af, %.preheader.i, %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !noalias !56, !noundef !5
  %i.en = icmp eq i64 %i.em, 1
  br label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, %bb.n, %bb.p, %bb.aj
  %.sroa.0.1.shrunk = phi i1 [ false, %bb.n ], [ false, %bb.p ], [ %.sroa.0.094.shrunk, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ %.sroa.0.094.shrunk, %bb.aj ], [ true, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.sroa.0.0 = phi i1 [ true, %bb.n ], [ true, %bb.p ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.aj ], [ false, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %or.cond = phi i1 [ false, %bb.n ], [ false, %bb.p ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.aj ], [ %i.en, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.val9 = load i64, ptr %i.b, align 8, !range !51, !noundef !5
  %i.eo = icmp eq i64 %.val9, 0
  br i1 %i.eo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit
  %i.ep = atomicrmw sub ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11NUM_THREADS, i64 1 monotonic, align 8 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br i1 %.sroa.0.0, label %bb.am, label %bb.al, !prof !59

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.eq = cmpxchg weak ptr %1, i8 0, i8 1 acquire monotonic, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i, label %bb.ao, label %bb.ap, !prof !50

bb.ao:                                            ; preds = %bb.ap, %bb.an, %bb.al
  %.sroa.08.0 = xor i1 %.sroa.0.1.shrunk, true
  ret i1 %.sroa.08.0

bb.ap:                                            ; preds = %bb.an
  %i.er = call noundef zeroext i1 @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %1, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.ao
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandlej8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !70, !noalias !73, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !70, !noalias !73, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !70, !noalias !73 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !75
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
  %i.p = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %.sroa.02.0, 2305843009213693951
  %i.q = icmp ult i64 %i.p, 9223372036854775801
  %or.cond.i = and i1 %1, %i.q
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.p, !prof !78

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.r = icmp ult i64 %2, 9223372036854775801
  %or.cond60.i = and i1 %3, %i.r
  br i1 %or.cond60.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i, label %bb.p, !prof !78

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !75
  %i.s = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #21, !noalias !75 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i: ; preds = %bb.i
  %i.u = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.p) #21, !noalias !75 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !75
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !75
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !75
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !75
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.y = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.y
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  store i64 0, ptr %i.a, align 8, !noalias !79
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !79
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !79
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #21, !noalias !75
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
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBO_13thread_parker3imp12UnparkHandleEEj8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !82, !noalias !85, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !82, !noalias !85, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !82, !noalias !85 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !87
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
  %i.p = mul i64 %i.m, 24                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i, !prof !90

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i, !prof !90

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !87
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #21, !noalias !87 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #21, !noalias !87 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !87
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !87
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !87
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(200) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(200) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !87
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBH_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i, !prof !90

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  store i64 0, ptr %i.a, align 8, !noalias !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !91
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !91
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBH_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #21, !noalias !87
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBJ_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #22
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateTPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBH_13thread_parker3imp12UnparkHandleEEECsaWIbZW7RmAr_11parking_lot.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16lock_bucket_pair(i64 noundef %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = mul i64 %0, -7046029254386353131
  %i.b = mul i64 %1, -7046029254386353131
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.c = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE acquire, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16create_hashtable()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !5
  %i.h = sub i32 0, %i.g
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = lshr i64 %i.a, %i.j                      ; 9 uses
  %i.l = lshr i64 %i.b, %i.j                      ; 9 uses
  %.not = icmp ugt i64 %i.k, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.k, %i.n
  br i1 %i.p, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink64 = phi i64 [ %i.k, %bb.f ], [ %i.l, %bb.e ]
  %i.q = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %.sink64 ; 10 uses
  %i.s = cmpxchg weak ptr %i.r, i64 0, i64 1 acquire monotonic, align 8
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.j, !prof !50

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %i.r)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.u = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE monotonic, align 8
  %i.v = icmp eq ptr %i.u, %.sroa.04.0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = atomicrmw sub ptr %i.r, i64 1 release, align 8 ; 2 uses
  %i.x = and i64 %i.w, 2
  %i.y = icmp ne i64 %i.x, 0
  %i.z = icmp ult i64 %i.w, 4
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.backedge, label %bb.n, !prof !15

.backedge:                                        ; preds = %bb.l, %bb.n
  br label %bb.b

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.k, %i.l
  br i1 %i.aa, label %bb.v, label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.r)
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  %i.ab = icmp ult i64 %i.k, %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 4 uses
  br i1 %i.ab, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp ult i64 %i.k, %i.ad
  br i1 %i.ae, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.af = icmp ult i64 %i.l, %i.ad
  br i1 %i.af, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.k ; 4 uses
  %i.ai = cmpxchg weak ptr %i.ah, i64 0, i64 1 acquire monotonic, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.v, label %.sink.split, !prof !50

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.l ; 4 uses
  %i.am = cmpxchg weak ptr %i.al, i64 0, i64 1 acquire monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.v, label %.sink.split, !prof !50

bb.u:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

.sink.split:                                      ; preds = %bb.t, %bb.r
  %.sink = phi ptr [ %i.ah, %bb.r ], [ %i.al, %bb.t ]
  %.sroa.4.0.ph = phi ptr [ %i.r, %bb.r ], [ %i.al, %bb.t ]
  %.sroa.0.0.ph = phi ptr [ %i.ah, %bb.r ], [ %i.r, %bb.t ]
  tail call void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %.sink)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.t, %bb.r, %bb.m
  %.sroa.4.0 = phi ptr [ %i.r, %bb.m ], [ %i.al, %bb.t ], [ %i.r, %bb.r ], [ %.sroa.4.0.ph, %.sink.split ]
  %.sroa.0.0 = phi ptr [ %i.r, %bb.m ], [ %i.r, %bb.t ], [ %i.ah, %bb.r ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.ao = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr %.sroa.4.0, 1
end_hunk_0
