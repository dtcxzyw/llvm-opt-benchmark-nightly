Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.09?download=true
inline.NumInlined: 1007
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB3_10Prioritize14buffer_pendingINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB21_:bb.a
.loopexit:                                        ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit276.i
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload55, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit276.i ], [ -1, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !384
  %i.ge = load i64, ptr %i.bd, align 8, !range !21, !noalias !384, !noundef !15
  %.not.i.i214.i = icmp eq i64 %i.ge, 2
  br i1 %.not.i.i214.i, label %_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB3_10Prioritize9pop_frameNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit216.i unwind label %bb.w, !noalias !385

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !384
  %i.gf = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !384
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.ac, label %.thread293.i

.thread293.i:                                     ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab
  store i64 2, ptr %i.az, align 8, !noalias !384
  store ptr null, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !384
  br label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.gh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames_10___CALLSITE, i64 16) monotonic, align 8, !noalias !384 ; 3 uses
  switch i8 %i.gh, label %bb.ad [
    i8 0, label %.thread293.i
    i8 1, label %bb.ae
    i8 2, label %bb.ae
  ], !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.gi = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames_10___CALLSITE)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385 ; 2 uses

bb.ae:                                            ; preds = %bb.ac, %bb.af, %bb.ac
  %.sroa.016.0.i = phi i8 [ %i.gi, %bb.af ], [ %i.gh, %bb.ac ], [ %i.gh, %bb.ac ]
  %i.gj = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15
  %i.gk = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gj, i8 noundef %.sroa.016.0.i)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.af:                                            ; preds = %bb.ad
  %.not180.i = icmp eq i8 %i.gi, 0
  br i1 %.not180.i, label %.thread293.i, label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.gk, label %bb.ah, label %.thread293.i

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !384
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !384
  %i.gn = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.ai:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !384
  %.pr292.i = load i64, ptr %i.az, align 8, !noalias !384
  %.not181.i = icmp eq i64 %.pr292.i, 2
  br i1 %.not181.i, label %bb.am, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 300
  store ptr %i.go, ptr %i.aw, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !384
  %i.gp = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.ak:                                            ; preds = %bb.aj
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store ptr %i.gq, ptr %i.av, align 8, !noalias !384
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !384
  store ptr @8, ptr %i.cj, align 8, !noalias !384
  store ptr %i.av, ptr %i.ck, align 8, !noalias !384
  store ptr @25, ptr %i.cl, align 8, !noalias !384
  store i64 1, ptr %i.ay, align 8, !noalias !384
  store ptr %i.ax, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !384
  store i64 2, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !384
  store ptr %i.gm, ptr %i.cm, align 8, !noalias !384
  invoke void @_RNvMNtCs6kPMvhw0TuU_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
          to label %bb.am unwind label %.loopexit.split-lp316.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.am:                                            ; preds = %bb.al, %bb.ai, %.thread293.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !384
  %i.gr = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit219.i: ; preds = %.loopexit.split-lp316.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at
  %.pn198.i.ph = phi { ptr, i32 } [ %.pn196.i, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp316.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %.pr60 = load i64, ptr %i.az, align 8, !alias.scope !396, !noalias !385 ; 2 uses
  %.not.i.i = icmp eq i64 %.pr60, 2
  br i1 %.not.i.i, label %.body259.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit219.i
  %i.gs = load i64, ptr %i.cn, align 8, !range !26, !alias.scope !397, !noalias !385, !noundef !15
  %i.gt = invoke noundef zeroext i1 @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az, i64 noundef %i.gs)
          to label %bb.ap unwind label %bb.ao, !noalias !385 ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6kPMvhw0TuU_7tracing4span5InnerEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.az) #24
          to label %.body43 unwind label %bb.as, !noalias !385

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !398), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !399), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !400), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !401), !noalias !385
  %i.gv = icmp eq i64 %.pr60, 0
  br i1 %i.gv, label %.body259.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !402), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !403), !noalias !385
  %i.gw = load ptr, ptr %i.dq, align 8, !alias.scope !404, !noalias !385, !nonnull !15, !noundef !15
  %i.gx = atomicrmw add ptr %i.gw, i64 -1 release, align 8, !noalias !405
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.ar, label %.body259.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire, !noalias !385
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsh7gMfcBfOe7_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dq) #23
          to label %.body259.i unwind label %bb.ft

bb.as:                                            ; preds = %bb.ao
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !385
  unreachable

.loopexit.split-lp316.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fy, %bb.al, %bb.hn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit219.i

.body:                                            ; preds = %.invoke195, %.invoke, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl, %bb.ib, %bb.ia, %bb.ia, %bb.gw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame4data4DataECskeugdADtBsi_12pingora_core.exit.i
  %.pn196.i = phi { ptr, i32 } [ %i.qj, %bb.gw ], [ %.pn193.i, %bb.ib ], [ %.pn193.i, %bb.ia ], [ %.pn193.i, %bb.ia ], [ %.pn193.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame4data4DataECskeugdADtBsi_12pingora_core.exit.i ], [ %i.ig, %.invoke ], [ %i.ig, %bb.bl ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ig, %.invoke195 ] ; 2 uses
  %i.ha = load i64, ptr %i.az, align 8, !range !21, !noalias !385, !noundef !15
  %.not.i.i217.i = icmp eq i64 %i.ha, 2
  br i1 %.not.i.i217.i, label %.body259.i, label %bb.at

bb.at:                                            ; preds = %.body
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit219.i unwind label %bb.ft, !noalias !385

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gb, %bb.ga, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.am, %bb.bg
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.am
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 120
  %i.hc = load i32, ptr %i.hb, align 8, !range !29, !noalias !385, !noundef !15
  %i.hd = icmp ne i32 %i.hc, -1
  %i.he = zext i1 %i.hd to i8
  store i8 %i.he, ptr %i.au, align 1, !noalias !384
  %i.hf = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !384
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.hh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !384 ; 3 uses
  switch i8 %i.hh, label %bb.aw [
    i8 0, label %bb.ba
    i8 1, label %bb.ax
    i8 2, label %bb.ax
  ], !prof !20

bb.aw:                                            ; preds = %bb.av
  %i.hi = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames0_10___CALLSITE)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385 ; 2 uses

bb.ax:                                            ; preds = %bb.av, %bb.ay, %bb.av
  %.sroa.026.0.i = phi i8 [ %i.hi, %bb.ay ], [ %i.hh, %bb.av ], [ %i.hh, %bb.av ]
  %i.hj = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames0_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15
  %i.hk = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hj, i8 noundef %.sroa.026.0.i)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.ay:                                            ; preds = %bb.aw
  %i.hl = icmp eq i8 %i.hi, 0
  br i1 %i.hl, label %bb.ba, label %bb.ax

bb.az:                                            ; preds = %bb.ax
  br i1 %i.hk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !384
  %i.hm = invoke noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385 ; 5 uses

bb.bb:                                            ; preds = %bb.az
  %i.hn = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames0_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !384
  store ptr %i.au, ptr %i.at, align 8, !noalias !384
  store ptr @26, ptr %i.co, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !384
  store i64 1, ptr %i.k, align 8, !noalias !384
  store ptr %i.at, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !noalias !384
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx.i, align 8, !noalias !384
  store ptr %i.ho, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !384
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !384
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.hp = load i64, ptr %i.hm, align 8, !range !18, !alias.scope !407, !noalias !385, !noundef !15
  %i.hq = trunc nuw i64 %i.hp to i1
  br i1 %i.hq, label %bb.be, label %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !407, !noalias !385, !noundef !15 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !407, !noalias !385, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !409
  call void @llvm.experimental.noalias.scope.decl(metadata !410), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !411), !noalias !385
  call void @llvm.experimental.noalias.scope.decl(metadata !412), !noalias !385
  %i.hv = load i64, ptr %i.cs, align 8, !alias.scope !413, !noalias !385, !noundef !15
  %i.hw = icmp ult i64 %i.hs, %i.hv
  br i1 %i.hw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hx = load ptr, ptr %i.ct, align 8, !alias.scope !413, !noalias !385, !nonnull !15, !noundef !15
  %i.hy = getelementptr inbounds nuw [312 x i8], ptr %i.hx, i64 %i.hs ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !range !21, !noalias !414, !noundef !15 ; 4 uses
  %.not.i.i.i38 = icmp eq i64 %i.hz, 2
  br i1 %.not.i.i.i38, label %bb.bg, label %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.bg
  unreachable

_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.bf
  %i.ia = load i64, ptr %i.cr, align 8, !alias.scope !413, !noalias !385, !noundef !15
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa_idx.i.i39, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i, i64 304, i1 false), !noalias !415
  store i64 2, ptr %i.hy, align 8, !noalias !414
  store i64 %i.ia, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i, align 8, !noalias !414
  %i.ib = load i64, ptr %i.dr, align 8, !alias.scope !413, !noalias !385, !noundef !15
  %i.ic = add i64 %i.ib, -1
  store i64 %i.ic, ptr %i.dr, align 8, !alias.scope !413, !noalias !385
  store i64 %i.hs, ptr %i.cr, align 8, !alias.scope !413, !noalias !385
  store i64 %i.hz, ptr %i.a, align 8, !alias.scope !410, !noalias !409
  %i.id = icmp eq i64 %i.hs, %i.hu
  br i1 %i.id, label %bb.bi, label %bb.bh

_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %bb.bd
  store i8 -1, ptr %i.ar, align 8, !alias.scope !406, !noalias !385
  br label %bb.bq

bb.bh:                                            ; preds = %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit.i
  %i.ie = load i64, ptr %.sroa.5.0..sroa_idx.i.i39, align 8, !noalias !409
  store i64 0, ptr %i.a, align 8, !noalias !409
  %i.if = trunc nuw i64 %i.hz to i1
  br i1 %i.if, label %bb.bj, label %bb.bk, !prof !27

bb.bi:                                            ; preds = %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit.i
  %.not.i40 = icmp eq i64 %i.hz, 0
  br i1 %.not.i40, label %bb.bo, label %bb.bn, !prof !27

bb.bj:                                            ; preds = %bb.bh
  store i64 1, ptr %i.hm, align 8, !alias.scope !407, !noalias !385
  store i64 %i.ie, ptr %i.hr, align 8, !alias.scope !407, !noalias !385
  br label %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit

bb.bk:                                            ; preds = %bb.bh
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
          to label %bb.bm unwind label %bb.bl, !noalias !409

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417), !noalias !409
  %i.ih = load i8, ptr %i.ds, align 8, !range !23, !alias.scope !418, !noalias !409, !noundef !15
  switch i8 %i.ih, label %.body [
    i8 0, label %.invoke
    i8 1, label %.invoke195
    i8 3, label %.invoke195
    i8 6, label %.invoke
  ]

.invoke195:                                       ; preds = %bb.bl, %bb.bl
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame7headers11HeaderBlockECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ii)
          to label %.body unwind label %bb.bp

.invoke:                                          ; preds = %bb.bl, %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !418, !noalias !409, !noundef !15
  %i.im = load ptr, ptr %i.ij, align 8, !alias.scope !418, !noalias !409, !nonnull !15, !align !17, !noundef !15
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !noalias !419, !nonnull !15, !noundef !15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !418, !noalias !409, !noundef !15
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !418, !noalias !409, !noundef !15
  invoke void %i.io(ptr noundef %i.il, ptr noundef %i.iq, i64 noundef %i.is)
          to label %.body unwind label %bb.bp, !inline_history !420

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  unreachable

bb.bn:                                            ; preds = %bb.bi
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #26
          to label %bb.bm unwind label %bb.bl, !noalias !409

bb.bo:                                            ; preds = %bb.bi
  store i64 0, ptr %i.hm, align 8, !alias.scope !407, !noalias !385
  br label %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit

bb.bp:                                            ; preds = %.invoke195, %.invoke
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !409
  unreachable

_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.bj, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.ar, ptr noundef nonnull align 8 dereferenceable(296) %i.ds, i64 296, i1 false), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  %.pr64 = load i8, ptr %i.ar, align 8, !noalias !384
  switch i8 %.pr64, label %bb.ci [
    i8 -1, label %bb.bq
    i8 0, label %bb.cj
    i8 3, label %bb.ck
  ]

bb.bq:                                            ; preds = %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit, %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit.thread
  %i.iu = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba)
          to label %bb.br unwind label %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame4data4DataECskeugdADtBsi_12pingora_core.exit.i: ; preds = %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp, %.thread299.i, %.loopexit.split-lp329.i
  %.sroa.0106.0.i = phi i1 [ true, %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp ], [ true, %.thread299.i ], [ %.not182.i66, %.loopexit.split-lp329.i ], [ true, %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn193.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp227, %.loopexit.split-lp86.loopexit.split-lp.loopexit.split-lp ], [ %.pn298.i, %.thread299.i ], [ %lpad.loopexit.split-lp331.i, %.loopexit.split-lp329.i ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %i.iv = load i8, ptr %i.ar, align 8, !range !22, !noalias !384, !noundef !15 ; 2 uses
  %i.iw = icmp ne i8 %i.iv, -1
  %or.cond.i = and i1 %.sroa.0106.0.i, %i.iw
  br i1 %or.cond.i, label %bb.ia, label %.body

.loopexit.split-lp329.i:                          ; preds = %bb.ci, %bb.bu, %bb.bt, %bb.bs
  %.not182.i66 = phi i1 [ false, %bb.ci ], [ true, %bb.bu ], [ true, %bb.bt ], [ true, %bb.bs ]
  %lpad.loopexit.split-lp331.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame4data4DataECskeugdADtBsi_12pingora_core.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %i.iy = load i32, ptr %i.ix, align 8, !range !30, !noalias !385, !noundef !15
  %i.iz = icmp eq i32 %i.iy, 3
  br i1 %i.iz, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 68
  %i.jb = load i32, ptr %i.ja, align 4, !noalias !385, !noundef !15 ; 2 uses
  %i.jc = invoke noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.bt unwind label %.loopexit.split-lp329.i, !noalias !385

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams6streamNtB2_6Stream9set_reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.jc, i32 noundef %i.jb, i8 noundef 1)
          to label %bb.bu unwind label %.loopexit.split-lp329.i, !noalias !385

bb.bu:                                            ; preds = %bb.bt
  %i.jd = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba)
          to label %bb.bv unwind label %.loopexit.split-lp329.i, !noalias !385

bb.bv:                                            ; preds = %bb.bu
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 300
  %i.jf = load i32, ptr %i.je, align 4, !noalias !385, !noundef !15
  store i32 %i.jf, ptr %i.ep, align 4, !noalias !384
  store i32 %i.jb, ptr %i.dw, align 8, !noalias !384
  store i8 8, ptr %i.as, align 8, !noalias !384
  br label %bb.bw

bb.bw:                                            ; preds = %bb.gp, %bb.fs, %bb.bv
  %i.jg = load i8, ptr %i.ar, align 8, !range !22, !noalias !384, !noundef !15 ; 2 uses
  switch i8 %i.jg, label %bb.gt [
    i8 -1, label %bb.gy
    i8 0, label %bb.gy
    i8 3, label %bb.gy
  ]

bb.bx:                                            ; preds = %bb.br
  %i.jh = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !384
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.jj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames6_10___CALLSITE, i64 16) monotonic, align 8, !noalias !384 ; 3 uses
  switch i8 %i.jj, label %bb.bz [
    i8 0, label %bb.cd
    i8 1, label %bb.ca
    i8 2, label %bb.ca
  ], !prof !20

bb.bz:                                            ; preds = %bb.by
  %i.jk = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames6_10___CALLSITE)
          to label %bb.cb unwind label %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385 ; 2 uses

bb.ca:                                            ; preds = %bb.by, %bb.cb, %bb.by
  %.sroa.092.0.i = phi i8 [ %i.jk, %bb.cb ], [ %i.jj, %bb.by ], [ %i.jj, %bb.by ]
  %i.jl = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames6_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15
  %i.jm = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jl, i8 noundef %.sroa.092.0.i)
          to label %bb.cc unwind label %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.cb:                                            ; preds = %bb.bz
  %i.jn = icmp eq i8 %i.jk, 0
  br i1 %i.jn, label %bb.cd, label %bb.ca

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.jm, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %bb.cc, %bb.cb, %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !noalias !384
  %i.jo = load i8, ptr %i.au, align 1, !range !19, !noalias !384, !noundef !15
  %i.jp = trunc nuw i8 %i.jo to i1
  invoke void @_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6countsNtB4_6Counts16transition_after(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.p, i1 noundef zeroext %i.jp)
          to label %bb.cg unwind label %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.ce:                                            ; preds = %bb.cc
  %i.jq = load ptr, ptr @_RNvNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeNtB4_10Prioritize9pop_frames6_10___CALLSITE, align 8, !noalias !384, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !384
  store <2 x ptr> <ptr @27, ptr inttoptr (i64 85 to ptr)>, ptr %i.q, align 16, !noalias !384
  store ptr %i.q, ptr %i.r, align 8, !noalias !384
  store ptr @10, ptr %i.dm, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !384
  store i64 1, ptr %i.g, align 8, !noalias !384
  store ptr %i.r, ptr %.sroa.094.sroa.4.0..sroa_idx.i, align 8, !noalias !384
  store i64 1, ptr %.sroa.094.sroa.5.0..sroa_idx.i, align 8, !noalias !384
  store ptr %i.jr, ptr %.sroa.495.0..sroa_idx.i, align 8, !noalias !384
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.cf unwind label %.loopexit.split-lp324.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !385

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !384
  br label %bb.cd

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !384
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cv, %bb.cg
  %i.js = load i8, ptr %i.ar, align 8, !range !22, !noalias !384, !noundef !15 ; 2 uses
  switch i8 %i.js, label %bb.fz [
    i8 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskxN0Kp1MEon_2h25frame5FrameECskeugdADtBsi_12pingora_core.exit.i
    i8 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskxN0Kp1MEon_2h25frame5FrameECskeugdADtBsi_12pingora_core.exit.i
    i8 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskxN0Kp1MEon_2h25frame5FrameECskeugdADtBsi_12pingora_core.exit.i
  ]

bb.ci:                                            ; preds = %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.s, ptr noundef nonnull align 8 dereferenceable(296) %i.ar, i64 296, i1 false), !noalias !384
  invoke void @_RINvMNtCskxN0Kp1MEon_2h25frameNtB3_5Frame3mapNCINvMNtNtNtB5_5proto7streams10prioritizeNtBN_10Prioritize9pop_frameNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEs1_0INtBN_11PrioritizedB1N_EECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %i.s)
          to label %bb.gx unwind label %.loopexit.split-lp329.i, !noalias !385

bb.cj:                                            ; preds = %_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !384
end_hunk_0
begin_hunk_1_@_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvNtNtNtCskeugdADtBsi_12pingora_core10connectors4http2v29handshake00EB1g_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB19_16SubrequestHandle11drain_tasks0EB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB1E_16SubrequestHandle11drain_tasks0EB1M_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB1r_16SubrequestHandle11drain_tasks0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1b_18TransportConnector14release_stream0EB1d_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(360) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1G_18TransportConnector14release_stream0EB1I_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1t_18TransportConnector14release_stream0EB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1b_6Server11run_service0EB1d_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(336) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1G_6Server11run_service0EB1I_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1t_6Server11run_service0EB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs1u7m7dv2nU3_10tokio_util5codec16length_delimitedNtB6_7Builder8new_readINtNtNtCskxN0Kp1MEon_2h25codec12framed_write11FramedWriteINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB1r_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEB2T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([480 x i8]) align 8 captures(none) dereferenceable(480) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(368) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [368 x i8], align 8               ; 4 uses
  %i.c = alloca [480 x i8], align 8               ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [368 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.e, ptr noundef nonnull align 8 dereferenceable(368) %2, i64 368, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs2_NtNtCs1u7m7dv2nU3_10tokio_util5codec16length_delimitedNtB5_7Builder9new_codec(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.b, ptr noundef nonnull align 8 dereferenceable(368) %2, i64 368, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  invoke void @_RNvXNtNtCs1u7m7dv2nU3_10tokio_util5codec11framed_implNtB2_9ReadFrameNtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.e unwind label %bb.c, !noalias !632

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write11FramedWriteINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(368) %i.b) #24
          to label %.body unwind label %bb.d, !noalias !632

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !632
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.h, ptr noundef nonnull align 8 dereferenceable(368) %2, i64 368, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(480) %i.c, i64 480, i1 false), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body4

bb.f:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write11FramedWriteINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(368) %i.e) #24
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams6bufferNtB5_5Deque9pop_frontNtNtBb_5frame5FrameECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [312 x i8], align 8               ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !15
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !644, !noundef !15
  %i.j = icmp ult i64 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !644, !nonnull !15, !noundef !15
  %i.m = getelementptr inbounds nuw [312 x i8], ptr %i.l, i64 %i.e ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !range !21, !noalias !645, !noundef !15 ; 4 uses
  %.not.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i, label %bb.d, label %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22, !noalias !646
  unreachable

_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !644, !noundef !15
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa.0.0..sroa_idx.i.i, i64 304, i1 false), !noalias !642
  store i64 2, ptr %i.m, align 8, !noalias !645
  store i64 %i.p, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i, align 8, !noalias !645
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !644, !noundef !15
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !644
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !644
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !641
  %i.t = icmp eq i64 %i.e, %i.g
  br i1 %i.t, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  ret void

bb.g:                                             ; preds = %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit
  %i.u = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 0, ptr %i.a, align 8
  %i.v = trunc nuw i64 %i.n to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !27

bb.h:                                             ; preds = %_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBI_5frame5FrameEE6removeCskeugdADtBsi_12pingora_core.exit
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !27

bb.i:                                             ; preds = %bb.g
  store i64 1, ptr %1, align 8
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(312) %i.a) #24
          to label %bb.q unwind label %bb.p

bb.l:                                             ; preds = %bb.n, %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.x, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.n:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #26
          to label %bb.l unwind label %bb.k

bb.o:                                             ; preds = %bb.h
  store i64 0, ptr %1, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.q:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendNtB2s_4SyncEL_EEEECskeugdADtBsi_12pingora_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !31, !invariant.load !15 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendNtB2s_4SyncEL_EEEECskeugdADtBsi_12pingora_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !32, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendNtB2s_4SyncEL_EEEECskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !31, !invariant.load !15 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendNtB1D_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !32, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #27
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendNtB1D_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendNtB1D_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendNtB2s_4SyncEL_EEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtB1c_5frame5FrameEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !15
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.d = load i8, ptr %i.c, align 8, !range !23, !alias.scope !667, !noundef !15
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 3, label %bb.e
    i8 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !671, !noundef !15
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !671, !nonnull !15, !align !17, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !671, !nonnull !15, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !671, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !671, !noundef !15
  tail call void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n), !noalias !671, !inline_history !657
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame7headers11HeaderBlockECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame7headers11HeaderBlockECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !675, !noundef !15
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !675, !nonnull !15, !align !17, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !675, !nonnull !15, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !675, !noundef !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !675, !noundef !15
  tail call void %i.v(ptr noundef %i.s, ptr noundef %i.x, i64 noundef %i.z), !noalias !675, !inline_history !664
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer4SlotNtNtBK_5frame5FrameEECskeugdADtBsi_12pingora_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskxN0Kp1MEon_2h25codec12framed_write4NextINtNtNtNtB14_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.b = load i8, ptr %i.a, align 1, !range !28, !noundef !15 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write4NextINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write4NextINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %.not.i = icmp eq i8 %i.b, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !695, !noundef !15
  %i.f = load ptr, ptr %0, align 8, !alias.scope !695, !nonnull !15, !align !17, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !695, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !695, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !695, !noundef !15
  tail call void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l), !noalias !695, !inline_history !688
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write4NextINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskxN0Kp1MEon_2h25codec12framed_write4NextINtNtNtNtBI_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2awuzAz5vY4_5tokio7runtime5TimerEECskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !15
  %i.b = icmp eq i64 %i.a, 2
end_hunk_1
