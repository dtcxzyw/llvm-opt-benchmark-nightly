Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_transport?download=true
inline.NumInlined: 1221
inline.NumDeleted: 788
begin_hunk_0_@_ZN4absl12lts_202505126StrCatIJN9grpc_core8DurationEA20_cS3_A34_cbA35_cjA31_ciA27_ciA23_cbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESI_SI_SI_SI_DpRKT_:bb.a
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.dm = load ptr, ptr %23, align 8, !tbaa !23   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ai
  br i1 %i.dn, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.do = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #31
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.dq = load ptr, ptr %22, align 8, !tbaa !23   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.k
  br i1 %i.dr, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit
  %i.ds = load i64, ptr %i.k, align 8, !tbaa !25
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #31
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit147

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit147: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  ret void

bb.l:                                             ; preds = %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i77
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.o:                                             ; preds = %bb.f
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.g
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.h
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.q ], [ %i.ea, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.p ], [ %.pn.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.o ], [ %.pn.pn.pn.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.n ], [ %.pn.pn.pn.pn.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body79

.body79:                                          ; preds = %bb.v, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i74
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i74 ], [ %i.dv, %bb.m ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.v ]
  %i.eb = load ptr, ptr %23, align 8, !tbaa !23   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ai
  br i1 %i.ec, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %.body79
  %i.ed = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #31
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit150

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit150: ; preds = %.body79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %.body

.body:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit150, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i ], [ %i.du, %bb.l ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit150 ]
  %i.ef = load ptr, ptr %22, align 8, !tbaa !23   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.k
  br i1 %i.eg, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %.body
  %i.eh = load i64, ptr %i.k, align 8, !tbaa !25
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #31
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit153

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit153: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core5http215ReadChannelArgsERKNS_11ChannelArgsERNS0_20TransportChannelArgsERNS_13Http2SettingsERNS_6chttp220TransportFlowControlEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 33), (36, 48)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(31) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) %3, i1 noundef zeroext %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  tail call void @_ZN9grpc_core5http227ReadSettingsFromChannelArgsERKNS_11ChannelArgsERNS_13Http2SettingsERNS_6chttp220TransportFlowControlEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(31) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, i1 noundef zeroext %4)
  %i.a = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.40) ; 2 uses
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.a to i32
  %i.b = and i64 %i.a, 6442450944
  %.not.i = icmp eq i64 %i.b, 4294967296
  br i1 %.not.i, label %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 31, ptr nonnull @.str.41) ; 2 uses
  %.sroa.08.0.extract.trunc.i = trunc i64 %i.c to i32
  %i.d = and i64 %i.c, 4294967296
  %.not21.i = icmp eq i64 %i.d, 0
  %i.e = sitofp i32 %.sroa.08.0.extract.trunc.i to double
  %i.f = fmul nnan double %i.e, 8.000000e-01
  %i.g = fptosi double %i.f to i32
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 8192)
  %.sroa.speculated.i = select i1 %.not21.i, i32 8192, i32 %i.h
  br label %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit

_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.sroa.speculated.i, %bb.b ], [ %.sroa.016.0.extract.trunc.i, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.0.i, ptr %i.i, align 4, !tbaa !79
  %i.j = tail call { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.10) ; 2 uses
  %i.k = extractvalue { i64, i8 } %i.j, 0
  %i.l = extractvalue { i64, i8 } %i.j, 1
  %i.m = trunc nuw i8 %i.l to i1
  %.val3.i = select i1 %4, i64 9223372036854775807, i64 7200000
  %i.n = tail call i64 @llvm.smax.i64(i64 %i.k, i64 1)
  %.sroa.speculated113 = select i1 %i.m, i64 %i.n, i64 %.val3.i
  store i64 %.sroa.speculated113, ptr %1, align 8, !tbaa !22
  %i.o = tail call { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 25, ptr nonnull @.str.11) ; 2 uses
  %i.p = extractvalue { i64, i8 } %i.o, 0
  %i.q = extractvalue { i64, i8 } %i.o, 1
  %i.r = load i64, ptr %1, align 8, !tbaa !82
  %i.s = icmp eq i64 %i.r, 9223372036854775807
  %spec.select = select i1 %i.s, i64 9223372036854775807, i64 20000
  %i.t = trunc nuw i8 %i.q to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = tail call i64 @llvm.smax.i64(i64 %i.p, i64 0)
  %.sroa.speculated103 = select i1 %i.t, i64 %i.v, i64 %spec.select
  store i64 %.sroa.speculated103, ptr %i.u, align 8, !tbaa !22
  %i.w = tail call { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 26, ptr nonnull @.str.12) ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 0
  %i.y = extractvalue { i64, i8 } %i.w, 1
  %i.z = load i64, ptr %1, align 8, !tbaa !82
  %i.aa = icmp eq i64 %i.z, 9223372036854775807
  %storemerge33 = select i1 %i.aa, i64 9223372036854775807, i64 60000
  %i.ab = trunc nuw i8 %i.y to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.sroa.speculated = select i1 %i.ab, i64 %i.ad, i64 %storemerge33
  store i64 %.sroa.speculated, ptr %i.ac, align 8, !tbaa !22
  %i.ae = tail call { i64, i8 } @_ZNK9grpc_core11ChannelArgs24GetDurationFromIntMillisESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 27, ptr nonnull @.str.13) ; 2 uses
  %i.af = extractvalue { i64, i8 } %i.ae, 0
  %i.ag = extractvalue { i64, i8 } %i.ae, 1
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8, !tbaa !22 ; 2 uses
  switch i64 %.sroa.0.0.copyload, label %bb.c [
    i64 9223372036854775807, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread120
    i64 -9223372036854775808, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread
  ]

bb.c:                                             ; preds = %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit
  %i.ah = sitofp i64 %.sroa.0.0.copyload to double
  %i.ai = fmul nnan double %i.ah, 2.000000e+00
  %i.aj = fdiv nnan double %i.ai, 1.000000e+03
  %i.ak = fmul nnan double %i.aj, 1.000000e+03    ; 3 uses
  %i.al = fcmp ult double %i.ak, f0x43E0000000000000
  br i1 %i.al, label %6, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread120

6:                                                ; preds = %bb.c
  %7 = fcmp ugt double %i.ak, f0xC3E0000000000000
  br i1 %7, label %_ZN9grpc_coremlENS_8DurationEd.exit, label %_ZN9grpc_coremlENS_8DurationEd.exit.thread

_ZN9grpc_coremlENS_8DurationEd.exit.thread120:    ; preds = %bb.c, %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit
  br label %_ZN9grpc_coremlENS_8DurationEd.exit.thread

_ZN9grpc_coremlENS_8DurationEd.exit:              ; preds = %6
  %i.am = fptosi double %i.ak to i64
  %.fr = freeze i64 %i.am
  %spec.select123 = tail call i64 @llvm.smax.i64(i64 %.fr, i64 60000)
  br label %_ZN9grpc_coremlENS_8DurationEd.exit.thread

_ZN9grpc_coremlENS_8DurationEd.exit.thread:       ; preds = %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit, %6, %_ZN9grpc_coremlENS_8DurationEd.exit, %_ZN9grpc_coremlENS_8DurationEd.exit.thread120
  %8 = phi i64 [ 9223372036854775807, %_ZN9grpc_coremlENS_8DurationEd.exit.thread120 ], [ %spec.select123, %_ZN9grpc_coremlENS_8DurationEd.exit ], [ 60000, %6 ], [ 60000, %_ZN9grpc_core27GetSoftLimitFromChannelArgsERKNS_11ChannelArgsE.exit ]
  %i.an = trunc i8 %i.ag to i1
  %.sroa.0.0.i49 = select i1 %i.an, i64 %i.af, i64 %8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.i49, ptr %i.ao, align 8, !tbaa !22
  %i.ap = tail call i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 35, ptr nonnull @.str.14) ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i16 %i.ap to i8
  %i.aq = and i16 %i.ap, 256
  %.not = icmp eq i16 %i.aq, 0
  %.0.in.i = select i1 %.not, i8 0, i8 %.sroa.076.0.extract.trunc
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %.0.in.i, ptr %i.ar, align 8, !tbaa !83
  %i.as = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 35, ptr nonnull @.str.15) ; 2 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.as to i32
  %i.at = and i64 %i.as, 4294967296
  %.not124.a = icmp eq i64 %i.at, 0
  %.0.i53 = select i1 %.not124.a, i32 -1, i32 %.sroa.069.0.extract.trunc
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.0.i53, ptr %i.au, align 8, !tbaa !84
  %i.av = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 34, ptr nonnull @.str.16) ; 2 uses
  %.sroa.064.0.extract.trunc = trunc i64 %i.av to i32
  %i.aw = and i64 %i.av, 4294967296
  %.not125.a = icmp eq i64 %i.aw, 0
  %.0.i56 = select i1 %.not125.a, i32 -1, i32 %.sroa.064.0.extract.trunc ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  store i32 %.0.i56, ptr %i.ax, align 4, !tbaa !85
  %i.ay = and i32 %.0.i56, -2147483647
  %or.cond = icmp eq i32 %i.ay, 0
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN9grpc_coremlENS_8DurationEd.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.17, i32 noundef 184) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 56, ptr nonnull @.str.18)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi57EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi57EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi57EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store i32 -1, ptr %i.ax, align 4, !tbaa !85
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi57EEERS2_RAT__Kc.exit, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.az

bb.f:                                             ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZN9grpc_coremlENS_8DurationEd.exit.thread
  %i.ba = call i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 20, ptr nonnull @.str.19) ; 2 uses
  %.sroa.060.0.extract.trunc = trunc i16 %i.ba to i8
  %i.bb = and i16 %i.ba, 256
  %.not126 = icmp eq i16 %i.bb, 0
  %.0.in.i58 = select i1 %.not126, i8 1, i8 %.sroa.060.0.extract.trunc
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %.0.in.i58, ptr %i.bc, align 1, !tbaa !86
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core5http227ReadSettingsFromChannelArgsERKNS_11ChannelArgsERNS_13Http2SettingsERNS_6chttp220TransportFlowControlEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(31) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) %2, i1 noundef zeroext %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 35, ptr nonnull @.str.20)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 35, ptr nonnull @.str.20) ; 2 uses
  %.sroa.097.0.extract.trunc = trunc i64 %i.b to i32
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.0.i = select i1 %.not, i32 -1, i32 %.sroa.097.0.extract.trunc
  store i32 %.0.i, ptr %1, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 27, ptr nonnull @.str.21)
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 27, ptr nonnull @.str.21) ; 2 uses
  %.sroa.087.0.extract.trunc = trunc i64 %i.e to i32
  %i.f = and i64 %i.e, 4294967296
  %.not104 = icmp eq i64 %i.f, 0
  %.0.i32 = select i1 %.not104, i32 -1, i32 %.sroa.087.0.extract.trunc ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0.i32, ptr %i.g, align 4, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.i32, ptr %i.h, align 4, !tbaa !69
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.17, i32 noundef 212) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 70, ptr nonnull @.str.22)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi71EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi71EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi71EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi71EEERS2_RAT__Kc.exit, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.e, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %bb.c
  %i.j = call noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 26, ptr nonnull @.str.23)
  br i1 %i.j, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.k = call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 26, ptr nonnull @.str.23) ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.k to i32
  %i.l = and i64 %i.k, 4294967296
  %.not105 = icmp eq i64 %i.l, 0
  %.0.i35 = select i1 %.not105, i32 -1, i32 %.sroa.076.0.extract.trunc ; 3 uses
  %i.m = icmp sgt i32 %.0.i35, -1
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i35, ptr %i.n, align 4, !tbaa !88
  %i.o = zext nneg i32 %.0.i35 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.q = call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 31, ptr nonnull @.str.41) ; 2 uses
  %.sroa.022.0.extract.trunc.i = trunc i64 %i.q to i32
  %i.r = and i64 %i.q, 6442450944
  %i.s = icmp eq i64 %i.r, 4294967296
  br i1 %i.s, label %_ZN9grpc_core27GetHardLimitFromChannelArgsERKNS_11ChannelArgsE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.40) ; 2 uses
  %.sroa.018.0.extract.trunc.i = trunc i64 %i.t to i32
  %i.u = and i64 %i.t, 4294967296
  %.not.i = icmp eq i64 %i.u, 0
  %.0.i13.i = select i1 %.not.i, i32 -1, i32 %.sroa.018.0.extract.trunc.i ; 3 uses
  %i.v = icmp ult i32 %.0.i13.i, 1717986918
  %i.w = uitofp nneg i32 %.0.i13.i to double
  %i.x = fmul nnan double %i.w, 1.250000e+00
  %i.y = fptosi double %i.x to i32
  %i.z = select i1 %i.v, i32 %i.y, i32 %.0.i13.i
  %.sroa.speculated.i37 = call i32 @llvm.smax.i32(i32 %i.z, i32 16384)
  br label %_ZN9grpc_core27GetHardLimitFromChannelArgsERKNS_11ChannelArgsE.exit

_ZN9grpc_core27GetHardLimitFromChannelArgsERKNS_11ChannelArgsE.exit: ; preds = %bb.k, %bb.l
  %.0.i38 = phi i32 [ %.sroa.speculated.i37, %bb.l ], [ %.sroa.022.0.extract.trunc.i, %bb.k ]
  %.sroa.speculated.i39 = call i32 @llvm.umin.i32(i32 %.0.i38, i32 16777216)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sroa.speculated.i39, ptr %i.aa, align 4, !tbaa !70
  %i.ab = call noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 25, ptr nonnull @.str.24)
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9grpc_core27GetHardLimitFromChannelArgsERKNS_11ChannelArgsE.exit
  %i.ac = call i64 @_ZNK9grpc_core11ChannelArgs6GetIntESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 25, ptr nonnull @.str.24) ; 2 uses
  %.sroa.066.0.extract.trunc = trunc i64 %i.ac to i32
  %i.ad = and i64 %i.ac, 4294967296
  %.not106 = icmp eq i64 %i.ad, 0
  %i.ae = call i32 @llvm.umax.i32(i32 %.sroa.066.0.extract.trunc, i32 16384)
  %i.af = call i32 @llvm.umin.i32(i32 %i.ae, i32 16777215)
  %.0.i.i = select i1 %.not106, i32 16777215, i32 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.0.i.i, ptr %i.ag, align 4, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9grpc_core27GetHardLimitFromChannelArgsERKNS_11ChannelArgsE.exit
  %i.ah = call i16 @_ZNK9grpc_core11ChannelArgs7GetBoolESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 51, ptr nonnull @.str.25) ; 2 uses
  %.sroa.061.0.extract.trunc = trunc i16 %i.ah to i8
  %i.ai = and i16 %i.ah, 256
  %.not107 = icmp eq i16 %i.ai, 0
  %.0.in.i = select i1 %.not107, i8 0, i8 %.sroa.061.0.extract.trunc ; 2 uses
  %.0.i44 = trunc nuw i8 %.0.in.i to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i8 %.0.in.i, ptr %i.aj, align 8, !tbaa !105
  br i1 %.0.i44, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 2147483647, ptr %i.ak, align 4, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = call noundef zeroext i1 @_ZNK9grpc_core11ChannelArgs8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 22, ptr nonnull @.str.26)
  br i1 %i.al, label %bb.q, label %bb.r

end_hunk_0
