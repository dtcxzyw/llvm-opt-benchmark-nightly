Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/grpc_authorization_engine?download=true
inline.NumInlined: 436
inline.NumDeleted: 284
begin_hunk_0_@_ZN9grpc_core23GrpcAuthorizationEngineaSEOS0_:bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  store i64 %i.s, ptr %i.q, align 8, !tbaa !21
  %i.t = load i64, ptr %i.g, align 8, !tbaa !23
  store i64 %i.t, ptr %i.d, align 8, !tbaa !23
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !23
  store ptr %i.f, ptr %i.b, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !21
  %i.y = load i64, ptr %i.g, align 8, !tbaa !23
  store i64 %i.y, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  store i64 %i.u, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !21
  store i8 0, ptr %i.z, align 1, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !49
  store <2 x ptr> %i.al, ptr %i.af, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !45
  %.not4.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #18, !inline_history !111
  br label %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.at = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !23
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #20
  br label %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.az = ptrtoint ptr %i.ak to i64
  %i.ba = ptrtoint ptr %i.ag to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !60
  %i.bm = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !66
  store <2 x ptr> %i.bm, ptr %i.bg, align 8, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !60
  %.not4.i.i.i.i.i6 = icmp eq ptr %i.bh, %i.bj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i6, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i8 = phi ptr [ %i.bt, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.bh, %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit ] ; 2 uses
  %i.bp = load ptr, ptr %.05.i.i.i.i.i8, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #18, !inline_history !112
  br label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 8 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bt, %i.bj
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i7, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i10 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i.i10, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = ptrtoint ptr %i.bh to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bw) #20
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core23GrpcAuthorizationEngine8EvaluateERKNS_12EvaluateArgsE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::AuthorizationEngine::Decision") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::experimental::AuditContext", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not46.not = icmp eq ptr %i.e, %i.g
  br i1 %.not46.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.sroa.031.047 = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.031.047, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %.loopexit40

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.031.047)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread unwind label %.loopexit.split-lp

.loopexit40:                                      ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.047, i64 40 ; 2 uses
  %.not.not = icmp eq ptr %i.n, %i.g
  br i1 %.not.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread, label %.lr.ph

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a, %bb.c
  %.2 = phi i8 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42
  %i.q = icmp eq i32 %i.p, 0
  %4 = zext i1 %i.q to i8
  %5 = icmp ne i8 %.2, %4                         ; 2 uses
  %i.r = zext i1 %5 to i32
  store i32 %i.r, ptr %0, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val21 = load i32, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %i.t = icmp eq i32 %.val21, 3
  %or.cond.v = select i1 %5, i32 1, i32 2
  %or.cond = icmp eq i32 %.val21, %or.cond.v
  %or.cond39 = select i1 %i.t, i1 true, i1 %or.cond
  br i1 %or.cond39, label %_ZN9grpc_core12_GLOBAL__N_19ShouldLogERKNS_19AuthorizationEngine8DecisionERKNS_4Rbac14AuditConditionE.exit.thread, label %.loopexit

_ZN9grpc_core12_GLOBAL__N_19ShouldLogERKNS_19AuthorizationEngine8DecisionERKNS_4Rbac14AuditConditionE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66   ; 2 uses
  %.not3849 = icmp eq ptr %i.v, %i.x
  br i1 %.not3849, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %_ZN9grpc_core12_GLOBAL__N_19ShouldLogERKNS_19AuthorizationEngine8DecisionERKNS_4Rbac14AuditConditionE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph51, %bb.g
  %.sroa.027.050 = phi ptr [ %i.v, %.lr.ph51 ], [ %i.av, %bb.g ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.027.050, align 8, !tbaa !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.af = invoke { i64, ptr } @_ZNK9grpc_core12EvaluateArgs7GetPathEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = invoke { i64, ptr } @_ZNK9grpc_core12EvaluateArgs11GetSpiffeIdEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = extractvalue { i64, ptr } %i.af, 1
  %i.ai = extractvalue { i64, ptr } %i.af, 0
  %i.aj = extractvalue { i64, ptr } %i.ag, 0
  %i.ak = extractvalue { i64, ptr } %i.ag, 1
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.am = load i64, ptr %i.z, align 8, !tbaa !21
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ap = load i32, ptr %0, align 8, !tbaa !115
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  store i64 %i.ai, ptr %3, align 8, !tbaa !22
  store ptr %i.ah, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !117
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !22
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !117
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !22
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !117
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !22
  store ptr %i.an, ptr %.sroa.436.0..sroa_idx, align 8, !tbaa !117
  store i8 %i.ar, ptr %i.ad, align 8, !tbaa !121
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(65) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.027.050, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.av, %i.x
  br i1 %.not38, label %.loopexit, label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.i

bb.i:                                             ; preds = %.loopexit40, %.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %lpad.loopexit, %.loopexit40 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZN9grpc_core19AuthorizationEngine8DecisionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.az = load i64, ptr %i.b, align 8, !tbaa !23
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZN9grpc_core19AuthorizationEngine8DecisionD2Ev.exit

_ZN9grpc_core19AuthorizationEngine8DecisionD2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.g, %_ZN9grpc_core12_GLOBAL__N_19ShouldLogERKNS_19AuthorizationEngine8DecisionERKNS_4Rbac14AuditConditionE.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread
  ret void
}

declare { i64, ptr } @_ZNK9grpc_core12EvaluateArgs7GetPathEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i64, ptr } @_ZNK9grpc_core12EvaluateArgs11GetSpiffeIdEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core23GrpcAuthorizationEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core23GrpcAuthorizationEngineE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !122
  br label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core12experimental11AuditLoggerEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ad, %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i ], [ %i.q, %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #18, !inline_history !123
  br label %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core20AuthorizationMatcherEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i2
  %i.y = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !23
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core20AuthorizationMatcherESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9grpc_core23GrpcAuthorizationEngine6PolicyEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.p, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.ae = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %_ZNSt6vectorISt10unique_ptrIN9grpc_core12experimental11AuditLoggerESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN9grpc_core23GrpcAuthorizationEngine6PolicyESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core23GrpcAuthorizationEngine6PolicyES2_EvT_S4_RSaIT0_E.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #20
end_hunk_0
