Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.06?download=true
inline.NumInlined: 971
inline.NumDeleted: 410
begin_hunk_0_@_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE4pollCsbaWXNhtWAp9_11foundations:bb.a
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
  br label %.backedge, !dbg !13603

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit87: ; preds = %.body, %bb.r, %bb.q
  %.pn76 = phi { ptr, i32 } [ %i.ie, %bb.q ], [ %.pn, %bb.r ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dm) #31
          to label %.body164 unwind label %bb.im, !dbg !13604

bb.q:                                             ; preds = %bb.il, %bb.o
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit87

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ih, %bb.ic, %bb.ht, %.body.i, %bb.gl, %bb.gn, %bb.ai, %.body.i.i, %bb.am, %bb.di, %bb.du, %bb.ek, %bb.ey, %bb.fl
  %.pn = phi { ptr, i32 } [ %i.ry, %bb.gl ], [ %i.sn, %bb.gn ], [ %lpad.thr_comm181.i.i, %bb.ek ], [ %i.uv, %bb.ic ], [ %.pn57.i.i, %.body.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ai ], [ %.pn57.i.i, %bb.am ], [ %i.pi, %bb.ey ], [ %i.qm, %bb.fl ], [ %lpad.thr_comm173.i.i, %bb.du ], [ %lpad.thr_comm.i.i, %bb.di ], [ %i.ry, %.body.i ], [ %lpad.thr_comm.i, %bb.ih ], [ %i.uh, %bb.ht ], [ %lpad.loopexit.split-lp1053, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.if = load i64, ptr %i.dm, align 8, !dbg !13605, !range !587, !noalias !13154, !noundef !496
  %.not.i.i85 = icmp eq i64 %i.if, 2, !dbg !13605
  br i1 %.not.i.i85, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit87, label %bb.r, !dbg !13606

bb.r:                                             ; preds = %.body
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dm, i64 24, !dbg !13607
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ig)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit87 unwind label %bb.im, !dbg !13608

.backedge:                                        ; preds = %.backedge.backedge, %bb.p
  %i.ih = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13609
  %i.ii = icmp eq i64 %i.ih, 0, !dbg !13610
  br i1 %i.ii, label %bb.s, label %bb.x, !dbg !13611

bb.s:                                             ; preds = %.backedge
  %i.ij = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, i64 16) monotonic, align 8, !dbg !13612 ; 3 uses
  switch i8 %i.ij, label %bb.t [
    i8 0, label %bb.x
    i8 1, label %bb.u
    i8 2, label %bb.u
  ], !dbg !13613, !prof !569

bb.t:                                             ; preds = %bb.s
  %i.ik = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13614 ; 2 uses

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.v
  %.sroa.014.0 = phi i8 [ %i.ik, %bb.v ], [ %i.ij, %bb.s ], [ %i.ij, %bb.s ], !dbg !13615
  %i.il = load ptr, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !dbg !13616, !nonnull !496, !align !581, !noundef !496
  %i.im = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.il, i8 noundef %.sroa.014.0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13617

bb.v:                                             ; preds = %bb.t
  %i.in = icmp eq i8 %i.ik, 0, !dbg !13618
  br i1 %i.in, label %bb.x, label %bb.u, !dbg !13617

bb.w:                                             ; preds = %bb.u
  br i1 %i.im, label %bb.y, label %bb.x, !dbg !13619

bb.x:                                             ; preds = %bb.v, %bb.s, %.backedge, %_RNCNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBa_6client4PeerINtNtNtB1a_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE4poll0CsbaWXNhtWAp9_11foundations.exit, %bb.w
  %i.io = load i8, ptr %i.el, align 8, !dbg !13620, !range !714, !noundef !496
  switch i8 %i.io, label %default.unreachable719 [
    i8 0, label %bb.z
    i8 1, label %bb.iz
    i8 2, label %bb.gj
  ], !dbg !13621

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !13619
  %i.ip = load ptr, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !dbg !13622, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48, !dbg !13623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !13619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !13619
  store ptr %i.el, ptr %i.di, align 8, !dbg !13624
  store ptr %i.di, ptr %i.dj, align 8, !dbg !13619
  store ptr @122, ptr %i.em, align 8, !dbg !13619
  store i64 1, ptr %i.dk, align 8, !dbg !13619
  store ptr %i.dj, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8, !dbg !13619
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8, !dbg !13619
  store ptr %i.iq, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !13619
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dk)
          to label %_RNCNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBa_6client4PeerINtNtNtB1a_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE4poll0CsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13625

_RNCNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBa_6client4PeerINtNtNtB1a_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE4poll0CsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !13619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !13619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !13619
  br label %bb.x, !dbg !13619

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !13626
  call void @llvm.experimental.noalias.scope.decl(metadata !13177), !dbg !13627
  call void @llvm.experimental.noalias.scope.decl(metadata !13178), !dbg !13627
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.sroa.5.i), !dbg !13628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.8.i), !dbg !13628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.0.i), !dbg !13628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i), !dbg !13628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i), !dbg !13628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12104.i), !dbg !13628
  invoke void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB2_7StreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtB8_6client4PeerE27clear_expired_reset_streamsCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13629

.noexc90:                                         ; preds = %bb.z, %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !13179), !dbg !13630
  call void @llvm.experimental.noalias.scope.decl(metadata !13180), !dbg !13631
  call void @llvm.experimental.noalias.scope.decl(metadata !13181), !dbg !13631
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.er, align 8, !dbg !13632, !alias.scope !13182 ; 5 uses
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !13632, !alias.scope !13182 ; 3 uses
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !13632, !alias.scope !13182 ; 3 uses
  %.sroa.6.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !13632, !alias.scope !13182 ; 3 uses
  %.sroa.6.sroa.8.0.copyload.i.i.i = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 4, !dbg !13632, !alias.scope !13182
  %i.ir = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !13632, !alias.scope !13182
  store ptr null, ptr %i.er, align 8, !dbg !13633, !alias.scope !13182
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null, !dbg !13634
  br i1 %.not.i.i.i, label %bb.ag, label %bb.aa, !dbg !13635

bb.aa:                                            ; preds = %.noexc90
  %i.is = load i64, ptr %i.et, align 8, !dbg !13636, !range !667, !alias.scope !13183, !noundef !496
  %.not.i.i.i.i = icmp eq i64 %i.is, -2, !dbg !13636
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.ac, !dbg !13637

bb.ab:                                            ; preds = %bb.aa
  %i.it = load i64, ptr %i.eu, align 8, !dbg !13638, !alias.scope !13183, !noundef !496
  %i.iu = load i64, ptr %i.ev, align 8, !dbg !13639, !alias.scope !13183, !noundef !496
  %i.iv = sub i64 %i.it, %i.iu, !dbg !13640
  %i.iw = load i64, ptr %i.ew, align 8, !dbg !13641, !alias.scope !13183, !noundef !496
  %.not7.i.i.i.i = icmp ult i64 %i.iv, %i.iw, !dbg !13642
  br i1 %.not7.i.i.i.i, label %bb.ac, label %bb.ah, !dbg !13643

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ix = invoke { i64, ptr } @_RNvMNtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEE5flushCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.es, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i.i unwind label %bb.ai, !dbg !13644, !noalias !13184 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.iy = extractvalue { i64, ptr } %i.ix, 0, !dbg !13644
  %i.iz = trunc nuw i64 %i.iy to i1, !dbg !13645
  br i1 %i.iz, label %.thread210, label %bb.ad, !dbg !13645

bb.ad:                                            ; preds = %.noexc.i.i.i
  %i.ja = extractvalue { i64, ptr } %i.ix, 1, !dbg !13644 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ja, null, !dbg !13646
  br i1 %.not8.i.i.i.i, label %bb.ae, label %bb.ci, !dbg !13647

bb.ae:                                            ; preds = %bb.ad
  %i.jb = load i64, ptr %i.et, align 8, !dbg !13648, !range !667, !alias.scope !13183, !noundef !496
  %.not9.i.i.i.i = icmp eq i64 %i.jb, -2, !dbg !13648
  br i1 %.not9.i.i.i.i, label %bb.af, label %.thread210, !dbg !13649

bb.af:                                            ; preds = %bb.ae
  %i.jc = load i64, ptr %i.eu, align 8, !dbg !13650, !alias.scope !13183, !noundef !496
  %i.jd = load i64, ptr %i.ev, align 8, !dbg !13651, !alias.scope !13183, !noundef !496
  %i.je = sub i64 %i.jc, %i.jd, !dbg !13652
  %i.jf = load i64, ptr %i.ew, align 8, !dbg !13653, !alias.scope !13183, !noundef !496
  %.not10.i.i.i.i = icmp ult i64 %i.je, %i.jf, !dbg !13654
  br i1 %.not10.i.i.i.i, label %.thread210, label %bb.ah, !dbg !13655

bb.ag:                                            ; preds = %.noexc90
  %i.jg = load i8, ptr %i.ey, align 4, !alias.scope !13182
  %i.jh = trunc nuw i8 %i.jg to i1
  %i.ji = load i32, ptr %i.ez, align 8, !range !826, !alias.scope !13178
  %i.jj = trunc nuw i32 %i.ji to i1
  %or.cond.i = select i1 %i.jh, i1 %i.jj, i1 false, !dbg !13656
  br i1 %or.cond.i, label %.thread.i, label %bb.ak, !dbg !13656

bb.ah:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !13657, !noalias !13185
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ex, align 8, !dbg !13658, !noalias !13185
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.484.0..sroa_idx.i.i.i, align 8, !dbg !13658, !noalias !13185
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.585.0..sroa_idx.i.i.i, align 8, !dbg !13658, !noalias !13185
  store ptr %.sroa.6.sroa.6.0.copyload.i.i.i, ptr %.sroa.686.0..sroa_idx.i.i.i, align 8, !dbg !13658, !noalias !13185
  store <2 x i32> %i.ir, ptr %.sroa.787.0..sroa_idx.i.i.i, align 8, !dbg !13658, !noalias !13185
  store i8 6, ptr %i.cu, align 8, !dbg !13658, !noalias !13185
  %i.jk = invoke noundef i8 @_RNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEE6bufferCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.cu)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13659 ; 2 uses

.noexc91:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !13660, !noalias !13185
  %.not.i44.i.i.i = icmp eq i8 %i.jk, -1, !dbg !13661
  br i1 %.not.i44.i.i.i, label %bb.cj, label %.noexc45.i.i.i, !dbg !13662, !prof !673

.noexc45.i.i.i:                                   ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !13663, !noalias !13187
  store i8 %i.jk, ptr %i.ct, align 1, !dbg !13663, !noalias !13187
  br label %.noexc45.i.i.i.invoke, !dbg !13664

.noexc45.i.i.i.invoke:                            ; preds = %.noexc100, %.noexc45.i.i.i
  %i.jl = phi ptr [ @2, %.noexc45.i.i.i ], [ @73, %.noexc100 ]
  %i.jm = phi i64 [ 20, %.noexc45.i.i.i ], [ 14, %.noexc100 ]
  %i.jn = phi ptr [ %i.ct, %.noexc45.i.i.i ], [ %i.a, %.noexc100 ]
  %i.jo = phi ptr [ @47, %.noexc45.i.i.i ], [ @48, %.noexc100 ]
  %i.jp = phi ptr [ @4, %.noexc45.i.i.i ], [ @75, %.noexc100 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jm, ptr noundef nonnull %i.jn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jp) #35
          to label %.noexc45.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13665

.noexc45.i.i.i.cont:                              ; preds = %.noexc45.i.i.i.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 32, !dbg !13666
  %i.jr = load ptr, ptr %i.jq, align 8, !dbg !13666, !noalias !13188, !nonnull !496, !noundef !496
  invoke void %i.jr(ptr noundef %.sroa.6.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.sroa.5.0.copyload.i.i.i)
          to label %.body unwind label %bb.aj, !dbg !13666, !noalias !13184, !inline_history !409

bb.aj:                                            ; preds = %bb.ai
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !13667, !noalias !13184
  unreachable, !dbg !13667

.thread.i:                                        ; preds = %bb.ag
  %i.jt = load i32, ptr %i.fa, align 8, !dbg !13668, !alias.scope !13182, !noundef !496
  br label %.loopexit.i, !dbg !13669

.thread210:                                       ; preds = %.noexc.i.i.i, %bb.ae, %bb.af
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.er, align 8, !dbg !13670, !alias.scope !13182
  store i8 -2, ptr %i.dh, align 8, !dbg !13671, !alias.scope !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i), !dbg !13672
  br label %bb.gq, !dbg !13673

bb.ak:                                            ; preds = %bb.cj, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !13192), !dbg !13674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !13675, !noalias !13193
  %i.ju = load i64, ptr %i.do, align 8, !dbg !13676, !range !587, !alias.scope !13194, !noundef !496
  %.not.i.i89 = icmp eq i64 %i.ju, 2, !dbg !13676
  br i1 %.not.i.i89, label %.noexc93, label %bb.al, !dbg !13677

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13678

.body.i.i:                                        ; preds = %bb.br, %bb.an, %bb.cc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i
  %.pn57.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i ], [ %i.li, %bb.cc ], [ %i.jw, %bb.an ], [ %i.ky, %bb.br ] ; 2 uses
  %i.jv = load i64, ptr %i.do, align 8, !dbg !13679, !range !587, !alias.scope !13194, !noalias !13195, !noundef !496
  %.not.i.i.i85.i = icmp eq i64 %i.jv, 2, !dbg !13679
  br i1 %.not.i.i.i85.i, label %.body, label %bb.am, !dbg !13680

bb.am:                                            ; preds = %.body.i.i
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %.body unwind label %bb.ch, !dbg !13681, !noalias !13196

bb.an:                                            ; preds = %bb.bu, %bb.cf, %bb.at, %bb.aq, %bb.ap
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.noexc93:                                         ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !13682, !noalias !13197
  %i.jx = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13683, !noalias !13197
  %i.jy = icmp eq i64 %i.jx, 0, !dbg !13684
  br i1 %i.jy, label %bb.ao, label %.thread.i.i, !dbg !13685

.thread.i.i:                                      ; preds = %bb.as, %bb.ar, %bb.ao, %.noexc93
  store i64 2, ptr %i.cs, align 8, !dbg !13686, !noalias !13197
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13686, !noalias !13197
  br label %bb.aw, !dbg !13687

bb.ao:                                            ; preds = %.noexc93
  %i.jz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, i64 16) monotonic, align 8, !dbg !13688, !noalias !13197 ; 3 uses
  switch i8 %i.jz, label %bb.ap [
    i8 0, label %.thread.i.i
    i8 1, label %bb.aq
    i8 2, label %bb.aq
  ], !dbg !13689, !prof !569

bb.ap:                                            ; preds = %bb.ao
  %i.ka = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE)
          to label %bb.ar unwind label %bb.an, !dbg !13690, !noalias !13196 ; 2 uses

bb.aq:                                            ; preds = %bb.ao, %bb.ar, %bb.ao
  %.sroa.05.0.i.i = phi i8 [ %i.ka, %bb.ar ], [ %i.jz, %bb.ao ], [ %i.jz, %bb.ao ], !dbg !13691
  %i.kb = load ptr, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !dbg !13692, !noalias !13197, !nonnull !496, !align !581, !noundef !496
  %i.kc = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kb, i8 noundef %.sroa.05.0.i.i)
          to label %bb.as unwind label %bb.an, !dbg !13685, !noalias !13196

bb.ar:                                            ; preds = %bb.ap
  %.not50.i.i = icmp eq i8 %i.ka, 0, !dbg !13693
  br i1 %.not50.i.i, label %.thread.i.i, label %bb.aq, !dbg !13685

bb.as:                                            ; preds = %bb.aq
  br i1 %i.kc, label %bb.at, label %.thread.i.i, !dbg !13685

bb.at:                                            ; preds = %bb.as
  %i.kd = load ptr, ptr @_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !dbg !13694, !noalias !13197, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !13695, !noalias !13197
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 48, !dbg !13696
  store i64 1, ptr %i.cr, align 8, !dbg !13697, !noalias !13197
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa_idx.i.i, align 8, !dbg !13697, !noalias !13197
  store i64 0, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !dbg !13697, !noalias !13197
  store ptr %i.ke, ptr %i.fc, align 8, !dbg !13697, !noalias !13197
  invoke void @_RNvMNtCs2xfK085Iyqb_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr)
          to label %bb.au unwind label %bb.an, !dbg !13695, !noalias !13196

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !13685, !noalias !13197
  %.pr.i.i = load i64, ptr %i.cs, align 8, !dbg !13698, !noalias !13197
  %.not51.i.i = icmp eq i64 %.pr.i.i, 2, !dbg !13698
  br i1 %.not51.i.i, label %bb.aw, label %bb.av, !dbg !13687

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %bb.aw unwind label %bb.ax, !dbg !13699, !noalias !13196

bb.aw:                                            ; preds = %bb.av, %bb.au, %.thread.i.i
  %i.kf = invoke { i64, ptr } @_RINvMNtNtCsb6T6P0NKlCh_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1k_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1)
          to label %bb.ba unwind label %bb.ay, !dbg !13700, !noalias !13196 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn.i.i = phi { ptr, i32 } [ %i.kg, %bb.ax ], [ %i.kh, %bb.az ], [ %i.kh, %bb.ay ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #31
          to label %.body.i.i unwind label %bb.ch, !dbg !13701, !noalias !13196

bb.ax:                                            ; preds = %bb.by, %bb.bp, %bb.av
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i

bb.ay:                                            ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.bg, %bb.bd, %bb.bc, %bb.aw
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load i64, ptr %i.cs, align 8, !dbg !13702, !range !587, !noalias !13211, !noundef !496
  %.not.i.i64.i.i = icmp eq i64 %i.ki, 2, !dbg !13702
  br i1 %.not.i.i64.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i, label %bb.az, !dbg !13703

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i unwind label %bb.ch, !dbg !13704, !noalias !13196

bb.ba:                                            ; preds = %bb.aw
  %i.kj = extractvalue { i64, ptr } %i.kf, 0, !dbg !13705
  %i.kk = extractvalue { i64, ptr } %i.kf, 1, !dbg !13705 ; 2 uses
  %i.kl = trunc nuw i64 %i.kj to i1, !dbg !13706
  br i1 %i.kl, label %bb.bx, label %bb.bb, !dbg !13706

bb.bb:                                            ; preds = %bb.ba
  %.not52.i.i = icmp eq ptr %i.kk, null, !dbg !13707
  br i1 %.not52.i.i, label %bb.bd, label %bb.bc, !dbg !13708

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !13709, !noalias !13197
  invoke void @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25proto5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noundef nonnull %i.kk)
          to label %bb.ca unwind label %bb.ay, !dbg !13709, !noalias !13196

bb.bd:                                            ; preds = %bb.bb
  %i.km = invoke { i64, ptr } @_RINvMNtNtCsb6T6P0NKlCh_2h25proto9ping_pongNtB3_8PingPong17send_pending_pingINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1k_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1)
          to label %bb.be unwind label %bb.ay, !dbg !13710, !noalias !13196 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.kn = extractvalue { i64, ptr } %i.km, 0, !dbg !13711
  %i.ko = extractvalue { i64, ptr } %i.km, 1, !dbg !13711 ; 2 uses
  %i.kp = trunc nuw i64 %i.kn to i1, !dbg !13706
  br i1 %i.kp, label %bb.bx, label %bb.bf, !dbg !13706

bb.bf:                                            ; preds = %bb.be
  %.not53.i.i = icmp eq ptr %i.ko, null, !dbg !13712
  br i1 %.not53.i.i, label %bb.bh, label %bb.bg, !dbg !13713

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !13714, !noalias !13197
  invoke void @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25proto5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noundef nonnull %i.ko)
          to label %bb.bz unwind label %bb.ay, !dbg !13714, !noalias !13196

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RINvMNtNtCsb6T6P0NKlCh_2h25proto8settingsNtB3_8Settings9poll_sendINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1a_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEB3F_NtNtB7_6client4PeerECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %bb.bi unwind label %bb.ay, !dbg !13715, !noalias !13196

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load i8, ptr %i.cq, align 8, !dbg !13716, !range !13215, !noalias !13197, !noundef !496 ; 2 uses
  switch i8 %i.kq, label %bb.bj [
    i8 -2, label %bb.bx
    i8 -1, label %bb.bk
  ], !dbg !13706

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx.i.i, i64 39, i1 false), !dbg !13717, !noalias !13193
  br label %bb.bx, !dbg !13718

bb.bk:                                            ; preds = %bb.bi
  %i.kr = invoke { i64, ptr } @_RINvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB3_7StreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtB9_6client4PeerE20send_pending_refusalINtNtNtNtB17_6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1)
          to label %bb.bl unwind label %bb.ay, !dbg !13719, !noalias !13196 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ks = extractvalue { i64, ptr } %i.kr, 0, !dbg !13720
  %i.kt = extractvalue { i64, ptr } %i.kr, 1, !dbg !13720 ; 2 uses
  %i.ku = trunc nuw i64 %i.ks to i1, !dbg !13706
  br i1 %i.ku, label %bb.bx, label %bb.bm, !dbg !13706

bb.bm:                                            ; preds = %bb.bl
  %.not55.i.i = icmp eq ptr %i.kt, null, !dbg !13721
  br i1 %.not55.i.i, label %bb.bo, label %bb.bn, !dbg !13722

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !13723, !noalias !13197
  invoke void @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25proto5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noundef nonnull %i.kt)
          to label %bb.bw unwind label %bb.ay, !dbg !13723, !noalias !13196

bb.bo:                                            ; preds = %bb.bm
  %i.kv = load i64, ptr %i.cs, align 8, !dbg !13724, !range !587, !noalias !13196, !noundef !496
  %.not.i.i67.i.i = icmp eq i64 %i.kv, 2, !dbg !13724
  br i1 %.not.i.i67.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175, label %bb.bp, !dbg !13725

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit69.i.i unwind label %bb.ax, !dbg !13726, !noalias !13196

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit69.i.i: ; preds = %bb.bp
  %.pr204 = load i64, ptr %i.cs, align 8, !dbg !13727, !alias.scope !13217, !noalias !13196 ; 2 uses
  %.not.i.i171 = icmp eq i64 %.pr204, 2, !dbg !13727
  br i1 %.not.i.i171, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175, label %bb.bq, !dbg !13728

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit69.i.i
  %i.kw = load i64, ptr %i.fd, align 8, !dbg !13729, !range !598, !alias.scope !13218, !noalias !13196, !noundef !496
  %i.kx = invoke noundef zeroext i1 @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.kw)
          to label %bb.bs unwind label %bb.br, !dbg !13730, !noalias !13196 ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2xfK085Iyqb_7tracing4span5InnerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #31
          to label %.body.i.i unwind label %bb.bv, !dbg !13731, !noalias !13196

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !13219), !dbg !13731, !noalias !13196
  call void @llvm.experimental.noalias.scope.decl(metadata !13220), !dbg !13732, !noalias !13196
  call void @llvm.experimental.noalias.scope.decl(metadata !13221), !dbg !13733, !noalias !13196
  call void @llvm.experimental.noalias.scope.decl(metadata !13222), !dbg !13734, !noalias !13196
  %i.kz = icmp eq i64 %.pr204, 0, !dbg !13735
  br i1 %i.kz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175, label %bb.bt, !dbg !13735

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !13223), !dbg !13735, !noalias !13196
  call void @llvm.experimental.noalias.scope.decl(metadata !13224), !dbg !13736, !noalias !13196
  %i.la = load ptr, ptr %i.fg, align 8, !dbg !13737, !alias.scope !13225, !noalias !13196, !nonnull !496, !noundef !496
  %i.lb = atomicrmw add ptr %i.la, i64 -1 release, align 8, !dbg !13738, !noalias !13226
  %i.lc = icmp eq i64 %i.lb, 1, !dbg !13739
  br i1 %i.lc, label %bb.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175, !dbg !13739

bb.bu:                                            ; preds = %bb.bt
  fence acquire, !dbg !13740, !noalias !13196
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtCs3oUPovFnLWP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fg) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175 unwind label %bb.an, !dbg !13741

bb.bv:                                            ; preds = %bb.br
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !13731, !noalias !13196
  unreachable, !dbg !13731

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175: ; preds = %bb.bo, %bb.bt, %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit69.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !13701, !noalias !13197
  %i.le = load i64, ptr %i.do, align 8, !dbg !13742, !range !587, !alias.scope !13194, !noalias !13227, !noundef !496
  %.not.i.i70.i.i = icmp eq i64 %i.le, 2, !dbg !13742
  br i1 %.not.i.i70.i.i, label %.thread167.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i, !dbg !13743

.thread167.i:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !13744, !noalias !13193
  br label %bb.cl, !dbg !13745

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175
  %.sroa.0101.1.i = phi i8 [ %.sroa.0101.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit175 ], !dbg !13746
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb)
          to label %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13747

bb.bw:                                            ; preds = %bb.bn
  %.sroa.0101.0.copyload103.i = load i8, ptr %i.cn, align 8, !dbg !13748, !noalias !13228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx106.i, i64 39, i1 false), !dbg !13748, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !13749, !noalias !13197
  br label %bb.bx, !dbg !13750

bb.bx:                                            ; preds = %bb.ca, %bb.bz, %bb.bw, %bb.bl, %bb.bj, %bb.bi, %bb.be, %bb.ba
  %.sroa.0101.0.i = phi i8 [ %.sroa.0101.0.copyload.i, %bb.ca ], [ -2, %bb.ba ], [ -2, %bb.bl ], [ -2, %bb.be ], [ %.sroa.0101.0.copyload103.i, %bb.bw ], [ %.sroa.0101.0.copyload102.i, %bb.bz ], [ %i.kq, %bb.bj ], [ -2, %bb.bi ], !dbg !13751 ; 2 uses
  %i.lf = load i64, ptr %i.cs, align 8, !dbg !13752, !range !587, !noalias !13197, !noundef !496
  %.not.i.i72.i.i = icmp eq i64 %i.lf, 2, !dbg !13752
  br i1 %.not.i.i72.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.by, !dbg !13753

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit74.i.i unwind label %bb.ax, !dbg !13754, !noalias !13196

bb.bz:                                            ; preds = %bb.bg
  %.sroa.0101.0.copyload102.i = load i8, ptr %i.co, align 8, !dbg !13755, !noalias !13228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx105.i, i64 39, i1 false), !dbg !13755, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !13756, !noalias !13197
  br label %bb.bx, !dbg !13757

bb.ca:                                            ; preds = %bb.bc
  %.sroa.0101.0.copyload.i = load i8, ptr %i.cp, align 8, !dbg !13758, !noalias !13228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.0..sroa_idx.i, i64 39, i1 false), !dbg !13758, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !13759, !noalias !13197
  br label %bb.bx, !dbg !13760

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit74.i.i: ; preds = %bb.by
  %.pr81.i.i = load i64, ptr %i.cs, align 8, !dbg !13761, !alias.scope !13229, !noalias !13197 ; 2 uses
  %.not.i.i75.i.i = icmp eq i64 %.pr81.i.i, 2, !dbg !13761
  br i1 %.not.i.i75.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.cb, !dbg !13762

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit74.i.i
  %i.lg = load i64, ptr %i.fd, align 8, !dbg !13763, !range !598, !alias.scope !13230, !noalias !13197, !noundef !496
  %i.lh = invoke noundef zeroext i1 @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.lg)
          to label %bb.cd unwind label %bb.cc, !dbg !13764, !noalias !13196 ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2xfK085Iyqb_7tracing4span5InnerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #31
          to label %.body.i.i unwind label %bb.cg, !dbg !13765, !noalias !13196

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !13231), !dbg !13765
  call void @llvm.experimental.noalias.scope.decl(metadata !13232), !dbg !13766
  call void @llvm.experimental.noalias.scope.decl(metadata !13233), !dbg !13767
  call void @llvm.experimental.noalias.scope.decl(metadata !13234), !dbg !13768
  %i.lj = icmp eq i64 %.pr81.i.i, 0, !dbg !13769
  br i1 %i.lj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.ce, !dbg !13769

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !13235), !dbg !13769
  call void @llvm.experimental.noalias.scope.decl(metadata !13236), !dbg !13770
  %i.lk = load ptr, ptr %i.fg, align 8, !dbg !13771, !alias.scope !13237, !noalias !13197, !nonnull !496, !noundef !496
  %i.ll = atomicrmw add ptr %i.lk, i64 -1 release, align 8, !dbg !13772, !noalias !13238
  %i.lm = icmp eq i64 %i.ll, 1, !dbg !13773
  br i1 %i.lm, label %bb.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !13773

bb.cf:                                            ; preds = %bb.ce
  fence acquire, !dbg !13774
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtCs3oUPovFnLWP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fg) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.an, !dbg !13775, !noalias !13196

bb.cg:                                            ; preds = %bb.cc
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !13765, !noalias !13196
  unreachable, !dbg !13765

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit74.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !13701, !noalias !13197
  %i.lo = load i64, ptr %i.do, align 8, !dbg !13776, !range !587, !alias.scope !13194, !noalias !13239, !noundef !496
  %.not.i.i77.i.i = icmp eq i64 %i.lo, 2, !dbg !13776
  br i1 %.not.i.i77.i.i, label %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i, !dbg !13777

bb.ch:                                            ; preds = %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit66.i.i, %bb.am
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !13778, !noalias !13196
  unreachable, !dbg !13778

_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.0101.2.i = phi i8 [ %.sroa.0101.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span4SpanECsbaWXNhtWAp9_11foundations.exit.i.i ], [ %.sroa.0101.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i ], !dbg !13746 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !13744, !noalias !13193
  switch i8 %.sroa.0101.2.i, label %bb.ck [
    i8 -2, label %.loopexit225
    i8 -1, label %bb.cl
  ], !dbg !13779

bb.ci:                                            ; preds = %bb.ad
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 32, !dbg !13780
  %i.lr = load ptr, ptr %i.lq, align 8, !dbg !13780, !noalias !13241, !nonnull !496, !noundef !496
  invoke void %i.lr(ptr noundef %.sroa.6.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.sroa.5.0.copyload.i.i.i)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13780, !inline_history !12463

.noexc95:                                         ; preds = %bb.ci
  invoke void @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25proto5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dh, ptr noundef nonnull %i.ja)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13781

bb.cj:                                            ; preds = %.noexc91
  %.val.pre.i = load ptr, ptr %i.er, align 8, !dbg !13782, !alias.scope !13178
  %.val83.pre.i = load i8, ptr %i.ey, align 4, !dbg !13782, !alias.scope !13178
  %i.ls = icmp eq ptr %.val.pre.i, null, !dbg !13783
  %i.lt = trunc nuw i8 %.val83.pre.i to i1
  %i.lu = select i1 %i.ls, i1 %i.lt, i1 false, !dbg !13784
  br i1 %i.lu, label %.loopexit.i, label %bb.ak, !dbg !13669

.loopexit.i:                                      ; preds = %bb.cj, %.thread.i
  %.sroa.12.0.ph.ph514.i = phi i32 [ %i.jt, %.thread.i ], [ %.sroa.6.sroa.8.0.copyload.i.i.i, %bb.cj ]
  %.val84.i = load i8, ptr %i.gs, align 1, !dbg !13785, !range !639, !alias.scope !13178, !noundef !496
  %i.lv = trunc nuw i8 %.val84.i to i1, !dbg !13786
  br i1 %i.lv, label %.thread211, label %bb.gi, !dbg !13787

bb.ck:                                            ; preds = %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.459.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12104.i, i64 39, i1 false), !dbg !13788, !noalias !13244
  br label %.loopexit225, !dbg !13789

bb.cl:                                            ; preds = %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i, %.thread167.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i), !dbg !13790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !13790, !noalias !13193
  call void @llvm.experimental.noalias.scope.decl(metadata !13245), !dbg !13791
  call void @llvm.experimental.noalias.scope.decl(metadata !13246), !dbg !13791
  store ptr %i.el, ptr %i.cy, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  store ptr %i.er, ptr %i.fi, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  %i.lw = load <2 x ptr>, ptr %i.eq, align 8, !dbg !13793, !alias.scope !13247
  %i.lx = getelementptr inbounds nuw i8, <2 x ptr> %i.lw, i64 16, !dbg !13794
  store <2 x ptr> %i.lx, ptr %i.fj, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  store ptr %i.fh, ptr %i.fk, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  store ptr %i.fe, ptr %i.fl, align 8, !dbg !13792, !alias.scope !13245, !noalias !13193
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i), !dbg !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !dbg !13795, !noalias !13193
  invoke void @_RNvXs1_NtCsb6T6P0NKlCh_2h25codecINtB5_5CodecINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB7_5proto7streams10prioritize11PrioritizedINtNtNtBP_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(address) dereferenceable(296) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13796

.noexc97:                                         ; preds = %bb.cl
  %i.ly = load i8, ptr %i.cx, align 8, !dbg !13797, !range !13248, !noalias !13193, !noundef !496 ; 2 uses
  switch i8 %i.ly, label %bb.cn [
    i8 -3, label %bb.cm
    i8 -2, label %.thread170.i
    i8 -1, label %bb.ga
  ], !dbg !13798

.thread170.i:                                     ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !13799, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, i64 32, i1 false), !dbg !13800, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx487.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !dbg !13800, !noalias !13193
  %i.lz = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13801, !noalias !13251
  %i.ma = icmp eq i64 %i.lz, 0, !dbg !13802
  br i1 %i.ma, label %bb.co, label %bb.cr, !dbg !13803

bb.cm:                                            ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !13799, !noalias !13193
  store i8 -2, ptr %i.dh, align 8, !dbg !13804, !alias.scope !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !13805
  br label %bb.gh, !dbg !13806

bb.cn:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.467.0..sroa_idx.i, i64 3, i1 false), !dbg !13807, !noalias !13193
  %.sroa.467.sroa.4.0.copyload.i = load i32, ptr %.sroa.467.sroa.4.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !dbg !13807, !noalias !13193 ; 13 uses
  %.sroa.467.sroa.5.0.copyload.i = load i32, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !dbg !13807, !noalias !13193 ; 17 uses
  %.sroa.467.sroa.6.sroa.0.0.copyload.i = load i32, ptr %.sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !dbg !13807, !noalias !13193 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !dbg !13807, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.568.0..sroa_idx.i, i64 248, i1 false), !dbg !13807, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !13799, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !dbg !13795, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !dbg !13800, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx487.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !dbg !13800, !noalias !13193
  call void @llvm.experimental.noalias.scope.decl(metadata !13255), !dbg !13808
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
  ], !dbg !13809

default.unreachable.i.i:                          ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %.thread170.i
  %i.mb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, i64 16) monotonic, align 8, !dbg !13810, !noalias !13251 ; 3 uses
  switch i8 %i.mb, label %bb.cp [
    i8 0, label %bb.cr
    i8 1, label %bb.cq
    i8 2, label %bb.cq
  ], !dbg !13811, !prof !569

bb.cp:                                            ; preds = %bb.co
  %i.mc = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE) #33
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13812 ; 2 uses

.noexc98:                                         ; preds = %bb.cp
  %i.md = icmp eq i8 %i.mc, 0, !dbg !13813
  br i1 %i.md, label %bb.cr, label %bb.cq, !dbg !13814

bb.cq:                                            ; preds = %bb.co, %.noexc98, %bb.co
  %.sroa.095.0.i.i = phi i8 [ %i.mc, %.noexc98 ], [ %i.mb, %bb.co ], [ %i.mb, %bb.co ], !dbg !13815
  %i.me = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !dbg !13816, !noalias !13251, !nonnull !496, !align !581, !noundef !496
  %i.mf = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.me, i8 noundef %.sroa.095.0.i.i)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13814

.noexc99:                                         ; preds = %bb.cq
  br i1 %i.mf, label %bb.cs, label %bb.cr, !dbg !13817

bb.cr:                                            ; preds = %.noexc102, %.noexc99, %.noexc98, %bb.co, %.thread170.i
  %i.mg = invoke noundef zeroext i1 @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE8recv_eofCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i1 noundef zeroext false)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13818

.noexc100:                                        ; preds = %bb.cr
  br i1 %i.mg, label %.noexc45.i.i.i.invoke, label %.thread206, !dbg !13819, !prof !693

bb.cs:                                            ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !13817, !noalias !13251
  %i.mh = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !dbg !13820, !noalias !13251, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 48, !dbg !13821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !13817, !noalias !13251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !13817, !noalias !13251
  store <2 x ptr> <ptr @72, ptr inttoptr (i64 25 to ptr)>, ptr %i.ah, align 16, !dbg !13822, !noalias !13251
  store ptr %i.ah, ptr %i.ai, align 8, !dbg !13817, !noalias !13251
  store ptr @1, ptr %i.fm, align 8, !dbg !13817, !noalias !13251
  store i64 1, ptr %i.aj, align 8, !dbg !13817, !noalias !13251
  store ptr %i.ai, ptr %.sroa.097.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13817, !noalias !13251
  store i64 1, ptr %.sroa.097.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13817, !noalias !13251
  store ptr %i.mi, ptr %.sroa.498.0..sroa_idx.i.i, align 8, !dbg !13817, !noalias !13251
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13823

.noexc102:                                        ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !13817, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !13817, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !13817, !noalias !13251
  br label %bb.cr, !dbg !13817

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !13824, !noalias !13251
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.ao, align 4, !dbg !13824, !noalias !13267
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8114.4..sroa_idx115.i, align 4, !dbg !13824, !noalias !13267
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx121.i, align 4, !dbg !13824, !noalias !13267
  %i.mj = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13825, !noalias !13251
  %i.mk = icmp eq i64 %i.mj, 0, !dbg !13826
  br i1 %i.mk, label %bb.dv, label %bb.dy, !dbg !13827

bb.cu:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !13828, !noalias !13251
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.bl, align 4, !dbg !13828, !noalias !13267
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8114.4..sroa_idx.i, align 4, !dbg !13828, !noalias !13267
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx.i, align 4, !dbg !13828, !noalias !13267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.0..sroa.14.4..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.i, i64 48, i1 false), !dbg !13828, !noalias !13267
  %i.ml = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13829, !noalias !13251
  %i.mm = icmp eq i64 %i.ml, 0, !dbg !13830
  br i1 %i.mm, label %bb.el, label %bb.gb, !dbg !13831

bb.cv:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !13832, !noalias !13251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.az, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, i64 3, i1 false), !dbg !13832, !noalias !13193
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %.sroa.4110.1..sroa_idx.i, align 1, !dbg !13832, !noalias !13267
  %.sroa.8114.0.extract.trunc.i = trunc i32 %.sroa.467.sroa.5.0.copyload.i to i16, !dbg !13832
  store i16 %.sroa.8114.0.extract.trunc.i, ptr %.sroa.8114.1..sroa_idx.i, align 1, !dbg !13832, !noalias !13267
  %i.mn = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13833, !noalias !13251
  %i.mo = icmp eq i64 %i.mn, 0, !dbg !13834
  br i1 %i.mo, label %bb.ep, label %bb.es, !dbg !13835

bb.cw:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !13836, !noalias !13251
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.au, align 4, !dbg !13836, !noalias !13251
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.fn, align 4, !dbg !13836, !noalias !13251
  %i.mp = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13837, !noalias !13251
  %i.mq = icmp eq i64 %i.mp, 0, !dbg !13838
  br i1 %i.mq, label %bb.fm, label %bb.fp, !dbg !13839

bb.cx:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !13840, !noalias !13251
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.by, align 4, !dbg !13840, !noalias !13251
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.gm, align 4, !dbg !13840, !noalias !13251
  %i.mr = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13841, !noalias !13251
  %i.ms = icmp eq i64 %i.mr, 0, !dbg !13842
  br i1 %i.ms, label %bb.ft, label %bb.fw, !dbg !13843

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE4pollCsbaWXNhtWAp9_11foundations:bb.a
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE18recv_window_updateCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i32 noundef %i.qz, i32 noundef %i.qy)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14045

.noexc123:                                        ; preds = %bb.fp
  %i.ra = load i8, ptr %i.ap, align 8, !dbg !14046, !range !551, !noalias !13251, !noundef !496
  %.not158.i.i = icmp eq i8 %i.ra, -1, !dbg !14046
  br i1 %.not158.i.i, label %bb.fs, label %bb.fr, !dbg !14047

bb.fq:                                            ; preds = %.noexc122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !14043, !noalias !13251
  %i.rb = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames5_10___CALLSITE, align 8, !dbg !14048, !noalias !13251, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 48, !dbg !14049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !14043, !noalias !13251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !14043, !noalias !13251
  store <2 x ptr> <ptr @92, ptr inttoptr (i64 37 to ptr)>, ptr %i.ar, align 16, !dbg !14050, !noalias !13251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !14043, !noalias !13251
  store ptr %i.au, ptr %i.aq, align 8, !dbg !14051, !noalias !13251
  store ptr %i.ar, ptr %i.as, align 8, !dbg !14043, !noalias !13251
  store ptr @1, ptr %i.fo, align 8, !dbg !14043, !noalias !13251
  store ptr %i.aq, ptr %i.fp, align 8, !dbg !14043, !noalias !13251
  store ptr @93, ptr %i.fq, align 8, !dbg !14043, !noalias !13251
  store i64 1, ptr %i.at, align 8, !dbg !14043, !noalias !13251
  store ptr %i.as, ptr %.sroa.077.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14043, !noalias !13251
  store i64 2, ptr %.sroa.077.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14043, !noalias !13251
  store ptr %i.rc, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !dbg !14043, !noalias !13251
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14052

.noexc124:                                        ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !14043, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !14043, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !14043, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !14043, !noalias !13251
  %.pre192.i.i = load i32, ptr %i.au, align 4, !dbg !14044, !noalias !13251
  %.pre193.i.i = load i32, ptr %i.fn, align 4, !dbg !14044, !noalias !13251
  br label %bb.fp, !dbg !14043

bb.fr:                                            ; preds = %.noexc123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !dbg !14053, !noalias !13292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !14054, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !14055, !noalias !13251
  br label %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10recv_frameCsbaWXNhtWAp9_11foundations.exit.i, !dbg !13870

bb.fs:                                            ; preds = %.noexc123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !14054, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !14055, !noalias !13251
  br label %.thread206, !dbg !14055

bb.ft:                                            ; preds = %bb.cx
  %i.rd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, i64 16) monotonic, align 8, !dbg !14056, !noalias !13251 ; 3 uses
  switch i8 %i.rd, label %bb.fu [
    i8 0, label %bb.fw
    i8 1, label %bb.fv
    i8 2, label %bb.fv
  ], !dbg !14057, !prof !569

bb.fu:                                            ; preds = %bb.ft
  %i.re = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE) #33
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14058 ; 2 uses

.noexc125:                                        ; preds = %bb.fu
  %i.rf = icmp eq i8 %i.re, 0, !dbg !14059
  br i1 %i.rf, label %bb.fw, label %bb.fv, !dbg !14060

bb.fv:                                            ; preds = %bb.ft, %.noexc125, %bb.ft
  %.sroa.025.0.i.i = phi i8 [ %i.re, %.noexc125 ], [ %i.rd, %bb.ft ], [ %i.rd, %bb.ft ], !dbg !14061
  %i.rg = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !dbg !14062, !noalias !13251, !nonnull !496, !align !581, !noundef !496
  %i.rh = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rg, i8 noundef %.sroa.025.0.i.i)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14060

.noexc126:                                        ; preds = %bb.fv
  br i1 %i.rh, label %bb.fx, label %bb.fw, !dbg !14063

bb.fw:                                            ; preds = %.noexc128, %.noexc126, %.noexc125, %bb.ft, %bb.cx
  %i.ri = phi i32 [ %.sroa.467.sroa.5.0.copyload.i, %.noexc125 ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.ft ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.cx ], [ %.pre191.i.i, %.noexc128 ], [ %.sroa.467.sroa.5.0.copyload.i, %.noexc126 ], !dbg !14064
  %i.rj = phi i32 [ %.sroa.467.sroa.4.0.copyload.i, %.noexc125 ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.ft ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.cx ], [ %.pre.i.i, %.noexc128 ], [ %.sroa.467.sroa.4.0.copyload.i, %.noexc126 ], !dbg !14064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !14064, !noalias !13251
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10recv_resetCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj, i32 noundef %i.rj, i32 noundef %i.ri)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14065

.noexc127:                                        ; preds = %bb.fw
  %i.rk = load i8, ptr %i.bt, align 8, !dbg !14066, !range !551, !noalias !13251, !noundef !496
  %.not157.i.i = icmp eq i8 %i.rk, -1, !dbg !14066
  br i1 %.not157.i.i, label %bb.fz, label %bb.fy, !dbg !14067

bb.fx:                                            ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !14063, !noalias !13251
  %i.rl = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !dbg !14068, !noalias !13251, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 48, !dbg !14069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !14063, !noalias !13251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !14063, !noalias !13251
  store <2 x ptr> <ptr @94, ptr inttoptr (i64 31 to ptr)>, ptr %i.bv, align 16, !dbg !14070, !noalias !13251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !14063, !noalias !13251
  store ptr %i.by, ptr %i.bu, align 8, !dbg !14071, !noalias !13251
  store ptr %i.bv, ptr %i.bw, align 8, !dbg !14063, !noalias !13251
  store ptr @1, ptr %i.gn, align 8, !dbg !14063, !noalias !13251
  store ptr %i.bu, ptr %i.go, align 8, !dbg !14063, !noalias !13251
  store ptr @95, ptr %i.gp, align 8, !dbg !14063, !noalias !13251
  store i64 1, ptr %i.bx, align 8, !dbg !14063, !noalias !13251
  store ptr %i.bw, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14063, !noalias !13251
  store i64 2, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14063, !noalias !13251
  store ptr %i.rm, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !dbg !14063, !noalias !13251
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx)
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14072

.noexc128:                                        ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !14063, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !14063, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !14063, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !14063, !noalias !13251
  %.pre.i.i = load i32, ptr %i.by, align 4, !dbg !14064, !noalias !13251
  %.pre191.i.i = load i32, ptr %i.gm, align 4, !dbg !14064, !noalias !13251
  br label %bb.fw, !dbg !14063

bb.fy:                                            ; preds = %.noexc127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 40, i1 false), !dbg !14073, !noalias !13292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !14074, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !14075, !noalias !13251
  br label %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10recv_frameCsbaWXNhtWAp9_11foundations.exit.i, !dbg !13870

bb.fz:                                            ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !14074, !noalias !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !14075, !noalias !13251
  br label %.thread206, !dbg !14075

bb.ga:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !dbg !14076, !noalias !13193
  %i.rn = load <2 x i32>, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !dbg !14076, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !13799, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !dbg !13799, !noalias !13244
  store <2 x i32> %i.rn, ptr %i.dh, align 8, !dbg !14077, !alias.scope !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !13805
  br label %bb.gh, !dbg !13806

_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10recv_frameCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.fy, %bb.fr, %.noexc120, %bb.ei, %bb.ds, %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, i64 40, i1 false), !dbg !14078, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !13805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, i64 40, i1 false), !dbg !13805, !noalias !13244
  br label %bb.gh, !dbg !13806

.thread206:                                       ; preds = %bb.dh, %bb.dt, %bb.dy, %bb.ej, %bb.ev, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit.i.i, %bb.fs, %bb.fz, %.noexc100
  %.sroa.15108.0.ph.i.ph = phi i32 [ 3, %.noexc100 ], [ 2, %bb.fz ], [ 2, %bb.fs ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit.i.i ], [ 2, %bb.ev ], [ 2, %bb.ej ], [ 2, %bb.dy ], [ 2, %bb.dt ], [ 2, %bb.dh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !dbg !14079, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !13805
  br label %bb.gc, !dbg !13790

bb.gb:                                            ; preds = %bb.cu, %bb.el, %.noexc109, %.noexc110, %.noexc111
  %.sroa.15108.4.copyload.i = load i32, ptr %i.bl, align 4, !dbg !14080, !noalias !13292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.8114.4..sroa_idx.i, i64 56, i1 false), !dbg !14080, !noalias !13292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !14081, !noalias !13251
  %i.ro = freeze i32 %.sroa.15108.4.copyload.i, !dbg !13790 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !dbg !14079, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !13805
  %i.rp = icmp ugt i32 %i.ro, 1, !dbg !13790
  br i1 %i.rp, label %bb.gc, label %.thread178.i, !dbg !13790

bb.gc:                                            ; preds = %.thread206, %bb.gb
  %.sroa.15108.0.ph.i208 = phi i32 [ %.sroa.15108.0.ph.i.ph, %.thread206 ], [ %i.ro, %bb.gb ]
  %i.rq = icmp eq i32 %.sroa.15108.0.ph.i208, 3, !dbg !14082
  br i1 %i.rq, label %bb.ge, label %bb.gd, !dbg !14082

.thread178.i:                                     ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !14083, !noalias !13193
  store i32 %i.ro, ptr %i.cw, align 4, !dbg !14083, !noalias !13193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.345.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, i64 56, i1 false), !dbg !14083, !noalias !13193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !14084, !noalias !13193
  invoke void @_RINvMNtNtCsb6T6P0NKlCh_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1f_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEB3K_NtNtB7_6client4PeerECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cv, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ff, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14085

.noexc129:                                        ; preds = %.thread178.i
  %i.rr = load i8, ptr %i.cv, align 8, !dbg !14086, !range !551, !noalias !13193, !noundef !496
  %.not82.i = icmp eq i8 %i.rr, -1, !dbg !14086
  br i1 %.not82.i, label %bb.gg, label %bb.gf, !dbg !14087

bb.gd:                                            ; preds = %bb.gg, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i), !dbg !14088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !14088, !noalias !13193
  br label %.noexc90, !dbg !14089

bb.ge:                                            ; preds = %bb.gc
  store i8 -1, ptr %i.dh, align 8, !dbg !14090, !alias.scope !13177
  br label %bb.gh, !dbg !14091

bb.gf:                                            ; preds = %.noexc129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !dbg !14092, !noalias !13244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !14093, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !14094, !noalias !13193
  br label %bb.gh, !dbg !13806

bb.gg:                                            ; preds = %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !14093, !noalias !13193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !14094, !noalias !13193
  br label %bb.gd, !dbg !14088

bb.gh:                                            ; preds = %bb.gf, %bb.ge, %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10recv_frameCsbaWXNhtWAp9_11foundations.exit.i, %bb.ga, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i), !dbg !14088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !14088, !noalias !13193
  br label %thread-pre-split, !dbg !13806

.loopexit225:                                     ; preds = %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i, %bb.ck
  %.sroa.0101.2.i1058 = phi i8 [ %.sroa.0101.2.i, %bb.ck ], [ -2, %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations.exit.i ] ; 2 uses
  store i8 %.sroa.0101.2.i1058, ptr %i.dh, align 8, !dbg !14095, !alias.scope !13177
  br label %bb.gp, !dbg !13806

bb.gi:                                            ; preds = %.loopexit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9100.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !14096, !alias.scope !13177
  store i8 1, ptr %i.dh, align 8, !dbg !14097, !alias.scope !13177
  store i8 1, ptr %.sroa.459.0..sroa_idx.i, align 1, !dbg !14097, !alias.scope !13177
  store i32 %.sroa.12.0.ph.ph514.i, ptr %.sroa.4149.0..sroa_idx.i, align 4, !dbg !14097, !alias.scope !13177
  store <2 x ptr> <ptr @59, ptr inttoptr (i64 1 to ptr)>, ptr %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, align 8, !dbg !14097, !alias.scope !13177
  br label %thread-pre-split, !dbg !14098

.thread211:                                       ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i), !dbg !13672
  br label %bb.gr, !dbg !13673

bb.gj:                                            ; preds = %bb.x
  %i.rs = load i32, ptr %i.en, align 4, !dbg !14099, !noundef !496 ; 3 uses
  %i.rt = load i8, ptr %i.eo, align 1, !dbg !14100, !range !714, !noundef !496
  call void @llvm.experimental.noalias.scope.decl(metadata !13419), !dbg !14101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !14102, !noalias !13420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !14102, !noalias !13420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.fh, i64 40, i1 false), !dbg !14103, !noalias !13421
  store ptr null, ptr %i.fh, align 8, !dbg !14104, !alias.scope !13419
  %i.ru = load ptr, ptr %i.ad, align 8, !dbg !14105, !noalias !13420, !noundef !496 ; 2 uses
  %.not.i = icmp eq ptr %i.ru, null, !dbg !14105
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i, label %bb.gk, !dbg !14106

bb.gk:                                            ; preds = %bb.gj
  %i.rv = load ptr, ptr %i.ru, align 8, !dbg !14107, !noalias !13422, !nonnull !496, !noundef !496
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24, !dbg !14108 ; 3 uses
  %.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !14109 ; 3 uses
  %i.rw = load ptr, ptr %.sroa.gep39.i, align 8, !dbg !14109, !noalias !13422, !noundef !496
  %.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !14110 ; 3 uses
  %i.rx = load i64, ptr %.sroa.gep41.i, align 8, !dbg !14110, !noalias !13422, !noundef !496
  invoke void %i.rv(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull align 8 %.sroa.gep.i, ptr noundef %i.rw, i64 noundef %i.rx)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayE6map_orTNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBP_6client4PeerINtNtNtB3u_5proto2h27SendBufB1A_EE10take_error0ECsbaWXNhtWAp9_11foundations.exit.i unwind label %.body.i, !dbg !14107, !noalias !13424, !inline_history !12825

.body.i:                                          ; preds = %bb.gk
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13425), !dbg !14111
  %i.rz = load ptr, ptr %i.ad, align 8, !dbg !14112, !alias.scope !13425, !noalias !13420, !noundef !496 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, null, !dbg !14112
  br i1 %i.sa, label %.body, label %bb.gl, !dbg !14112

bb.gl:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13426), !dbg !14112
  call void @llvm.experimental.noalias.scope.decl(metadata !13427), !dbg !14113
  call void @llvm.experimental.noalias.scope.decl(metadata !13428), !dbg !14114
  %i.sb = load ptr, ptr %.sroa.gep.i, align 8, !dbg !14115, !alias.scope !13429, !noalias !13420, !noundef !496
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 32, !dbg !14116
  %i.sd = load ptr, ptr %i.sc, align 8, !dbg !14116, !noalias !13430, !nonnull !496, !noundef !496
  %i.se = load ptr, ptr %.sroa.gep39.i, align 8, !dbg !14117, !alias.scope !13429, !noalias !13420, !noundef !496
  %i.sf = load i64, ptr %.sroa.gep41.i, align 8, !dbg !14118, !alias.scope !13429, !noalias !13420, !noundef !496
  invoke void %i.sd(ptr noundef %i.sb, ptr noundef %i.se, i64 noundef %i.sf)
          to label %.body unwind label %bb.go, !dbg !14116, !noalias !13420, !inline_history !301

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayE6map_orTNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBP_6client4PeerINtNtNtB3u_5proto2h27SendBufB1A_EE10take_error0ECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.gk
  %.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 36, !dbg !14119
  %i.sg = load i32, ptr %.sroa.gep43.i, align 4, !dbg !14119, !noalias !13422, !noundef !496 ; 2 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ae, align 8, !dbg !14120, !noalias !13420 ; 4 uses
  %.sroa.6.0..sroa_idx29.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx29.phi.trans.insert.i, align 8, !dbg !14120, !noalias !13420 ; 3 uses
  %.sroa.8.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0.copyload.pre.i = load i64, ptr %.sroa.8.0..sroa_idx.phi.trans.insert.i, align 8, !dbg !14120, !noalias !13420 ; 3 uses
  %.sroa.10.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i, align 8, !dbg !14120, !noalias !13420 ; 3 uses
  %.pre.i = load ptr, ptr %i.ad, align 8, !dbg !14121, !alias.scope !13431, !noalias !13420 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13431), !dbg !14111
  %i.sh = icmp eq ptr %.pre.i, null, !dbg !14121
  br i1 %i.sh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i, label %bb.gm, !dbg !14121

bb.gm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayE6map_orTNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBP_6client4PeerINtNtNtB3u_5proto2h27SendBufB1A_EE10take_error0ECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13432), !dbg !14121
  call void @llvm.experimental.noalias.scope.decl(metadata !13433), !dbg !14122
  call void @llvm.experimental.noalias.scope.decl(metadata !13434), !dbg !14123
  %i.si = load ptr, ptr %.sroa.gep.i, align 8, !dbg !14124, !alias.scope !13435, !noalias !13420, !noundef !496
  %i.sj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32, !dbg !14125
  %i.sk = load ptr, ptr %i.sj, align 8, !dbg !14125, !noalias !13436, !nonnull !496, !noundef !496
  %i.sl = load ptr, ptr %.sroa.gep39.i, align 8, !dbg !14126, !alias.scope !13435, !noalias !13420, !noundef !496
  %i.sm = load i64, ptr %.sroa.gep41.i, align 8, !dbg !14127, !alias.scope !13435, !noalias !13420, !noundef !496
  invoke void %i.sk(ptr noundef %i.si, ptr noundef %i.sl, i64 noundef %i.sm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i unwind label %bb.gn, !dbg !14125, !noalias !13420, !inline_history !301

bb.gn:                                            ; preds = %bb.gm
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.pre.i) ]
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 32, !dbg !14128
  %i.sp = load ptr, ptr %i.so, align 8, !dbg !14128, !noalias !13437, !nonnull !496, !noundef !496
  invoke void %i.sp(ptr noundef %.sroa.10.0.copyload.pre.i, ptr noundef %.sroa.6.0.copyload.pre.i, i64 noundef %.sroa.8.0.copyload.pre.i)
          to label %.body unwind label %bb.go, !dbg !14128, !noalias !13420, !inline_history !408

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i: ; preds = %bb.gm, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayE6map_orTNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMs_NtNtBP_5proto10connectionINtB2D_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtBP_6client4PeerINtNtNtB3u_5proto2h27SendBufB1A_EE10take_error0ECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !14111, !noalias !13420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !14111, !noalias !13420
  %i.sq = icmp eq i32 %i.rs, 0, !dbg !14129
  %i.sr = icmp eq i32 %i.sg, 0, !dbg !14129
  %. = select i1 %i.sq, i8 -1, i8 1, !dbg !14129
  br i1 %i.sr, label %.thread.i130, label %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10take_errorCsbaWXNhtWAp9_11foundations.exit, !dbg !14129

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !14111, !noalias !13420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !14111, !noalias !13420
  %i.ss = icmp eq i32 %i.rs, 0, !dbg !14129
  %spec.select = select i1 %i.ss, i8 -1, i8 1, !dbg !14129
  br label %.thread.i130, !dbg !14129

.thread.i130:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i
  %.sroa.0190.0 = phi i8 [ %spec.select, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i ], [ %., %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i ], !dbg !14130
  %.sroa.10.0.copyload6487.i = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i ]
  %.sroa.8.0.copyload6583.i = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i ], [ %.sroa.8.0.copyload.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i ]
  %.sroa.6.0.copyload6679.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i ], [ %.sroa.6.0.copyload.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i ]
  %.sroa.0.0.copyload6772.i = phi ptr [ @59, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.thread.i ], [ %.sroa.0.0.copyload.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayEECsbaWXNhtWAp9_11foundations.exit25.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload6772.i) ]
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload6772.i, i64 32, !dbg !14131
  %i.su = load ptr, ptr %i.st, align 8, !dbg !14131, !noalias !13438, !nonnull !496, !noundef !496
  invoke void %i.su(ptr noundef %.sroa.10.0.copyload6487.i, ptr noundef %.sroa.6.0.copyload6679.i, i64 noundef %.sroa.8.0.copyload6583.i)
          to label %_RNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB4_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoENtNtB8_6client4PeerINtNtNtB18_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10take_errorCsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14131, !inline_history !12871

bb.go:                                            ; preds = %bb.gn, %bb.gl
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !14132, !noalias !13420
  unreachable, !dbg !14132

thread-pre-split:                                 ; preds = %.noexc95, %bb.gh, %bb.gi
  %.pr209 = load i8, ptr %i.dh, align 8, !dbg !13626
  br label %bb.gp, !dbg !13672

bb.gp:                                            ; preds = %thread-pre-split, %.loopexit225
  %i.sw = phi i8 [ %.pr209, %thread-pre-split ], [ %.sroa.0101.2.i1058, %.loopexit225 ], !dbg !13626 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i), !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12104.i), !dbg !13672
  %i.sx = icmp eq i8 %i.sw, -2, !dbg !13626
  br i1 %i.sx, label %bb.gq, label %bb.gr, !dbg !13673

bb.gq:                                            ; preds = %.thread210, %bb.gp
  %i.sy = invoke { i64, ptr } @_RINvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB3_7StreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtB9_6client4PeerE13poll_completeINtNtNtNtB17_6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.in unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14133 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span7EnteredECsbaWXNhtWAp9_11foundations.exit71.sink.split.i.i, %bb.cl, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.de, %bb.dq, %bb.dw, %bb.dx, %bb.dz, %bb.eg, %bb.em, %bb.en, %bb.eo, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.ex, %.noexc117, %.noexc118, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %.thread178.i, %bb.t, %bb.u, %bb.gq, %bb.it, %bb.jb, %bb.jc, %bb.jf, %bb.y, %bb.z, %bb.ci, %.noexc95, %bb.fi, %bb.iv, %.noexc159, %bb.jg, %bb.ie, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.hi, %bb.hg, %bb.hf, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gu, %.noexc45.i.i.i.invoke, %bb.iq, %bb.jk, %bb.ew, %.thread.i130
  %lpad.loopexit.split-lp1053 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gr:                                            ; preds = %bb.gp, %.thread211
  %.sroa.0683.0.copyload = phi i8 [ %i.sw, %bb.gp ], [ -1, %.thread211 ], !dbg !14134
  %.sroa.4.0.copyload = load i8, ptr %.sroa.459.0..sroa_idx.i, align 1, !dbg !14134 ; 8 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.4149.0..sroa_idx.i, align 4, !dbg !14134 ; 6 uses
  %.sroa.7687.0.copyload = load i32, ptr %.sroa.4149.sroa.4.0..sroa.4149.0..sroa_idx.sroa_idx.i, align 8, !dbg !14134 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13), !dbg !14135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8688.0..sroa_idx, i64 28, i1 false), !dbg !14134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !14136
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !13507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !13507
  call void @llvm.experimental.noalias.scope.decl(metadata !13439), !dbg !14137
  call void @llvm.experimental.noalias.scope.decl(metadata !13440), !dbg !14137
  store ptr %i.el, ptr %i.df, align 8, !dbg !14138, !alias.scope !13439
  store ptr %i.er, ptr %i.ha, align 8, !dbg !14138, !alias.scope !13439
  %i.sz = load <2 x ptr>, ptr %i.eq, align 8, !dbg !14139, !alias.scope !13440
  %i.ta = getelementptr inbounds nuw i8, <2 x ptr> %i.sz, i64 16, !dbg !14140
  store <2 x ptr> %i.ta, ptr %i.hb, align 8, !dbg !14138, !alias.scope !13439
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14138, !alias.scope !13439
  store ptr %i.fh, ptr %i.hc, align 8, !dbg !14138, !alias.scope !13439
  store ptr %i.fe, ptr %i.hd, align 8, !dbg !14138, !alias.scope !13439
  call void @llvm.experimental.noalias.scope.decl(metadata !13441), !dbg !14141
  switch i8 %.sroa.0683.0.copyload, label %default.unreachable.i [
    i8 -1, label %bb.gs
    i8 0, label %bb.gt
    i8 1, label %bb.gu
    i8 2, label %bb.hj
  ], !dbg !14142

bb.gs:                                            ; preds = %bb.gr
  store i8 1, ptr %i.el, align 8, !dbg !14143, !noalias !13442
  store i8 1, ptr %i.eo, align 1, !dbg !14143, !noalias !13442
  store i32 0, ptr %i.en, align 4, !dbg !14143, !noalias !13442
  br label %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE19handle_poll2_resultCsbaWXNhtWAp9_11foundations.exit.thread, !dbg !14144

default.unreachable.i:                            ; preds = %bb.gr
  unreachable

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !14145, !noalias !13442
  store i32 %.sroa.6.0.copyload, ptr %i.ab, align 4, !dbg !14145, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !14146, !noalias !13442
  store i32 %.sroa.7687.0.copyload, ptr %i.aa, align 4, !dbg !14146, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !14147, !noalias !13442
  store i8 %.sroa.4.0.copyload, ptr %i.z, align 1, !dbg !14147, !noalias !13442
  %i.tb = icmp eq i8 %.sroa.4.0.copyload, 2, !dbg !14148
  %i.tc = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !14149, !noalias !13442
  %i.td = icmp eq i64 %i.tc, 0, !dbg !14150       ; 2 uses
  br i1 %i.tb, label %bb.hd, label %bb.gv, !dbg !14151

bb.gu:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !14152, !noalias !13442
  store i32 %.sroa.7687.0.copyload, ptr %i.ac, align 8, !dbg !14152, !noalias !13445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, i64 28, i1 false), !dbg !14152, !noalias !13445
  invoke fastcc void @_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE14handle_go_awayCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.df, i32 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, i8 noundef %.sroa.4.0.copyload)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14153

.noexc139:                                        ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !14154, !noalias !13442
  br label %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE19handle_poll2_resultCsbaWXNhtWAp9_11foundations.exit.thread, !dbg !14154

bb.gv:                                            ; preds = %bb.gt
  br i1 %i.td, label %bb.gw, label %bb.gz, !dbg !14155

bb.gw:                                            ; preds = %bb.gv
  %i.te = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, i64 16) monotonic, align 8, !dbg !14156, !noalias !13442 ; 3 uses
  switch i8 %i.te, label %bb.gx [
    i8 0, label %bb.gz
    i8 1, label %bb.gy
    i8 2, label %bb.gy
  ], !dbg !14157, !prof !569

bb.gx:                                            ; preds = %bb.gw
  %i.tf = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE) #33
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14158 ; 2 uses

.noexc140:                                        ; preds = %bb.gx
  %i.tg = icmp eq i8 %i.tf, 0, !dbg !14159
  br i1 %i.tg, label %bb.gz, label %bb.gy, !dbg !14160

bb.gy:                                            ; preds = %bb.gw, %.noexc140, %bb.gw
  %.sroa.020.0.i = phi i8 [ %i.tf, %.noexc140 ], [ %i.te, %bb.gw ], [ %i.te, %bb.gw ], !dbg !14161
  %i.th = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !dbg !14162, !noalias !13442, !nonnull !496, !align !581, !noundef !496
  %i.ti = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.th, i8 noundef %.sroa.020.0.i)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14160

.noexc141:                                        ; preds = %bb.gy
  br i1 %i.ti, label %bb.ha, label %bb.gz, !dbg !14163

bb.gz:                                            ; preds = %.noexc143, %.noexc141, %.noexc140, %bb.gw, %bb.gv
  %i.tj = phi i32 [ %.sroa.7687.0.copyload, %.noexc140 ], [ %.sroa.7687.0.copyload, %bb.gw ], [ %.sroa.7687.0.copyload, %bb.gv ], [ %.pre74.i, %.noexc143 ], [ %.sroa.7687.0.copyload, %.noexc141 ], !dbg !14164
  %i.tk = phi i32 [ %.sroa.6.0.copyload, %.noexc140 ], [ %.sroa.6.0.copyload, %bb.gw ], [ %.sroa.6.0.copyload, %bb.gv ], [ %.pre73.i, %.noexc143 ], [ %.sroa.6.0.copyload, %.noexc141 ], !dbg !14164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14164, !noalias !13442
  invoke void @_RNvMs_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10send_resetCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb, i32 noundef %i.tk, i32 noundef %i.tj)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14165

.noexc142:                                        ; preds = %bb.gz
  %i.tl = load ptr, ptr %i.o, align 8, !dbg !14164, !noalias !13442, !noundef !496
  %.not59.i = icmp eq ptr %i.tl, null, !dbg !14164
  br i1 %.not59.i, label %bb.hc, label %bb.hb, !dbg !14166

bb.ha:                                            ; preds = %.noexc141
  %i.tm = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !dbg !14167, !noalias !13442, !nonnull !496, !align !581, !noundef !496 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 48, !dbg !14168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14163, !noalias !13442
  store <2 x ptr> <ptr @99, ptr inttoptr (i64 25 to ptr)>, ptr %i.s, align 16, !dbg !14169, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14163, !noalias !13442
  store ptr %i.ab, ptr %i.r, align 8, !dbg !14170, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14163, !noalias !13442
  store ptr %i.aa, ptr %i.q, align 8, !dbg !14171, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14163, !noalias !13442
  store ptr %i.z, ptr %i.p, align 8, !dbg !14172, !noalias !13442
  store ptr %i.s, ptr %i.t, align 8, !dbg !14163, !noalias !13442
  store ptr @1, ptr %i.hp, align 8, !dbg !14163, !noalias !13442
  store ptr %i.r, ptr %i.hq, align 8, !dbg !14163, !noalias !13442
  store ptr @7, ptr %i.hr, align 8, !dbg !14163, !noalias !13442
  store ptr %i.q, ptr %i.hs, align 8, !dbg !14163, !noalias !13442
  store ptr @100, ptr %i.ht, align 8, !dbg !14163, !noalias !13442
  store ptr %i.p, ptr %i.hu, align 8, !dbg !14163, !noalias !13442
  store ptr @101, ptr %i.hv, align 8, !dbg !14163, !noalias !13442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14163, !noalias !13442
  store i64 1, ptr %i.e, align 8, !dbg !14163, !noalias !13442
  store ptr %i.t, ptr %.sroa.022.sroa.4.0..sroa_idx.i, align 8, !dbg !14163, !noalias !13442
  store i64 4, ptr %.sroa.022.sroa.5.0..sroa_idx.i, align 8, !dbg !14163, !noalias !13442
  store ptr %i.tn, ptr %.sroa.423.0..sroa_idx.i, align 8, !dbg !14163, !noalias !13442
  invoke void @_RNvMNtCshtG1HG2JiYb_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14173

.noexc143:                                        ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14163, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14163, !noalias !13442
  %.pre73.i = load i32, ptr %i.ab, align 4, !dbg !14164, !noalias !13442
  %.pre74.i = load i32, ptr %i.aa, align 4, !dbg !14164, !noalias !13442
  br label %bb.gz, !dbg !14163

bb.hb:                                            ; preds = %.noexc142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14174, !noalias !13442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !14174, !noalias !13442
  %i.to = load i32, ptr %i.hw, align 8, !dbg !14175, !noalias !13442, !noundef !496
  invoke fastcc void @_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE14handle_go_awayCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.df, i32 noundef %i.to, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, i8 noundef 1)
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14176

.noexc144:                                        ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14177, !noalias !13442
  br label %bb.hc, !dbg !14178

bb.hc:                                            ; preds = %.noexc144, %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14178, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !14179, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !14179, !noalias !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !14179, !noalias !13442
  br label %_RNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB5_13DynConnectionINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE19handle_poll2_resultCsbaWXNhtWAp9_11foundations.exit.thread, !dbg !14179

bb.hd:                                            ; preds = %bb.gt
  br i1 %i.td, label %bb.he, label %bb.hh, !dbg !14180

bb.he:                                            ; preds = %bb.hd
  %i.tp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, i64 16) monotonic, align 8, !dbg !14181, !noalias !13442 ; 3 uses
  switch i8 %i.tp, label %bb.hf [
    i8 0, label %bb.hh
    i8 1, label %bb.hg
    i8 2, label %bb.hg
  ], !dbg !14182, !prof !569

bb.hf:                                            ; preds = %bb.he
  %i.tq = invoke noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE) #33
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14183 ; 2 uses

.noexc145:                                        ; preds = %bb.hf
  %i.tr = icmp eq i8 %i.tq, 0, !dbg !14184
  br i1 %i.tr, label %bb.hh, label %bb.hg, !dbg !14185

bb.hg:                                            ; preds = %bb.he, %.noexc145, %bb.he
  %.sroa.010.0.i = phi i8 [ %i.tq, %.noexc145 ], [ %i.tp, %bb.he ], [ %i.tp, %bb.he ], !dbg !14186
  %i.ts = load ptr, ptr @_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, align 8, !dbg !14187, !noalias !13442, !nonnull !496, !align !581, !noundef !496
  %i.tt = invoke noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ts, i8 noundef %.sroa.010.0.i)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14185

end_hunk_1
