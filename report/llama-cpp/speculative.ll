Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/speculative?download=true
inline.NumInlined: 5176
inline.NumDeleted: 2391
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN36common_speculative_impl_draft_eagle3D2Ev:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !425 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !426 ; 2 uses
  %.not4.i.i.i18 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not4.i.i.i18, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit17, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22
  %.05.i.i.i20 = phi ptr [ %i.dd, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22 ], [ %i.cu, %_ZNSt6vectorIiSaIiEED2Ev.exit17 ] ; 3 uses
  %i.cx = load ptr, ptr %.05.i.i.i20, align 8, !tbaa !421 ; 3 uses
  %.not.i.i.i.i.i.i.i21 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i19
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !422
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #32
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22: ; preds = %bb.q, %.lr.ph.i.i.i19
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.dd, %i.cw
  br i1 %.not.i.i.i23, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24, label %.lr.ph.i.i.i19, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22
  %.pr.i25 = load ptr, ptr %i.ct, align 8, !tbaa !425
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24, %_ZNSt6vectorIiSaIiEED2Ev.exit17
  %i.de = phi ptr [ %.pr.i25, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24 ], [ %i.cu, %_ZNSt6vectorIiSaIiEED2Ev.exit17 ] ; 3 uses
  %.not.i.i1.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i27, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !427
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #32
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28:       ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26, %bb.r
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !420 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !424
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #32
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit

_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit:   ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28, %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !378 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !377 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i
  %.05.i.i.i32 = phi ptr [ %i.dx, %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i ], [ %i.dr, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit ] ; 2 uses
  %i.du = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !381 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i31
  invoke void @_Z19common_sampler_freeP14common_sampler(ptr noundef nonnull %i.du)
          to label %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  tail call void @__clang_call_terminate(ptr %i.dw) #30
  unreachable

_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i31
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.dx, %i.dt
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !14

_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i
  %.pr.i34 = load ptr, ptr %i.dq, align 8, !tbaa !378
  br label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit
  %i.dy = phi ptr [ %.pr.i34, %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dr, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i35 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !384
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #32
  br label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i, %bb.v
  tail call void @_ZN31common_params_speculative_draftD2Ev(ptr noundef nonnull align 8 dead_on_return(1328) dereferenceable(1328) %i.as) #31
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23common_speculative_impl, i64 16), ptr %0, align 8, !tbaa !243
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %_ZN23common_speculative_implD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !196
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #32, !inline_history !281
  br label %_ZN23common_speculative_implD2Ev.exit

_ZN23common_speculative_implD2Ev.exit:            ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit, %bb.w
  ret void

.loopexit.split:                                  ; preds = %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.el = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.el) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN36common_speculative_impl_draft_eagle3D0Ev(ptr noundef nonnull align 8 dereferenceable(1768) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN36common_speculative_impl_draft_eagle3D2Ev(ptr noundef nonnull align 8 dead_on_return(1768) dereferenceable(1768) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1768) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN36common_speculative_impl_draft_eagle35beginEiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1768) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.c = load ptr, ptr %2, align 8, !tbaa !222
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !410
  %i.l = tail call ptr @llama_get_memory(ptr noundef %i.k)
  %i.m = tail call i32 @llama_memory_seq_pos_max(ptr noundef %i.l, i32 noundef %1) ; 2 uses
  %i.n = add nsw i32 %i.h, -2                     ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_Z15common_log_mainv()
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.r, i32 noundef 3, ptr noundef nonnull @.str.101, i32 noundef 12, ptr noundef nonnull @__func__._ZN36common_speculative_impl_draft_eagle35beginEiRKSt6vectorIiSaIiEE, i32 noundef %i.m, i32 noundef %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN36common_speculative_impl_draft_eagle37processERK11llama_batch(ptr noundef nonnull align 8 dereferenceable(1768) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %2 = alloca %struct.llama_batch, align 8        ; 5 uses
  %3 = alloca %"class.std::vector.83", align 8    ; 9 uses
  %4 = alloca %"class.std::vector.83", align 8    ; 9 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !429    ; 6 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %_ZNSt6vectorIiSaIiEED2Ev.exit216, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !430
  %i.g = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  %or.cond185 = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond185, label %bb.c, label %_ZNSt6vectorIiSaIiEED2Ev.exit216

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !318  ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %.lr.ph, label %.noexc

.noexc:                                           ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #34 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 -1, i64 %i.m, i1 false), !tbaa !58
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #34
          to label %.noexc194 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit218.thread ; 3 uses

.noexc194:                                        ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.m, i1 false), !tbaa !58
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.l
  %i.r = ptrtoint ptr %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.noexc194
  %.sroa.0237.0251 = phi ptr [ null, %bb.c ], [ %i.n, %.noexc194 ] ; 7 uses
  %.sroa.12.0247 = phi ptr [ null, %bb.c ], [ %i.o, %.noexc194 ] ; 2 uses
  %.sroa.0230.0 = phi ptr [ null, %bb.c ], [ %i.p, %.noexc194 ] ; 8 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.c ], [ %i.r, %.noexc194 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !431
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 5 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !409  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !410  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1572 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %wide.trip.count     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !198
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !423 ; 3 uses
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !421 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 3 uses
  %i.al = icmp ugt i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.am = sub nuw i64 %i.ad, %i.ak
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.af, i64 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.r

bb.e:                                             ; preds = %._crit_edge
  %i.an = icmp ult i64 %i.ad, %i.ak
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !423
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIiSaIiEED2Ev.exit218.thread:          ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.27, i32 noundef 589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.102) #33
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.k:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !432
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !224
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !58 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  %.not183 = icmp slt i32 %i.ax, %i.k
  %or.cond270 = and i1 %i.ay, %.not183
  br i1 %or.cond270, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0230.0, i64 %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0251, i64 %i.az ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !58
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !908

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !412
  %.not316 = icmp eq i32 %i.bg, 0
  br i1 %.not316, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1580
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp eq i32 %i.c, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod423 = trunc i32 %i.c to i1
  br label %bb.s

._crit_edge304:                                   ; preds = %._crit_edge301, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !414
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, %wide.trip.count     ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !423 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !421 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2                 ; 3 uses
  %i.bx = icmp ugt i64 %i.bp, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge304
  %i.by = sub nuw i64 %i.bp, %i.bw
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.by)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.y

bb.p:                                             ; preds = %._crit_edge304
  %i.bz = icmp ult i64 %i.bp, %i.bw
  br i1 %i.bz, label %bb.q, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.br, %i.ca
  br i1 %.not.i.i197, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198:     ; preds = %bb.q
  store ptr %i.ca, ptr %i.bq, align 8, !tbaa !423
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.r:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.bv

bb.s:                                             ; preds = %.lr.ph303, %._crit_edge301
  %indvars.iv338 = phi i64 [ 0, %.lr.ph303 ], [ %indvars.iv.next339, %._crit_edge301 ] ; 6 uses
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !411
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv338
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58 ; 2 uses
  %i.cf = load i32, ptr %i.bi, align 4, !tbaa !416
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = invoke noundef ptr @_Z30llama_get_embeddings_layer_inpP13llama_contextj(ptr noundef %i.w, i32 noundef %i.ce)
          to label %bb.v unwind label %.loopexit278

bb.u:                                             ; preds = %bb.s
  %i.ci = invoke noundef ptr @_Z26llama_get_embeddings_nextnP13llama_context(ptr noundef %i.w)
          to label %bb.v unwind label %.loopexit278

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cj = phi ptr [ %i.ch, %bb.t ], [ %i.ci, %bb.u ] ; 4 uses
  %.not176 = icmp eq ptr %i.cj, null
  br i1 %.not176, label %bb.w, label %.lr.ph300.preheader

.lr.ph300.preheader:                              ; preds = %bb.v
  br i1 %i.bk, label %.lr.ph300.epil.preheader, label %.lr.ph300

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !411
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv338
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !58
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.27, i32 noundef 613, ptr noundef nonnull @.str.103, i32 noundef %i.cm) #33
          to label %bb.x unwind label %.loopexit.split-lp279

bb.x:                                             ; preds = %bb.w
  unreachable

.loopexit278:                                     ; preds = %bb.t, %bb.u
  %lpad.loopexit280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp279:                            ; preds = %bb.w
  %lpad.loopexit.split-lp281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

._crit_edge301.unr-lcssa:                         ; preds = %.lr.ph300
  br i1 %lcmp.mod.not, label %._crit_edge301, label %.lr.ph300.epil.preheader

.lr.ph300.epil.preheader:                         ; preds = %._crit_edge301.unr-lcssa, %.lr.ph300.preheader
  %indvars.iv332.epil.init = phi i64 [ 0, %.lr.ph300.preheader ], [ %indvars.iv.next333.1, %._crit_edge301.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod423)
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.co = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %indvars.iv332.epil.init, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load i32, ptr %i.bj, align 8, !tbaa !413
  %i.ct = sext i32 %i.cs to i64                   ; 3 uses
  %i.cu = mul nsw i64 %indvars.iv338, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = mul nsw i64 %indvars.iv332.epil.init, %i.ct
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cw
  %i.cy = shl nsw i64 %i.ct, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cv, ptr nonnull align 4 %i.cx, i64 %i.cy, i1 false)
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %._crit_edge301.unr-lcssa, %.lr.ph300.epil.preheader
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.cz = load i32, ptr %i.bf, align 8, !tbaa !412
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next339, %i.da
  br i1 %i.db, label %bb.s, label %._crit_edge304, !llvm.loop !909

.lr.ph300:                                        ; preds = %.lr.ph300.preheader, %.lr.ph300
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.1, %.lr.ph300 ], [ 0, %.lr.ph300.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph300 ], [ 0, %.lr.ph300.preheader ]
  %i.dc = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.dd = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %indvars.iv332, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.df
  %i.dh = load i32, ptr %i.bj, align 8, !tbaa !413
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = mul nsw i64 %indvars.iv338, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = mul nsw i64 %indvars.iv332, %i.di
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dl
  %i.dn = shl nsw i64 %i.di, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dk, ptr nonnull align 4 %i.dm, i64 %i.dn, i1 false)
  %indvars.iv.next333 = or disjoint i64 %indvars.iv332, 1 ; 2 uses
  %i.do = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.dp = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul nsw i64 %indvars.iv.next333, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load i32, ptr %i.bj, align 8, !tbaa !413
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = mul nsw i64 %indvars.iv338, %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = mul nsw i64 %indvars.iv.next333, %i.du
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dx
  %i.dz = shl nsw i64 %i.du, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dw, ptr nonnull align 4 %i.dy, i64 %i.dz, i1 false)
  %indvars.iv.next333.1 = add nuw nsw i64 %indvars.iv332, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge301.unr-lcssa, label %.lr.ph300, !llvm.loop !910

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198, %bb.q, %bb.p, %bb.o
  %i.ea = invoke i32 @llama_n_ubatch(ptr noundef %i.y)
          to label %.lr.ph307 unwind label %bb.z  ; 2 uses

.lr.ph307:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.ea to i64
  %i.ec = zext nneg i32 %i.c to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aa:                                            ; preds = %.lr.ph307, %bb.ak
  %indvars.iv341 = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next342, %bb.ak ] ; 5 uses
  %i.ef = trunc i64 %indvars.iv341 to i32
  %i.eg = sub i32 %i.c, %i.ef
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.ea) ; 3 uses
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.ei = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %indvars.iv341, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ek
  store i32 %.sroa.speculated, ptr %2, align 8, !tbaa !58
  store ptr %i.el, ptr %.sroa.658.0..sroa_idx, align 8, !tbaa !374
  %i.em = invoke i32 @llama_encode(ptr noundef %i.y, ptr noundef nonnull byval(%struct.llama_batch) align 8 %2)
          to label %bb.ab unwind label %.loopexit ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not163 = icmp eq i32 %i.em, 0
  br i1 %.not163, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = trunc nsw i64 %indvars.iv341 to i32
  %i.eo = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.ae, label %.critedge187

bb.ae:                                            ; preds = %bb.ad
  %i.eq = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.eq, i32 noundef 4, ptr noundef nonnull @.str.104, i32 noundef 12, ptr noundef nonnull @__func__._ZN36common_speculative_impl_draft_simple7processERK11llama_batch, i32 noundef %i.em, i32 noundef %.sroa.speculated, i32 noundef %i.en)
          to label %.critedge187 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.ac, %bb.ae, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

end_hunk_0
