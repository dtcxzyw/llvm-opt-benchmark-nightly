Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/chttp2_transport?download=true
inline.NumInlined: 14543
inline.NumDeleted: 7137
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN21grpc_chttp2_transportC2ERKN9grpc_core11ChannelArgsESt10unique_ptrI13grpc_endpointNS0_16OrphanableDeleteEEb:_ZN9grpc_core20KeepsGrpcInitializedC2Eb.exit
  invoke void @grpc_slice_buffer_init(ptr noundef nonnull %i.ov)
          to label %bb.ds unwind label %bb.cm

bb.ds:                                            ; preds = %bb.dr
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2104
  invoke void @_Z30grpc_chttp2_goaway_parser_initP25grpc_chttp2_goaway_parser(ptr noundef nonnull %i.ow)
          to label %bb.dt unwind label %bb.cm

bb.dt:                                            ; preds = %bb.ds
  br i1 %3, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i8 0, ptr %i.fq, align 4, !tbaa !674
  store i32 0, ptr %i.fk, align 4, !tbaa !733
  store i32 0, ptr %i.fl, align 16, !tbaa !734
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  store i32 16384, ptr %i.fo, align 4, !tbaa !672
  store i8 1, ptr %i.fr, align 1, !tbaa !675
  %i.ox = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 34, ptr nonnull @.str.126)
          to label %.noexc206 unwind label %bb.cm ; 2 uses

.noexc206:                                        ; preds = %bb.dv
  %.sroa.0397.0.extract.trunc.i = trunc i64 %i.ox to i32
  %i.oy = and i64 %i.ox, 4294967296
  %.not411.i.a = icmp eq i64 %i.oy, 0
  %.0.i121.i = select i1 %.not411.i.a, i32 -1, i32 %.sroa.0397.0.extract.trunc.i ; 3 uses
  %i.oz = icmp sgt i32 %.0.i121.i, 0
  br i1 %i.oz, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %.noexc206
  %i.pa = load i32, ptr %i.gi, align 8, !tbaa !676
  %i.pb = xor i32 %i.pa, %.0.i121.i
  %i.pc = and i32 %i.pb, 1
  %.not.i204 = icmp eq i32 %i.pc, 0
  br i1 %.not.i204, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.14, i32 noundef 425) #45
          to label %.noexc207 unwind label %bb.cm

.noexc207:                                        ; preds = %bb.dx
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 34, ptr nonnull @.str.126)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit.i unwind label %bb.dz

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit.i: ; preds = %.noexc207
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 18, ptr nonnull @.str.127)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit.i unwind label %bb.dz

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit.i
  %i.pd = load i32, ptr %i.gi, align 8, !tbaa !676
  %i.pe = and i32 %i.pd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.pe, ptr %i.d, align 4, !tbaa !109
  %i.pf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.dy unwind label %bb.dz     ; 3 uses

bb.dy:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, i64 4, ptr nonnull @.str.128)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i unwind label %bb.dz

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i: ; preds = %bb.dy
  %.str.35..str.36.i = select i1 %3, ptr @.str.35, ptr @.str.36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, i64 6, ptr nonnull align 1 dereferenceable(7) %.str.35..str.36.i)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i unwind label %bb.dz

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pf)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i205 unwind label %bb.dz

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i205: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.eb

bb.dz:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i, %bb.dy, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit.i, %.noexc207
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %.body242

bb.ea:                                            ; preds = %bb.dw
  store i32 %.0.i121.i, ptr %i.gi, align 8, !tbaa !676
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i205, %.noexc206
  %i.ph = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 35, ptr nonnull @.str.129)
          to label %.noexc208 unwind label %bb.cm ; 2 uses

.noexc208:                                        ; preds = %bb.eb
  %.sroa.0390.0.extract.trunc.i = trunc i64 %i.ph to i32
  %i.pi = and i64 %i.ph, 4294967296
  %.not412.i.a = icmp eq i64 %i.pi, 0
  %.0.i124.i = select i1 %.not412.i.a, i32 -1, i32 %.sroa.0390.0.extract.trunc.i ; 2 uses
  %i.pj = icmp sgt i32 %.0.i124.i, -1
  br i1 %i.pj, label %bb.ec, label %.noexc209

bb.ec:                                            ; preds = %.noexc208
  invoke void @_ZN9grpc_core15HPackCompressor16SetMaxUsableSizeEj(ptr noundef nonnull align 8 dereferenceable(424) %i.ei, i32 noundef %.0.i124.i)
          to label %.noexc209 unwind label %bb.cm

.noexc209:                                        ; preds = %bb.ec, %.noexc208
  %i.pk = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 28, ptr nonnull @.str.130)
          to label %.noexc210 unwind label %bb.cm ; 2 uses

.noexc210:                                        ; preds = %.noexc209
  %.sroa.0379.0.extract.trunc.i = trunc i64 %i.pk to i32
  %i.pl = and i64 %i.pk, 4294967296
  %.not413.i = icmp eq i64 %i.pl, 0
  %i.pm = call i32 @llvm.smax.i32(i32 %.sroa.0379.0.extract.trunc.i, i32 0)
  %.sroa.speculated382.i = select i1 %.not413.i, i32 65535, i32 %i.pm
  store i32 %.sroa.speculated382.i, ptr %i.if, align 16, !tbaa !687
  %i.pn = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 22, ptr nonnull @.str.131)
          to label %.noexc211 unwind label %bb.cm ; 2 uses

.noexc211:                                        ; preds = %.noexc210
  %i.po = extractvalue { i64, i8 } %i.pn, 0
  %i.pp = extractvalue { i64, i8 } %i.pn, 1
  %i.pq = load i8, ptr %i.iq, align 8, !tbaa !501, !range !80, !noundef !81
  %i.pr = trunc nuw i8 %i.pq to i1
  %i.ps = trunc nuw i8 %i.pp to i1
  %_ZL31g_default_client_keepalive_time.val.i = load i64, ptr @_ZL31g_default_client_keepalive_time, align 8
  %_ZL31g_default_server_keepalive_time.val.i = load i64, ptr @_ZL31g_default_server_keepalive_time, align 8
  %.val3.i.i = select i1 %i.pr, i64 %_ZL31g_default_client_keepalive_time.val.i, i64 %_ZL31g_default_server_keepalive_time.val.i
  %.sroa.0.0.i.i = select i1 %i.ps, i64 %i.po, i64 %.val3.i.i
  %.sroa.speculated373.i = call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i, i64 1)
  store i64 %.sroa.speculated373.i, ptr %i.hu, align 8, !tbaa !69
  %i.pt = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 25, ptr nonnull @.str.132)
          to label %.noexc212 unwind label %bb.cm ; 2 uses

.noexc212:                                        ; preds = %.noexc211
  %i.pu = extractvalue { i64, i8 } %i.pt, 0
  %i.pv = extractvalue { i64, i8 } %i.pt, 1
  %i.pw = load i64, ptr %i.hu, align 8, !tbaa !686
  %i.px = icmp eq i64 %i.pw, 9223372036854775807
  br i1 %i.px, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.noexc212
  %i.py = load i8, ptr %i.iq, align 8, !tbaa !501, !range !80, !noundef !81
  %i.pz = trunc nuw i8 %i.py to i1
  %_ZL34g_default_client_keepalive_timeout.val.i = load i64, ptr @_ZL34g_default_client_keepalive_timeout, align 8
  %_ZL34g_default_server_keepalive_timeout.val.i = load i64, ptr @_ZL34g_default_server_keepalive_timeout, align 8
  %i.qa = select i1 %i.pz, i64 %_ZL34g_default_client_keepalive_timeout.val.i, i64 %_ZL34g_default_server_keepalive_timeout.val.i
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.noexc212
  %storemerge.i = phi i64 [ %i.qa, %bb.ed ], [ 9223372036854775807, %.noexc212 ]
  %i.qb = trunc nuw i8 %i.pv to i1
  %.sroa.0.0.i131.i = select i1 %i.qb, i64 %i.pu, i64 %storemerge.i
  %.sroa.speculated363.i = call i64 @llvm.smax.i64(i64 %.sroa.0.0.i131.i, i64 0)
  store i64 %.sroa.speculated363.i, ptr %i.hw, align 8, !tbaa !69
  %i.qc = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 26, ptr nonnull @.str.133)
          to label %.noexc213 unwind label %bb.cm ; 2 uses

.noexc213:                                        ; preds = %bb.ee
  %i.qd = extractvalue { i64, i8 } %i.qc, 0
  %i.qe = extractvalue { i64, i8 } %i.qc, 1
  %i.qf = load i64, ptr %i.hu, align 8, !tbaa !686
  %i.qg = icmp eq i64 %i.qf, 9223372036854775807
  %spec.select.i = select i1 %i.qg, i64 9223372036854775807, i64 60000
  %i.qh = trunc nuw i8 %i.qe to i1
  %i.qi = call i64 @llvm.smax.i64(i64 %i.qd, i64 0)
  %.sroa.speculated.i = select i1 %i.qh, i64 %i.qi, i64 %spec.select.i
  store i64 %.sroa.speculated.i, ptr %i.ic, align 16, !tbaa !69
  %i.qj = load i8, ptr %i.iq, align 8, !tbaa !501, !range !80, !noundef !81
  %i.qk = invoke i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 35, ptr nonnull @.str.134)
          to label %.noexc214 unwind label %bb.cm ; 2 uses

.noexc214:                                        ; preds = %.noexc213
  %i.ql = trunc nuw i8 %i.qj to i1
  %.sroa.0344.0.extract.trunc.i = trunc i16 %i.qk to i8
  %i.qm = and i16 %i.qk, 256
  %.not415.i.a = icmp eq i16 %i.qm, 0
  %_ZL47g_default_client_keepalive_permit_without_calls.val.i = load i8, ptr @_ZL47g_default_client_keepalive_permit_without_calls, align 1, !range !80
  %_ZL47g_default_server_keepalive_permit_without_calls.val.i = load i8, ptr @_ZL47g_default_server_keepalive_permit_without_calls, align 1, !range !80
  %.val3.i143.i = select i1 %i.ql, i8 %_ZL47g_default_client_keepalive_permit_without_calls.val.i, i8 %_ZL47g_default_server_keepalive_permit_without_calls.val.i
  %.0.in.i144.i = select i1 %.not415.i.a, i8 %.val3.i143.i, i8 %.sroa.0344.0.extract.trunc.i
  store i8 %.0.in.i144.i, ptr %i.io, align 1, !tbaa !735
  %i.qn = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 27, ptr nonnull @.str.135)
          to label %.noexc215 unwind label %bb.cm ; 2 uses

.noexc215:                                        ; preds = %.noexc214
  %i.qo = extractvalue { i64, i8 } %i.qn, 0
  %i.qp = extractvalue { i64, i8 } %i.qn, 1
  %.sroa.0.0.copyload.i = load i64, ptr %i.hw, align 8, !tbaa !69 ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.ef [
    i64 9223372036854775807, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread403.i
    i64 -9223372036854775808, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread.i
  ]

bb.ef:                                            ; preds = %.noexc215
  %i.qq = sitofp i64 %.sroa.0.0.copyload.i to double
  %i.qr = fmul nnan double %i.qq, 2.000000e+00
  %i.qs = fdiv nnan double %i.qr, 1.000000e+03
  %i.qt = fmul nnan double %i.qs, 1.000000e+03    ; 3 uses
  %i.qu = fcmp ult double %i.qt, f0x43E0000000000000
  br i1 %i.qu, label %_ZN9grpc_coremlENS_8DurationEd.exit.i, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread403.i

_ZN9grpc_coremlENS_8DurationEd.exit.thread403.i:  ; preds = %bb.ef, %.noexc215
  br label %_ZN9grpc_coremlENS_8DurationEd.exit.thread.i

_ZN9grpc_coremlENS_8DurationEd.exit.i:            ; preds = %bb.ef
  %.inv.i.i.i = fcmp ole double %i.qt, f0xC3E0000000000000
  %spec.select4.i.i.i = select i1 %.inv.i.i.i, double f0xC3E0000000000000, double %i.qt
  %i.qv = fptosi double %spec.select4.i.i.i to i64
  %.fr.i = freeze i64 %i.qv
  %spec.select410.i = call i64 @llvm.smax.i64(i64 %.fr.i, i64 60000)
  br label %_ZN9grpc_coremlENS_8DurationEd.exit.thread.i

_ZN9grpc_coremlENS_8DurationEd.exit.thread.i:     ; preds = %_ZN9grpc_coremlENS_8DurationEd.exit.i, %_ZN9grpc_coremlENS_8DurationEd.exit.thread403.i, %.noexc215
  %32 = phi i64 [ 9223372036854775807, %_ZN9grpc_coremlENS_8DurationEd.exit.thread403.i ], [ %spec.select410.i, %_ZN9grpc_coremlENS_8DurationEd.exit.i ], [ 60000, %.noexc215 ]
  %i.qw = trunc i8 %i.qp to i1
  %.sroa.0.0.i150.i = select i1 %i.qw, i64 %i.qo, i64 %32
  store i64 %.sroa.0.0.i150.i, ptr %i.ie, align 8, !tbaa !69
  %i.qx = invoke i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 51, ptr nonnull @.str.136)
          to label %.noexc216 unwind label %bb.cm ; 2 uses

.noexc216:                                        ; preds = %_ZN9grpc_coremlENS_8DurationEd.exit.thread.i
  %.sroa.0327.0.extract.trunc.i = trunc i16 %i.qx to i8
  %i.qy = and i16 %i.qx, 256
  %.not416.i.a = icmp eq i16 %i.qy, 0
  %.0.in.i153.i = select i1 %.not416.i.a, i8 0, i8 %.sroa.0327.0.extract.trunc.i
  store i8 %.0.in.i153.i, ptr %i.il, align 1, !tbaa !691
  %i.qz = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 32, ptr nonnull @.str.137)
          to label %.noexc217 unwind label %bb.cm ; 2 uses

.noexc217:                                        ; preds = %.noexc216
  %i.ra = and i64 %i.qz, 4294967296
  %.not417.i.a = icmp eq i64 %i.ra, 0
  br i1 %.not417.i.a, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.noexc217
  %.sroa.0320.0.extract.trunc.i = trunc i64 %i.qz to i32
  %i.rb = call i32 @llvm.smax.i32(i32 %.sroa.0320.0.extract.trunc.i, i32 1)
  %i.rc = call i32 @llvm.umin.i32(i32 %i.rb, i32 10000)
  %i.rd = zext nneg i32 %i.rc to i64
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.noexc217
  %.sink.i = phi i64 [ %i.rd, %bb.eg ], [ 32, %.noexc217 ]
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i64 %.sink.i, ptr %i.re, align 16, !tbaa !736
  %i.rf = invoke i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 20, ptr nonnull @.str.138)
          to label %.noexc218 unwind label %bb.cm ; 2 uses

.noexc218:                                        ; preds = %bb.eh
  %.sroa.0316.0.extract.trunc.i = trunc i16 %i.rf to i8
  %i.rg = and i16 %i.rf, 256
  %.not418.i.a = icmp eq i16 %i.rg, 0
  %.0.in.i159.i = select i1 %.not418.i.a, i8 1, i8 %.sroa.0316.0.extract.trunc.i
  store i8 %.0.in.i159.i, ptr %i.is, align 2, !tbaa !737
  %i.rh = invoke i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 16, ptr nonnull @.str.139)
          to label %.noexc219 unwind label %bb.cm ; 2 uses

.noexc219:                                        ; preds = %.noexc218
  %.sroa.0311.0.extract.trunc.i = trunc i16 %i.rh to i8
  %i.ri = and i16 %i.rh, 256
  %.not419.i.a = icmp eq i16 %i.ri, 0
  %.0.in.i163.i = select i1 %.not419.i.a, i8 1, i8 %.sroa.0311.0.extract.trunc.i
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 2500
  store i8 %.0.in.i163.i, ptr %i.rj, align 4, !tbaa !738
  %i.rk = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 32, ptr nonnull @.str.140)
          to label %.noexc220 unwind label %bb.cm ; 2 uses

.noexc220:                                        ; preds = %.noexc219
  %i.rl = extractvalue { i64, i8 } %i.rk, 0
  %i.rm = extractvalue { i64, i8 } %i.rk, 1
  %i.rn = trunc nuw i8 %i.rm to i1
  %i.ro = trunc i64 %i.rl to i32
  %i.rp = select i1 %i.rn, i32 %i.ro, i32 100
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 2492 ; 2 uses
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !739
  %i.rr = invoke { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 32, ptr nonnull @.str.141)
          to label %.noexc221 unwind label %bb.cm ; 2 uses

.noexc221:                                        ; preds = %.noexc220
  %i.rs = extractvalue { i64, i8 } %i.rr, 0
  %i.rt = extractvalue { i64, i8 } %i.rr, 1
  %i.ru = trunc nuw i8 %i.rt to i1
  %i.rv = trunc i64 %i.rs to i32
  %i.rw = select i1 %i.ru, i32 %i.rv, i32 1000    ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 2496
  store i32 %i.rw, ptr %i.rx, align 16, !tbaa !740
  %i.ry = load i32, ptr %i.rq, align 4, !tbaa !739
  %.not115.i = icmp sgt i32 %i.ry, %i.rw
  br i1 %.not115.i, label %bb.ei, label %.critedge.i, !prof !97

bb.ei:                                            ; preds = %.noexc221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.14, i32 noundef 506, ptr noundef nonnull @.str.142) #45
          to label %.noexc222 unwind label %bb.cm

.noexc222:                                        ; preds = %bb.ei
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit171.i unwind label %bb.ej

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit171.i: ; preds = %.noexc222
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #42
  unreachable

bb.ej:                                            ; preds = %.noexc222
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #42
  unreachable

.critedge.i:                                      ; preds = %.noexc221
  %i.sa = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 22, ptr nonnull @.str.154)
          to label %.noexc223 unwind label %bb.cm ; 2 uses

.noexc223:                                        ; preds = %.critedge.i
  %.sroa.016.0.extract.trunc.i.i = trunc i64 %i.sa to i32
  %i.sb = and i64 %i.sa, 6442450944
  %.not.i.i202 = icmp eq i64 %i.sb, 4294967296
  br i1 %.not.i.i202, label %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit.i, label %bb.ek

bb.ek:                                            ; preds = %.noexc223
  %i.sc = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 31, ptr nonnull @.str.155)
          to label %.noexc224 unwind label %bb.cm ; 2 uses

.noexc224:                                        ; preds = %bb.ek
  %.sroa.08.0.extract.trunc.i.i = trunc i64 %i.sc to i32
  %i.sd = and i64 %i.sc, 4294967296
  %.not21.i.i = icmp eq i64 %i.sd, 0
  %i.se = sitofp i32 %.sroa.08.0.extract.trunc.i.i to double
  %i.sf = fmul nnan double %i.se, 8.000000e-01
  %i.sg = fptosi double %i.sf to i32
  %i.sh = call i32 @llvm.smax.i32(i32 %i.sg, i32 8192)
  %.sroa.speculated.i.i = select i1 %.not21.i.i, i32 8192, i32 %i.sh
  br label %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit.i

_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit.i: ; preds = %.noexc224, %.noexc223
  %.0.i172.i = phi i32 [ %.sroa.speculated.i.i, %.noexc224 ], [ %.sroa.016.0.extract.trunc.i.i, %.noexc223 ]
  store i32 %.0.i172.i, ptr %i.hy, align 16, !tbaa !685
  br i1 %3, label %bb.en, label %bb.el

bb.el:                                            ; preds = %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit.i
  %i.si = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 27, ptr nonnull @.str.143)
          to label %.noexc225 unwind label %bb.cm ; 2 uses

.noexc225:                                        ; preds = %bb.el
  %.sroa.0289.0.extract.trunc.i = trunc i64 %i.si to i32
  %i.sj = and i64 %i.si, 4294967296
  %.not420.i.a = icmp eq i64 %i.sj, 0
  %.0.i175.i = select i1 %.not420.i.a, i32 -1, i32 %.sroa.0289.0.extract.trunc.i ; 3 uses
  %i.sk = icmp sgt i32 %.0.i175.i, -1
  br i1 %i.sk, label %bb.em, label %.critedge119.i

bb.em:                                            ; preds = %.noexc225
  store i32 %.0.i175.i, ptr %i.fk, align 4, !tbaa !733
  store i32 %.0.i175.i, ptr %i.fl, align 16, !tbaa !734
  br label %.critedge119.i

bb.en:                                            ; preds = %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit.i
  %i.sl = invoke noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 27, ptr nonnull @.str.143)
          to label %.noexc226 unwind label %bb.cm

.noexc226:                                        ; preds = %bb.en
  br i1 %i.sl, label %bb.eo, label %.critedge119.i

bb.eo:                                            ; preds = %.noexc226
  %i.sm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZL17read_channel_argsP21grpc_chttp2_transportRKN9grpc_core11ChannelArgsEbENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.sn = icmp slt i32 %i.sm, 2
  br i1 %i.sn, label %.critedge119.i, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i, !prof !350

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i: ; preds = %bb.eo
  %i.so = invoke noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZL17read_channel_argsP21grpc_chttp2_transportRKN9grpc_core11ChannelArgsEbENK3$_0clEvE4site", i32 noundef %i.sm)
          to label %.noexc227 unwind label %bb.cm

.noexc227:                                        ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit.i
  br i1 %i.so, label %bb.ep, label %.critedge119.i

bb.ep:                                            ; preds = %.noexc227
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.14, i32 noundef 517) #45
          to label %.noexc228 unwind label %bb.cm

.noexc228:                                        ; preds = %bb.ep
  %i.sp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 2)
          to label %bb.eq unwind label %bb.er     ; 3 uses

bb.eq:                                            ; preds = %.noexc228
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 27, ptr nonnull @.str.143)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i unwind label %bb.er

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i: ; preds = %bb.eq
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 28, ptr nonnull @.str.144)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit.i unwind label %bb.er

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sp)
          to label %.critedge118.i unwind label %bb.er

.critedge118.i:                                   ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %.critedge119.i

bb.er:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i, %bb.eq, %.noexc228
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %.body242

.critedge119.i:                                   ; preds = %.critedge118.i, %.noexc227, %bb.eo, %.noexc226, %bb.em, %.noexc225
  %i.sr = invoke i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 35, ptr nonnull @.str.145)
          to label %.noexc229 unwind label %bb.cm ; 2 uses

.noexc229:                                        ; preds = %.critedge119.i
  %.sroa.0277.0.extract.trunc.i = trunc i64 %i.sr to i32
  %i.ss = and i64 %i.sr, 4294967296
  %.not421.i.a = icmp eq i64 %i.ss, 0
end_hunk_0
