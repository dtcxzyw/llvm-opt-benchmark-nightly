Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.09?download=true
inline.NumInlined: 1007
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE4pollB1D_:bb.a
  %.sroa.022.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.022.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ic = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.8688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  br label %.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit87: ; preds = %.body, %bb.r, %bb.q
  %.pn76 = phi { ptr, i32 } [ %i.ie, %bb.q ], [ %.pn, %bb.r ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dm) #24
          to label %.body164 unwind label %bb.im

bb.q:                                             ; preds = %bb.il, %bb.o
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit87

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ih, %bb.ic, %bb.ht, %.body.i, %bb.gl, %bb.gn, %bb.ai, %.body.i.i, %bb.am, %bb.di, %bb.du, %bb.ek, %bb.ey, %bb.fl
  %.pn = phi { ptr, i32 } [ %i.ry, %bb.gl ], [ %i.sn, %bb.gn ], [ %lpad.thr_comm173.i.i, %bb.du ], [ %i.uv, %bb.ic ], [ %.pn57.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ai ], [ %.pn57.i.i, %bb.am ], [ %i.pi, %bb.ey ], [ %i.qm, %bb.fl ], [ %lpad.thr_comm.i.i, %bb.di ], [ %lpad.thr_comm181.i.i, %bb.ek ], [ %i.ry, %.body.i ], [ %lpad.thr_comm.i, %bb.ih ], [ %i.uh, %bb.ht ], [ %lpad.loopexit.split-lp1053, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.if = load i64, ptr %i.dm, align 8, !range !21, !noalias !3677, !noundef !15
  %.not.i.i85 = icmp eq i64 %i.if, 2
  br i1 %.not.i.i85, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit87, label %bb.r

bb.r:                                             ; preds = %.body
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ig)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit87 unwind label %bb.im

.backedge:                                        ; preds = %.backedge.backedge, %bb.p
  %i.ih = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.backedge
  %i.ij = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ij, label %bb.t [
    i8 0, label %bb.x
    i8 1, label %bb.u
    i8 2, label %bb.u
  ], !prof !20

bb.t:                                             ; preds = %bb.s
  %i.ik = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.v
  %.sroa.014.0 = phi i8 [ %i.ik, %bb.v ], [ %i.ij, %bb.s ], [ %i.ij, %bb.s ]
  %i.il = load ptr, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !nonnull !15, !align !17, !noundef !15
  %i.im = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.il, i8 noundef %.sroa.014.0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %i.in = icmp eq i8 %i.ik, 0
  br i1 %i.in, label %bb.x, label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.im, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.s, %.backedge, %_RNCNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBa_6client4PeerE4poll0B1F_.exit, %bb.w
  %i.io = load i8, ptr %i.el, align 8, !range !35, !noundef !15
  switch i8 %i.io, label %default.unreachable719 [
    i8 0, label %bb.z
    i8 1, label %bb.iz
    i8 2, label %bb.gj
  ]

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %i.ip = load ptr, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr %i.el, ptr %i.di, align 8
  store ptr %i.di, ptr %i.dj, align 8
  store ptr @123, ptr %i.em, align 8
  store i64 1, ptr %i.dk, align 8
  store ptr %i.dj, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  store ptr %i.iq, ptr %.sroa.417.0..sroa_idx, align 8
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dk)
          to label %_RNCNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBa_6client4PeerE4poll0B1F_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBa_6client4PeerE4poll0B1F_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12104.i)
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE27clear_expired_reset_streamsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.z, %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.er, align 8, !alias.scope !3683 ; 5 uses
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3683 ; 3 uses
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3683 ; 3 uses
  %.sroa.6.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3683 ; 3 uses
  %.sroa.6.sroa.8.0.copyload.i.i.i = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !3683
  %i.ir = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3683
  store ptr null, ptr %i.er, align 8, !alias.scope !3683
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.noexc90
  %i.is = load i8, ptr %i.et, align 1, !range !28, !alias.scope !3684, !noundef !15
  %.not.i.i.i.i = icmp eq i8 %i.is, -1
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.it = load i64, ptr %i.eu, align 8, !alias.scope !3684, !noundef !15
  %i.iu = load i64, ptr %i.ev, align 8, !alias.scope !3684, !noundef !15
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = load i64, ptr %i.ew, align 8, !alias.scope !3684, !noundef !15
  %.not7.i.i.i.i = icmp ult i64 %i.iv, %i.iw
  br i1 %.not7.i.i.i.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ix = invoke { i64, ptr } @_RNvMNtNtCskxN0Kp1MEon_2h25codec12framed_writeINtB2_11FramedWriteINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE5flushB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %i.es, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i.i unwind label %bb.ai, !noalias !3685 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.iy = extractvalue { i64, ptr } %i.ix, 0
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %.thread210, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i.i.i
  %i.ja = extractvalue { i64, ptr } %i.ix, 1      ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not8.i.i.i.i, label %bb.ae, label %bb.ci

bb.ae:                                            ; preds = %bb.ad
  %i.jb = load i8, ptr %i.et, align 1, !range !28, !alias.scope !3684, !noundef !15
  %.not9.i.i.i.i = icmp eq i8 %i.jb, -1
  br i1 %.not9.i.i.i.i, label %bb.af, label %.thread210

bb.af:                                            ; preds = %bb.ae
  %i.jc = load i64, ptr %i.eu, align 8, !alias.scope !3684, !noundef !15
  %i.jd = load i64, ptr %i.ev, align 8, !alias.scope !3684, !noundef !15
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = load i64, ptr %i.ew, align 8, !alias.scope !3684, !noundef !15
  %.not10.i.i.i.i = icmp ult i64 %i.je, %i.jf
  br i1 %.not10.i.i.i.i, label %.thread210, label %bb.ah

bb.ag:                                            ; preds = %.noexc90
  %i.jg = load i8, ptr %i.ey, align 4, !alias.scope !3683
  %i.jh = trunc nuw i8 %i.jg to i1
  %i.ji = load i32, ptr %i.ez, align 8, !range !41, !alias.scope !3679
  %i.jj = trunc nuw i32 %i.ji to i1
  %or.cond.i = select i1 %i.jh, i1 %i.jj, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.ak

bb.ah:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !3686
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ex, align 8, !noalias !3686
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.484.0..sroa_idx.i.i.i, align 8, !noalias !3686
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.585.0..sroa_idx.i.i.i, align 8, !noalias !3686
  store ptr %.sroa.6.sroa.6.0.copyload.i.i.i, ptr %.sroa.686.0..sroa_idx.i.i.i, align 8, !noalias !3686
  store <2 x i32> %i.ir, ptr %.sroa.787.0..sroa_idx.i.i.i, align 8, !noalias !3686
  store i8 6, ptr %i.cu, align 8, !noalias !3686
  %i.jk = invoke noundef i8 @_RNvMs_NtNtCskxN0Kp1MEon_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE6bufferCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.cu)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc91:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !3686
  %.not.i44.i.i.i = icmp eq i8 %i.jk, -1
  br i1 %.not.i44.i.i.i, label %bb.cj, label %.noexc45.i.i.i, !prof !27

.noexc45.i.i.i:                                   ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !3687
  store i8 %i.jk, ptr %i.ct, align 1, !noalias !3687
  br label %.noexc45.i.i.i.invoke

.noexc45.i.i.i.invoke:                            ; preds = %.noexc100, %.noexc45.i.i.i
  %i.jl = phi ptr [ @5, %.noexc45.i.i.i ], [ @72, %.noexc100 ]
  %i.jm = phi i64 [ 20, %.noexc45.i.i.i ], [ 14, %.noexc100 ]
  %i.jn = phi ptr [ %i.ct, %.noexc45.i.i.i ], [ %i.a, %.noexc100 ]
  %i.jo = phi ptr [ @63, %.noexc45.i.i.i ], [ @64, %.noexc100 ]
  %i.jp = phi ptr [ @7, %.noexc45.i.i.i ], [ @74, %.noexc100 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jm, ptr noundef nonnull %i.jn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jp) #22
          to label %.noexc45.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.i.i.i.cont:                              ; preds = %.noexc45.i.i.i.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !3688, !nonnull !15, !noundef !15
  invoke void %i.jr(ptr noundef %.sroa.6.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.sroa.5.0.copyload.i.i.i)
          to label %.body unwind label %bb.aj, !noalias !3685, !inline_history !10

bb.aj:                                            ; preds = %bb.ai
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3685
  unreachable

.thread.i:                                        ; preds = %bb.ag
  %i.jt = load i32, ptr %i.fa, align 8, !alias.scope !3683, !noundef !15
  br label %.loopexit.i

.thread210:                                       ; preds = %.noexc.i.i.i, %bb.ae, %bb.af
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.er, align 8, !alias.scope !3683
  store i8 -2, ptr %i.dh, align 8, !alias.scope !3678
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i)
  br label %bb.gq

bb.ak:                                            ; preds = %bb.cj, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !3690
  %i.ju = load i64, ptr %i.do, align 8, !range !21, !alias.scope !3691, !noundef !15
  %.not.i.i89 = icmp eq i64 %i.ju, 2
  br i1 %.not.i.i89, label %.noexc93, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.i.i:                                        ; preds = %bb.br, %bb.an, %bb.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i
  %.pn57.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i ], [ %i.li, %bb.cc ], [ %i.jw, %bb.an ], [ %i.ky, %bb.br ] ; 2 uses
  %i.jv = load i64, ptr %i.do, align 8, !range !21, !alias.scope !3691, !noalias !3692, !noundef !15
  %.not.i.i.i85.i = icmp eq i64 %i.jv, 2
  br i1 %.not.i.i.i85.i, label %.body, label %bb.am

bb.am:                                            ; preds = %.body.i.i
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %.body unwind label %bb.ch, !noalias !3693

bb.an:                                            ; preds = %bb.bu, %bb.cf, %bb.at, %bb.aq, %bb.ap
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.noexc93:                                         ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !3694
  %i.jx = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3694
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.ao, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ar, %bb.ao, %.noexc93
  store i64 2, ptr %i.cs, align 8, !noalias !3694
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3694
  br label %bb.aw

bb.ao:                                            ; preds = %.noexc93
  %i.jz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, i64 16) monotonic, align 8, !noalias !3694 ; 3 uses
  switch i8 %i.jz, label %bb.ap [
    i8 0, label %.thread.i.i
    i8 1, label %bb.aq
    i8 2, label %bb.aq
  ], !prof !20

bb.ap:                                            ; preds = %bb.ao
  %i.ka = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE)
          to label %bb.ar unwind label %bb.an, !noalias !3693 ; 2 uses

bb.aq:                                            ; preds = %bb.ao, %bb.ar, %bb.ao
  %.sroa.05.0.i.i = phi i8 [ %i.ka, %bb.ar ], [ %i.jz, %bb.ao ], [ %i.jz, %bb.ao ]
  %i.kb = load ptr, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !noalias !3694, !nonnull !15, !align !17, !noundef !15
  %i.kc = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kb, i8 noundef %.sroa.05.0.i.i)
          to label %bb.as unwind label %bb.an, !noalias !3693

bb.ar:                                            ; preds = %bb.ap
  %.not50.i.i = icmp eq i8 %i.ka, 0
  br i1 %.not50.i.i, label %.thread.i.i, label %bb.aq

bb.as:                                            ; preds = %bb.aq
  br i1 %i.kc, label %bb.at, label %.thread.i.i

bb.at:                                            ; preds = %bb.as
  %i.kd = load ptr, ptr @_RNvNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !noalias !3694, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !3694
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 48
  store i64 1, ptr %i.cr, align 8, !noalias !3694
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !3694
  store i64 0, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !3694
  store ptr %i.ke, ptr %i.fc, align 8, !noalias !3694
  invoke void @_RNvMNtCs6kPMvhw0TuU_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr)
          to label %bb.au unwind label %bb.an, !noalias !3693

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !3694
  %.pr.i.i = load i64, ptr %i.cs, align 8, !noalias !3694
  %.not51.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not51.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %bb.aw unwind label %bb.ax, !noalias !3693

bb.aw:                                            ; preds = %bb.av, %bb.au, %.thread.i.i
  %i.kf = invoke { i64, ptr } @_RINvMNtNtCskxN0Kp1MEon_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1)
          to label %bb.ba unwind label %bb.ay, !noalias !3693 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn.i.i = phi { ptr, i32 } [ %i.kg, %bb.ax ], [ %i.kh, %bb.az ], [ %i.kh, %bb.ay ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #24
          to label %.body.i.i unwind label %bb.ch, !noalias !3693

bb.ax:                                            ; preds = %bb.by, %bb.bp, %bb.av
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i

bb.ay:                                            ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.bg, %bb.bd, %bb.bc, %bb.aw
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load i64, ptr %i.cs, align 8, !range !21, !noalias !3695, !noundef !15
  %.not.i.i64.i.i = icmp eq i64 %i.ki, 2
  br i1 %.not.i.i64.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i unwind label %bb.ch, !noalias !3693

bb.ba:                                            ; preds = %bb.aw
  %i.kj = extractvalue { i64, ptr } %i.kf, 0
  %i.kk = extractvalue { i64, ptr } %i.kf, 1      ; 2 uses
  %i.kl = trunc nuw i64 %i.kj to i1
  br i1 %i.kl, label %bb.bx, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not52.i.i = icmp eq ptr %i.kk, null
  br i1 %.not52.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !3694
  invoke void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noundef nonnull %i.kk)
          to label %bb.ca unwind label %bb.ay, !noalias !3693

bb.bd:                                            ; preds = %bb.bb
  %i.km = invoke { i64, ptr } @_RINvMNtNtCskxN0Kp1MEon_2h25proto9ping_pongNtB3_8PingPong17send_pending_pingINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1)
          to label %bb.be unwind label %bb.ay, !noalias !3693 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.kn = extractvalue { i64, ptr } %i.km, 0
  %i.ko = extractvalue { i64, ptr } %i.km, 1      ; 2 uses
  %i.kp = trunc nuw i64 %i.kn to i1
  br i1 %i.kp, label %bb.bx, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not53.i.i = icmp eq ptr %i.ko, null
  br i1 %.not53.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !3694
  invoke void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noundef nonnull %i.ko)
          to label %bb.bz unwind label %bb.ay, !noalias !3693

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings9poll_sendINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB35_NtNtB7_6client4PeerEB1F_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %bb.bi unwind label %bb.ay, !noalias !3693

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load i8, ptr %i.cq, align 8, !range !3696, !noalias !3694, !noundef !15 ; 3 uses
  switch i8 %i.kq, label %bb.bj [
    i8 -2, label %bb.bx
    i8 -1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx.i.i, i64 39, i1 false), !noalias !3690
  br label %bb.bx

bb.bk:                                            ; preds = %bb.bi
  %i.kr = invoke { i64, ptr } @_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB3_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB9_6client4PeerE20send_pending_refusalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEB2U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1)
          to label %bb.bl unwind label %bb.ay, !noalias !3693 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1      ; 2 uses
  %i.ku = trunc nuw i64 %i.ks to i1
  br i1 %i.ku, label %bb.bx, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not55.i.i = icmp eq ptr %i.kt, null
  br i1 %.not55.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !3694
  invoke void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noundef nonnull %i.kt)
          to label %bb.bw unwind label %bb.ay, !noalias !3693

bb.bo:                                            ; preds = %bb.bm
  %i.kv = load i64, ptr %i.cs, align 8, !range !21, !noalias !3693, !noundef !15
  %.not.i.i67.i.i = icmp eq i64 %i.kv, 2
  br i1 %.not.i.i67.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit69.i.i unwind label %bb.ax, !noalias !3693

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit69.i.i: ; preds = %bb.bp
  %.pr204 = load i64, ptr %i.cs, align 8, !alias.scope !3697, !noalias !3693 ; 2 uses
  %.not.i.i171 = icmp eq i64 %.pr204, 2
  br i1 %.not.i.i171, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit69.i.i
  %i.kw = load i64, ptr %i.fd, align 8, !range !26, !alias.scope !3698, !noalias !3693, !noundef !15
  %i.kx = invoke noundef zeroext i1 @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.kw)
          to label %bb.bs unwind label %bb.br, !noalias !3693 ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6kPMvhw0TuU_7tracing4span5InnerEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #24
          to label %.body.i.i unwind label %bb.bv, !noalias !3693

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !3699), !noalias !3693
  call void @llvm.experimental.noalias.scope.decl(metadata !3700), !noalias !3693
  call void @llvm.experimental.noalias.scope.decl(metadata !3701), !noalias !3693
  call void @llvm.experimental.noalias.scope.decl(metadata !3702), !noalias !3693
  %i.kz = icmp eq i64 %.pr204, 0
  br i1 %i.kz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !3703), !noalias !3693
  call void @llvm.experimental.noalias.scope.decl(metadata !3704), !noalias !3693
  %i.la = load ptr, ptr %i.fg, align 8, !alias.scope !3705, !noalias !3693, !nonnull !15, !noundef !15
  %i.lb = atomicrmw add ptr %i.la, i64 -1 release, align 8, !noalias !3706
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %bb.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !noalias !3693
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsh7gMfcBfOe7_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fg) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175 unwind label %bb.an

bb.bv:                                            ; preds = %bb.br
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3693
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175: ; preds = %bb.bo, %bb.bt, %bb.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit69.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3694
  %i.le = load i64, ptr %i.do, align 8, !range !21, !alias.scope !3691, !noalias !3707, !noundef !15
  %.not.i.i70.i.i = icmp eq i64 %i.le, 2
  br i1 %.not.i.i70.i.i, label %.thread167.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i

.thread167.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !3690
  br label %bb.cl

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175
  %.sroa.0101.1.i = phi i8 [ %.sroa.0101.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit175 ]
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bn
  %.sroa.0101.0.copyload103.i = load i8, ptr %i.cn, align 8, !noalias !3708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx106.i, i64 39, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !3694
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %bb.bz, %bb.bw, %bb.bl, %bb.bj, %bb.bi, %bb.be, %bb.ba
  %.sroa.0101.0.i = phi i8 [ %.sroa.0101.0.copyload.i, %bb.ca ], [ -2, %bb.ba ], [ -2, %bb.bl ], [ -2, %bb.be ], [ %.sroa.0101.0.copyload103.i, %bb.bw ], [ %.sroa.0101.0.copyload102.i, %bb.bz ], [ %i.kq, %bb.bj ], [ %i.kq, %bb.bi ] ; 2 uses
  %i.lf = load i64, ptr %i.cs, align 8, !range !21, !noalias !3694, !noundef !15
  %.not.i.i72.i.i = icmp eq i64 %i.lf, 2
  br i1 %.not.i.i72.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit74.i.i unwind label %bb.ax, !noalias !3693

bb.bz:                                            ; preds = %bb.bg
  %.sroa.0101.0.copyload102.i = load i8, ptr %i.co, align 8, !noalias !3708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx105.i, i64 39, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !3694
  br label %bb.bx

bb.ca:                                            ; preds = %bb.bc
  %.sroa.0101.0.copyload.i = load i8, ptr %i.cp, align 8, !noalias !3708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx.i, i64 39, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !3694
  br label %bb.bx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit74.i.i: ; preds = %bb.by
  %.pr81.i.i = load i64, ptr %i.cs, align 8, !alias.scope !3709, !noalias !3694 ; 2 uses
  %.not.i.i75.i.i = icmp eq i64 %.pr81.i.i, 2
  br i1 %.not.i.i75.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit74.i.i
  %i.lg = load i64, ptr %i.fd, align 8, !range !26, !alias.scope !3710, !noalias !3694, !noundef !15
  %i.lh = invoke noundef zeroext i1 @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.lg)
          to label %bb.cd unwind label %bb.cc, !noalias !3693 ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6kPMvhw0TuU_7tracing4span5InnerEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #24
          to label %.body.i.i unwind label %bb.cg, !noalias !3693

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.lj = icmp eq i64 %.pr81.i.i, 0
  br i1 %i.lj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  %i.lk = load ptr, ptr %i.fg, align 8, !alias.scope !3717, !noalias !3694, !nonnull !15, !noundef !15
  %i.ll = atomicrmw add ptr %i.lk, i64 -1 release, align 8, !noalias !3718
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsh7gMfcBfOe7_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fg) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.an, !noalias !3693

bb.cg:                                            ; preds = %bb.cc
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3693
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit74.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3694
  %i.lo = load i64, ptr %i.do, align 8, !range !21, !alias.scope !3691, !noalias !3719, !noundef !15
  %.not.i.i77.i.i = icmp eq i64 %i.lo, 2
  br i1 %.not.i.i77.i.i, label %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i

bb.ch:                                            ; preds = %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit66.i.i, %bb.am
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3693
  unreachable

_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i
  %.sroa.0101.2.i = phi i8 [ %.sroa.0101.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.0101.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !3690
  switch i8 %.sroa.0101.2.i, label %bb.ck [
    i8 -2, label %.loopexit225
    i8 -1, label %bb.cl
  ]

bb.ci:                                            ; preds = %bb.ad
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !3720, !nonnull !15, !noundef !15
  invoke void %i.lr(ptr noundef %.sroa.6.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.sroa.5.0.copyload.i.i.i)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3551

.noexc95:                                         ; preds = %bb.ci
  invoke void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dh, ptr noundef nonnull %i.ja)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %.noexc91
  %.val.pre.i = load ptr, ptr %i.er, align 8, !alias.scope !3679
  %.val83.pre.i = load i8, ptr %i.ey, align 4, !alias.scope !3679
  %i.ls = icmp eq ptr %.val.pre.i, null
  %i.lt = trunc nuw i8 %.val83.pre.i to i1
  %i.lu = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %i.lu, label %.loopexit.i, label %bb.ak

.loopexit.i:                                      ; preds = %bb.cj, %.thread.i
  %.sroa.12.0.ph.ph514.i = phi i32 [ %i.jt, %.thread.i ], [ %.sroa.6.sroa.8.0.copyload.i.i.i, %bb.cj ]
  %.val84.i = load i8, ptr %i.gs, align 1, !range !19, !alias.scope !3679, !noundef !15
  %i.lv = trunc nuw i8 %.val84.i to i1
  br i1 %i.lv, label %.thread211, label %bb.gi

bb.ck:                                            ; preds = %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.459.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, i64 39, i1 false), !noalias !3721
  br label %.loopexit225

bb.cl:                                            ; preds = %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i, %.thread167.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !3690
  call void @llvm.experimental.noalias.scope.decl(metadata !3722)
  call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  store ptr %i.el, ptr %i.cy, align 8, !alias.scope !3722, !noalias !3690
  store ptr %i.er, ptr %i.fi, align 8, !alias.scope !3722, !noalias !3690
  %i.lw = load <2 x ptr>, ptr %i.eq, align 8, !alias.scope !3724
  %i.lx = getelementptr inbounds nuw i8, <2 x ptr> %i.lw, i64 16
  store <2 x ptr> %i.lx, ptr %i.fj, align 8, !alias.scope !3722, !noalias !3690
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3722, !noalias !3690
  store ptr %i.fh, ptr %i.fk, align 8, !alias.scope !3722, !noalias !3690
  store ptr %i.fe, ptr %i.fl, align 8, !alias.scope !3722, !noalias !3690
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !3690
  invoke void @_RNvXs1_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtCskuYkQcunIyP_12futures_core6stream6Stream9poll_nextB1k_(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(address) dereferenceable(296) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.cl
  %i.ly = load i8, ptr %i.cx, align 8, !range !3725, !noalias !3690, !noundef !15 ; 2 uses
  switch i8 %i.ly, label %bb.cn [
    i8 -3, label %bb.cm
    i8 -2, label %.thread170.i
    i8 -1, label %bb.ga
  ]

.thread170.i:                                     ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, i64 32, i1 false), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx487.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !noalias !3690
  %i.lz = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.co, label %bb.cr

bb.cm:                                            ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3690
  store i8 -2, ptr %i.dh, align 8, !alias.scope !3678
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.gh

bb.cn:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.467.0..sroa_idx.i, i64 3, i1 false), !noalias !3690
  %.sroa.467.sroa.4.0.copyload.i = load i32, ptr %.sroa.467.sroa.4.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !noalias !3690 ; 13 uses
  %.sroa.467.sroa.5.0.copyload.i = load i32, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !noalias !3690 ; 17 uses
  %.sroa.467.sroa.6.sroa.0.0.copyload.i = load i32, ptr %.sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !noalias !3690 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.568.0..sroa_idx.i, i64 248, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx487.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !noalias !3690
  call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  switch i8 %i.ly, label %default.unreachable.i.i [
    i8 8, label %bb.cx
    i8 0, label %bb.cy
    i8 1, label %bb.dk
    i8 2, label %bb.ct
    i8 3, label %bb.ea
    i8 4, label %bb.cu
    i8 5, label %bb.cv
    i8 6, label %bb.ez
    i8 7, label %bb.cw
  ]

default.unreachable.i.i:                          ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %.thread170.i
  %i.mb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3726 ; 3 uses
  switch i8 %i.mb, label %bb.cp [
    i8 0, label %bb.cr
    i8 1, label %bb.cq
    i8 2, label %bb.cq
  ], !prof !20

bb.cp:                                            ; preds = %bb.co
  %i.mc = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE) #23
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc98:                                         ; preds = %bb.cp
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.co, %.noexc98, %bb.co
  %.sroa.095.0.i.i = phi i8 [ %i.mc, %.noexc98 ], [ %i.mb, %bb.co ], [ %i.mb, %bb.co ]
  %i.me = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !noalias !3726, !nonnull !15, !align !17, !noundef !15
  %i.mf = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.me, i8 noundef %.sroa.095.0.i.i)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.cq
  br i1 %i.mf, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.noexc102, %.noexc99, %.noexc98, %bb.co, %.thread170.i
  %i.mg = invoke noundef zeroext i1 @_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE8recv_eofCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i1 noundef zeroext false)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.cr
  br i1 %i.mg, label %.noexc45.i.i.i.invoke, label %.thread206, !prof !16

bb.cs:                                            ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3726
  %i.mh = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !noalias !3726, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3726
  store <2 x ptr> <ptr @71, ptr inttoptr (i64 25 to ptr)>, ptr %i.ah, align 16, !noalias !3726
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !3726
  store ptr @10, ptr %i.fm, align 8, !noalias !3726
  store i64 1, ptr %i.aj, align 8, !noalias !3726
  store ptr %i.ai, ptr %.sroa.097.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3726
  store i64 1, ptr %.sroa.097.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3726
  store ptr %i.mi, ptr %.sroa.498.0..sroa_idx.i.i, align 8, !noalias !3726
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3726
  br label %bb.cr

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3726
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.ao, align 4, !noalias !3728
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8114.4..sroa_idx115.i, align 4, !noalias !3728
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx121.i, align 4, !noalias !3728
  %i.mj = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.dv, label %bb.dy

bb.cu:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3726
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.bl, align 4, !noalias !3728
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8114.4..sroa_idx.i, align 4, !noalias !3728
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx.i, align 4, !noalias !3728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.0..sroa.14.4..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.i, i64 48, i1 false), !noalias !3728
  %i.ml = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.el, label %bb.gb

bb.cv:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.az, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, i64 3, i1 false), !noalias !3690
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %.sroa.4110.1..sroa_idx.i, align 1, !noalias !3728
  %.sroa.8114.0.extract.trunc.i = trunc i32 %.sroa.467.sroa.5.0.copyload.i to i16
  store i16 %.sroa.8114.0.extract.trunc.i, ptr %.sroa.8114.1..sroa_idx.i, align 1, !noalias !3728
  %i.mn = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %bb.ep, label %bb.es

bb.cw:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3726
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.au, align 4, !noalias !3726
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.fn, align 4, !noalias !3726
  %i.mp = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %bb.fm, label %bb.fp

bb.cx:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !3726
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.by, align 4, !noalias !3726
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.gm, align 4, !noalias !3726
  %i.mr = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3726
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.ft, label %bb.fw

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE4pollB1D_:bb.a
  invoke void @_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE18recv_window_updateCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i32 noundef %i.qz, i32 noundef %i.qy)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %bb.fp
  %i.ra = load i8, ptr %i.ap, align 8, !range !28, !noalias !3726, !noundef !15
  %.not158.i.i = icmp eq i8 %i.ra, -1
  br i1 %.not158.i.i, label %bb.fs, label %bb.fr

bb.fq:                                            ; preds = %.noexc122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3726
  %i.rb = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames5_10___CALLSITE, align 8, !noalias !3726, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3726
  store <2 x ptr> <ptr @91, ptr inttoptr (i64 37 to ptr)>, ptr %i.ar, align 16, !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3726
  store ptr %i.au, ptr %i.aq, align 8, !noalias !3726
  store ptr %i.ar, ptr %i.as, align 8, !noalias !3726
  store ptr @10, ptr %i.fo, align 8, !noalias !3726
  store ptr %i.aq, ptr %i.fp, align 8, !noalias !3726
  store ptr @92, ptr %i.fq, align 8, !noalias !3726
  store i64 1, ptr %i.at, align 8, !noalias !3726
  store ptr %i.as, ptr %.sroa.077.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3726
  store i64 2, ptr %.sroa.077.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3726
  store ptr %i.rc, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !3726
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3726
  %.pre192.i.i = load i32, ptr %i.au, align 4, !noalias !3726
  %.pre193.i.i = load i32, ptr %i.fn, align 4, !noalias !3726
  br label %bb.fp

bb.fr:                                            ; preds = %.noexc123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3726
  br label %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection10recv_frameCskeugdADtBsi_12pingora_core.exit.i

bb.fs:                                            ; preds = %.noexc123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3726
  br label %.thread206

bb.ft:                                            ; preds = %bb.cx
  %i.rd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3726 ; 3 uses
  switch i8 %i.rd, label %bb.fu [
    i8 0, label %bb.fw
    i8 1, label %bb.fv
    i8 2, label %bb.fv
  ], !prof !20

bb.fu:                                            ; preds = %bb.ft
  %i.re = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE) #23
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc125:                                        ; preds = %bb.fu
  %i.rf = icmp eq i8 %i.re, 0
  br i1 %i.rf, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %.noexc125, %bb.ft
  %.sroa.025.0.i.i = phi i8 [ %i.re, %.noexc125 ], [ %i.rd, %bb.ft ], [ %i.rd, %bb.ft ]
  %i.rg = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !3726, !nonnull !15, !align !17, !noundef !15
  %i.rh = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rg, i8 noundef %.sroa.025.0.i.i)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.fv
  br i1 %i.rh, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.noexc128, %.noexc126, %.noexc125, %bb.ft, %bb.cx
  %i.ri = phi i32 [ %.sroa.467.sroa.5.0.copyload.i, %.noexc125 ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.ft ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.cx ], [ %.pre191.i.i, %.noexc128 ], [ %.sroa.467.sroa.5.0.copyload.i, %.noexc126 ]
  %i.rj = phi i32 [ %.sroa.467.sroa.4.0.copyload.i, %.noexc125 ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.ft ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.cx ], [ %.pre.i.i, %.noexc128 ], [ %.sroa.467.sroa.4.0.copyload.i, %.noexc126 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3726
  invoke void @_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10recv_resetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i32 noundef %i.rj, i32 noundef %i.ri)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.fw
  %i.rk = load i8, ptr %i.bt, align 8, !range !28, !noalias !3726, !noundef !15
  %.not157.i.i = icmp eq i8 %i.rk, -1
  br i1 %.not157.i.i, label %bb.fz, label %bb.fy

bb.fx:                                            ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !3726
  %i.rl = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !3726, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3726
  store <2 x ptr> <ptr @93, ptr inttoptr (i64 31 to ptr)>, ptr %i.bv, align 16, !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3726
  store ptr %i.by, ptr %i.bu, align 8, !noalias !3726
  store ptr %i.bv, ptr %i.bw, align 8, !noalias !3726
  store ptr @10, ptr %i.gn, align 8, !noalias !3726
  store ptr %i.bu, ptr %i.go, align 8, !noalias !3726
  store ptr @94, ptr %i.gp, align 8, !noalias !3726
  store i64 1, ptr %i.bx, align 8, !noalias !3726
  store ptr %i.bw, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3726
  store i64 2, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3726
  store ptr %i.rm, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !3726
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx)
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128:                                        ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !3726
  %.pre.i.i = load i32, ptr %i.by, align 4, !noalias !3726
  %.pre191.i.i = load i32, ptr %i.gm, align 4, !noalias !3726
  br label %bb.fw

bb.fy:                                            ; preds = %.noexc127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 40, i1 false), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !3726
  br label %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection10recv_frameCskeugdADtBsi_12pingora_core.exit.i

bb.fz:                                            ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !3726
  br label %.thread206

bb.ga:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !3690
  %i.rn = load <2 x i32>, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !3721
  store <2 x i32> %i.rn, ptr %i.dh, align 8, !alias.scope !3678
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.gh

_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection10recv_frameCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.fy, %bb.fr, %.noexc120, %bb.ei, %bb.ds, %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, i64 40, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, i64 40, i1 false), !noalias !3721
  br label %bb.gh

.thread206:                                       ; preds = %bb.dh, %bb.dt, %bb.dy, %bb.ej, %bb.ev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit.i.i, %bb.fs, %bb.fz, %.noexc100
  %.sroa.15108.0.ph.i.ph = phi i32 [ 3, %.noexc100 ], [ 2, %bb.fz ], [ 2, %bb.fs ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit.i.i ], [ 2, %bb.ev ], [ 2, %bb.ej ], [ 2, %bb.dy ], [ 2, %bb.dt ], [ 2, %bb.dh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.gc

bb.gb:                                            ; preds = %bb.cu, %bb.el, %.noexc109, %.noexc110, %.noexc111
  %.sroa.15108.4.copyload.i = load i32, ptr %i.bl, align 4, !noalias !3730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.8114.4..sroa_idx.i, i64 56, i1 false), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3726
  %i.ro = freeze i32 %.sroa.15108.4.copyload.i    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.rp = icmp ugt i32 %i.ro, 1
  br i1 %i.rp, label %bb.gc, label %.thread178.i

bb.gc:                                            ; preds = %.thread206, %bb.gb
  %.sroa.15108.0.ph.i208 = phi i32 [ %.sroa.15108.0.ph.i.ph, %.thread206 ], [ %i.ro, %bb.gb ]
  %i.rq = icmp eq i32 %.sroa.15108.0.ph.i208, 3
  br i1 %i.rq, label %bb.ge, label %bb.gd

.thread178.i:                                     ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !3690
  store i32 %i.ro, ptr %i.cw, align 4, !noalias !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.345.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, i64 56, i1 false), !noalias !3690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !3690
  invoke void @_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB3a_NtNtB7_6client4PeerEB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cv, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ff, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %.thread178.i
  %i.rr = load i8, ptr %i.cv, align 8, !range !28, !noalias !3690, !noundef !15
  %.not82.i = icmp eq i8 %i.rr, -1
  br i1 %.not82.i, label %bb.gg, label %bb.gf

bb.gd:                                            ; preds = %bb.gg, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !3690
  br label %.noexc90

bb.ge:                                            ; preds = %bb.gc
  store i8 -1, ptr %i.dh, align 8, !alias.scope !3678
  br label %bb.gh

bb.gf:                                            ; preds = %.noexc129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !noalias !3721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !3690
  br label %bb.gh

bb.gg:                                            ; preds = %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !3690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !3690
  br label %bb.gd

bb.gh:                                            ; preds = %bb.gf, %bb.ge, %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection10recv_frameCskeugdADtBsi_12pingora_core.exit.i, %bb.ga, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !3690
  br label %thread-pre-split

.loopexit225:                                     ; preds = %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10poll_readyB1D_.exit.i, %bb.ck
  store i8 %.sroa.0101.2.i, ptr %i.dh, align 8, !alias.scope !3678
  br label %bb.gp

bb.gi:                                            ; preds = %.loopexit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9100.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !3678
  store i8 1, ptr %i.dh, align 8, !alias.scope !3678
  store i8 1, ptr %.sroa.459.0..sroa_idx.i, align 1, !alias.scope !3678
  store i32 %.sroa.12.0.ph.ph514.i, ptr %.sroa.4149.0..sroa_idx.i, align 4, !alias.scope !3678
  store <2 x ptr> <ptr @4, ptr inttoptr (i64 1 to ptr)>, ptr %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3678
  br label %thread-pre-split

.thread211:                                       ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i)
  br label %bb.gr

bb.gj:                                            ; preds = %bb.x
  %i.rs = load i32, ptr %i.en, align 4, !noundef !15 ; 3 uses
  %i.rt = load i8, ptr %i.eo, align 1, !range !35, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.fh, i64 40, i1 false), !noalias !3758
  store ptr null, ptr %i.fh, align 8, !alias.scope !3756
  %i.ru = load ptr, ptr %i.ad, align 8, !noalias !3757, !noundef !15 ; 2 uses
  %.not.i = icmp eq ptr %i.ru, null
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !3759, !nonnull !15, !noundef !15
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.rw = load ptr, ptr %.sroa.gep39.i, align 8, !noalias !3759, !noundef !15
  %.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.rx = load i64, ptr %.sroa.gep41.i, align 8, !noalias !3759, !noundef !15
  invoke void %i.rv(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull align 8 %.sroa.gep.i, ptr noundef %i.rw, i64 noundef %i.rx)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBP_6client4PeerE10take_error0EB3Z_.exit.i unwind label %.body.i, !noalias !3760, !inline_history !3595

.body.i:                                          ; preds = %bb.gk
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3761)
  %i.rz = load ptr, ptr %i.ad, align 8, !alias.scope !3761, !noalias !3757, !noundef !15 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %.body, label %bb.gl

bb.gl:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3762)
  call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  %i.sb = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !3765, !noalias !3757, !noundef !15
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !3766, !nonnull !15, !noundef !15
  %i.se = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !3765, !noalias !3757, !noundef !15
  %i.sf = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !3765, !noalias !3757, !noundef !15
  invoke void %i.sd(ptr noundef %i.sb, ptr noundef %i.se, i64 noundef %i.sf)
          to label %.body unwind label %bb.go, !noalias !3757, !inline_history !5

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBP_6client4PeerE10take_error0EB3Z_.exit.i: ; preds = %bb.gk
  %.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.sg = load i32, ptr %.sroa.gep43.i, align 4, !noalias !3759, !noundef !15 ; 2 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ae, align 8, !noalias !3757 ; 4 uses
  %.sroa.6.0..sroa_idx29.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx29.phi.trans.insert.i, align 8, !noalias !3757 ; 3 uses
  %.sroa.8.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0.copyload.pre.i = load i64, ptr %.sroa.8.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !3757 ; 3 uses
  %.sroa.10.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !3757 ; 3 uses
  %.pre.i = load ptr, ptr %i.ad, align 8, !alias.scope !3767, !noalias !3757 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  %i.sh = icmp eq ptr %.pre.i, null
  br i1 %i.sh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i, label %bb.gm

bb.gm:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBP_6client4PeerE10take_error0EB3Z_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3768)
  call void @llvm.experimental.noalias.scope.decl(metadata !3769)
  call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.si = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !3771, !noalias !3757, !noundef !15
  %i.sj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !3772, !nonnull !15, !noundef !15
  %i.sl = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !3771, !noalias !3757, !noundef !15
  %i.sm = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !3771, !noalias !3757, !noundef !15
  invoke void %i.sk(ptr noundef %i.si, ptr noundef %i.sl, i64 noundef %i.sm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i unwind label %bb.gn, !noalias !3757, !inline_history !5

bb.gn:                                            ; preds = %bb.gm
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.pre.i) ]
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 32
  %i.sp = load ptr, ptr %i.so, align 8, !noalias !3773, !nonnull !15, !noundef !15
  invoke void %i.sp(ptr noundef %.sroa.10.0.copyload.pre.i, ptr noundef %.sroa.6.0.copyload.pre.i, i64 noundef %.sroa.8.0.copyload.pre.i)
          to label %.body unwind label %bb.go, !noalias !3757, !inline_history !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i: ; preds = %bb.gm, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtBP_6client4PeerE10take_error0EB3Z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3757
  %i.sq = icmp eq i32 %i.rs, 0
  %i.sr = icmp eq i32 %i.sg, 0
  %. = select i1 %i.sq, i8 -1, i8 1
  br i1 %i.sr, label %.thread.i130, label %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10take_errorB1D_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3757
  %i.ss = icmp eq i32 %i.rs, 0
  %spec.select = select i1 %i.ss, i8 -1, i8 1
  br label %.thread.i130

.thread.i130:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i
  %.sroa.0190.0 = phi i8 [ %spec.select, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i ], [ %., %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i ]
  %.sroa.10.0.copyload6487.i = phi ptr [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i ]
  %.sroa.8.0.copyload6583.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i ], [ %.sroa.8.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i ]
  %.sroa.6.0.copyload6679.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i ], [ %.sroa.6.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i ]
  %.sroa.0.0.copyload6772.i = phi ptr [ @4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.thread.i ], [ %.sroa.0.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayEECskeugdADtBsi_12pingora_core.exit25.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload6772.i) ]
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload6772.i, i64 32
  %i.su = load ptr, ptr %i.st, align 8, !noalias !3774, !nonnull !15, !noundef !15
  invoke void %i.su(ptr noundef %.sroa.10.0.copyload6487.i, ptr noundef %.sroa.6.0.copyload6679.i, i64 noundef %.sroa.8.0.copyload6583.i)
          to label %_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE10take_errorB1D_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3620

bb.go:                                            ; preds = %bb.gn, %bb.gl
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3757
  unreachable

thread-pre-split:                                 ; preds = %.noexc95, %bb.gh, %bb.gi
  %.pr209 = load i8, ptr %i.dh, align 8
  br label %bb.gp

bb.gp:                                            ; preds = %thread-pre-split, %.loopexit225
  %i.sw = phi i8 [ %.pr209, %thread-pre-split ], [ %.sroa.0101.2.i, %.loopexit225 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i)
  %i.sx = icmp eq i8 %i.sw, -2
  br i1 %i.sx, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.thread210, %bb.gp
  %i.sy = invoke { i64, ptr } @_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB3_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB9_6client4PeerE13poll_completeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEB2N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %1)
          to label %bb.in unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit71.sink.split.i.i, %bb.cl, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.de, %bb.dq, %bb.dw, %bb.dx, %bb.dz, %bb.eg, %bb.em, %bb.en, %bb.eo, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.ex, %.noexc117, %.noexc118, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %.thread178.i, %bb.t, %bb.u, %bb.gq, %bb.it, %bb.jb, %bb.jc, %bb.jf, %bb.y, %bb.z, %bb.ci, %.noexc95, %bb.fi, %bb.iv, %.noexc159, %bb.jg, %bb.ie, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.hi, %bb.hg, %bb.hf, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gu, %.noexc45.i.i.i.invoke, %bb.iq, %bb.jk, %bb.ew, %.thread.i130
  %lpad.loopexit.split-lp1053 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gr:                                            ; preds = %bb.gp, %.thread211
  %.sroa.0683.0.copyload = phi i8 [ %i.sw, %bb.gp ], [ -1, %.thread211 ]
  %.sroa.4.0.copyload = load i8, ptr %.sroa.459.0..sroa_idx.i, align 1 ; 8 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.4149.0..sroa_idx.i, align 4 ; 6 uses
  %.sroa.7687.0.copyload = load i32, ptr %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8688.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.experimental.noalias.scope.decl(metadata !3775)
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  store ptr %i.el, ptr %i.df, align 8, !alias.scope !3775
  store ptr %i.er, ptr %i.ha, align 8, !alias.scope !3775
  %i.sz = load <2 x ptr>, ptr %i.eq, align 8, !alias.scope !3776
  %i.ta = getelementptr inbounds nuw i8, <2 x ptr> %i.sz, i64 16
  store <2 x ptr> %i.ta, ptr %i.hb, align 8, !alias.scope !3775
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3775
  store ptr %i.fh, ptr %i.hc, align 8, !alias.scope !3775
  store ptr %i.fe, ptr %i.hd, align 8, !alias.scope !3775
  call void @llvm.experimental.noalias.scope.decl(metadata !3777)
  switch i8 %.sroa.0683.0.copyload, label %default.unreachable.i [
    i8 -1, label %bb.gs
    i8 0, label %bb.gt
    i8 1, label %bb.gu
    i8 2, label %bb.hj
  ]

bb.gs:                                            ; preds = %bb.gr
  store i8 1, ptr %i.el, align 8, !noalias !3778
  store i8 1, ptr %i.eo, align 1, !noalias !3778
  store i32 0, ptr %i.en, align 4, !noalias !3778
  br label %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCskeugdADtBsi_12pingora_core.exit.thread

default.unreachable.i:                            ; preds = %bb.gr
  unreachable

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3778
  store i32 %.sroa.6.0.copyload, ptr %i.ab, align 4, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3778
  store i32 %.sroa.7687.0.copyload, ptr %i.aa, align 4, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3778
  store i8 %.sroa.4.0.copyload, ptr %i.z, align 1, !noalias !3778
  %i.tb = icmp eq i8 %.sroa.4.0.copyload, 2
  %i.tc = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3778
  %i.td = icmp eq i64 %i.tc, 0                    ; 2 uses
  br i1 %i.tb, label %bb.hd, label %bb.gv

bb.gu:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3778
  store i32 %.sroa.7687.0.copyload, ptr %i.ac, align 8, !noalias !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, i64 28, i1 false), !noalias !3779
  invoke fastcc void @_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection14handle_go_awayCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.df, i32 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, i8 noundef %.sroa.4.0.copyload)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3778
  br label %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCskeugdADtBsi_12pingora_core.exit.thread

bb.gv:                                            ; preds = %bb.gt
  br i1 %i.td, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.te = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3778 ; 3 uses
  switch i8 %i.te, label %bb.gx [
    i8 0, label %bb.gz
    i8 1, label %bb.gy
    i8 2, label %bb.gy
  ], !prof !20

bb.gx:                                            ; preds = %bb.gw
  %i.tf = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE) #23
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc140:                                        ; preds = %bb.gx
  %i.tg = icmp eq i8 %i.tf, 0
  br i1 %i.tg, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gw, %.noexc140, %bb.gw
  %.sroa.020.0.i = phi i8 [ %i.tf, %.noexc140 ], [ %i.te, %bb.gw ], [ %i.te, %bb.gw ]
  %i.th = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !noalias !3778, !nonnull !15, !align !17, !noundef !15
  %i.ti = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.th, i8 noundef %.sroa.020.0.i)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %bb.gy
  br i1 %i.ti, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.noexc143, %.noexc141, %.noexc140, %bb.gw, %bb.gv
  %i.tj = phi i32 [ %.sroa.7687.0.copyload, %.noexc140 ], [ %.sroa.7687.0.copyload, %bb.gw ], [ %.sroa.7687.0.copyload, %bb.gv ], [ %.pre74.i, %.noexc143 ], [ %.sroa.7687.0.copyload, %.noexc141 ]
  %i.tk = phi i32 [ %.sroa.6.0.copyload, %.noexc140 ], [ %.sroa.6.0.copyload, %bb.gw ], [ %.sroa.6.0.copyload, %bb.gv ], [ %.pre73.i, %.noexc143 ], [ %.sroa.6.0.copyload, %.noexc141 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3778
  invoke void @_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10send_resetCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb, i32 noundef %i.tk, i32 noundef %i.tj)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %bb.gz
  %i.tl = load ptr, ptr %i.o, align 8, !noalias !3778, !noundef !15
  %.not59.i = icmp eq ptr %i.tl, null
  br i1 %.not59.i, label %bb.hc, label %bb.hb

bb.ha:                                            ; preds = %.noexc141
  %i.tm = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !noalias !3778, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3778
  store <2 x ptr> <ptr @98, ptr inttoptr (i64 25 to ptr)>, ptr %i.s, align 16, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3778
  store ptr %i.ab, ptr %i.r, align 8, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3778
  store ptr %i.aa, ptr %i.q, align 8, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3778
  store ptr %i.z, ptr %i.p, align 8, !noalias !3778
  store ptr %i.s, ptr %i.t, align 8, !noalias !3778
  store ptr @10, ptr %i.hp, align 8, !noalias !3778
  store ptr %i.r, ptr %i.hq, align 8, !noalias !3778
  store ptr @8, ptr %i.hr, align 8, !noalias !3778
  store ptr %i.q, ptr %i.hs, align 8, !noalias !3778
  store ptr @99, ptr %i.ht, align 8, !noalias !3778
  store ptr %i.p, ptr %i.hu, align 8, !noalias !3778
  store ptr @100, ptr %i.hv, align 8, !noalias !3778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3778
  store i64 1, ptr %i.e, align 8, !noalias !3778
  store ptr %i.t, ptr %.sroa.022.sroa.4.0..sroa_idx.i, align 8, !noalias !3778
  store i64 4, ptr %.sroa.022.sroa.5.0..sroa_idx.i, align 8, !noalias !3778
  store ptr %i.tn, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !3778
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3778
  %.pre73.i = load i32, ptr %i.ab, align 4, !noalias !3778
  %.pre74.i = load i32, ptr %i.aa, align 4, !noalias !3778
  br label %bb.gz

bb.hb:                                            ; preds = %.noexc142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !3778
  %i.to = load i32, ptr %i.hw, align 8, !noalias !3778, !noundef !15
  invoke fastcc void @_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection14handle_go_awayCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.df, i32 noundef %i.to, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, i8 noundef 1)
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3778
  br label %bb.hc

bb.hc:                                            ; preds = %.noexc144, %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3778
  br label %_RNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCskeugdADtBsi_12pingora_core.exit.thread

bb.hd:                                            ; preds = %bb.gt
  br i1 %i.td, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.tp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, i64 16) monotonic, align 8, !noalias !3778 ; 3 uses
  switch i8 %i.tp, label %bb.hf [
    i8 0, label %bb.hh
    i8 1, label %bb.hg
    i8 2, label %bb.hg
  ], !prof !20

bb.hf:                                            ; preds = %bb.he
  %i.tq = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE) #23
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc145:                                        ; preds = %bb.hf
  %i.tr = icmp eq i8 %i.tq, 0
  br i1 %i.tr, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.he, %.noexc145, %bb.he
  %.sroa.010.0.i = phi i8 [ %i.tq, %.noexc145 ], [ %i.tp, %bb.he ], [ %i.tp, %bb.he ]
  %i.ts = load ptr, ptr @_RNvNvMs1_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, align 8, !noalias !3778, !nonnull !15, !align !17, !noundef !15
  %i.tt = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ts, i8 noundef %.sroa.010.0.i)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCskxN0Kp1MEon_2h25proto10connectionINtB4_10ConnectionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtB8_6client4PeerE4pollB1D_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !3802, !nonnull !15, !noundef !15
  %i.wt = atomicrmw add ptr %i.ws, i64 -1 release, align 8, !noalias !3803
  %i.wu = icmp eq i64 %i.wt, 1
  br i1 %i.wu, label %bb.jr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit

bb.jr:                                            ; preds = %bb.jq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsh7gMfcBfOe7_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wr) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit unwind label %bb.f

bb.js:                                            ; preds = %bb.jo
  %i.wv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ik, %bb.jq, %bb.jp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit154, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.ww = load i64, ptr %i.dn, align 8, !range !21, !noundef !15
  %.not.i.i166 = icmp eq i64 %i.ww, 2
  br i1 %.not.i.i166, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170, label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit
  %i.wx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.wx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit168 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit168: ; preds = %bb.jt
  %.pr217 = load i64, ptr %i.dn, align 8, !alias.scope !3804 ; 2 uses
  %.not.i.i169 = icmp eq i64 %.pr217, 2
  br i1 %.not.i.i169, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170, label %bb.ju

bb.ju:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit168
  %i.wy = load i64, ptr %i.wx, align 8, !range !26, !alias.scope !3805, !noundef !15
  %i.wz = invoke noundef zeroext i1 @_RNvMs2_NtCsh7gMfcBfOe7_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dn, i64 noundef %i.wy)
          to label %bb.jw unwind label %bb.jv     ; 0 uses

bb.jv:                                            ; preds = %bb.ju
  %i.xa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6kPMvhw0TuU_7tracing4span5InnerEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dn) #24
          to label %common.resume unwind label %bb.jz

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  call void @llvm.experimental.noalias.scope.decl(metadata !3808)
  call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  %i.xb = icmp eq i64 %.pr217, 0
  br i1 %i.xb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  call void @llvm.experimental.noalias.scope.decl(metadata !3811)
  %i.xc = load ptr, ptr %.sroa.546.0..sroa_idx47724, align 8, !alias.scope !3812, !nonnull !15, !noundef !15
  %i.xd = atomicrmw add ptr %i.xc, i64 -1 release, align 8, !noalias !3813
  %i.xe = icmp eq i64 %i.xd, 1
  br i1 %i.xe, label %bb.jy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsh7gMfcBfOe7_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.546.0..sroa_idx47724) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170

bb.jz:                                            ; preds = %bb.jv
  %i.xf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit, %bb.jv
  %common.resume.op = phi { ptr, i32 } [ %i.xa, %bb.jv ], [ %.pn80, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit170: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span4SpanECskeugdADtBsi_12pingora_core.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6kPMvhw0TuU_7tracing4span7EnteredECskeugdADtBsi_12pingora_core.exit168, %bb.jw, %bb.jx, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtB9_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB18_4sync7oneshot8ReceiveruEEEE00ENtNtB7_6future6Future4pollCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !noalias !3816, !nonnull !15, !align !17, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsa_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.c, label %bb.b, label %_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtBd_4sync7oneshot8ReceiveruEEEE00CskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !noalias !3816, !nonnull !15, !align !17, !noundef !15
  %i.e = tail call noundef i8 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot8ReceiveruEEENtB4_6Future4pollCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  %spec.select.i = select i1 %i.f, i8 -1, i8 %i.e
  br label %_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtBd_4sync7oneshot8ReceiveruEEEE00CskeugdADtBsi_12pingora_core.exit

_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtBd_4sync7oneshot8ReceiveruEEEE00CskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %spec.select.i, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtNtB18_4sync7oneshot8ReceiveruEE00ENtNtB7_6future6Future4pollCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !noalias !3819, !nonnull !15, !align !17, !noundef !15
  %i.c = tail call noundef zeroext i1 @_RNvXsa_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.c, label %bb.b, label %_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtNtBd_4sync7oneshot8ReceiveruEE00CskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !noalias !3819, !nonnull !15, !align !17, !noundef !15
  %i.e = tail call noundef i8 @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  %spec.select.i = select i1 %i.f, i8 -1, i8 %i.e
  br label %_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtNtBd_4sync7oneshot8ReceiveruEE00CskeugdADtBsi_12pingora_core.exit

_RNCNCINvMNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtNtBd_4sync7oneshot8ReceiveruEE00CskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %spec.select.i, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtB15_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB2d_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB3o_E00ENtNtB7_6future6Future4pollB3M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !35, !noalias !3838, !noundef !15
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.thread.i.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.i.i, !prof !27

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.a
  %i.k = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %i.g), !noalias !3837 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.preheader.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.thread.i.i

.critedge.preheader.i:                            ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.thread.i.i, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 104 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 96 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 105 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 112 ; 6 uses
  %i.x = getelementptr i8, ptr %.val1, i64 120    ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.549.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %.critedge.i.outer

.critedge.i.outer:                                ; preds = %.critedge.i.outer.backedge, %.critedge.preheader.i
  %.sroa.0.035.i.ph = phi i1 [ false, %.critedge.preheader.i ], [ true, %.critedge.i.outer.backedge ]
  %.sroa.017.034.i.ph = phi i32 [ 0, %.critedge.preheader.i ], [ %i.al, %.critedge.i.outer.backedge ]
  %i.ae = load i8, ptr %.val, align 1, !noalias !3838, !noundef !15 ; 3 uses
  %i.af = and i8 %i.ae, 2
  %.not19.i = icmp eq i8 %i.af, 0
  %i.ag = and i8 %i.ae, 1
  %.not20.i = icmp eq i8 %i.ag, 0
  br label %.critedge.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.k, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.ah, align 1, !range !19, !noalias !3837, !noundef !15
  %i.ai = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.ai, align 1, !noalias !3837
  %i.aj = trunc nuw i8 %.val.i.i to i1
  %i.ak = tail call noundef zeroext i1 @_RNvMNtNtCs2awuzAz5vY4_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.aj, i8 %.val5.i.i), !noalias !3837
  br i1 %i.ak, label %.critedge.preheader.i, label %bb.b

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCskeugdADtBsi_12pingora_core.exit.thread.i.i
  tail call void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !3837
  store i64 -1, ptr %0, align 8, !alias.scope !3837
  br label %_RNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtBa_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1h_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB2s_E00B2Q_.exit

bb.c:                                             ; preds = %bb.g
  br i1 %.sroa.0.035.i.ph, label %.thread.i, label %bb.d

.critedge.i:                                      ; preds = %.critedge.i.backedge, %.critedge.i.outer
  %.sroa.017.034.i = phi i32 [ %.sroa.017.034.i.ph, %.critedge.i.outer ], [ %i.al, %.critedge.i.backedge ] ; 2 uses
  %i.al = add nuw nsw i32 %.sroa.017.034.i, 1     ; 2 uses
  switch i32 %.sroa.017.034.i, label %default.unreachable48.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ], !prof !43

bb.d:                                             ; preds = %bb.c
  store i64 5, ptr %0, align 8, !alias.scope !3837
  br label %_RNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtBa_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1h_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB2s_E00B2Q_.exit

.thread.i:                                        ; preds = %_RNCINvNtCsisNNF9X7XVM_12pingora_pool10connection17read_with_timeoutINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EE0B1H_.exit.i, %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !3837
  br label %_RNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtBa_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1h_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB2s_E00B2Q_.exit

default.unreachable:                              ; preds = %bb.l
  unreachable

default.unreachable48.i:                          ; preds = %.critedge.i
  unreachable

bb.e:                                             ; preds = %.critedge.i
  br i1 %.not20.i, label %bb.h, label %.critedge.i.backedge

bb.f:                                             ; preds = %.critedge.i
  br i1 %.not19.i, label %bb.j, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.f, %bb.e
  br label %.critedge.i

bb.g:                                             ; preds = %.critedge.i
  %i.am = and i8 %i.ae, 4
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %bb.l, label %bb.c

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.an = tail call noundef i8 @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_8ReceiverbENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !3837 ; 2 uses
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %.critedge.i.outer.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %.val, align 1, !noalias !3838, !noundef !15
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %.val, align 1, !noalias !3838
  store i64 2, ptr %0, align 8, !alias.scope !3837
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3837
  br label %_RNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtBa_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1h_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB2s_E00B2Q_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ar = tail call noundef zeroext i1 @_RNvXsa_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !noalias !3837
  br i1 %i.ar, label %.critedge.i.outer.backedge, label %bb.k

.critedge.i.outer.backedge:                       ; preds = %bb.j, %bb.h
  br label %.critedge.i.outer

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %.val, align 1, !noalias !3838, !noundef !15
  %i.at = or i8 %i.as, 2
  store i8 %i.at, ptr %.val, align 1, !noalias !3838
  store i64 3, ptr %0, align 8, !alias.scope !3837
  br label %_RNCNCINvMs1_NtCsisNNF9X7XVM_12pingora_pool10connectionINtBa_14ConnectionPoolINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1h_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEE9idle_pollB2s_E00B2Q_.exit

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.au = load i8, ptr %i.m, align 8, !range !36, !noalias !3839, !noundef !15
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3839
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3839
  br label %bb.ar

bb.o:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.p, align 8, !noalias !3839, !nonnull !15, !noundef !15 ; 2 uses
  store ptr %i.av, ptr %i.o, align 8, !noalias !3839
  %i.aw = load i64, ptr %i.n, align 8, !noalias !3839 ; 2 uses
  %i.ax = load i32, ptr %i.q, align 8, !range !29, !noalias !3839, !noundef !15 ; 3 uses
  store i8 0, ptr %i.r, align 1, !noalias !3839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3839
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %i.ay, ptr %i.e, align 8, !alias.scope !3840, !noalias !3839
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !3840, !noalias !3839
  store i64 1, ptr %i.t, align 8, !alias.scope !3840, !noalias !3839
  %.not.i.i = icmp eq i32 %i.ax, -1
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.aw, ptr %i.u, align 8, !noalias !3839
  store i32 %i.ax, ptr %i.v, align 8, !noalias !3839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3839
  invoke void @_RINvNtCsih3NV0yzdTo_15pingora_timeout12fast_timeout12fast_timeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEB2q_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, i64 noundef %i.aw, i32 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q, !noalias !3841

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3839
  br label %.body.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3839
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3839
  br label %bb.ar

.body.i.i:                                        ; preds = %bb.as, %bb.ah, %bb.af, %bb.ae, %bb.w, %bb.q
  %.pn28.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ch, %bb.as ], [ %i.bm, %bb.ae ], [ %i.az, %bb.q ], [ %i.bb, %bb.w ], [ %i.bw, %bb.ah ], [ %i.bm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3839
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex15OwnedMutexGuardINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEB28_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.o) #24
          to label %.body44.i.i unwind label %bb.aq, !noalias !3837

bb.t:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #22, !noalias !3841
  unreachable

bb.u:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #22, !noalias !3841
  unreachable

bb.v:                                             ; preds = %bb.r, %bb.m
  %i.ba = invoke { i64, ptr } @_RNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB5_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB5_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB2d_(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w, !noalias !3837 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %.val.i21.i = load ptr, ptr %i.w, align 8, !noalias !3839, !noundef !15
  %.val35.i.i = load ptr, ptr %i.x, align 8, !noalias !3839
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_(ptr %.val.i21.i, ptr %.val35.i.i) #24
          to label %.body.i.i unwind label %bb.aq, !noalias !3837

bb.x:                                             ; preds = %bb.v
  %i.bc = extractvalue { i64, ptr } %i.ba, 0      ; 3 uses
  %i.bd = extractvalue { i64, ptr } %i.ba, 1
  %i.be = icmp eq i64 %i.bc, -1
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3839
  store i8 3, ptr %i.m, align 8, !noalias !3839
  br label %_RNCINvNtCsisNNF9X7XVM_12pingora_pool10connection17read_with_timeoutINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EE0B1H_.exit.i

bb.z:                                             ; preds = %bb.x
  %.val36.i.i = load ptr, ptr %i.w, align 8, !noalias !3839, !noundef !15 ; 4 uses
  %.val37.i.i = load ptr, ptr %i.x, align 8, !noalias !3839 ; 6 uses
  %i.bf = icmp eq ptr %.val36.i.i, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37.i.i) ]
  %i.bg = load ptr, ptr %.val37.i.i, align 8, !invariant.load !15, !noalias !3837 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.bg(ptr noundef nonnull %.val36.i.i)
          to label %bb.ac unwind label %bb.ae, !noalias !3837

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.val37.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !31, !invariant.load !15, !noalias !3837 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %.val37.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !32, !invariant.load !15, !noalias !3837
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #27, !noalias !3837
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val37.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !31, !invariant.load !15, !noalias !3837 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.body.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %.val37.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !32, !invariant.load !15, !noalias !3837
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #27, !noalias !3837
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.z
  %i.bs = icmp eq i64 %i.bc, 2
  br i1 %i.bs, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i
  %i.bt = load atomic i64, ptr @_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3839 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 6
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i64 %i.bt, 3
  br i1 %i.bv, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %bb.ai
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3839
  br label %.body.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3839
  store ptr %i.u, ptr %i.c, align 8, !noalias !3839
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3839
  store ptr %i.a, ptr %i.y, align 8, !noalias !3839
  store ptr @_RNvXs3_Csih3NV0yzdTo_15pingora_timeoutNtB5_7ElapsedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.549.0..sroa_idx.i.i, align 8, !noalias !3839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3839
  store ptr @58, ptr %i.b, align 8, !noalias !3839
  store i64 24, ptr %i.z, align 8, !noalias !3839
  store ptr @58, ptr %i.aa, align 8, !noalias !3839
  store i64 24, ptr %i.ab, align 8, !noalias !3839
  store ptr @57, ptr %i.ac, align 8, !noalias !3839
  invoke void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECskeugdADtBsi_12pingora_core(ptr noundef nonnull @56, ptr noundef nonnull %i.c, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.aj unwind label %bb.ah, !noalias !3837

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3839
  br label %bb.ak

bb.ak:                                            ; preds = %bb.av, %bb.aj, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i
  %.sroa.018.1.i.i = phi i64 [ %i.ci, %bb.av ], [ %i.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i ], [ 0, %bb.aj ], [ 0, %bb.ag ]
  %.sroa.4.1.i.i = phi ptr [ %i.ck, %bb.av ], [ %i.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsih3NV0yzdTo_15pingora_timeout7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtBE_12fast_timeout11FastTimeoutEEB2G_.exit.i.i ], [ null, %bb.aj ], [ null, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3839
  invoke void @_RNvXsj_NtNtCs2awuzAz5vY4_5tokio4sync5mutexINtB5_15OwnedMutexGuardINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.an unwind label %bb.al, !noalias !3837

bb.al:                                            ; preds = %bb.ak
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  %i.by = load ptr, ptr %i.o, align 8, !alias.scope !3844, !noalias !3839, !nonnull !15, !noundef !15
  %i.bz = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !3845
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.am, label %.body44.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
end_hunk_2
