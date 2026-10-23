Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/speculative?download=true
inline.NumInlined: 5176
inline.NumDeleted: 2391
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN36common_speculative_impl_draft_eagle3D2Ev:bb.a
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit17, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !223
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !425 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !426 ; 2 uses
  %.not4.i.i.i18 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not4.i.i.i18, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit17, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22
  %.05.i.i.i20 = phi ptr [ %i.df, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22 ], [ %i.cw, %_ZNSt6vectorIiSaIiEED2Ev.exit17 ] ; 3 uses
  %i.cz = load ptr, ptr %.05.i.i.i20, align 8, !tbaa !421 ; 3 uses
  %.not.i.i.i.i.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !422
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #32
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22: ; preds = %bb.q, %.lr.ph.i.i.i19
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.df, %i.cy
  br i1 %.not.i.i.i23, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24, label %.lr.ph.i.i.i19, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i22
  %.pr.i25 = load ptr, ptr %i.cv, align 8, !tbaa !425
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24, %_ZNSt6vectorIiSaIiEED2Ev.exit17
  %i.dg = phi ptr [ %.pr.i25, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24 ], [ %i.cw, %_ZNSt6vectorIiSaIiEED2Ev.exit17 ] ; 3 uses
  %.not.i.i1.i27 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i27, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !427
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #32
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28:       ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i26, %bb.r
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !420 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !424
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #32
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit

_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit:   ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit28, %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !378 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !377 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i
  %.05.i.i.i32 = phi ptr [ %i.dz, %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i ], [ %i.dt, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit ] ; 2 uses
  %i.dw = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !381 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i31
  invoke void @_Z19common_sampler_freeP14common_sampler(ptr noundef nonnull %i.dw)
          to label %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  tail call void @__clang_call_terminate(ptr %i.dy) #30
  unreachable

_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i31
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.dz, %i.dv
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !14

_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI14common_sampler22common_sampler_deleterEEvPT_.exit.i.i.i
  %.pr.i34 = load ptr, ptr %i.ds, align 8, !tbaa !378
  br label %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit
  %i.ea = phi ptr [ %.pr.i34, %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dt, %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i35 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !384
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #32
  br label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI14common_sampler22common_sampler_deleterES3_EvT_S5_RSaIT0_E.exit.i, %bb.v
  tail call void @_ZN31common_params_speculative_draftD2Ev(ptr noundef nonnull align 8 dead_on_return(1328) dereferenceable(1328) %i.au) #31
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23common_speculative_impl, i64 16), ptr %0, align 8, !tbaa !243
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i, label %_ZN23common_speculative_implD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !196
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #32, !inline_history !281
  br label %_ZN23common_speculative_implD2Ev.exit

_ZN23common_speculative_implD2Ev.exit:            ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EED2Ev.exit, %bb.w
  ret void

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.e, %bb.d, %bb.h
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %lpad.loopexit.split-lp107, 0
  tail call void @__clang_call_terminate(ptr %i.en) #30
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

._crit_edge:                                      ; preds = %bb.k
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
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.o

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
  br label %bb.bl

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.h, label %.invoke411

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !432
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !224
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  %.not183 = icmp slt i32 %i.aw, %i.k
  %or.cond273 = and i1 %i.ax, %.not183
  br i1 %or.cond273, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0230.0, i64 %i.ay
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !58
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0251, i64 %i.ay ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !911

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !412
  %.not314 = icmp eq i32 %i.bf, 0
  br i1 %.not314, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1580
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bj = icmp eq i32 %i.c, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod427 = trunc i32 %i.c to i1
  br label %bb.p

._crit_edge302:                                   ; preds = %._crit_edge299, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 8 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !414
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, %wide.trip.count     ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !423 ; 2 uses
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !421 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 3 uses
  %i.bw = icmp ugt i64 %i.bo, %i.bv
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge302
  %i.bx = sub nuw i64 %i.bo, %i.bv
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bx)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %._crit_edge302
  %i.by = icmp ult i64 %i.bo, %i.bv
  br i1 %i.by, label %bb.n, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.bq, %i.bz
  br i1 %.not.i.i197, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198:     ; preds = %bb.n
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !423
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.o:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph301, %._crit_edge299
  %indvars.iv339 = phi i64 [ 0, %.lr.ph301 ], [ %indvars.iv.next340, %._crit_edge299 ] ; 6 uses
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !411
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv339
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !58 ; 2 uses
  %i.ce = load i32, ptr %i.bh, align 4, !tbaa !416
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = invoke noundef ptr @_Z30llama_get_embeddings_layer_inpP13llama_contextj(ptr noundef %i.w, i32 noundef %i.cd)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.ch = invoke noundef ptr @_Z26llama_get_embeddings_nextnP13llama_context(ptr noundef %i.w)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ci = phi ptr [ %i.cg, %bb.q ], [ %i.ch, %bb.r ] ; 4 uses
  %.not176 = icmp eq ptr %i.ci, null
  br i1 %.not176, label %bb.t, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %bb.s
  br i1 %i.bj, label %.lr.ph298.epil.preheader, label %.lr.ph298

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.bg, align 8, !tbaa !411
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv339
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !58
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.27, i32 noundef 613, ptr noundef nonnull @.str.103, i32 noundef %i.cl) #33
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  unreachable

._crit_edge299.unr-lcssa:                         ; preds = %.lr.ph298
  br i1 %lcmp.mod.not, label %._crit_edge299, label %.lr.ph298.epil.preheader

.lr.ph298.epil.preheader:                         ; preds = %._crit_edge299.unr-lcssa, %.lr.ph298.preheader
  %indvars.iv333.epil.init = phi i64 [ 0, %.lr.ph298.preheader ], [ %indvars.iv.next334.1, %._crit_edge299.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod427)
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.cn = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %indvars.iv333.epil.init, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !413
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = mul nsw i64 %indvars.iv339, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = mul nsw i64 %indvars.iv333.epil.init, %i.cs
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cv
  %i.cx = shl nsw i64 %i.cs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cu, ptr nonnull align 4 %i.cw, i64 %i.cx, i1 false)
  br label %._crit_edge299

._crit_edge299:                                   ; preds = %._crit_edge299.unr-lcssa, %.lr.ph298.epil.preheader
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.cy = load i32, ptr %i.be, align 8, !tbaa !412
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next340, %i.cz
  br i1 %i.da, label %bb.p, label %._crit_edge302, !llvm.loop !912

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.lr.ph298
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.1, %.lr.ph298 ], [ 0, %.lr.ph298.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph298 ], [ 0, %.lr.ph298.preheader ]
  %i.db = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.dc = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %indvars.iv333, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.de
  %i.dg = load i32, ptr %i.bi, align 8, !tbaa !413
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = mul nsw i64 %indvars.iv339, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.di
  %i.dk = mul nsw i64 %indvars.iv333, %i.dh
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dk
  %i.dm = shl nsw i64 %i.dh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dj, ptr nonnull align 4 %i.dl, i64 %i.dm, i1 false)
  %indvars.iv.next334 = or disjoint i64 %indvars.iv333, 1 ; 2 uses
  %i.dn = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.do = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %indvars.iv.next334, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i32, ptr %i.bi, align 8, !tbaa !413
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = mul nsw i64 %indvars.iv339, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.du
  %i.dw = mul nsw i64 %indvars.iv.next334, %i.dt
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dw
  %i.dy = shl nsw i64 %i.dt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dv, ptr nonnull align 4 %i.dx, i64 %i.dy, i1 false)
  %indvars.iv.next334.1 = add nuw nsw i64 %indvars.iv333, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge299.unr-lcssa, label %.lr.ph298, !llvm.loop !913

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i198, %bb.n, %bb.m, %bb.l
  %i.dz = invoke i32 @llama_n_ubatch(ptr noundef %i.y)
          to label %.lr.ph305 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.lr.ph305:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ea = sext i32 %i.dz to i64
  %i.eb = zext nneg i32 %i.c to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph305, %bb.ac
  %indvars.iv342 = phi i64 [ 0, %.lr.ph305 ], [ %indvars.iv.next343, %bb.ac ] ; 5 uses
  %i.ec = trunc i64 %indvars.iv342 to i32
  %i.ed = sub i32 %i.c, %i.ec
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ed, i32 %i.dz) ; 3 uses
  %i.ee = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.ef = load i32, ptr %i.aa, align 4, !tbaa !415
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %indvars.iv342, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eh
  store i32 %.sroa.speculated, ptr %2, align 8, !tbaa !58
  store ptr %i.ei, ptr %.sroa.658.0..sroa_idx, align 8, !tbaa !374
  %i.ej = invoke i32 @llama_encode(ptr noundef %i.y, ptr noundef nonnull byval(%struct.llama_batch) align 8 %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not163 = icmp eq i32 %i.ej, 0
  br i1 %.not163, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = trunc nsw i64 %indvars.iv342 to i32
  %i.el = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.z, label %.critedge187

bb.z:                                             ; preds = %bb.y
  %i.en = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.z, %bb.bh
  %i.eo = phi ptr [ %i.lb, %bb.bh ], [ %i.en, %bb.z ]
  %i.ep = phi ptr [ @.str.106, %bb.bh ], [ @.str.104, %bb.z ]
  %i.eq = phi i32 [ %i.ky, %bb.bh ], [ %i.ej, %bb.z ]
  %i.er = phi i32 [ %i.lc, %bb.bh ], [ %.sroa.speculated, %bb.z ]
  %i.es = phi i32 [ %i.lf, %bb.bh ], [ %i.ek, %bb.z ]
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.eo, i32 noundef 4, ptr noundef nonnull %i.ep, i32 noundef 12, ptr noundef nonnull @__func__._ZN36common_speculative_impl_draft_simple7processERK11llama_batch, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %i.es)
          to label %.critedge187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.w
  %i.et = invoke noundef ptr @_Z26llama_get_embeddings_nextnP13llama_context(ptr noundef %i.y)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not164 = icmp eq ptr %i.et, null
  br i1 %.not164, label %.invoke411, label %bb.ac

.invoke411:                                       ; preds = %bb.g, %bb.ab
  %i.eu = phi i32 [ 648, %bb.ab ], [ 589, %bb.g ]
  %i.ev = phi ptr [ @.str.105, %bb.ab ], [ @.str.102, %bb.g ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.27, i32 noundef %i.eu, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ev) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke411
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.bk, align 8, !tbaa !421
  %i.ex = load i32, ptr %i.bl, align 8, !tbaa !414
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = mul nsw i64 %indvars.iv342, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ez
  %i.fb = sext i32 %.sroa.speculated to i64
  %i.fc = shl nsw i64 %i.fb, 2
end_hunk_0
