inline.NumInlined: 1084
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !175

_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb6vectorIdLb1ESaIdEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #24
  br label %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorIdLb1ESaIdEEES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  %i.b = fcmp oeq double %2, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv double 1.000000e-01, %1             ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.000000e+00
  %.sroa.speculated = select i1 %i.d, double %i.c, double 1.000000e+00 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %.sroa.speculated, ptr %i.e, align 8, !tbaa !146
  %i.f = fmul double %1, %.sroa.speculated        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  store double %i.f, ptr %i.h, align 8, !tbaa !161
  %i.i = fdiv double %i.f, %2
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
  store double %i.i, ptr %i.j, align 8, !tbaa !161
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %2, ptr %i.k, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.f, ptr %i.l, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.m, align 8, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 13 uses
  %i.p = alloca i64, align 8                      ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 3 uses
  %i.r = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 13 uses
  %i.t = alloca i64, align 8                      ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.u = alloca i64, align 8                      ; 7 uses
  %i.v = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 13 uses
  %i.ab = alloca i64, align 8                     ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ac = alloca i64, align 8                     ; 7 uses
  %i.ad = alloca i64, align 8                     ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ae = alloca i64, align 8                     ; 3 uses
  %i.af = alloca i64, align 8                     ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ag = alloca i64, align 8                     ; 3 uses
  %i.ah = alloca i64, align 8                     ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ai = alloca i64, align 8                     ; 7 uses
  %i.aj = alloca i64, align 8                     ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ak = alloca i64, align 8                     ; 31 uses
  %i.al = alloca i64, align 8                     ; 31 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.am = alloca i64, align 8                     ; 3 uses
  %i.an = alloca i64, align 8                     ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ao = alloca i64, align 8                     ; 3 uses
  %i.ap = alloca i64, align 8                     ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::vector.111", align 8 ; 15 uses
  %17 = alloca %"class.duckdb::vector.111", align 8 ; 24 uses
  %18 = alloca %"class.duckdb::vector.105", align 8 ; 9 uses
  %19 = alloca %"class.duckdb::vector.105", align 16 ; 33 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !162
  %i.as = fsub double %1, %i.ar                   ; 6 uses
  store double %1, ptr %i.aq, align 8, !tbaa !162
  %i.at = fcmp ugt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.b, label %bb.di

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZN6duckdb21UnscentedKalmanFilter19GenerateSigmaPointsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.111") align 8 %16, ptr noundef nonnull align 8 dereferenceable(184) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.au = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.au, ptr %18, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ay = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc unwind label %bb.i     ; 4 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.ay, ptr %17, align 8, !tbaa !170
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 11 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !171
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !172
  %i.bc = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN6duckdb6vectorIdLb1ESaIdEEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.ay, i64 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %17, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.be) #24
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !171
  %i.bf = load ptr, ptr %18, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 0)
          to label %bb.k unwind label %bb.ae

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit74.4
  %i.bi = add i64 %21, -8
  %i.bj = sub i64 %i.bi, %20
  %i.bk = and i64 %i.bj, -8
  %i.bl = add i64 %i.bk, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.bl, i1 false), !tbaa !161
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit

bb.h:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit72

bb.i:                                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %i.bd, %bb.e ], [ %i.bd, %bb.d ] ; 2 uses
  %i.bo = load ptr, ptr %18, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIdSaIdEED2Ev.exit72, label %bb.j

bb.j:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit72

_ZNSt6vectorIdSaIdEED2Ev.exit72:                  ; preds = %bb.j, %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.h ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev.exit266

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  invoke void @_ZN6duckdb21UnscentedKalmanFilter15StateTransitionERKNS_6vectorIdLb1ESaIdEEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.105") align 8 %19, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, double noundef %i.as)
          to label %bb.l unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.bp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 0)
          to label %bb.m unwind label %bb.af      ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !167 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load <2 x ptr>, ptr %19, align 16, !tbaa !176
  store <2 x ptr> %i.bs, ptr %i.bp, align 8, !tbaa !176
  %i.bt = load ptr, ptr %i.bg, align 16, !tbaa !168
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !168
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit74, label %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit

_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit:        ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #24
  %.pr = load ptr, ptr %19, align 16, !tbaa !167  ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIdSaIdEED2Ev.exit74, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit74

_ZNSt6vectorIdSaIdEED2Ev.exit74:                  ; preds = %bb.m, %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 1)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit74
  invoke void @_ZN6duckdb21UnscentedKalmanFilter15StateTransitionERKNS_6vectorIdLb1ESaIdEEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.105") align 8 %19, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, double noundef %i.as)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.bv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 1)
          to label %bb.q unwind label %bb.af      ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !167 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load <2 x ptr>, ptr %19, align 16, !tbaa !176
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !176
  %i.bz = load ptr, ptr %i.bg, align 16, !tbaa !168
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !168
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.bw, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.1, label %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.1

_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.1:      ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #24
  %.pr.1 = load ptr, ptr %19, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i73.1 = icmp eq ptr %.pr.1, null
  br i1 %.not.i.i.i73.1, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.1, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.1
  call void @_ZdlPv(ptr noundef nonnull %.pr.1) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit74.1

_ZNSt6vectorIdSaIdEED2Ev.exit74.1:                ; preds = %bb.q, %bb.r, %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 2)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit74.1
  invoke void @_ZN6duckdb21UnscentedKalmanFilter15StateTransitionERKNS_6vectorIdLb1ESaIdEEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.105") align 8 %19, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, double noundef %i.as)
          to label %bb.t unwind label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.cb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 2)
          to label %bb.u unwind label %bb.af      ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !167 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load <2 x ptr>, ptr %19, align 16, !tbaa !176
  store <2 x ptr> %i.ce, ptr %i.cb, align 8, !tbaa !176
  %i.cf = load ptr, ptr %i.bg, align 16, !tbaa !168
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !168
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %i.cc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.2, label %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.2

_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.2:      ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #24
  %.pr.2 = load ptr, ptr %19, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i73.2 = icmp eq ptr %.pr.2, null
  br i1 %.not.i.i.i73.2, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.2, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.2
  call void @_ZdlPv(ptr noundef nonnull %.pr.2) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit74.2

_ZNSt6vectorIdSaIdEED2Ev.exit74.2:                ; preds = %bb.u, %bb.v, %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.cg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 3)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit74.2
  invoke void @_ZN6duckdb21UnscentedKalmanFilter15StateTransitionERKNS_6vectorIdLb1ESaIdEEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.105") align 8 %19, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, double noundef %i.as)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ch = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 3)
          to label %bb.y unwind label %bb.af      ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load <2 x ptr>, ptr %19, align 16, !tbaa !176
  store <2 x ptr> %i.ck, ptr %i.ch, align 8, !tbaa !176
  %i.cl = load ptr, ptr %i.bg, align 16, !tbaa !168
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !168
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.ci, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.3, label %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.3

_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.3:      ; preds = %bb.y
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #24
  %.pr.3 = load ptr, ptr %19, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i73.3 = icmp eq ptr %.pr.3, null
  br i1 %.not.i.i.i73.3, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.3, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.3
  call void @_ZdlPv(ptr noundef nonnull %.pr.3) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit74.3

_ZNSt6vectorIdSaIdEED2Ev.exit74.3:                ; preds = %bb.y, %bb.z, %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.cm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 4)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit74.3
  invoke void @_ZN6duckdb21UnscentedKalmanFilter15StateTransitionERKNS_6vectorIdLb1ESaIdEEEd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.105") align 8 %19, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, double noundef %i.as)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 4)
          to label %bb.ac unwind label %bb.af     ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !167 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load <2 x ptr>, ptr %19, align 16, !tbaa !176
  store <2 x ptr> %i.cq, ptr %i.cn, align 8, !tbaa !176
  %i.cr = load ptr, ptr %i.bg, align 16, !tbaa !168
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !168
  %.not.i.i.i.i.i.i.4 = icmp eq ptr %i.co, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.4, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.4, label %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.4

_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.4:      ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.co) #24
  %.pr.4 = load ptr, ptr %19, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i73.4 = icmp eq ptr %.pr.4, null
  br i1 %.not.i.i.i73.4, label %_ZNSt6vectorIdSaIdEED2Ev.exit74.4, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.4
  call void @_ZdlPv(ptr noundef nonnull %.pr.4) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit74.4

_ZNSt6vectorIdSaIdEED2Ev.exit74.4:                ; preds = %bb.ac, %bb.ad, %_ZN6duckdb6vectorIdLb1ESaIdEEaSEOS2_.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !176 ; 11 uses
  %20 = ptrtoint ptr %i.ct to i64                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !176 ; 3 uses
  %21 = ptrtoint ptr %i.cv to i64                 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

bb.ae:                                            ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEED2Ev.exit74.3, %bb.w, %_ZNSt6vectorIdSaIdEED2Ev.exit74.2, %bb.s, %_ZNSt6vectorIdSaIdEED2Ev.exit74.1, %bb.o, %_ZNSt6vectorIdSaIdEED2Ev.exit74, %bb.k, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit76

bb.af:                                            ; preds = %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %19, align 16, !tbaa !167 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIdSaIdEED2Ev.exit76, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit76

_ZNSt6vectorIdSaIdEED2Ev.exit76:                  ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn66 = phi { ptr, i32 } [ %i.cw, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.body78

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit74.4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !169 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !167 ; 8 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = ashr exact i64 %i.df, 3                 ; 2 uses
  %i.dh = sub i64 %21, %20                        ; 2 uses
  %i.di = ashr exact i64 %i.dh, 3                 ; 2 uses
  %i.dj = load ptr, ptr %17, align 8              ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %exitcond485.not = icmp eq ptr %i.db, %i.dc
  br i1 %exitcond485.not, label %.preheader367.split, label %.preheader367.split.us, !prof !108

.preheader367.split.us:                           ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %i.dl = load ptr, ptr %i.az, align 8
  %.not.i.i.i80.not = icmp eq ptr %i.dl, %i.dj
  br i1 %.not.i.i.i80.not, label %.preheader367.split.us.split, label %.preheader367.split.us.split.us.preheader, !prof !108

.preheader367.split.us.split.us.preheader:        ; preds = %.preheader367.split.us
  %i.dm = load double, ptr %i.dc, align 8, !tbaa !161
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !169 ; 2 uses
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !167 ; 4 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.ds, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.not = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i.i89.us.us.not, label %.noexc.i284, label %bb.ah, !prof !108

bb.ah:                                            ; preds = %.preheader367.split.us.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.dt = load double, ptr %i.do, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.ai, align 8, !tbaa !63
  store i64 %i.di, ptr %i.aj, align 8, !tbaa !63
  %exitcond.not = icmp eq ptr %i.cv, %i.ct
  br i1 %exitcond.not, label %.noexc.i288, label %.preheader367.split.us.split.us.1, !prof !108

.preheader367.split.us.split.us.1:                ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.du = load double, ptr %i.ct, align 8, !tbaa !161
  %i.dv = call double @llvm.fmuladd.f64(double %i.dm, double %i.dt, double %i.du) ; 2 uses
  store double %i.dv, ptr %i.ct, align 8, !tbaa !161
  %i.dw = load double, ptr %i.dc, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 1, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.ds, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.1 = icmp ugt i64 %i.ds, 1
  br i1 %.not.i.i.i89.us.us.1, label %bb.ai, label %.noexc.i284, !prof !174

bb.ai:                                            ; preds = %.preheader367.split.us.split.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 1, ptr %i.ai, align 8, !tbaa !63
  store i64 %i.di, ptr %i.aj, align 8, !tbaa !63
  %exitcond.1.not = icmp eq i64 %i.dh, 8
  br i1 %exitcond.1.not, label %.noexc.i288, label %.split.us.split.us, !prof !108

.split.us.split.us:                               ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 6 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !161
  %i.eb = call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %i.ea) ; 2 uses
  store double %i.eb, ptr %i.dz, align 8, !tbaa !161
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %17, align 8              ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %exitcond485.1.not = icmp eq i64 %i.df, 8
  br i1 %exitcond485.1.not, label %.preheader367.split, label %.preheader367.split.us.1, !prof !108

.preheader367.split.us.1:                         ; preds = %.split.us.split.us
  %i.eg = load ptr, ptr %i.az, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ed to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 24                ; 2 uses
  %.not.i.i.i80.1 = icmp ugt i64 %i.ek, 1
  br i1 %.not.i.i.i80.1, label %.preheader367.split.us.split.us.preheader.1, label %.preheader367.split.us.split, !prof !174

.preheader367.split.us.split.us.preheader.1:      ; preds = %.preheader367.split.us.1
  %i.el = load double, ptr %i.ec, align 8, !tbaa !161
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !169 ; 2 uses
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !167 ; 4 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.er, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.1487.not = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i.i89.us.us.1487.not, label %.noexc.i284, label %.preheader367.split.us.split.us.1.1, !prof !108

.preheader367.split.us.split.us.1.1:              ; preds = %.preheader367.split.us.split.us.preheader.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.es = load double, ptr %i.en, align 8, !tbaa !161
  %i.et = call double @llvm.fmuladd.f64(double %i.el, double %i.es, double %i.dv) ; 2 uses
  store double %i.et, ptr %i.ct, align 8, !tbaa !161
  %i.eu = load double, ptr %i.ec, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 1, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.er, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.1.1 = icmp ugt i64 %i.er, 1
  br i1 %.not.i.i.i89.us.us.1.1, label %.split.us.split.us.1, label %.noexc.i284, !prof !174

.split.us.split.us.1:                             ; preds = %.preheader367.split.us.split.us.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !161
  %i.ex = call double @llvm.fmuladd.f64(double %i.eu, double %i.ew, double %i.eb) ; 2 uses
  store double %i.ex, ptr %i.dz, align 8, !tbaa !161
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %17, align 8              ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %exitcond485.2.not = icmp eq i64 %i.df, 16
  br i1 %exitcond485.2.not, label %.preheader367.split, label %.preheader367.split.us.2, !prof !108

.preheader367.split.us.2:                         ; preds = %.split.us.split.us.1
  %i.fc = load ptr, ptr %i.az, align 8
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.ez to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = sdiv exact i64 %i.ff, 24                ; 2 uses
  %.not.i.i.i80.2 = icmp ugt i64 %i.fg, 2
  br i1 %.not.i.i.i80.2, label %.preheader367.split.us.split.us.preheader.2, label %.preheader367.split.us.split, !prof !174

.preheader367.split.us.split.us.preheader.2:      ; preds = %.preheader367.split.us.2
  %i.fh = load double, ptr %i.ey, align 8, !tbaa !161
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !169 ; 2 uses
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !167 ; 4 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.fn, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.2.not = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i89.us.us.2.not, label %.noexc.i284, label %.preheader367.split.us.split.us.1.2, !prof !108

.preheader367.split.us.split.us.1.2:              ; preds = %.preheader367.split.us.split.us.preheader.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.fo = load double, ptr %i.fj, align 8, !tbaa !161
  %i.fp = call double @llvm.fmuladd.f64(double %i.fh, double %i.fo, double %i.et) ; 2 uses
  store double %i.fp, ptr %i.ct, align 8, !tbaa !161
  %i.fq = load double, ptr %i.ey, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 1, ptr %i.ak, align 8, !tbaa !63
  store i64 %i.fn, ptr %i.al, align 8, !tbaa !63
  %.not.i.i.i89.us.us.1.2 = icmp ugt i64 %i.fn, 1
  br i1 %.not.i.i.i89.us.us.1.2, label %.split.us.split.us.2, label %.noexc.i284, !prof !174

.split.us.split.us.2:                             ; preds = %.preheader367.split.us.split.us.1.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !161
  %i.ft = call double @llvm.fmuladd.f64(double %i.fq, double %i.fs, double %i.ex) ; 2 uses
  store double %i.ft, ptr %i.dz, align 8, !tbaa !161
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %17, align 8              ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %exitcond485.3.not = icmp eq i64 %i.df, 24
  br i1 %exitcond485.3.not, label %.preheader367.split, label %.preheader367.split.us.3, !prof !108

.preheader367.split.us.3:                         ; preds = %.split.us.split.us.2
  %i.fy = load ptr, ptr %i.az, align 8
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fv to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 24                ; 2 uses
  %.not.i.i.i80.3 = icmp ugt i64 %i.gc, 3
  br i1 %.not.i.i.i80.3, label %.preheader367.split.us.split.us.preheader.3, label %.preheader367.split.us.split, !prof !174

.preheader367.split.us.split.us.preheader.3:      ; preds = %.preheader367.split.us.3
  %i.gd = load double, ptr %i.fu, align 8, !tbaa !161
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !169 ; 2 uses
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !167 ; 4 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
end_hunk_0
begin_hunk_1_@_ZN6duckdb21UnscentedKalmanFilter7PredictEd:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.am unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.preheader367.split
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.noexc278
  %.0.i.i.i = phi i1 [ false, %bb.aj ], [ true, %.noexc278 ] ; 2 uses
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hz = load ptr, ptr %15, align 8, !tbaa !39   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hs
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.hz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %.0.i.i.i, label %bb.al, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %.0.i.i.i, label %bb.al, label %.body78

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.hr) #22
  br label %.body78

bb.am:                                            ; preds = %bb.aj
  unreachable

.noexc281:                                        ; preds = %.preheader367.split.us.split
  store ptr %i.hq, ptr %14, align 8, !tbaa !39
  %i.ib = load i64, ptr %i.m, align 8, !tbaa !63  ; 3 uses
  store i64 %i.ib, ptr %i.hp, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.hq, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !110
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ib
  store i8 0, ptr %i.id, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc281
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.aq unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i81: ; preds = %.preheader367.split.us.split
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %.noexc281
  %.0.i.i.i84 = phi i1 [ false, %bb.an ], [ true, %.noexc281 ] ; 2 uses
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ig = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hp
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.ig) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0.i.i.i84, label %bb.ap, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i86: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.0.i.i.i84, label %bb.ap, label %.body78

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i81
  %.pn8.i.i.i82 = phi { ptr, i32 } [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i81 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i86 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85 ]
  call void @__cxa_free_exception(ptr %i.ho) #22
  br label %.body78

bb.aq:                                            ; preds = %bb.an
  unreachable

.noexc.i284:                                      ; preds = %.preheader367.split.us.split.us.1.4, %.preheader367.split.us.split.us.preheader.4, %.preheader367.split.us.split.us.1.3, %.preheader367.split.us.split.us.preheader.3, %.preheader367.split.us.split.us.1.2, %.preheader367.split.us.split.us.preheader.2, %.preheader367.split.us.split.us.1.1, %.preheader367.split.us.split.us.preheader.1, %.preheader367.split.us.split.us.1, %.preheader367.split.us.split.us.preheader
  %i.ii = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ij = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ij, ptr %13, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i64 55, ptr %i.l, align 8, !tbaa !63
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc285 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90 ; 3 uses

.noexc285:                                        ; preds = %.noexc.i284
  store ptr %i.ik, ptr %13, align 8, !tbaa !39
  %i.il = load i64, ptr %i.l, align 8, !tbaa !63  ; 3 uses
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ik, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !110
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il
  store i8 0, ptr %i.in, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %.noexc285
  invoke void @__cxa_throw(ptr nonnull %i.ii, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.au unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90: ; preds = %.noexc.i284
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %.noexc285
  %.0.i.i.i93 = phi i1 [ false, %bb.ar ], [ true, %.noexc285 ] ; 2 uses
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ij
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.iq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.0.i.i.i93, label %bb.at, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.0.i.i.i93, label %bb.at, label %.body78

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90
  %.pn8.i.i.i91 = phi { ptr, i32 } [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i90 ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i95 ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94 ]
  call void @__cxa_free_exception(ptr %i.ii) #22
  br label %.body78

bb.au:                                            ; preds = %bb.ar
  unreachable

.noexc.i288:                                      ; preds = %bb.ai, %bb.ah
  %i.is = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.it, ptr %12, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i64 55, ptr %i.k, align 8, !tbaa !63
  %i.iu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc289 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100 ; 3 uses

.noexc289:                                        ; preds = %.noexc.i288
  store ptr %i.iu, ptr %12, align 8, !tbaa !39
  %i.iv = load i64, ptr %i.k, align 8, !tbaa !63  ; 3 uses
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.iu, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !110
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.noexc289
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ay unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100: ; preds = %.noexc.i288
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %.noexc289
  %.0.i.i.i103 = phi i1 [ false, %bb.av ], [ true, %.noexc289 ] ; 2 uses
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ja = load ptr, ptr %12, align 8, !tbaa !39   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.it
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.ja) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.0.i.i.i103, label %bb.ax, label %.body78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.0.i.i.i103, label %bb.ax, label %.body78

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100
  %.pn8.i.i.i101 = phi { ptr, i32 } [ %i.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100 ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105 ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104 ]
  call void @__cxa_free_exception(ptr %i.is) #22
  br label %.body78

bb.ay:                                            ; preds = %bb.av
  unreachable

bb.az:                                            ; preds = %.split.us.split.us.4
  %i.jc = load ptr, ptr %i.hn, align 8, !tbaa !176 ; 3 uses
  %22 = ptrtoint ptr %i.jc to i64
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef 0)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !176 ; 2 uses
  %.not6.i.i.i.i109 = icmp eq ptr %i.jc, %i.jf
  br i1 %.not6.i.i.i.i109, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113, label %.lr.ph.i.i.i.i110.preheader

.lr.ph.i.i.i.i110.preheader:                      ; preds = %bb.ba
  %23 = ptrtoint ptr %i.jf to i64
  %i.jg = add i64 %23, -8
  %i.jh = sub i64 %i.jg, %22
  %i.ji = and i64 %i.jh, -8
  %i.jj = add i64 %i.ji, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.jc, i8 0, i64 %i.jj, i1 false), !tbaa !161
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113: ; preds = %.lr.ph.i.i.i.i110.preheader, %bb.ba
  %i.jk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef 1)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %24 = ptrtoint ptr %i.jl to i64
  %i.jm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_IdLb1ESaIdEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef 1)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !176 ; 2 uses
  %.not6.i.i.i.i109.1 = icmp eq ptr %i.jl, %i.jo
  br i1 %.not6.i.i.i.i109.1, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1, label %.lr.ph.i.i.i.i110.preheader.1

.lr.ph.i.i.i.i110.preheader.1:                    ; preds = %bb.bc
  %25 = ptrtoint ptr %i.jo to i64
  %i.jp = add i64 %25, -8
  %i.jq = sub i64 %i.jp, %24
  %i.jr = and i64 %i.jq, -8
  %i.js = add i64 %i.jr, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.jl, i8 0, i64 %i.js, i1 false), !tbaa !161
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1: ; preds = %.lr.ph.i.i.i.i110.preheader.1, %bb.bc
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !169
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !167 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = ashr exact i64 %i.jz, 3                 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader364

bb.bd:                                            ; preds = %bb.bb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113, %bb.az, %.split.us.split.us.4
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.preheader364:                                    ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1, %.split.us.split.us412.1
  %.051446 = phi i64 [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit113.1 ], [ %i.oy, %.split.us.split.us412.1 ] ; 8 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.051446 ; 4 uses
  %exitcond496.not = icmp eq i64 %.051446, %i.ka
  br i1 %exitcond496.not, label %.preheader363.split, label %.preheader363.preheader, !prof !108

.preheader363.preheader:                          ; preds = %.preheader364
  %i.ke = load ptr, ptr %i.az, align 8
  %i.kf = load ptr, ptr %17, align 8              ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = sdiv exact i64 %i.ki, 24                ; 2 uses
  %.not.i.i.i124 = icmp ult i64 %.051446, %i.kj
  br i1 %.not.i.i.i124, label %.preheader363.split.us.split.us.preheader, label %.preheader363.split.us.split, !prof !174

.preheader362:                                    ; preds = %.split.us.split.us412.1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !170 ; 6 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 2 uses
  %i.kt = sdiv exact i64 %i.ks, 24                ; 2 uses
  %exitcond498.not = icmp eq ptr %i.ko, %i.kp
  br i1 %exitcond498.not, label %.preheader.split, label %.preheader.split.us.preheader, !prof !108

.preheader363.split.us.split.us.preheader:        ; preds = %.preheader363.preheader
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %.051446 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load double, ptr %i.kd, align 8, !tbaa !161
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !169 ; 2 uses
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !167 ; 5 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = ashr exact i64 %i.lb, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ac, align 8, !tbaa !63
  store i64 %i.lc, ptr %i.ad, align 8, !tbaa !63
  %.not.i.i.i134.us.us.not = icmp eq ptr %i.kx, %i.ky
  br i1 %.not.i.i.i134.us.us.not, label %.noexc.i300, label %bb.be, !prof !108

bb.be:                                            ; preds = %.preheader363.split.us.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ld = load double, ptr %i.ky, align 8, !tbaa !161
  %i.le = load ptr, ptr %i.cu, align 8, !tbaa !169 ; 2 uses
  %i.lf = load ptr, ptr %i.cs, align 8, !tbaa !167 ; 3 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.lj, ptr %i.ab, align 8, !tbaa !63
  %.not.i.i.i144.us.us.not = icmp eq ptr %i.le, %i.lf
  br i1 %.not.i.i.i144.us.us.not, label %.noexc.i304, label %bb.bf, !prof !108

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.lk = load double, ptr %i.lf, align 8, !tbaa !161
  %i.ll = fsub double %i.ld, %i.lk                ; 2 uses
  %i.lm = fmul double %i.kw, %i.ll
  %i.ln = load ptr, ptr %i.kb, align 8, !tbaa !171 ; 2 uses
  %i.lo = load ptr, ptr %i.hm, align 8, !tbaa !170 ; 6 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = sdiv exact i64 %i.lr, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.u, align 8, !tbaa !63
  store i64 %i.ls, ptr %i.v, align 8, !tbaa !63
  %.not.i.i.i184.us.us.not = icmp eq ptr %i.ln, %i.lo
  br i1 %.not.i.i.i184.us.us.not, label %.noexc.i320, label %bb.bg, !prof !108

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !169 ; 2 uses
  %i.lv = load ptr, ptr %i.lo, align 8, !tbaa !167 ; 8 uses
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.s, align 8, !tbaa !63
  store i64 %i.lz, ptr %i.t, align 8, !tbaa !63
  %.not.i.i.i194.us.us.not = icmp eq ptr %i.lu, %i.lv
  br i1 %.not.i.i.i194.us.us.not, label %.noexc.i324, label %bb.bh, !prof !108

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ma = load double, ptr %i.lv, align 8, !tbaa !161
  %i.mb = call double @llvm.fmuladd.f64(double %i.lm, double %i.ll, double %i.ma)
  store double %i.mb, ptr %i.lv, align 8, !tbaa !161
  %i.mc = load double, ptr %i.kd, align 8, !tbaa !161
  %i.md = load double, ptr %i.ky, align 8, !tbaa !161
  %i.me = load ptr, ptr %i.cu, align 8, !tbaa !169 ; 2 uses
  %i.mf = load ptr, ptr %i.cs, align 8, !tbaa !167 ; 4 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = ashr exact i64 %i.mi, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.mj, ptr %i.ab, align 8, !tbaa !63
  %.not.i.i.i144.us.us.1.not = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i.i.i144.us.us.1.not, label %.noexc.i304, label %bb.bi, !prof !108

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.mk = load double, ptr %i.mf, align 8, !tbaa !161
  %i.ml = fsub double %i.md, %i.mk
  %i.mm = fmul double %i.mc, %i.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 1, ptr %i.y, align 8, !tbaa !63
  store i64 %i.lc, ptr %i.z, align 8, !tbaa !63
  %.not.i.i.i164.us.us.1 = icmp ugt i64 %i.lc, 1
  br i1 %.not.i.i.i164.us.us.1, label %bb.bj, label %.noexc.i312, !prof !174

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 1, ptr %i.w, align 8, !tbaa !63
  store i64 %i.mj, ptr %i.x, align 8, !tbaa !63
  %.not.i.i.i174.us.us.1 = icmp ugt i64 %i.mj, 1
  br i1 %.not.i.i.i174.us.us.1, label %bb.bk, label %.noexc.i316, !prof !174

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 1, ptr %i.s, align 8, !tbaa !63
  store i64 %i.lz, ptr %i.t, align 8, !tbaa !63
  %.not.i.i.i194.us.us.1 = icmp ugt i64 %i.lz, 1
  br i1 %.not.i.i.i194.us.us.1, label %.split.us.split.us412, label %.noexc.i324, !prof !174

.split.us.split.us412:                            ; preds = %bb.bk
  %i.mr = fsub double %i.mo, %i.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !161
  %i.mu = call double @llvm.fmuladd.f64(double %i.mm, double %i.mr, double %i.mt)
  store double %i.mu, ptr %i.ms, align 8, !tbaa !161
  %i.mv = load ptr, ptr %i.az, align 8
  %i.mw = load ptr, ptr %17, align 8              ; 2 uses
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = sdiv exact i64 %i.mz, 24                ; 2 uses
  %.not.i.i.i124.1 = icmp ult i64 %.051446, %i.na
  br i1 %.not.i.i.i124.1, label %.preheader363.split.us.split.us.preheader.1, label %.preheader363.split.us.split, !prof !174

.preheader363.split.us.split.us.preheader.1:      ; preds = %.split.us.split.us412
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %.051446 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
end_hunk_1
