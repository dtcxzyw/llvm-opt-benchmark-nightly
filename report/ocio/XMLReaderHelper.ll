Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/XMLReaderHelper?download=true
inline.NumInlined: 699
inline.NumDeleted: 274
begin_hunk_0_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aq

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(7) @_ZN16OpenColorIO_v2_5L10TAG_OFFSETE) #34
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %6, align 16, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !114
  %i.co = load <2 x double>, ptr %i.f, align 8, !tbaa !114
  store <2 x double> %i.co, ptr %8, align 16, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.cn, ptr %i.cp, align 16, !tbaa !114
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData15setOffsetParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 97
  store i8 1, ptr %i.cq, align 1, !tbaa !120
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.aq

bb.ae:                                            ; preds = %bb.aa
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(6) @_ZN16OpenColorIO_v2_5L9TAG_POWERE) #34
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr %6, align 16, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !114
  %i.cx = load <2 x double>, ptr %i.f, align 8, !tbaa !114
  store <2 x double> %i.cx, ptr %9, align 16, !tbaa !114
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.cw, ptr %i.cy, align 16, !tbaa !114
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData14setPowerParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 98
  store i8 1, ptr %i.cz, align 2, !tbaa !121
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ac, %bb.ag, %bb.ae, %bb.x
  %i.db = load ptr, ptr %i.bo, align 8, !tbaa !63 ; 8 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dc, align 8, !tbaa !55
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !57
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29, !inline_history !122
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29, !inline_history !122
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i47 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.df, %bb.am ], [ %i.dp, %bb.an ]
  %i.dq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dq, label %bb.ao, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i.i48 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIdSaIdEED2Ev.exit49, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dr = ptrtoint ptr %i.j to i64
  %i.ds = sub i64 %i.dr, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.ds) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

_ZNSt6vectorIdSaIdEED2Ev.exit49:                  ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap
  ret void

bb.aq:                                            ; preds = %bb.ah, %bb.ad, %bb.z
  %.pn27 = phi { ptr, i32 } [ %i.ci, %bb.z ], [ %i.cr, %bb.ad ], [ %i.da, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.aq ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.merged = phi { ptr, i32 } [ %.pn27.pn, %bb.ar ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIdSaIdEED2Ev.exit51, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = ptrtoint ptr %i.j to i64
  %i.du = sub i64 %i.dt, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.du) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit51

_ZNSt6vectorIdSaIdEED2Ev.exit51:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.as, %bb.at
  %.merged71 = phi { ptr, i32 } [ %.merged, %bb.at ], [ %.merged, %bb.as ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.merged71

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #31
  unreachable
}

declare void @_ZN16OpenColorIO_v2_54TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.15") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.d, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !22
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.d = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !123

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.023 = phi i64 [ %.1.i, %.lr.ph ], [ %.sink.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !114
  %.not.i.i = icmp ult i64 %.023, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.023, %bb.c ], [ %i.m, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 5 uses
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.l, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !22
  switch i8 %i.k, label %bb.e [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.m = add i64 %.012.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !123

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.012.i26.i = phi i64 [ %.012.i.i, %bb.e ], [ %i.q, %bb.g ] ; 4 uses
  %.0.i27.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.g ] ; 2 uses
  %i.o = load i8, ptr %.0.i27.i, align 1, !tbaa !22
  switch i8 %i.o, label %bb.g [
    i8 32, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 13, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 11, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 10, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.q = add i64 %.012.i26.i, 1                   ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.f, !llvm.loop !124

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.g
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit unwind label %.loopexit

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.h
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.h ], [ %i.u, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.r, %bb.h ], [ %i.t, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.s = load i8, ptr %.0.i32.i, align 1, !tbaa !22
  switch i8 %i.s, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.u = add i64 %.012.i31.i, 1                   ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.i, !llvm.loop !123

_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i, %bb.b, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i
  %.sink.i = phi i64 [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.v = load double, ptr %i.a, align 8, !tbaa !114
  store double %i.v, ptr %i.h, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !109
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #32
          to label %.noexc13.a unwind label %.loopexit.split-lp

.noexc13.a:                                       ; preds = %bb.l
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #33
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load double, ptr %i.a, align 8, !tbaa !114
  store double %i.aj, ptr %i.ai, align 8, !tbaa !114
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.i, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #30
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !110
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.j
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.g, %bb.j ]
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.w, %bb.j ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not = icmp eq i64 %.sink.i, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !125

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i.i.i15 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.p

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %.lcssa = phi ptr [ null, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ null, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %i.g to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.b = tail call i64 @llvm.umin.i64(i64 %2, i64 17) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14, !alias.scope !126
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i64 %2, 0
  %or.cond.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !126
  store i64 %i.b, ptr %i.a, align 8, !tbaa !21, !noalias !126
  %i.f = icmp ugt i64 %2, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !17, !alias.scope !126
  %i.h = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !126
  store i64 %i.h, ptr %i.c, align 8, !tbaa !22, !alias.scope !126
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.b, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !22, !noalias !126
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.b, i1 false)
  br label %_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit

_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !126 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20, !alias.scope !126
  %i.m = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !126
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZN16OpenColorIO_v2_59CDLOpData14setSlopeParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZN16OpenColorIO_v2_59CDLOpData15setOffsetParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZN16OpenColorIO_v2_59CDLOpData14setPowerParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !78
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !78
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !14
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %2, ptr %i.a, align 8, !tbaa !21
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %2, label %bb.d [
end_hunk_0
