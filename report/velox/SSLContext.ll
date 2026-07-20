inline.NumInlined: 1421
inline.NumDeleted: 747
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly10SSLContextD2Ev:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9340 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9299 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5folly15SSLAcceptRunnerESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i ], [ %i.bl, %_ZNSt10unique_ptrIN5folly15SSLAcceptRunnerESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9297 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.bt, %i.bn
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9341

_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvP6ssl_stEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.bk, align 8, !tbaa !9340
  br label %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN5folly15SSLAcceptRunnerESt14default_deleteIS1_EED2Ev.exit
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.bl, %_ZNSt10unique_ptrIN5folly15SSLAcceptRunnerESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvP6ssl_stEESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9300
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #30
  br label %_ZNSt6vectorISt8functionIFvP6ssl_stEESaIS4_EED2Ev.exit

_ZNSt6vectorISt8functionIFvP6ssl_stEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvP6ssl_stEES4_EvT_S6_RSaIT0_E.exit.i, %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9297 ; 2 uses
  %.not.i5 = icmp eq ptr %i.cb, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt8functionIFvP6ssl_stEESaIS4_EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cd = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt8functionIFvP6ssl_stEESaIS4_EED2Ev.exit, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9286 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ci, align 8, !tbaa !9287
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !9289
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29, !call_target !9290, !inline_history !9366
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29, !call_target !9295, !inline_history !9366
  br label %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9216
  %.not.i.i.i6 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.cl, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cw, label %bb.u, label %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !9221

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #29
  br label %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !9212 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !9216
  %i.dc = add i64 %i.db, 1
  tail call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void

bb.v:                                             ; preds = %bb.b
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #33
  unreachable
}

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly10SSLContext26deleteNextProtocolsStringsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9362 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9362 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9320 ; 2 uses
  %.pre8 = load ptr, ptr %i.c, align 8, !tbaa !9363
  %i.f = icmp eq ptr %.pre8, %.pre
  br i1 %i.f, label %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN5folly10SSLContext27AdvertisedNextProtocolsItemES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly10SSLContext27AdvertisedNextProtocolsItemES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !9363
  br label %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit

_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPN5folly10SSLContext27AdvertisedNextProtocolsItemES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9318 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9364
  %.not.i.i3 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i3, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit
  store ptr %i.h, ptr %i.i, align 8, !tbaa !9364
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.04.07 = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.04.07, align 8, !tbaa !9365 ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0.copyload) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10SSLContext21setClientECCurvesListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !9367   ; 13 uses
  %5 = ptrtoaddr ptr %i.a to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9367 ; 5 uses
  %6 = ptrtoaddr ptr %i.c to i64
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !9301
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9228 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.k = add i64 %6, -64
  %i.l = sub i64 %i.k, %5                         ; 3 uses
  %i.m = lshr i64 %i.l, 5
  %i.n = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.l, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i64 %i.l, 512
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 15                    ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 3 uses
  %i.q = shl i64 %n.vec, 5                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.a, i64 %i.q
  %i.t = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.t, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi62 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi63 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = shl i64 %index, 5                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.u
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  %i.w = getelementptr i8, ptr %i.a, i64 %i.u
  %i.x = getelementptr i8, ptr %i.a, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.z = getelementptr i8, ptr %i.v, i64 168
  %i.aa = getelementptr i8, ptr %i.w, i64 296
  %i.ab = getelementptr i8, ptr %i.x, i64 424
  %i.ac = load <13 x i64>, ptr %i.y, align 8, !tbaa !9228
  %strided.vec = shufflevector <13 x i64> %i.ac, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ad = load <13 x i64>, ptr %i.z, align 8, !tbaa !9228
  %strided.vec68 = shufflevector <13 x i64> %i.ad, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ae = load <13 x i64>, ptr %i.aa, align 8, !tbaa !9228
  %strided.vec70 = shufflevector <13 x i64> %i.ae, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.af = load <13 x i64>, ptr %i.ab, align 8, !tbaa !9228
  %strided.vec72 = shufflevector <13 x i64> %i.af, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ag = add <4 x i64> %vec.phi, splat (i64 1)
  %i.ah = add <4 x i64> %vec.phi61, splat (i64 1)
  %i.ai = add <4 x i64> %vec.phi62, splat (i64 1)
  %i.aj = add <4 x i64> %vec.phi63, splat (i64 1)
  %i.ak = add <4 x i64> %i.ag, %strided.vec       ; 2 uses
  %i.al = add <4 x i64> %i.ah, %strided.vec68     ; 2 uses
  %i.am = add <4 x i64> %i.ai, %strided.vec70     ; 2 uses
  %i.an = add <4 x i64> %i.aj, %strided.vec72     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !9369

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx73 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx74 = add <4 x i64> %i.an, %bin.rdx73
  %i.ap = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx74) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !9372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.mod.vf76 = and i64 %i.n, 3                   ; 2 uses
  %i.aq = icmp eq i64 %n.mod.vf76, 0
  %i.ar = select i1 %i.aq, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %i.n, %i.ar              ; 2 uses
  %i.as = shl i64 %n.vec77, 5                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.a, i64 %i.as
  %i.av = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi79 = phi <4 x i64> [ %i.av, %vec.epilog.ph ], [ %i.ba, %vec.epilog.vector.body ]
  %i.aw = shl i64 %index78, 5
  %next.gep80 = getelementptr i8, ptr %i.a, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep80, i64 40
  %i.ay = load <13 x i64>, ptr %i.ax, align 8, !tbaa !9228
  %strided.vec82 = shufflevector <13 x i64> %i.ay, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.az = add <4 x i64> %vec.phi79, splat (i64 1)
  %i.ba = add <4 x i64> %i.az, %strided.vec82     ; 2 uses
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next83, %n.vec77
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ba)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.i, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.017.i.i.i.ph = phi i64 [ %i.h, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.sroa.0.016.i.i.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.017.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.0.016.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9228
  %i.bg = add i64 %.017.i.i.i, 1
  %i.bh = add i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.c
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.bh, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i = icmp ugt i64 %.0.lcssa.i.i.i, 15
  br i1 %.not.i, label %bb.c, label %.noexc

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bk = icmp slt i64 %.0.lcssa.i.i.i, 0
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.0.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i.i.i, i64 30) ; 2 uses
  %i.bl = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !9221

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc31 unwind label %bb.k

.noexc31:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #35
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.k ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.bn, align 1, !tbaa !9216
  store ptr %i.bn, ptr %2, align 8, !tbaa !9212
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !9216
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESD_EEvT_T0_SL_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.34, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 1), ptr nonnull %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit unwind label %bb.k

_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit: ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9150
  %i.bq = load ptr, ptr %2, align 8, !tbaa !9212
  %i.br = invoke i64 @SSL_CTX_ctrl(ptr noundef %i.bp, i32 noundef 92, i64 noundef 0, ptr noundef %i.bq)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bt = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bu = tail call ptr @__errno_location() #31
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7, !noalias !9375
  invoke void @_ZN5folly10SSLContext9getErrorsB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.bv)
          to label %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.thread

_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit:    ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.m
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9228 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9228 ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !9212   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.m = load i64, ptr %i.j, align 8, !tbaa !9216
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !9216
  store i8 %i.p, ptr %i.o, align 1, !tbaa !9216
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.d, align 8, !tbaa !9228
  %i.q = load ptr, ptr %0, align 8, !tbaa !9212
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !9216
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSF_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !9367   ; 8 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !9365 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9365 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9228 ; 5 uses
  %i.g = sub i64 9223372036854775807, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.i = add i64 %i.d, %i.f                       ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !9212 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.n = load i64, ptr %i.k, align 8, !tbaa !9216
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !9216
  store i8 %i.q, ptr %i.p, align 1, !tbaa !9216
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.d, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.f, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.d)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.i, ptr %i.e, align 8, !tbaa !9228
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !9212
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !9216
  %i.t = load ptr, ptr %1, align 8, !tbaa !9212   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9228 ; 6 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !9228 ; 5 uses
  %i.x = sub i64 9223372036854775807, %i.w
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.z = add i64 %i.w, %i.v                       ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !9212 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ac = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !9216
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.v, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !9216
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !9216
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.w, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.v)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.e, align 8, !tbaa !9228
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !9212
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !9216
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10SSLContext18setSupportedGroupsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !9367   ; 13 uses
  %5 = ptrtoaddr ptr %i.a to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9367 ; 5 uses
  %6 = ptrtoaddr ptr %i.c to i64
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !9301
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9228 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.k = add i64 %6, -64
  %i.l = sub i64 %i.k, %5                         ; 3 uses
  %i.m = lshr i64 %i.l, 5
  %i.n = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.l, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i64 %i.l, 512
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 15                    ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.n, %i.p                 ; 3 uses
  %i.q = shl i64 %n.vec, 5                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.a, i64 %i.q
  %i.t = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.t, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi62 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi63 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = shl i64 %index, 5                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.u
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  %i.w = getelementptr i8, ptr %i.a, i64 %i.u
  %i.x = getelementptr i8, ptr %i.a, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.z = getelementptr i8, ptr %i.v, i64 168
  %i.aa = getelementptr i8, ptr %i.w, i64 296
  %i.ab = getelementptr i8, ptr %i.x, i64 424
  %i.ac = load <13 x i64>, ptr %i.y, align 8, !tbaa !9228
  %strided.vec = shufflevector <13 x i64> %i.ac, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ad = load <13 x i64>, ptr %i.z, align 8, !tbaa !9228
  %strided.vec68 = shufflevector <13 x i64> %i.ad, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ae = load <13 x i64>, ptr %i.aa, align 8, !tbaa !9228
  %strided.vec70 = shufflevector <13 x i64> %i.ae, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.af = load <13 x i64>, ptr %i.ab, align 8, !tbaa !9228
  %strided.vec72 = shufflevector <13 x i64> %i.af, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ag = add <4 x i64> %vec.phi, splat (i64 1)
  %i.ah = add <4 x i64> %vec.phi61, splat (i64 1)
  %i.ai = add <4 x i64> %vec.phi62, splat (i64 1)
  %i.aj = add <4 x i64> %vec.phi63, splat (i64 1)
  %i.ak = add <4 x i64> %i.ag, %strided.vec       ; 2 uses
  %i.al = add <4 x i64> %i.ah, %strided.vec68     ; 2 uses
  %i.am = add <4 x i64> %i.ai, %strided.vec70     ; 2 uses
  %i.an = add <4 x i64> %i.aj, %strided.vec72     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !9380

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.al, %i.ak
  %bin.rdx73 = add <4 x i64> %i.am, %bin.rdx
  %bin.rdx74 = add <4 x i64> %i.an, %bin.rdx73
  %i.ap = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx74) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !9372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ap, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %n.mod.vf76 = and i64 %i.n, 3                   ; 2 uses
  %i.aq = icmp eq i64 %n.mod.vf76, 0
  %i.ar = select i1 %i.aq, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %i.n, %i.ar              ; 2 uses
  %i.as = shl i64 %n.vec77, 5                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.a, i64 %i.as
  %i.av = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi79 = phi <4 x i64> [ %i.av, %vec.epilog.ph ], [ %i.ba, %vec.epilog.vector.body ]
  %i.aw = shl i64 %index78, 5
  %next.gep80 = getelementptr i8, ptr %i.a, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep80, i64 40
  %i.ay = load <13 x i64>, ptr %i.ax, align 8, !tbaa !9228
  %strided.vec82 = shufflevector <13 x i64> %i.ay, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.az = add <4 x i64> %vec.phi79, splat (i64 1)
  %i.ba = add <4 x i64> %i.az, %strided.vec82     ; 2 uses
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next83, %n.vec77
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9381

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ba)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.i, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.017.i.i.i.ph = phi i64 [ %i.h, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.sroa.0.016.i.i.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.017.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.0.016.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9228
  %i.bg = add i64 %.017.i.i.i, 1
  %i.bh = add i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.c
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.bh, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i = icmp ugt i64 %.0.lcssa.i.i.i, 15
  br i1 %.not.i, label %bb.c, label %.noexc

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bk = icmp slt i64 %.0.lcssa.i.i.i, 0
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.0.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i.i.i, i64 30) ; 2 uses
  %i.bl = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !9221

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc31 unwind label %bb.k

.noexc31:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #35
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.k ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.bn, align 1, !tbaa !9216
  store ptr %i.bn, ptr %2, align 8, !tbaa !9212
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !9216
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESD_EEvT_T0_SL_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.34, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 1), ptr nonnull %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit unwind label %bb.k

_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit: ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9150
  %i.bq = load ptr, ptr %2, align 8, !tbaa !9212
  %i.br = invoke i64 @SSL_CTX_ctrl(ptr noundef %i.bp, i32 noundef 92, i64 noundef 0, ptr noundef %i.bq)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN5folly4joinIA2_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES8_EEvRKT_RKT0_RT1_.exit
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bt = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bu = tail call ptr @__errno_location() #31
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7, !noalias !9383
  invoke void @_ZN5folly10SSLContext9getErrorsB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.bv)
          to label %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.thread

_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit:    ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.m
end_hunk_1
begin_hunk_2_@SSL_CTX_set_alpn_select_cb

declare i32 @SSL_CTX_set_alpn_protos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt21discrete_distributionIiE10param_typeC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_SA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 12 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #32
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr null, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !9339
  br label %.loopexit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = shl nuw nsw i64 %i.c, 1
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %iter.check unwind label %bb.c ; 7 uses

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  store ptr %i.i, ptr %0, align 8, !tbaa !9338
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !9339
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.d, 1152921504606846960      ; 5 uses
  %i.l = and i64 %i.d, 15
  %i.m = shl nuw nsw i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 2 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 4 uses
  %i.r = shl i64 %index, 2
  %next.gep23 = getelementptr i8, ptr %1, i64 %i.r ; 4 uses
  %i.s = getelementptr i8, ptr %next.gep23, i64 16
  %i.t = getelementptr i8, ptr %next.gep23, i64 32
  %i.u = getelementptr i8, ptr %next.gep23, i64 48
  %wide.load = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !7
  %wide.load24 = load <4 x i32>, ptr %i.s, align 4, !tbaa !7
  %wide.load25 = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %wide.load26 = load <4 x i32>, ptr %i.u, align 4, !tbaa !7
  %i.v = sitofp <4 x i32> %wide.load to <4 x double>
  %i.w = sitofp <4 x i32> %wide.load24 to <4 x double>
  %i.x = sitofp <4 x i32> %wide.load25 to <4 x double>
  %i.y = sitofp <4 x i32> %wide.load26 to <4 x double>
  %i.z = getelementptr i8, ptr %next.gep, i64 32
  %i.aa = getelementptr i8, ptr %next.gep, i64 64
  %i.ab = getelementptr i8, ptr %next.gep, i64 96
  store <4 x double> %i.v, ptr %next.gep, align 8, !tbaa !9422
  store <4 x double> %i.w, ptr %i.z, align 8, !tbaa !9422
  store <4 x double> %i.x, ptr %i.aa, align 8, !tbaa !9422
  store <4 x double> %i.y, ptr %i.ab, align 8, !tbaa !9422
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !9445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ad = and i64 %i.c, 48
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !9372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.d, 1152921504606846972    ; 4 uses
  %i.ae = and i64 %i.d, 3
  %i.af = shl nuw nsw i64 %n.vec30, 3
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af   ; 2 uses
  %i.ah = shl nuw nsw i64 %n.vec30, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = shl i64 %index31, 3
  %next.gep32 = getelementptr i8, ptr %i.i, i64 %i.aj
  %i.ak = shl i64 %index31, 2
  %next.gep33 = getelementptr i8, ptr %1, i64 %i.ak
  %wide.load34 = load <4 x i32>, ptr %next.gep33, align 4, !tbaa !7
  %i.al = sitofp <4 x i32> %wide.load34 to <4 x double>
  store <4 x double> %i.al, ptr %next.gep32, align 8, !tbaa !9422
  %index.next35 = add nuw i64 %index31, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next35, %n.vec30
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9446

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.d, %n.vec30
  br i1 %cmp.n36, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = load i32, ptr %.0910.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !7
  %i.ao = sitofp i32 %i.an to double
  store double %i.ao, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9422
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = add nsw i64 %.012.i.i.i.i.i.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit, !llvm.loop !9447

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !9338  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i6.i, label %.body, label %.body.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i
  %.08.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i ], [ %i.ag, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.08.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !9448
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  invoke void @_ZNSt21discrete_distributionIiE10param_type13_M_initializeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !9338 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9339
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.be = load ptr, ptr %0, align 8, !tbaa !9338  ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i9, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %.sink19 = phi ptr [ %i.au, %bb.c ], [ %i.be, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.c ], [ %i.ax, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9339
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %.sink19 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink19, i64 noundef %i.bj) #30
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.at, %bb.c ], [ %i.ax, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt21discrete_distributionIiE10param_type13_M_initializeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9448 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9338   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  %.not.i.i = icmp eq ptr %i.b, %i.c              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.c, ptr %i.a, align 8, !tbaa !9448
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.06.i = phi double [ %i.j, %.lr.ph.i ], [ 0.000000e+00, %bb.c ]
  %.sroa.02.05.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.i = load double, ptr %.sroa.02.05.i, align 8, !tbaa !9422
  %i.j = fadd double %.06.i, %i.i                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %.lr.ph.i10.preheader, label %.lr.ph.i, !llvm.loop !9449

.lr.ph.i10.preheader:                             ; preds = %.lr.ph.i
  %1 = ptrtoaddr ptr %i.b to i64
  %2 = ptrtoaddr ptr %i.c to i64
  %i.m = sub i64 %1, %2
  %i.n = add i64 %i.m, -8                         ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 24
  br i1 %min.iters.check, label %.lr.ph.i10.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i10.preheader
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.s ; 2 uses
  %wide.load = load <4 x double>, ptr %next.gep, align 8, !tbaa !9422
  %i.t = fdiv <4 x double> %wide.load, %broadcast.splat
  store <4 x double> %i.t, ptr %next.gep, align 8, !tbaa !9422
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !9450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit, label %.lr.ph.i10.preheader21

.lr.ph.i10.preheader21:                           ; preds = %.lr.ph.i10.preheader, %middle.block
  %.sroa.0.07.i.ph = phi ptr [ %i.c, %.lr.ph.i10.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader21, %.lr.ph.i10
  %.sroa.0.07.i = phi ptr [ %i.x, %.lr.ph.i10 ], [ %.sroa.0.07.i.ph, %.lr.ph.i10.preheader21 ] ; 3 uses
  %i.v = load double, ptr %.sroa.0.07.i, align 8, !tbaa !9422
  %i.w = fdiv double %i.v, %i.j
  store double %i.w, ptr %.sroa.0.07.i, align 8, !tbaa !9422
  %i.x = getelementptr i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit, label %.lr.ph.i10, !llvm.loop !9451

_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit: ; preds = %.lr.ph.i10, %middle.block
  %i.z = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.z, label %bb.d, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread

bb.d:                                             ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #32
  unreachable

_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread: ; preds = %bb.c, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9339
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !9338 ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9448
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.af                    ; 3 uses
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 4 uses
  %i.an = icmp sgt i64 %i.al, 0
  br i1 %i.an, label %bb.e, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.ad, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #30
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !9420
  %.pre12.pre = load ptr, ptr %i.a, align 8, !tbaa !9420
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %.pre12 = phi ptr [ %.pre12.pre, %bb.f ], [ %i.b, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.c, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i ]
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !9338
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !9448
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !9339
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.aq = phi ptr [ %i.b, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread ], [ %.pre12, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.ar = phi ptr [ %i.c, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread ], [ %.pre, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.as = tail call ptr @_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %i.ar, ptr %i.aq, ptr nonnull %i.aa) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9448
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !9338 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !9422
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.b, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %0, align 8, !tbaa !9422 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9448 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9339 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.b, ptr %i.d, align 8, !tbaa !9422
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !9448
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !9338   ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store double %i.b, ptr %i.t, align 8, !tbaa !9422
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #30
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !9338
  store ptr %i.v, ptr %i.c, align 8, !tbaa !9448
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !9339
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit

_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit: ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.x = phi ptr [ %i.f, %bb.c ], [ %i.w, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ]
  %i.y = phi ptr [ %i.g, %bb.c ], [ %i.v, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9
  %i.ab = phi ptr [ %i.ax, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.x, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.ay, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.y, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 3 uses
  %i.ad = phi ptr [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.z, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 2 uses
  %.022 = phi double [ %i.af, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.b, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ]
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9422
  %i.af = fadd double %.022, %i.ae                ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
end_hunk_2
