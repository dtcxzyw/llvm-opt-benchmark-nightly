Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/touchcontrols?download=true
inline.NumInlined: 1332
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN13TouchControls15addToggleButtonERSt6vectorI11button_infoSaIS1_EE19touch_gui_button_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_RKN4core4rectIiEEb:bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls9addButtonERSt6vectorI11button_infoSaIS1_EE19touch_gui_button_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4core4rectIiEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = zext i8 %2 to i32
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null, i32 noundef %i.c, ptr noundef null, i1 noundef zeroext true) ; 12 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(308) %i.g, i1 noundef zeroext %5)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 8, !tbaa !84 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !84 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !212
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef null), !inline_history !212
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.w = sub nsw i32 %.sroa.5.8.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %.sroa.5.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.5.12.extract.trunc.i = trunc nuw i64 %.sroa.5.12.extract.shift.i to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.x = sub nsw i32 %.sroa.5.12.extract.trunc.i, %.sroa.0.4.extract.trunc.i
  %i.y = tail call noundef ptr @_Z21guiScalingImageButtonPN5video12IVideoDriverEPNS_8ITextureEii(ptr noundef %i.p, ptr noundef %i.v, i32 noundef %i.w, i32 noundef %i.x)
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(308) %i.g, ptr noundef %i.y), !inline_history !212
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 304
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(308) %i.g, i1 noundef zeroext true), !inline_history !212
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !194 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, i8 0, i64 128, i1 false)
  store ptr %i.aj, ptr %.ptr.i.i, align 8, !tbaa !135
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store ptr %i.ak, ptr %.ptr.1.i.i, align 8, !tbaa !135
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !194
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !194
  br label %_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI11button_infoSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ag)
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !100
  br label %_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.an = phi ptr [ %.pre.i, %bb.c ], [ %i.am, %bb.b ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -128
  store i8 %2, ptr %i.ao, align 8, !tbaa !101
  %i.ap = icmp ult i8 %2, 19
  br i1 %i.ap, label %switch.lookup, label %_ZL12id_to_action19touch_gui_button_id.exit

switch.lookup:                                    ; preds = %_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.aq = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN13TouchControls9addButtonERSt6vectorI11button_infoSaIS1_EE19touch_gui_button_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4core4rectIiEEb, i64 %i.aq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL12id_to_action19touch_gui_button_id.exit

_ZL12id_to_action19touch_gui_button_id.exit:      ; preds = %_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 81, %_ZNSt6vectorI11button_infoSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -120
  store i32 %.0.i, ptr %i.ar, align 8, !tbaa !96
  %i.as = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_.exit unwind label %bb.d, !noalias !287 ; 5 uses

bb.d:                                             ; preds = %_ZL12id_to_action19touch_gui_button_id.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #22, !noalias !287 ; 0 uses
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !83, !noalias !287
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !287
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(308) %i.g)
          to label %_ZZ16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_ENKUlPS1_E_clES6_.exit.i.i.i.i.i unwind label %bb.e, !noalias !287, !inline_history !6

_ZZ16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_ENKUlPS1_E_clES6_.exit.i.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.e, !noalias !287

bb.e:                                             ; preds = %_ZZ16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_ENKUlPS1_E_clES6_.exit.i.i.i.i.i, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g, !noalias !287

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.az

bb.g:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #26, !noalias !287
  unreachable

bb.h:                                             ; preds = %_ZZ16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_ENKUlPS1_E_clES6_.exit.i.i.i.i.i
  unreachable

_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_.exit: ; preds = %_ZL12id_to_action19touch_gui_button_id.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.bc, align 8, !tbaa !189, !noalias !287
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1, ptr %i.bd, align 4, !tbaa !190, !noalias !287
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN3gui9IGUIImageEZ16grab_gui_elementIS1_ESt10shared_ptrIT_EPS5_EUlS2_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.as, align 8, !tbaa !83, !noalias !287
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.g, ptr %i.be, align 8, !tbaa !204, !noalias !287
  %i.bf = getelementptr inbounds i8, ptr %i.an, i64 -88
  store ptr %i.g, ptr %i.bf, align 8, !tbaa !197
  %i.bg = getelementptr inbounds i8, ptr %i.an, i64 -80 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !187 ; 8 uses
  store ptr %i.as, ptr %i.bg, align 8, !tbaa !187
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bi, align 8, !tbaa !189
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !190
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22, !inline_history !5
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22, !inline_history !5
  br label %_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !84
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.n, label %_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !191

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22
  br label %_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_.exit
  ret void
}

declare void @_ZN12ButtonLayout17getMissingButtonsEv(ptr dead_on_unwind writable sret(%"class.std::vector.116") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_Z18layout_button_gridN4core8vector2dIjEEP20ISimpleTextureSourceRKSt6vectorI19touch_gui_button_idSaIS5_EERKSt8functionIFvS5_NS0_IiEENS_4rectIiEEEE(i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls16updateVisibilityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %2 = load i8, ptr %1, align 8, !tbaa !111, !range !199, !noundef !155
  %3 = trunc nuw i8 %2 to i1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %5 = load i8, ptr %4, align 8, !range !199
  %6 = trunc nuw i8 %5 to i1
  %7 = xor i1 %6, true
  %8 = select i1 %3, i1 %7, i1 false              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not30 = icmp eq ptr %i.b, %i.d
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.f, i1 noundef zeroext %8)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  br i1 %8, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.025.031 = phi ptr [ %i.q, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(308) %i.m, i1 noundef zeroext %8)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.s = load i8, ptr %i.r, align 2, !tbaa !213, !range !199, !noundef !155
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = xor i1 %i.t, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.v = phi i1 [ false, %._crit_edge ], [ %i.u, %bb.b ]
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(308) %i.k, i1 noundef zeroext %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  br i1 %8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !213, !range !199, !noundef !155
  %i.ad = trunc nuw i8 %i.ac to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i1 [ false, %bb.c ], [ %i.ad, %bb.d ]
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(308) %i.aa, i1 noundef zeroext %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 2 uses
  br i1 %8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !213, !range !199, !noundef !155
  %i.am = trunc nuw i8 %i.al to i1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi i1 [ false, %bb.e ], [ %i.am, %bb.f ]
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(308) %i.aj, i1 noundef zeroext %i.an)
  %i.ar = load i8, ptr %1, align 8, !tbaa !111, !range !199, !noundef !155
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %4, align 8, !tbaa !214, !range !199, !noundef !155
  %i.au = trunc nuw i8 %i.at to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = phi i1 [ false, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !211 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(308) %i.ax, i1 noundef zeroext %i.av)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not2832 = icmp eq ptr %i.bc, %i.be
  br i1 %.not2832, label %._crit_edge36, label %.lr.ph35

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !288 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !288 ; 2 uses
  %.not2937 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not2937, label %._crit_edge41, label %.lr.ph40

.lr.ph35:                                         ; preds = %bb.i, %.lr.ph35
  %.sroa.021.033 = phi ptr [ %i.bo, %.lr.ph35 ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.021.033, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !99 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(308) %i.bk, i1 noundef zeroext %i.av)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.021.033, i64 128 ; 2 uses
  %.not28 = icmp eq ptr %i.bo, %i.be
  br i1 %.not28, label %._crit_edge36, label %.lr.ph35

._crit_edge41:                                    ; preds = %.lr.ph40, %._crit_edge36
  ret void

.lr.ph40:                                         ; preds = %._crit_edge36, %.lr.ph40
  %.sroa.017.038 = phi ptr [ %i.bt, %.lr.ph40 ], [ %i.bg, %._crit_edge36 ] ; 2 uses
  %i.bp = load ptr, ptr %.sroa.017.038, align 8, !tbaa !211 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(308) %i.bp, i1 noundef zeroext %i.av)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.038, i64 16 ; 2 uses
  %.not29 = icmp eq ptr %i.bt, %i.bi
  br i1 %.not29, label %._crit_edge41, label %.lr.ph40
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13TouchControlsD2Ev(ptr noundef nonnull align 8 dead_on_return(712) dereferenceable(712) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.SEvent, align 8             ; 6 uses
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.a = load ptr, ptr @g_settings, align 8, !tbaa !132
  %i.b = invoke noundef i64 @_ZN8Settings29deregisterAllChangedCallbacksEPKv(ptr noundef nonnull align 8 dereferenceable(236) %i.a, ptr noundef nonnull %0)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !215
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !217
  invoke void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !215
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge.i, label %bb.c, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.noexc, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !126, !range !199, !noundef !155
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.o, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 8, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292 ; 0 uses

.noexc1:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i8 0, ptr %i.l, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %.noexc1, %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !128, !range !199, !noundef !155
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %_ZN13TouchControls10releaseAllEv.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.z, i8 0, i64 44, i1 false)
  store i32 11, ptr %1, align 8, !tbaa !22
  store i32 1, ptr %i.z, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 9, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !292 ; 0 uses

.noexc2:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store i8 0, ptr %i.w, align 8, !tbaa !128
  br label %_ZN13TouchControls10releaseAllEv.exit

_ZN13TouchControls10releaseAllEv.exit:            ; preds = %.noexc2, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !184 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN13TouchControls10releaseAllEv.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZN13TouchControls10releaseAllEv.exit ] ; 2 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN13TouchControls10releaseAllEv.exit
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123
  %i.ao = shl i64 %i.an, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ao, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !123
  %i.at = shl i64 %i.as, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !184 ; 2 uses
  %.not5.i.i.i.i3 = icmp eq ptr %i.aw, null
  br i1 %.not5.i.i.i.i3, label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i7, label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit, %.lr.ph.i.i.i.i4
  %.06.i.i.i.i5 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i4 ], [ %i.aw, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit ] ; 2 uses
  %i.ax = load ptr, ptr %.06.i.i.i.i5, align 8, !tbaa !183 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i5, i64 noundef 24) #25
  %.not.i.i.i.i6 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i7, label %.lr.ph.i.i.i.i4, !llvm.loop !2

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i7: ; preds = %.lr.ph.i.i.i.i4, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !122
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !123
  %i.bb = shl i64 %i.ba, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !122 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i7
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !123
  %i.bg = shl i64 %i.bf, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #25
end_hunk_0
begin_hunk_1_@_ZN13TouchControls10releaseAllEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !217
  tail call void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.g)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !215
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !126, !range !199, !noundef !155
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.m, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 8, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !97 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i8 0, ptr %i.j, align 8, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !128, !range !199, !noundef !155
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.x, i8 0, i64 44, i1 false)
  store i32 11, ptr %1, align 8, !tbaa !22
  store i32 1, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 9, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !97 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store i8 0, ptr %i.u, align 8, !tbaa !128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN13TouchControls14isHotbarButtonERK6SEvent(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.017.024 = load ptr, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.017.024, null
  br i1 %.not26, label %.critedge15, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.017.025 = phi ptr [ %.sroa.017.0, %.critedge ], [ %.sroa.017.024, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !219
  %.not.i = icmp sgt i32 %i.g, %i.b
  br i1 %.not.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  %.not6.i = icmp sgt i32 %i.i, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %.not7.i = icmp slt i32 %i.k, %i.b
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %.critedge, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !221
  %.not = icmp slt i32 %i.m, %i.d
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 8
  %i.o = load i16, ptr %i.n, align 2, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0.0.insert.ext = zext i16 %i.o to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.0.insert.ext, 65536
  store i32 %.sroa.0.0.insert.insert, ptr %i.p, align 8
  br label %.critedge15

.critedge:                                        ; preds = %.lr.ph, %bb.b, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit
  %.sroa.017.0 = load ptr, ptr %.sroa.017.025, align 8, !tbaa !183 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.017.0, null
  br i1 %.not27, label %.critedge15, label %.lr.ph

.critedge15:                                      ; preds = %.critedge, %bb.a, %bb.c
  %i.q = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %.critedge ]
  ret i1 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @_ZN13TouchControls18getHotbarSelectionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i8 0, ptr %i.b, align 2, !tbaa !117
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: uwtable
define dso_local void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.SEvent, align 8             ; 7 uses
  %3 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = call noundef i64 @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.f = call noundef i64 @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load i64, ptr %i.b, align 8, !tbaa !104
  %i.i = call noundef zeroext i1 @_ZN13TouchControls20buttonsHandleReleaseERSt6vectorI11button_infoSaIS1_EEm(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.h)
  br i1 %i.i, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load i64, ptr %i.b, align 8, !tbaa !104
  %i.l = call noundef zeroext i1 @_ZN13TouchControls20buttonsHandleReleaseERSt6vectorI11button_infoSaIS1_EEm(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.k)
  br i1 %i.l, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !119, !range !199, !noundef !155
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load i64, ptr %i.q, align 8, !tbaa !223
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.m, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !141
  %.not = icmp eq i8 %i.u, 2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load i8, ptr %i.v, align 8, !tbaa !120, !range !199, !noundef !155
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.z = load i8, ptr %i.y, align 1, !tbaa !224, !range !199, !noundef !155
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !125
  %.not1 = icmp eq i32 %i.ac, 2
  br i1 %.not1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ab, align 4, !tbaa !125
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.ad, align 4, !tbaa !125
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 330 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !213, !range !199, !noundef !155
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !225
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.ae, align 2, !tbaa !213
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.al, i8 0, i64 9, i1 false)
  %i.an = load i8, ptr %i.am, align 1, !tbaa !181, !range !199, !noundef !155
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %_ZN13TouchControls19applyJoystickStatusEv.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 356
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.aq, i8 0, i64 44, i1 false)
  store i32 11, ptr %3, align 8, !tbaa !22
  store i32 1, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 5, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !226 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ay = load i8, ptr %i.ap, align 4, !tbaa !227, !range !199, !noundef !155
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.o, label %_ZN13TouchControls19applyJoystickStatusEv.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ba, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 5, ptr %i.bb, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %i.bc, align 8, !tbaa !23
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !81 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !226 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN13TouchControls19applyJoystickStatusEv.exit

_ZN13TouchControls19applyJoystickStatusEv.exit:   ; preds = %bb.m, %bb.n, %bb.o
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.p:                                             ; preds = %bb.l, %bb.k
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.p, %bb.q
  %i.bi = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj), !inline_history !293
  %.v.i = select i1 %i.bm, i64 976, i64 984
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !157
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !158 ; 5 uses
  %.not.i2 = icmp eq ptr %i.bp, null
  br i1 %.not.i2, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.r

bb.r:                                             ; preds = %_ZTW10infostream.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !165
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN11StreamProxylsIRmEERS_OT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %.pre.i = load ptr, ptr %i.bn, align 8, !tbaa !158
  br label %_ZN11StreamProxylsIRmEERS_OT_.exit

_ZN11StreamProxylsIRmEERS_OT_.exit:               ; preds = %bb.r, %bb.s
  %i.bx = phi ptr [ %.pre.i, %bb.s ], [ %i.bp, %bb.r ]
  %i.by = load i64, ptr %i.b, align 8, !tbaa !104
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.by) ; 0 uses
  %.pr = load ptr, ptr %i.bn, align 8, !tbaa !158 ; 5 uses
  %.not.i3 = icmp eq ptr %.pr, null
  br i1 %.not.i3, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.t

bb.t:                                             ; preds = %_ZN11StreamProxylsIRmEERS_OT_.exit
  %i.ca = load ptr, ptr %.pr, align 8, !tbaa !83
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.pr, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !165
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i4 = load ptr, ptr %i.bn, align 8, !tbaa !158 ; 2 uses
  %.pre = load ptr, ptr %.pre.i4, align 8, !tbaa !83
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre6 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = phi i64 [ %.pre6, %bb.u ], [ %i.cc, %bb.t ]
  %i.ci = phi ptr [ %.pre.i4, %bb.u ], [ %.pr, %bb.t ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !171 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !177
  %.not.i1.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 67
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cl)
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i = phi i8 [ %i.cp, %bb.x ], [ %i.ct, %bb.y ]
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i8 noundef signext %.0.i.i.i)
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIRmEERS_OT_.exit, %_ZN13TouchControls19applyJoystickStatusEv.exit, %bb.i, %bb.j, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls19applyJoystickStatusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.SEvent, align 8             ; 7 uses
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.b = load i8, ptr %i.a, align 1, !tbaa !181, !range !199, !noundef !155
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.d, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 5, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !97 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.m = load i8, ptr %i.l, align 4, !tbaa !227, !range !199, !noundef !155
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.o, i8 0, i64 44, i1 false)
  store i32 11, ptr %1, align 8, !tbaa !22
  store i32 1, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 5, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 1, ptr %i.q, align 8, !tbaa !23
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_1
begin_hunk_2_@_ZN13TouchControls14translateEventERK6SEvent:bb.a
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !177
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext %.0.i.i.i)
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.j:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %1, align 8, !tbaa !22
  %.not = icmp eq i32 %i.aj, 5
  br i1 %.not, label %bb.k, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !130
  %i.am = sitofp nsz i32 %i.al to float
  %i.an = fmul nnan nsz float %i.am, 5.000000e-01
  %i.ao = fptosi float %i.an to i32               ; 11 uses
  %i.ap = mul i32 %i.ao, 9
  %i.aq = mul i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !23 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 %i.at, ptr %3, align 8, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !202
  %i.ax = mul nsw i32 %i.ao, 5                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !200
  %i.bb = sub i32 %i.ba, %i.ax                    ; 2 uses
  %i.bc = sub nsw i32 %i.at, %i.ax                ; 5 uses
  %i.bd = sub nsw i32 %i.av, %i.bb                ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !23
  switch i32 %i.bf, label %bb.as [
    i32 0, label %bb.l
    i32 1, label %bb.ai
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.ar, align 8, !tbaa !23 ; 14 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !123 ; 2 uses
  %i.bk = urem i64 %i.bg, %i.bj                   ; 3 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !122
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !183 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !104
  %i.br = icmp eq i64 %i.bg, %i.bq
  br i1 %i.br, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.bs = icmp eq i64 %i.bg, %i.bv
  br i1 %i.bs, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.020.i.i.i.i = phi ptr [ %i.bt, %bb.n ], [ %i.bo, %bb.m ]
  %i.bt = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !104 ; 2 uses
  %i.bw = urem i64 %i.bv, %i.bj
  %.not19.i.i.i.i = icmp eq i64 %i.bw, %i.bk
  br i1 %.not19.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.o
  br label %.loopexit.i.i, !llvm.loop !9

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.l
  %i.bx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !183
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.bg, ptr %i.by, align 8, !tbaa !217
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 0, ptr %i.bz, align 8, !tbaa !201
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 0, ptr %i.ca, align 4, !tbaa !202
  %i.cb = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 noundef %i.bk, i64 noundef %i.bg, ptr noundef nonnull %i.bx, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i104, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i74, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.cz, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i74 ], [ %i.kf, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i104 ], [ %i.ln, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115 ], [ %i.ms, %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit: ; preds = %bb.n, %bb.m, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cb, %.loopexit.i.i ], [ %i.bo, %bb.m ], [ %i.bt, %bb.n ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.cd = load i64, ptr %3, align 8, !tbaa !84    ; 3 uses
  store i64 %i.cd, ptr %.1.i.i, align 4, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !123 ; 2 uses
  %i.ch = urem i64 %i.bg, %i.cg                   ; 3 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !122
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i67, label %.loopexit.i.i73, label %bb.p

bb.p:                                             ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !183 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !104
  %i.co = icmp eq i64 %i.bg, %i.cn
  br i1 %i.co, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77, label %.lr.ph.i.i.i.i68

bb.q:                                             ; preds = %bb.r
  %i.cp = icmp eq i64 %i.bg, %i.cs
  br i1 %i.cp, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77, label %.lr.ph.i.i.i.i68, !llvm.loop !9

.lr.ph.i.i.i.i68:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i69 = phi ptr [ %i.cq, %bb.q ], [ %i.cl, %bb.p ]
  %i.cq = load ptr, ptr %.020.i.i.i.i69, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i70 = icmp eq ptr %i.cq, null
  br i1 %.not18.i.i.i.i70, label %.loopexit.i.i73, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !104 ; 2 uses
  %i.ct = urem i64 %i.cs, %i.cg
  %.not19.i.i.i.i71 = icmp eq i64 %i.ct, %i.ch
  br i1 %.not19.i.i.i.i71, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i72, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i72:                 ; preds = %bb.r
  br label %.loopexit.i.i73, !llvm.loop !9

.loopexit.i.i73:                                  ; preds = %.lr.ph.i.i.i.i68, %..loopexit_crit_edge21.i.i.i.i72, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit
  %i.cu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.cu, align 8, !tbaa !183
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.bg, ptr %i.cv, align 8, !tbaa !217
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 0, ptr %i.cw, align 8, !tbaa !201
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store i32 0, ptr %i.cx, align 4, !tbaa !202
  %i.cy = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 noundef %i.ch, i64 noundef %i.bg, ptr noundef nonnull %i.cu, i64 noundef 1)
          to label %.loopexit.i.i73._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i74

.loopexit.i.i73._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77_crit_edge: ; preds = %.loopexit.i.i73
  %.pre242 = load i64, ptr %3, align 8, !tbaa !84
  br label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i74: ; preds = %.loopexit.i.i73
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77: ; preds = %bb.q, %.loopexit.i.i73._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77_crit_edge, %bb.p
  %i.da = phi i64 [ %.pre242, %.loopexit.i.i73._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77_crit_edge ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ]
  %.pn.i.i75 = phi ptr [ %i.cy, %.loopexit.i.i73._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77_crit_edge ], [ %i.cl, %bb.p ], [ %i.cq, %bb.q ]
  %.1.i.i76 = getelementptr inbounds nuw i8, ptr %.pn.i.i75, i64 16
  store i64 %i.da, ptr %.1.i.i76, align 4, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !110 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(308) %i.dg, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !214, !range !199, !noundef !155 ; 2 uses
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !194 ; 2 uses
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !193 ; 3 uses
  %.not225 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not225, label %.loopexit208, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 7
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !139
  %i.dy = load i32, ptr %3, align 8, !tbaa !201   ; 2 uses
  %i.dz = load i32, ptr %i.aw, align 4            ; 2 uses
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit77
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !99
  %i.ec = icmp eq ptr %i.dk, %i.eb
  br i1 %i.ec, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.dl, align 8, !tbaa !214
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %.critedge

bb.u:                                             ; preds = %.lr.ph, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread
  %.054224 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.054224 ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !219
  %.not.i78 = icmp sgt i32 %i.ee, %i.dy
  br i1 %.not.i78, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !220
  %.not6.i = icmp sgt i32 %i.eg, %i.dz
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = load i32, ptr %i.eh, align 4
  %.not7.i = icmp slt i32 %i.ei, %i.dy
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit: ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !221
  %.not205 = icmp slt i32 %i.ek, %i.dz
  br i1 %.not205, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit
  %i.el = getelementptr inbounds nuw [128 x i8], ptr %i.dr, i64 %.054224
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !99
  br label %.loopexit208

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread: ; preds = %bb.u, %bb.v, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit
  %i.eo = add nuw i64 %.054224, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %i.dv
  br i1 %exitcond.not, label %.loopexit208, label %bb.u, !llvm.loop !295

.loopexit208:                                     ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread, %.preheader, %bb.w
  %.056 = phi ptr [ %i.en, %bb.w ], [ %i.dk, %.preheader ], [ %i.dk, %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.thread ]
  %i.ep = call noundef zeroext i1 @_ZN13TouchControls18buttonsHandlePressERSt6vectorI11button_infoSaIS1_EEmPN3gui11IGUIElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 noundef %i.bg, ptr noundef %.056)
  br i1 %i.ep, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.loopexit208
  %i.eq = load i8, ptr %i.dl, align 8, !tbaa !214, !range !199, !noundef !155
  %i.er = xor i8 %i.eq, 1
  store i8 %i.er, ptr %i.dl, align 8, !tbaa !214
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  %i.es = load ptr, ptr %i.db, align 8, !tbaa !110 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !83
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es) ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !83
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(308) %i.ew, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %.1 = phi ptr [ %i.fa, %bb.x ], [ %i.dk, %bb.s ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fc = call noundef zeroext i1 @_ZN13TouchControls18buttonsHandlePressERSt6vectorI11button_infoSaIS1_EEmPN3gui11IGUIElementE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.bg, ptr noundef %.1)
  br i1 %i.fc, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fd = load i32, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.fe = load i32, ptr %i.au, align 4, !tbaa !23 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.017.024.i = load ptr, ptr %i.ff, align 8, !tbaa !183 ; 2 uses
  %.not26.i = icmp eq ptr %.sroa.017.024.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.critedge.i
  %.sroa.017.025.i = phi ptr [ %.sroa.017.0.i, %.critedge.i ], [ %.sroa.017.024.i, %bb.z ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !219
  %.not.i.i = icmp sgt i32 %i.fh, %i.fd
  br i1 %.not.i.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 16
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !220
  %.not6.i.i = icmp sgt i32 %i.fj, %i.fe
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 20
  %i.fl = load i32, ptr %i.fk, align 4
  %.not7.i.i = icmp slt i32 %i.fl, %i.fd
  %or.cond.i.i = select i1 %.not6.i.i, i1 true, i1 %.not7.i.i
  br i1 %or.cond.i.i, label %.critedge.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.i

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.i: ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !221
  %.not.i79 = icmp slt i32 %i.fn, %i.fe
  br i1 %.not.i79, label %.critedge.i, label %_ZN13TouchControls14isHotbarButtonERK6SEvent.exit

.critedge.i:                                      ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.i, %bb.aa, %.lr.ph.i
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.025.i, align 8, !tbaa !183 ; 2 uses
  %.not27.i = icmp eq ptr %.sroa.017.0.i, null
  br i1 %.not27.i, label %.loopexit, label %.lr.ph.i

_ZN13TouchControls14isHotbarButtonERK6SEvent.exit: ; preds = %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 8
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !222
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0.0.insert.ext.i80 = zext i16 %i.fp to i32
  %.sroa.0.0.insert.insert.i81 = or disjoint i32 %.sroa.0.0.insert.ext.i80, 65536
  store i32 %.sroa.0.0.insert.insert.i81, ptr %i.fq, align 8
  br label %.critedge

.loopexit:                                        ; preds = %.critedge.i, %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !180, !range !199, !noundef !155
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.fu = mul nsw i32 %i.bc, %i.bc
  %i.fv = mul nsw i32 %i.bd, %i.bd
  %i.fw = add nuw nsw i32 %i.fv, %i.fu
  %.not63 = icmp samesign ugt i32 %i.fw, %i.aq
  br i1 %.not63, label %.thread, label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  %i.fx = sitofp nsz i32 %i.at to float
  %i.fy = load i32, ptr %i.ay, align 4, !tbaa !297
  %i.fz = uitofp nsz i32 %i.fy to float
  %i.ga = fdiv nsz float %i.fz, 3.000000e+00
  %i.gb = fcmp nsz ogt float %i.ga, %i.fx
  br i1 %i.gb, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 330 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !213, !range !199, !noundef !155
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.gc, align 2, !tbaa !213
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.bg, ptr %i.gf, align 8, !tbaa !225
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 0, ptr %i.gg, align 8, !tbaa !121
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  %i.gh = load i8, ptr %i.fr, align 2, !tbaa !180, !range !199, !noundef !155
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.gl = mul nsw i32 %i.ao, 3                    ; 2 uses
  %i.gm = load i32, ptr %3, align 8, !tbaa !201
  %i.gn = sub nsw i32 %i.gm, %i.gl
  %i.go = load i32, ptr %i.aw, align 4, !tbaa !202
  %i.gp = sub nsw i32 %i.go, %i.gl
  %.sroa.2.0.insert.ext.i82 = zext i32 %i.gp to i64
  %.sroa.2.0.insert.shift.i83 = shl nuw i64 %.sroa.2.0.insert.ext.i82, 32
  %.sroa.0.0.insert.ext.i84 = zext i32 %i.gn to i64
  %.sroa.0.0.insert.insert.i85 = or disjoint i64 %.sroa.2.0.insert.shift.i83, %.sroa.0.0.insert.ext.i84
  store i64 %.sroa.0.0.insert.insert.i85, ptr %4, align 8
  call void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.gk, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.gs = load i32, ptr %3, align 8, !tbaa !201
  %i.gt = sub nsw i32 %i.gs, %i.ao
  %i.gu = load i32, ptr %i.aw, align 4, !tbaa !202
  %i.gv = sub nsw i32 %i.gu, %i.ao
  %.sroa.2.0.insert.ext.i86 = zext i32 %i.gv to i64
  %.sroa.2.0.insert.shift.i87 = shl nuw i64 %.sroa.2.0.insert.ext.i86, 32
  %.sroa.0.0.insert.ext.i88 = zext i32 %i.gt to i64
  %.sroa.0.0.insert.insert.i89 = or disjoint i64 %.sroa.2.0.insert.shift.i87, %.sroa.0.0.insert.ext.i88
  store i64 %.sroa.0.0.insert.insert.i89, ptr %5, align 8
  call void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.gr, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.critedge

.thread:                                          ; preds = %bb.ab, %bb.ac
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !119, !range !199, !noundef !155
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %.thread
  store i8 1, ptr %i.gw, align 8, !tbaa !119
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.bg, ptr %i.gz, align 8, !tbaa !223
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.ha, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.hb = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.hc = load i64, ptr %2, align 8, !tbaa !230
  %i.hd = mul i64 %i.hc, 1000
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !231
  %i.hg = udiv i64 %i.hf, 1000000
  %i.hh = add i64 %i.hg, %i.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !232
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hk = load i64, ptr %3, align 8, !tbaa !84
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !84
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.hl, align 8, !tbaa !233
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 %i.dm, ptr %i.hm, align 1, !tbaa !224
  br label %.critedge

bb.ai:                                            ; preds = %bb.k
  %.not.i90 = icmp eq ptr @_ZTH13verbosestream, null
  br i1 %.not.i90, label %_ZTW13verbosestream.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit

_ZTW13verbosestream.exit:                         ; preds = %bb.ai, %bb.aj
  %i.hn = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !83
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.ho), !inline_history !296
  %.v.i91 = select i1 %i.hr, i64 976, i64 984
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.v.i91 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.11, ptr %i.a, align 8, !tbaa !157
  %i.ht = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !158 ; 5 uses
  %.not.i92 = icmp eq ptr %i.hu, null
  br i1 %.not.i92, label %_ZN11StreamProxylsEPFRSoS0_E.exit96, label %bb.ak

bb.ak:                                            ; preds = %_ZTW13verbosestream.exit
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !83
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %i.hu, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !165
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %_ZN11StreamProxylsIRKmEERS_OT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
  %.pre.i93 = load ptr, ptr %i.hs, align 8, !tbaa !158
  br label %_ZN11StreamProxylsIRKmEERS_OT_.exit

_ZN11StreamProxylsIRKmEERS_OT_.exit:              ; preds = %bb.ak, %bb.al
  %i.ic = phi ptr [ %.pre.i93, %bb.al ], [ %i.hu, %bb.ak ]
  %i.id = load i64, ptr %i.ar, align 8, !tbaa !104
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i64 noundef %i.id) ; 0 uses
  %.pr = load ptr, ptr %i.hs, align 8, !tbaa !158 ; 5 uses
  %.not.i94 = icmp eq ptr %.pr, null
  br i1 %.not.i94, label %_ZN11StreamProxylsEPFRSoS0_E.exit96, label %bb.am

bb.am:                                            ; preds = %_ZN11StreamProxylsIRKmEERS_OT_.exit
  %i.if = load ptr, ptr %.pr, align 8, !tbaa !83
  %i.ig = getelementptr i8, ptr %i.if, i64 -24
  %i.ih = load i64, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %.pr, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !165
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i95 = load ptr, ptr %i.hs, align 8, !tbaa !158 ; 2 uses
  %.pre239 = load ptr, ptr %.pre.i95, align 8, !tbaa !83
  %.phi.trans.insert240 = getelementptr i8, ptr %.pre239, i64 -24
  %.pre241 = load i64, ptr %.phi.trans.insert240, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.im = phi i64 [ %.pre241, %bb.an ], [ %i.ih, %bb.am ]
  %i.in = phi ptr [ %.pre.i95, %bb.an ], [ %.pr, %bb.am ] ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 240
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !171 ; 6 uses
  %.not.i.i.i165 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i165, label %bb.ap, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i166

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i166: ; preds = %bb.ao
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !177
  %.not.i1.i.i167 = icmp eq i8 %i.is, 0
  br i1 %.not.i1.i.i167, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i166
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 67
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit169

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i166
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iq)
  %i.iv = load ptr, ptr %i.iq, align 8, !tbaa !83
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call noundef signext i8 %i.ix(ptr noundef nonnull align 8 dereferenceable(570) %i.iq, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit169

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit169: ; preds = %bb.aq, %bb.ar
  %.0.i.i.i168 = phi i8 [ %i.iu, %bb.aq ], [ %i.iy, %bb.ar ]
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.in, i8 noundef signext %.0.i.i.i168)
  %i.ja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iz) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit96

_ZN11StreamProxylsEPFRSoS0_E.exit96:              ; preds = %_ZTW13verbosestream.exit, %_ZN11StreamProxylsIRKmEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit169
  %i.jb = load i64, ptr %i.ar, align 8, !tbaa !23
  call void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.jb)
  br label %.critedge

bb.as:                                            ; preds = %bb.k
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 330 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 2, !tbaa !213, !range !199, !noundef !155
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !180, !range !199, !noundef !155
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.jj = load i64, ptr %i.ar, align 8, !tbaa !104 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !123 ; 2 uses
  %i.jm = urem i64 %i.jj, %i.jl                   ; 3 uses
  %i.jn = load ptr, ptr %i.ji, align 8, !tbaa !122
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i97, label %.loopexit.i.i103, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !183 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !104
  %i.jt = icmp eq i64 %i.jj, %i.js
  br i1 %i.jt, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107, label %.lr.ph.i.i.i.i98

bb.aw:                                            ; preds = %bb.ax
  %i.ju = icmp eq i64 %i.jj, %i.jx
  br i1 %i.ju, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107, label %.lr.ph.i.i.i.i98, !llvm.loop !9

.lr.ph.i.i.i.i98:                                 ; preds = %bb.av, %bb.aw
  %.020.i.i.i.i99 = phi ptr [ %i.jv, %bb.aw ], [ %i.jq, %bb.av ]
  %i.jv = load ptr, ptr %.020.i.i.i.i99, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i100 = icmp eq ptr %i.jv, null
  br i1 %.not18.i.i.i.i100, label %.loopexit.i.i103, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i98
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !104 ; 2 uses
  %i.jy = urem i64 %i.jx, %i.jl
  %.not19.i.i.i.i101 = icmp eq i64 %i.jy, %i.jm
  br i1 %.not19.i.i.i.i101, label %bb.aw, label %..loopexit_crit_edge21.i.i.i.i102, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i102:                ; preds = %bb.ax
  br label %.loopexit.i.i103, !llvm.loop !9

.loopexit.i.i103:                                 ; preds = %.lr.ph.i.i.i.i98, %..loopexit_crit_edge21.i.i.i.i102, %bb.au
  %i.jz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.jz, align 8, !tbaa !183
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ar, align 8, !tbaa !104
  store i64 %i.kb, ptr %i.ka, align 8, !tbaa !217
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 0, ptr %i.kc, align 8, !tbaa !201
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 0, ptr %i.kd, align 4, !tbaa !202
  %i.ke = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ji, i64 noundef %i.jm, i64 noundef %i.jj, ptr noundef nonnull %i.jz, i64 noundef 1)
          to label %.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i104

.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge: ; preds = %.loopexit.i.i103
  %.pre243 = load i32, ptr %3, align 8, !tbaa !201
  %.pre244 = load i32, ptr %i.aw, align 4
  br label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i104: ; preds = %.loopexit.i.i103
  %i.kf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107: ; preds = %bb.aw, %.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge, %bb.av
  %i.kg = phi i32 [ %.pre244, %.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge ], [ %i.av, %bb.av ], [ %i.av, %bb.aw ] ; 2 uses
  %i.kh = phi i32 [ %.pre243, %.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge ], [ %i.at, %bb.av ], [ %i.at, %bb.aw ] ; 2 uses
  %.pn.i.i105 = phi ptr [ %i.ke, %.loopexit.i.i103._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107_crit_edge ], [ %i.jq, %bb.av ], [ %i.jv, %bb.aw ] ; 2 uses
  %.1.i.i106 = getelementptr inbounds nuw i8, ptr %.pn.i.i105, i64 16
  %i.ki = load i32, ptr %.1.i.i106, align 4, !tbaa !201
  %i.kj = icmp eq i32 %i.ki, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.pn.i.i105, i64 20
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = icmp eq i32 %i.kl, %i.kg
  %i.kn = select i1 %i.kj, i1 %i.km, i1 false
  br i1 %i.kn, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107, %bb.at
  %i.ko = phi i32 [ %i.kg, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107 ], [ %i.av, %bb.at ] ; 2 uses
  %i.kp = phi i32 [ %i.kh, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107 ], [ %i.at, %bb.at ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.kr = load i64, ptr %i.ar, align 8, !tbaa !104 ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !123 ; 2 uses
  %i.ku = urem i64 %i.kr, %i.kt                   ; 3 uses
  %i.kv = load ptr, ptr %i.kq, align 8, !tbaa !122
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i108, label %.loopexit.i.i114, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !183 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !104
  %i.lb = icmp eq i64 %i.kr, %i.la
  br i1 %i.lb, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118, label %.lr.ph.i.i.i.i109

bb.ba:                                            ; preds = %bb.bb
  %i.lc = icmp eq i64 %i.kr, %i.lf
  br i1 %i.lc, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118, label %.lr.ph.i.i.i.i109, !llvm.loop !9

.lr.ph.i.i.i.i109:                                ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i110 = phi ptr [ %i.ld, %bb.ba ], [ %i.ky, %bb.az ]
  %i.ld = load ptr, ptr %.020.i.i.i.i110, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i111 = icmp eq ptr %i.ld, null
  br i1 %.not18.i.i.i.i111, label %.loopexit.i.i114, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i109
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !104 ; 2 uses
  %i.lg = urem i64 %i.lf, %i.kt
  %.not19.i.i.i.i112 = icmp eq i64 %i.lg, %i.ku
  br i1 %.not19.i.i.i.i112, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i113, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i113:                ; preds = %bb.bb
  br label %.loopexit.i.i114, !llvm.loop !9

.loopexit.i.i114:                                 ; preds = %.lr.ph.i.i.i.i109, %..loopexit_crit_edge21.i.i.i.i113, %bb.ay
  %i.lh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.lh, align 8, !tbaa !183
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i64, ptr %i.ar, align 8, !tbaa !104
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !217
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i32 0, ptr %i.lk, align 8, !tbaa !201
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  store i32 0, ptr %i.ll, align 4, !tbaa !202
  %i.lm = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.kq, i64 noundef %i.ku, i64 noundef %i.kr, ptr noundef nonnull %i.lh, i64 noundef 1)
          to label %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115

.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge: ; preds = %.loopexit.i.i114
  %.pre245 = load i32, ptr %3, align 8, !tbaa !201
  %.pre246 = load i32, ptr %i.aw, align 4, !tbaa !202
  %.pre247 = load i64, ptr %i.ar, align 8, !tbaa !104
  br label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i115: ; preds = %.loopexit.i.i114
  %i.ln = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118: ; preds = %bb.ba, %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge, %bb.az
  %i.lo = phi i64 [ %.pre247, %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge ], [ %i.kr, %bb.az ], [ %i.kr, %bb.ba ] ; 4 uses
  %i.lp = phi i32 [ %.pre246, %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge ], [ %i.ko, %bb.az ], [ %i.ko, %bb.ba ] ; 3 uses
  %i.lq = phi i32 [ %.pre245, %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge ], [ %i.kp, %bb.az ], [ %i.kp, %bb.ba ] ; 3 uses
  %.pn.i.i116 = phi ptr [ %i.lm, %.loopexit.i.i114._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118_crit_edge ], [ %i.ky, %bb.az ], [ %i.ld, %bb.ba ] ; 2 uses
  %.1.i.i117 = getelementptr inbounds nuw i8, ptr %.pn.i.i116, i64 16
  %i.lr = load i32, ptr %.1.i.i117, align 4, !tbaa !201
  %i.ls = sub nsw i32 %i.lq, %i.lr                ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.pn.i.i116, i64 20
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !202
  %i.lv = sub nsw i32 %i.lp, %i.lu                ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !123 ; 2 uses
  %i.lz = urem i64 %i.lo, %i.ly                   ; 3 uses
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !122
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lz
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !228 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i123, label %.loopexit.i.i129, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !183 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !104
  %i.mg = icmp eq i64 %i.lo, %i.mf
  br i1 %i.mg, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133, label %.lr.ph.i.i.i.i124

bb.bd:                                            ; preds = %bb.be
  %i.mh = icmp eq i64 %i.lo, %i.mk
  br i1 %i.mh, label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133, label %.lr.ph.i.i.i.i124, !llvm.loop !9

.lr.ph.i.i.i.i124:                                ; preds = %bb.bc, %bb.bd
  %.020.i.i.i.i125 = phi ptr [ %i.mi, %bb.bd ], [ %i.md, %bb.bc ]
  %i.mi = load ptr, ptr %.020.i.i.i.i125, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i126 = icmp eq ptr %i.mi, null
  br i1 %.not18.i.i.i.i126, label %.loopexit.i.i129, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i124
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !104 ; 2 uses
  %i.ml = urem i64 %i.mk, %i.ly
  %.not19.i.i.i.i127 = icmp eq i64 %i.ml, %i.lz
  br i1 %.not19.i.i.i.i127, label %bb.bd, label %..loopexit_crit_edge21.i.i.i.i128, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i128:                ; preds = %bb.be
  br label %.loopexit.i.i129, !llvm.loop !9

.loopexit.i.i129:                                 ; preds = %.lr.ph.i.i.i.i124, %..loopexit_crit_edge21.i.i.i.i128, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit118
  %i.mm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.mm, align 8, !tbaa !183
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.ar, align 8, !tbaa !104
  store i64 %i.mo, ptr %i.mn, align 8, !tbaa !217
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i32 0, ptr %i.mp, align 8, !tbaa !201
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  store i32 0, ptr %i.mq, align 4, !tbaa !202
  %i.mr = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.lw, i64 noundef %i.lz, i64 noundef %i.lo, ptr noundef nonnull %i.mm, i64 noundef 1)
          to label %.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130

.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge: ; preds = %.loopexit.i.i129
  %.pre248 = load i32, ptr %3, align 8, !tbaa !201
  %.pre249 = load i32, ptr %i.aw, align 4, !tbaa !202
  br label %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i130: ; preds = %.loopexit.i.i129
  %i.ms = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133: ; preds = %bb.bd, %.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge, %bb.bc
  %i.mt = phi i32 [ %.pre249, %.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge ], [ %i.lp, %bb.bc ], [ %i.lp, %bb.bd ]
  %i.mu = phi i32 [ %.pre248, %.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge ], [ %i.lq, %bb.bc ], [ %i.lq, %bb.bd ]
  %.pn.i.i131 = phi ptr [ %i.mr, %.loopexit.i.i129._ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133_crit_edge ], [ %i.md, %bb.bc ], [ %i.mi, %bb.bd ]
  %.1.i.i132 = getelementptr inbounds nuw i8, ptr %.pn.i.i131, i64 16
  %i.mv = load i64, ptr %.1.i.i132, align 4, !tbaa !84 ; 2 uses
  %.sroa.0181.0.extract.trunc = trunc i64 %i.mv to i32 ; 2 uses
  %.sroa.6.0.extract.shift183 = lshr i64 %i.mv, 32
  %.sroa.6.0.extract.trunc184 = trunc nuw i64 %.sroa.6.0.extract.shift183 to i32 ; 2 uses
  %i.mw = sub nsw i32 %i.mu, %.sroa.0181.0.extract.trunc ; 2 uses
  %i.mx = sub nsw i32 %i.mt, %.sroa.6.0.extract.trunc184 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !178 ; 2 uses
  %i.na = fmul nsz double %i.mz, %i.mz            ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !119, !range !199, !noundef !155
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133
  %i.ne = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !223
  %i.nh = icmp eq i64 %i.ne, %i.ng
  br i1 %i.nh, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.nj = load i64, ptr %3, align 8, !tbaa !84    ; 2 uses
  store i64 %i.nj, ptr %i.ni, align 8, !tbaa !84
  %i.nk = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.lw, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  store i64 %i.nj, ptr %i.nk, align 4, !tbaa !84
  %i.nl = load ptr, ptr @g_settings, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.nm = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.nl, ptr noundef nonnull align 8 dereferenceable(32) %6, float noundef 1.000000e-03, float noundef 1.000000e+01)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.nn = invoke noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.no = fmul nsz float %i.nm, 6.000000e+00
  %i.np = fdiv nsz float %i.no, %i.nn
  %i.nq = fpext nsz float %i.np to double
  %i.nr = load ptr, ptr %6, align 8, !tbaa !137   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !23
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.nw = sitofp nsz i32 %i.mw to double
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ny = fneg nsz double %i.nw
  %i.nz = sitofp nsz i32 %i.mx to double
  %i.oa = load <2 x double>, ptr %i.nx, align 8, !tbaa !298
  %i.ob = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.nz, i64 1
  %i.od = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> zeroinitializer
  %i.of = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.oe, <2 x double> %i.oa)
  store <2 x double> %i.of, ptr %i.nx, align 8, !tbaa !298
  %i.og = mul nsw i32 %i.ls, %i.ls
  %i.oh = mul nsw i32 %i.lv, %i.lv
  %i.oi = add nuw nsw i32 %i.oh, %i.og
  %i.oj = uitofp nsz nneg i32 %i.oi to double
  %i.ok = fcmp nsz olt double %i.na, %i.oj
  br i1 %i.ok, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.ol, align 8, !tbaa !120
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bg
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %6, align 8, !tbaa !137   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bm
  %i.or = load i64, ptr %i.op, align 8, !tbaa !23
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.om, %bb.bl ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.on, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bk, %bb.bf, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit133
  %i.ot = load i8, ptr %i.jc, align 2, !tbaa !213, !range !199, !noundef !155
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.ov = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !225
  %i.oy = icmp eq i64 %i.ov, %i.ox
  br i1 %i.oy, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.pa = load i8, ptr %i.oz, align 2, !tbaa !180, !range !199, !noundef !155
  %i.pb = trunc nuw i8 %i.pa to i1                ; 4 uses
  %.sroa.7.0 = select i1 %i.pb, i32 %i.bd, i32 %i.mx ; 4 uses
  %.sroa.0176.0 = select i1 %i.pb, i32 %i.bc, i32 %i.mw ; 4 uses
  %i.pc = mul nsw i32 %i.bc, %i.bc
  %i.pd = mul nsw i32 %i.bd, %i.bd
  %i.pe = add nuw nsw i32 %i.pd, %i.pc
  %i.pf = icmp samesign ugt i32 %i.pe, %i.aq
  %i.pg = mul nsw i32 %.sroa.0176.0, %.sroa.0176.0
  %i.ph = mul nsw i32 %.sroa.7.0, %.sroa.7.0
  %i.pi = add nuw nsw i32 %i.ph, %i.pg
  %i.pj = uitofp nsz nneg i32 %i.pi to double     ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 8, !tbaa !121, !range !199, !noundef !155
  %i.pm = trunc nuw i8 %i.pl to i1
  %not. = xor i1 %i.pm, true
  %or.cond = select i1 %not., i1 %i.pf, i1 false
  %i.pn = fcmp nsz uge double %i.na, %i.pj
  %or.cond65.not = select i1 %i.pb, i1 true, i1 %i.pn
  %or.cond207 = select i1 %or.cond, i1 %or.cond65.not, i1 false
  br i1 %or.cond207, label %.critedge, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i8 1, ptr %i.pk, align 8, !tbaa !121
  %i.po = sitofp nsz i32 %.sroa.0176.0 to double
  %i.pp = sub nsw i32 0, %.sroa.7.0
  %i.pq = sitofp nsz i32 %i.pp to double
  %i.pr = call nsz double @llvm.atan2.f64(double %i.po, double %i.pq)
  %i.ps = fptrunc nsz double %i.pr to float
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.ps, ptr %i.pt, align 4, !tbaa !299
  %i.pu = call nsz double @llvm.sqrt.f64(double %i.pj) ; 5 uses
  %i.pv = load double, ptr %i.my, align 8, !tbaa !178
  %i.pw = fcmp nsz ugt double %i.pu, %i.pv
  %i.px = load i32, ptr %i.ak, align 4, !tbaa !130 ; 3 uses
  %i.py = sitofp nsz i32 %i.px to double          ; 2 uses
  br i1 %i.pw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.pz = fdiv nsz double %i.pu, %i.py            ; 2 uses
  %i.qa = fptrunc nsz double %i.pz to float
  %i.qb = fcmp nsz ogt double %i.pz, f0x3FF0000010000000
  %spec.store.select = select i1 %i.qb, float 1.000000e+00, float %i.qa
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.sink = phi float [ %spec.store.select, %bb.br ], [ 0.000000e+00, %bb.bq ]
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %.sink, ptr %i.qc, align 8, !tbaa !300
  %i.qd = mul nsw i32 %i.ao, 3
  %i.qe = sitofp nsz i32 %i.qd to double
  %i.qf = fcmp nsz ogt double %i.pu, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.qh = zext i1 %i.qf to i8
  store i8 %i.qh, ptr %i.qg, align 4, !tbaa !227
  %i.qi = fcmp nsz ogt double %i.pu, %i.py
  br i1 %i.qi, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.qj = mul nsw i32 %i.px, %.sroa.0176.0
  %i.qk = mul nsw i32 %i.px, %.sroa.7.0
  %i.ql = fptosi double %i.pu to i32              ; 2 uses
  %i.qm = sdiv i32 %i.qj, %i.ql
  %i.qn = sdiv i32 %i.qk, %i.ql
  %i.qo = sub nsw i32 %i.qm, %i.ao                ; 2 uses
  %i.qp = sub nsw i32 %i.qn, %i.ao                ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !99 ; 2 uses
  br i1 %i.pb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.qs = add nsw i32 %i.qo, %i.ax
  %i.qt = add nsw i32 %i.qp, %i.bb
  %.sroa.2.0.insert.ext.i153 = zext i32 %i.qt to i64
  %.sroa.2.0.insert.shift.i154 = shl nuw i64 %.sroa.2.0.insert.ext.i153, 32
  %.sroa.0.0.insert.ext.i155 = zext i32 %i.qs to i64
  %.sroa.0.0.insert.insert.i156 = or disjoint i64 %.sroa.2.0.insert.shift.i154, %.sroa.0.0.insert.ext.i155
  store i64 %.sroa.0.0.insert.insert.i156, ptr %8, align 8
  call void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.qr, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.qu = add nsw i32 %i.qo, %.sroa.0181.0.extract.trunc
  %i.qv = add nsw i32 %i.qp, %.sroa.6.0.extract.trunc184
  %.sroa.2.0.insert.ext.i157 = zext i32 %i.qv to i64
  %.sroa.2.0.insert.shift.i158 = shl nuw i64 %.sroa.2.0.insert.ext.i157, 32
  %.sroa.0.0.insert.ext.i159 = zext i32 %i.qu to i64
  %.sroa.0.0.insert.insert.i160 = or disjoint i64 %.sroa.2.0.insert.shift.i158, %.sroa.0.0.insert.ext.i159
  store i64 %.sroa.0.0.insert.insert.i160, ptr %9, align 8
  call void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.qr, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.critedge

bb.bw:                                            ; preds = %bb.bs
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.qy = load i32, ptr %3, align 8, !tbaa !201
  %i.qz = sub nsw i32 %i.qy, %i.ao
  %i.ra = load i32, ptr %i.aw, align 4, !tbaa !202
  %i.rb = sub nsw i32 %i.ra, %i.ao
  %.sroa.2.0.insert.ext.i161 = zext i32 %i.rb to i64
  %.sroa.2.0.insert.shift.i162 = shl nuw i64 %.sroa.2.0.insert.ext.i161, 32
  %.sroa.0.0.insert.ext.i163 = zext i32 %i.qz to i64
  %.sroa.0.0.insert.insert.i164 = or disjoint i64 %.sroa.2.0.insert.shift.i162, %.sroa.0.0.insert.ext.i163
  store i64 %.sroa.0.0.insert.insert.i164, ptr %10, align 8
  call void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.qx, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.bp, %bb.t, %.loopexit208, %bb.y, %_ZN13TouchControls14isHotbarButtonERK6SEvent.exit, %bb.bn, %bb.bo, %bb.bu, %bb.bv, %bb.bw, %.thread, %bb.ah, %bb.ad, %bb.ag, %_ZN11StreamProxylsEPFRSoS0_E.exit96, %_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW10infostream.exit, %bb.j, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !104    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104
  %i.k = icmp eq i64 %i.a, %i.j
  br i1 %i.k, label %_ZNSt8__detail9_Map_baseImSt4pairIKmN4core8vector2dIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.a, %i.o
  br i1 %i.l, label %_ZNSt8__detail9_Map_baseImSt4pairIKmN4core8vector2dIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.020.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i.i, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !104  ; 2 uses
  %i.p = urem i64 %i.o, %i.c
  %.not19.i.i.i = icmp eq i64 %i.p, %i.d
  br i1 %.not19.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.d
  br label %.loopexit.i, !llvm.loop !9

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.a
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.s, ptr %i.r, align 8, !tbaa !217
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 0, ptr %i.u, align 4, !tbaa !202
  %i.v = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.q, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseImSt4pairIKmN4core8vector2dIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit unwind label %_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 24) #25
  resume { ptr, i32 } %i.w

_ZNSt8__detail9_Map_baseImSt4pairIKmN4core8vector2dIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i
  %.pn.i = phi ptr [ %i.v, %.loopexit.i ], [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls18toggleOverflowMenuEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !214, !range !199, !noundef !155
  %i.c = xor i8 %i.b, 1
  store i8 %i.c, ptr %i.a, align 8, !tbaa !214
  tail call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !234
  %i.d = load i32, ptr %i.a, align 8, !tbaa !219
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !221
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = load i32, ptr %1, align 4, !tbaa !201    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !202  ; 3 uses
  %i.n = add nsw i32 %i.k, %i.e                   ; 2 uses
  %i.o = add nsw i32 %i.m, %i.j                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !322  ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8, !tbaa !84 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !84 ; 2 uses
  %i.s = sub i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.sroa.016.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.016.4.extract.trunc.i = trunc nuw i64 %.sroa.016.4.extract.shift.i to i32
  %i.t = sub nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.016.4.extract.trunc.i
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.s to i32
  %i.u = sitofp nsz i32 %.sroa.01.0.extract.trunc.i to float ; 2 uses
  %i.v = sitofp nsz i32 %i.t to float             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = load i32, ptr %i.w, align 8, !tbaa !323
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = sitofp nsz i32 %i.k to float
  %i.aa = fdiv nsz float %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.aa, ptr %i.ab, align 8, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !325
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = sitofp nsz i32 %i.n to float
  %i.ag = fdiv nsz float %i.af, %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.ag, ptr %i.ah, align 8, !tbaa !326
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !327
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = sitofp nsz i32 %i.m to float
  %i.am = fdiv nsz float %i.al, %i.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.am, ptr %i.an, align 4, !tbaa !328
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !329
  %i.aq = icmp eq i32 %i.ap, 3
  br i1 %i.aq, label %bb.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = sitofp nsz i32 %i.o to float
  %i.as = fdiv nsz float %i.ar, %i.v
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.as, ptr %i.at, align 4, !tbaa !330
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit: ; preds = %bb.a, %bb.h, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.k, ptr %i.au, align 8, !tbaa !84
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !84
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !84
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.o, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !84
  %i.av = load ptr, ptr %0, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !301
  ret void
}

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), float noundef, float noundef) local_unnamed_addr #2

declare noundef float @_ZN15RenderingEngine17getDisplayDensityEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls4stepEf(ptr noundef nonnull align 8 dereferenceable(712) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.SEvent, align 8             ; 7 uses
  %4 = alloca %struct.SEvent, align 8             ; 6 uses
  %5 = alloca %struct.SEvent, align 8             ; 6 uses
  %6 = alloca %struct.SEvent, align 8             ; 6 uses
  %7 = alloca %"class.core::line3d", align 4      ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.j = load i64, ptr %i.i, align 4              ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call noundef i32 @_ZN12ButtonLayout13getButtonSizeEN4core8vector2dIjEE(i64 %i.j) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !112
  %i.q = icmp ne i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ne i32 %i.s, %i.m
  %.not3.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %.not3.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !130
  %.not = icmp eq i32 %i.v, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %i.j, ptr %i.o, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.n, ptr %i.w, align 4, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN13TouchControls11applyLayoutERK12ButtonLayout(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !100  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %.not17.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not17.i, label %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.018.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ax, %bb.j ] ; 7 uses
  %i.af = load i8, ptr %.sroa.014.018.i, align 8, !tbaa !101
  %switch.i = icmp ult i8 %i.af, 2
  br i1 %switch.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !106
  %i.an = fadd nsz float %1, %i.am                ; 2 uses
  store float %i.an, ptr %i.al, align 4, !tbaa !106
  %i.ao = fcmp nsz olt float %i.an, 3.330000e-01
  br i1 %i.ao, label %bb.j, label %bb.h

end_hunk_2
begin_hunk_3_@_ZN13TouchControls4stepEf:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ea = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !83
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !83
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 176
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !83
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr dead_on_unwind nonnull writable sret(%"class.core::line3d") align 4 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 4 dereferenceable(8) %i.ej, ptr noundef null)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !332
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread

.thread:                                          ; preds = %_ZN13TouchControls19applyJoystickStatusEv.exit, %bb.aa, %bb.z, %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.en, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13TouchControls16resetHotbarRectsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !183 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = zext i16 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 2, !tbaa !222
  %i.l = icmp eq i16 %1, %i.k
  br i1 %i.l, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq i16 %1, %i.p
  br i1 %i.m, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !333

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 2, !tbaa !222  ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !333

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !333

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 5 uses
  store ptr null, ptr %i.s, align 8, !tbaa !183
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %1, ptr %i.t, align 8, !tbaa !335
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = invoke ptr @_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #25
  resume { ptr, i32 } %i.w

_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.v, %.loopexit.i.i ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !235
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(712) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %3 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !199, !noundef !155
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 8, !tbaa !111
  br i1 %1, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !217
  tail call void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.k)
  %i.l = load i64, ptr %i.e, align 8, !tbaa !215
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge.i, label %bb.d, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !126, !range !199, !noundef !155
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.q, i8 0, i64 44, i1 false)
  store i32 11, ptr %3, align 8, !tbaa !22
  store i32 1, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 8, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !336 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store i8 0, ptr %i.n, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !128, !range !199, !noundef !155
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN13TouchControls10releaseAllEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 9, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !336 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i8 0, ptr %i.y, align 8, !tbaa !128
  br label %_ZN13TouchControls10releaseAllEv.exit

_ZN13TouchControls10releaseAllEv.exit:            ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.aj, align 8, !tbaa !214
  br label %bb.h

bb.h:                                             ; preds = %_ZN13TouchControls10releaseAllEv.exit, %bb.b
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls4hideEv(ptr noundef nonnull align 8 dereferenceable(712) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.SEvent, align 8             ; 6 uses
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !199, !noundef !155
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZN13TouchControls10setVisibleEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !215
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !217
  tail call void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.j)
  %i.k = load i64, ptr %i.d, align 8, !tbaa !215
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge.i.i, label %bb.c, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !126, !range !199, !noundef !155
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.p, i8 0, i64 44, i1 false)
  store i32 11, ptr %2, align 8, !tbaa !22
  store i32 1, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 8, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %2), !inline_history !337 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i8 0, ptr %i.m, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !128, !range !199, !noundef !155
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %_ZN13TouchControls10releaseAllEv.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.aa, i8 0, i64 44, i1 false)
  store i32 11, ptr %1, align 8, !tbaa !22
  store i32 1, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 9, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !337 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store i8 0, ptr %i.x, align 8, !tbaa !128
  br label %_ZN13TouchControls10releaseAllEv.exit.i

_ZN13TouchControls10releaseAllEv.exit.i:          ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.ai, align 8, !tbaa !214
  call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %_ZN13TouchControls10setVisibleEb.exit

_ZN13TouchControls10setVisibleEb.exit:            ; preds = %bb.a, %_ZN13TouchControls10releaseAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls4showEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !199, !noundef !155
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN13TouchControls10setVisibleEb.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !111
  tail call void @_ZN13TouchControls16updateVisibilityEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %_ZN13TouchControls10setVisibleEb.exit

_ZN13TouchControls10setVisibleEb.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls20applyContextControlsERK20TouchInteractionMode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %3 = alloca %struct.SEvent, align 8             ; 7 uses
  %4 = alloca %struct.SEvent, align 8             ; 6 uses
  %5 = alloca %struct.SEvent, align 8             ; 7 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !141
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !338
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 751, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN13TouchControls20applyContextControlsERK20TouchInteractionMode) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.e = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #22 ; 0 uses
  %i.f = load i64, ptr %6, align 8, !tbaa !230
  %i.g = mul i64 %i.f, 1000
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !231
  %i.j = udiv i64 %i.i, 1000000
  %i.k = add i64 %i.j, %i.g                       ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.l = load i8, ptr %1, align 1, !tbaa !338     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !124
  %.not16 = icmp eq i8 %i.l, %i.n
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 0, ptr %i.o, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 0, ptr %i.p, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 %i.l, ptr %i.m, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !125
  switch i32 %i.r, label %bb.o [
    i32 1, label %bb.g
    i32 2, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %1, align 1, !tbaa !338
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.v = load i8, ptr %i.u, align 8, !tbaa !126, !range !199, !noundef !155
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add i64 %i.k, 50
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 %i.x, ptr %i.y, align 8, !tbaa !127
  store i32 0, ptr %i.q, align 4, !tbaa !125
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 0, ptr %i.z, align 8, !tbaa !127
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !128, !range !199, !noundef !155
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i64 %i.k, 50
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !129
  store i32 0, ptr %i.q, align 4, !tbaa !125
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 0, ptr %i.af, align 8, !tbaa !129
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %1, align 1, !tbaa !338
  %i.ah = icmp ne i8 %i.ag, 1                     ; 2 uses
  %. = zext i1 %i.ah to i32
  %not. = xor i1 %i.ah, true
  %.19 = zext i1 %not. to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.i, %bb.m, %bb.l, %bb.f
  %.015 = phi i32 [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.l ], [ %., %bb.n ]
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.l ], [ %.19, %bb.n ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !127
  %i.ak = icmp ult i64 %i.k, %i.aj
  %i.al = zext i1 %i.ak to i32
  %i.am = or i32 %.015, %i.al
  %.not17 = icmp eq i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !129
  %i.ap = icmp ult i64 %i.k, %i.ao
  %i.aq = zext i1 %i.ap to i32
  %i.ar = or i32 %.0, %i.aq
  %.not18 = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !126, !range !199, !noundef !155
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %.not17, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.au, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.av, i8 0, i64 44, i1 false)
  store i32 11, ptr %5, align 8, !tbaa !22
  store i32 1, ptr %i.av, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 8, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.ax, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %5), !inline_history !97 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.sink.split

.critedge:                                        ; preds = %bb.o
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.be, i8 0, i64 44, i1 false)
  store i32 11, ptr %4, align 8, !tbaa !22
  store i32 1, ptr %i.be, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 8, ptr %i.bf, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !81 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %4), !inline_history !97 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.r
  %.sink = phi i8 [ 0, %bb.r ], [ 1, %bb.q ]
  store i8 %.sink, ptr %i.as, align 8, !tbaa !126
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.p, %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !128, !range !199, !noundef !155
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  br i1 %.not18, label %.critedge21, label %bb.t

end_hunk_3
begin_hunk_4_@llvm.fmuladd.v2f64
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"_ZTS11EEVENT_TYPE", !16, i64 0}
!21 = !{!"_ZTS6SEvent", !20, i64 0, !16, i64 8}
!22 = !{!21, !20, i64 0}
!23 = !{!16, !16, i64 0}
!24 = !{!"any pointer", !16, i64 0}
!25 = !{!"p1 _ZTS14IrrlichtDevice", !24, i64 0}
!26 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !24, i64 0}
!27 = !{!"p1 _ZTS14IEventReceiver", !24, i64 0}
!28 = !{!"p1 _ZTS20ISimpleTextureSource", !24, i64 0}
!29 = !{!"bool", !16, i64 0}
!30 = !{!"_ZTSN4core8vector2dIjEE", !17, i64 0, !17, i64 4}
!31 = !{!"_ZTS21TouchInteractionStyle", !16, i64 0}
!32 = !{!"double", !16, i64 0}
!33 = !{!"short", !16, i64 0}
!34 = !{!"any p2 pointer", !24, i64 0}
!35 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"long", !16, i64 0}
!37 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !24, i64 0}
!38 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!39 = !{!"float", !16, i64 0}
!40 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !36, i64 8}
!41 = !{!"_ZTSSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!42 = !{!"_ZTSSt13unordered_mapI19touch_gui_button_id10ButtonMetaSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S1_EEE", !41, i64 0}
!43 = !{!"_ZTS12ButtonLayout", !42, i64 0, !42, i64 56}
!44 = !{!"_ZTSSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!45 = !{!"_ZTSSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE", !44, i64 0}
!46 = !{!"_ZTSSt22_Optional_payload_baseItE", !16, i64 0, !29, i64 2}
!47 = !{!"_ZTSSt17_Optional_payloadItLb1ELb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt14_Optional_baseItLb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt8optionalItE", !48, i64 0}
!50 = !{!"_ZTSN4core8vector3dIfEE", !39, i64 0, !39, i64 4, !39, i64 8}
!51 = !{!"_ZTSN4core6line3dIfEE", !50, i64 0, !50, i64 12}
!52 = !{!"_ZTSN4core8vector2dIiEE", !17, i64 0, !17, i64 4}
!53 = !{!"p1 _ZTSN3gui9IGUIImageE", !24, i64 0}
!54 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!55 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0}
!56 = !{!"_ZTSSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !55, i64 8}
!57 = !{!"_ZTSSt10shared_ptrIN3gui9IGUIImageEE", !56, i64 0}
!58 = !{!"p1 _ZTS11button_info", !24, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseI11button_infoSaIS0_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseI11button_infoSaIS0_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseI11button_infoSaIS0_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorI11button_infoSaIS0_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !24, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !55, i64 8}
!65 = !{!"_ZTSSt10shared_ptrIN3gui14IGUIStaticTextEE", !64, i64 0}
!66 = !{!"p1 _ZTSSt10shared_ptrIN3gui14IGUIStaticTextEE", !24, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE", !69, i64 0}
!71 = !{!"p1 _ZTSN4core4rectIiEE", !24, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIN4core4rectIiEESaIS2_EE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIN4core4rectIiEESaIS2_EE", !74, i64 0}
!76 = !{!"_ZTSSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!77 = !{!"_ZTSSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !76, i64 0}
!78 = !{!"_ZTS20TouchInteractionMode", !16, i64 0}
!79 = !{!"_ZTS8TapState", !16, i64 0}
!80 = !{!"_ZTS13TouchControls", !25, i64 0, !26, i64 8, !27, i64 16, !28, i64 24, !29, i64 32, !30, i64 36, !17, i64 44, !31, i64 48, !32, i64 56, !33, i64 64, !29, i64 66, !29, i64 67, !43, i64 72, !45, i64 184, !49, i64 240, !32, i64 248, !32, i64 256, !51, i64 264, !29, i64 288, !36, i64 296, !29, i64 304, !36, i64 312, !52, i64 320, !29, i64 328, !29, i64 329, !29, i64 330, !36, i64 336, !29, i64 344, !39, i64 348, !39, i64 352, !29, i64 356, !57, i64 360, !57, i64 376, !57, i64 392, !62, i64 408, !57, i64 432, !29, i64 448, !65, i64 456, !62, i64 472, !70, i64 496, !75, i64 520, !65, i64 544, !77, i64 560, !77, i64 616, !78, i64 672, !79, i64 676, !29, i64 680, !36, i64 688, !29, i64 696, !36, i64 704}
!81 = !{!80, !27, i64 16}
!82 = !{!"vtable pointer", !15, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!17, !17, i64 0}
!85 = !{!80, !25, i64 0}
!86 = !{!80, !28, i64 24}
!87 = !{!"_ZTS19touch_gui_button_id", !16, i64 0}
!88 = !{!"_ZTSN7KeyType1TE", !16, i64 0}
!89 = !{!"p1 long", !24, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseImSaImEE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorImSaImEE", !92, i64 0}
!94 = !{!"_ZTSN11button_infoUt_E", !16, i64 0}
!95 = !{!"_ZTS11button_info", !87, i64 0, !39, i64 4, !88, i64 8, !93, i64 16, !57, i64 40, !94, i64 56, !16, i64 64}
!96 = !{!95, !88, i64 8}
!97 = !{ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!98 = !{!95, !94, i64 56}
!99 = !{!56, !53, i64 0}
!100 = !{!58, !58, i64 0}
!101 = !{!95, !87, i64 0}
!102 = !{!90, !89, i64 8}
!103 = !{!90, !89, i64 16}
!104 = !{!36, !36, i64 0}
!105 = !{!90, !89, i64 0}
!106 = !{!95, !39, i64 4}
!107 = !{!89, !89, i64 0}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{ptr @_ZN13TouchControls16buttonEmitActionER11button_infob, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!110 = !{!80, !26, i64 8}
!111 = !{!80, !29, i64 32}
!112 = !{!30, !17, i64 0}
!113 = !{!41, !35, i64 0}
!114 = !{!41, !36, i64 8}
!115 = !{!44, !35, i64 0}
!116 = !{!44, !36, i64 8}
!117 = !{!46, !29, i64 2}
!118 = !{!39, !39, i64 0}
!119 = !{!80, !29, i64 288}
!120 = !{!80, !29, i64 304}
!121 = !{!80, !29, i64 344}
!122 = !{!76, !35, i64 0}
!123 = !{!76, !36, i64 8}
!124 = !{!80, !78, i64 672}
!125 = !{!80, !79, i64 676}
!126 = !{!80, !29, i64 680}
!127 = !{!80, !36, i64 688}
!128 = !{!80, !29, i64 696}
!129 = !{!80, !36, i64 704}
!130 = !{!80, !17, i64 44}
!131 = !{!"p1 _ZTS8Settings", !24, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 omnipotent char", !24, i64 0}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !133, i64 0}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !36, i64 8, !16, i64 16}
!137 = !{!136, !133, i64 0}
!138 = !{!136, !36, i64 8}
!139 = !{!72, !71, i64 0}
!140 = !{!72, !71, i64 16}
!141 = !{!80, !31, i64 48}
!142 = !{!"p1 _ZTS9LogTarget", !24, i64 0}
!143 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!144 = !{!"_ZTSSt6locale", !143, i64 0}
!145 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !144, i64 56}
!146 = !{!"_ZTSSt14_Function_base", !16, i64 0, !24, i64 16}
!147 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !146, i64 0, !24, i64 24}
!148 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !145, i64 0, !147, i64 64, !17, i64 96, !16, i64 100}
!149 = !{!"_ZTS17DummyStreamBuffer", !145, i64 0}
!150 = !{!"_ZTSSo"}
!151 = !{!"p1 _ZTSSo", !24, i64 0}
!152 = !{!"_ZTS11StreamProxy", !151, i64 0}
!153 = !{!"_ZTS9LogStream", !142, i64 0, !148, i64 8, !149, i64 368, !150, i64 432, !150, i64 704, !152, i64 976, !152, i64 984}
!154 = !{!153, !142, i64 0}
!155 = !{}
!156 = !{i64 8}
!157 = !{!133, !133, i64 0}
!158 = !{!152, !151, i64 0}
!159 = !{!"_ZTSSt13_Ios_Fmtflags", !16, i64 0}
!160 = !{!"_ZTSSt12_Ios_Iostate", !16, i64 0}
!161 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!162 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !36, i64 8}
!163 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!164 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !159, i64 24, !160, i64 28, !160, i64 32, !161, i64 40, !162, i64 48, !16, i64 64, !17, i64 192, !163, i64 200, !144, i64 208}
!165 = !{!164, !160, i64 32}
!166 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!167 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!168 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!169 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!170 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !164, i64 0, !151, i64 216, !16, i64 224, !29, i64 225, !166, i64 232, !167, i64 240, !168, i64 248, !169, i64 256}
!171 = !{!170, !167, i64 240}
!172 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!173 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!174 = !{!"p1 int", !24, i64 0}
!175 = !{!"p1 short", !24, i64 0}
!176 = !{!"_ZTSSt5ctypeIcE", !172, i64 0, !173, i64 16, !29, i64 24, !174, i64 32, !174, i64 40, !175, i64 48, !16, i64 56, !16, i64 57, !16, i64 313, !16, i64 569}
!177 = !{!176, !16, i64 56}
!178 = !{!80, !32, i64 56}
!179 = !{!80, !33, i64 64}
!180 = !{!80, !29, i64 66}
!181 = !{!80, !29, i64 67}
!182 = !{!41, !37, i64 16}
!183 = !{!38, !37, i64 0}
!184 = !{!76, !37, i64 16}
!185 = !{!67, !66, i64 0}
!186 = !{!67, !66, i64 8}
!187 = !{!55, !54, i64 0}
!188 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 8, !17, i64 12}
!189 = !{!188, !17, i64 8}
!190 = !{!188, !17, i64 12}
!191 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!192 = !{!67, !66, i64 16}
!193 = !{!59, !58, i64 0}
!194 = !{!59, !58, i64 8}
!195 = !{!59, !58, i64 16}
!196 = !{!44, !37, i64 16}
!197 = !{!53, !53, i64 0}
!198 = !{!72, !71, i64 8}
!199 = !{i8 0, i8 2}
!200 = !{!80, !17, i64 40}
!201 = !{!52, !17, i64 0}
!202 = !{!52, !17, i64 4}
!203 = !{!"_ZTSNSt19_Sp_counted_deleterIPN3gui9IGUIImageEZ16grab_gui_elementIS1_ESt10shared_ptrIT_EPS5_EUlS2_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !53, i64 0}
!204 = !{!203, !53, i64 0}
!205 = !{!"_ZTSNSt19_Sp_counted_deleterIPN3gui14IGUIStaticTextEZ16grab_gui_elementIS1_ESt10shared_ptrIT_EPS5_EUlS2_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !63, i64 0}
!206 = !{!205, !63, i64 0}
!207 = !{!24, !24, i64 0}
!208 = !{!87, !87, i64 0}
!209 = !{!"p1 _ZTS13TouchControls", !24, i64 0}
!210 = !{!209, !209, i64 0}
!211 = !{!64, !63, i64 0}
!212 = !{ptr @_ZN13TouchControls17loadButtonTextureEPN3gui9IGUIImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE}
!213 = !{!80, !29, i64 330}
!214 = !{!80, !29, i64 448}
!215 = !{!76, !36, i64 24}
!216 = !{!"_ZTSSt4pairIKmN4core8vector2dIiEEE", !36, i64 0, !52, i64 8}
!217 = !{!216, !36, i64 0}
!218 = !{!"_ZTSN4core4rectIiEE", !52, i64 0, !52, i64 8}
!219 = !{!218, !17, i64 0}
!220 = !{!218, !17, i64 4}
!221 = !{!218, !17, i64 12}
!222 = !{!33, !33, i64 0}
!223 = !{!80, !36, i64 296}
!224 = !{!80, !29, i64 329}
!225 = !{!80, !36, i64 336}
!226 = !{ptr @_ZN13TouchControls19applyJoystickStatusEv, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!227 = !{!80, !29, i64 356}
!228 = !{!37, !37, i64 0}
!229 = !{!"_ZTS8timespec", !36, i64 0, !36, i64 8}
!230 = !{!229, !36, i64 0}
!231 = !{!229, !36, i64 8}
!232 = !{!80, !36, i64 312}
!233 = !{!80, !29, i64 328}
!234 = !{!218, !17, i64 8}
!235 = !{i64 0, i64 4, !84, i64 4, i64 4, !84, i64 8, i64 4, !84, i64 12, i64 4, !84}
!236 = !{!40, !36, i64 8}
!237 = !{!41, !37, i64 48}
!238 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIK19touch_gui_button_id10ButtonMetaELb0EEE", !24, i64 0}
!239 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK19touch_gui_button_id10ButtonMetaELb0EEEEEE", !24, i64 0}
!240 = !{!"_ZTSNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIK19touch_gui_button_id10ButtonMetaELb0EEEEEE", !238, i64 0, !239, i64 8}
!241 = !{!240, !238, i64 0}
!242 = !{!"_ZTSSt9type_info", !133, i64 8}
!243 = !{!242, !133, i64 8}
!244 = distinct !{!244, !108}
!245 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!246 = !{!30, !17, i64 4}
!247 = !{!40, !39, i64 0}
!248 = !{!50, !39, i64 8}
!249 = distinct !{null}
!250 = !{!31, !31, i64 0}
!251 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!252 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!253 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!254 = distinct !{!254, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!255 = distinct !{!255, !254, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!256 = distinct !{!256, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!257 = distinct !{!257, !256, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!258 = distinct !{!258, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!259 = distinct !{!259, !258, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!260 = distinct !{!260, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!261 = distinct !{!261, !260, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!262 = distinct !{!262, i1 true, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_"}
!263 = distinct !{!263, !262, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_: argument 0"}
!264 = distinct !{!264, !108}
!265 = distinct !{!265, !108}
!266 = distinct !{!266, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!267 = distinct !{!267, !266, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!268 = distinct !{!268, i1 true, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_"}
!269 = distinct !{!269, !268, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_: argument 0"}
!270 = !{!63, !63, i64 0}
!271 = !{!255}
!272 = !{!257}
!273 = !{!259}
!274 = !{!261}
!275 = !{!263}
!276 = !{!267}
!277 = !{!"_ZTSNSt12_Vector_baseI19touch_gui_button_idSaIS0_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!278 = !{!277, !24, i64 8}
!279 = !{!"_ZTSSt8functionIFv19touch_gui_button_idN4core8vector2dIiEENS1_4rectIiEEEE", !146, i64 0, !24, i64 24}
!280 = !{!279, !24, i64 24}
!281 = !{!146, !24, i64 16}
!282 = !{!269}
!283 = !{!277, !24, i64 0}
!284 = !{!277, !24, i64 16}
!285 = distinct !{!285, i1 true, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_"}
!286 = distinct !{!286, !285, !"_Z16grab_gui_elementIN3gui9IGUIImageEESt10shared_ptrIT_EPS3_: argument 0"}
!287 = !{!286}
!288 = !{!66, !66, i64 0}
!289 = distinct !{ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!290 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!291 = distinct !{ptr @_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!292 = !{ptr @_ZN13TouchControls10releaseAllEv}
!293 = distinct !{null}
!294 = distinct !{null}
!295 = distinct !{!295, !108}
!296 = distinct !{null}
!297 = !{!80, !17, i64 36}
!298 = !{!32, !32, i64 0}
!299 = !{!80, !39, i64 348}
!300 = !{!80, !39, i64 352}
!301 = distinct !{null}
!302 = !{!"_ZTS14IEventReceiver"}
!303 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !24, i64 0}
!304 = !{!"_ZTSNSt8__detail15_List_node_baseE", !303, i64 0, !303, i64 8}
!305 = !{!"_ZTSNSt8__detail17_List_node_headerE", !304, i64 0, !36, i64 16}
!306 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !305, i64 0}
!307 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !306, i64 0}
!308 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !307, i64 0}
!309 = !{!"p1 _ZTSN3gui11IGUIElementE", !24, i64 0}
!310 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !303, i64 0}
!311 = !{!"_ZTSN4core8vector2dIfEE", !39, i64 0, !39, i64 4}
!312 = !{!"_ZTSN4core4rectIfEE", !311, i64 0, !311, i64 8}
!313 = !{!"_ZTSN4core11dimension2dIjEE", !17, i64 0, !17, i64 4}
!314 = !{!"p1 wchar_t", !24, i64 0}
!315 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !314, i64 0}
!316 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !315, i64 0, !36, i64 8, !16, i64 16}
!317 = !{!"_ZTSN4core6stringIwEE", !316, i64 0}
!318 = !{!"_ZTSN4core6stringIcEE", !136, i64 0}
!319 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !16, i64 0}
!320 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !16, i64 0}
!321 = !{!"_ZTSN3gui11IGUIElementE", !302, i64 0, !308, i64 8, !309, i64 32, !310, i64 40, !218, i64 48, !218, i64 64, !218, i64 80, !218, i64 96, !218, i64 112, !312, i64 128, !313, i64 144, !313, i64 152, !29, i64 160, !29, i64 161, !29, i64 162, !29, i64 163, !317, i64 168, !317, i64 200, !318, i64 232, !17, i64 264, !29, i64 268, !17, i64 272, !29, i64 276, !319, i64 280, !319, i64 284, !319, i64 288, !319, i64 292, !26, i64 296, !320, i64 304}
!322 = !{!321, !309, i64 32}
!323 = !{!321, !319, i64 280}
!324 = !{!321, !39, i64 128}
!325 = !{!321, !319, i64 284}
!326 = !{!321, !39, i64 136}
!327 = !{!321, !319, i64 288}
!328 = !{!321, !39, i64 132}
!329 = !{!321, !319, i64 292}
!330 = !{!321, !39, i64 140}
!331 = !{ptr @_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf, ptr @_ZN13TouchControls16buttonEmitActionER11button_infob, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!332 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 4, !118, i64 12, i64 4, !118, i64 16, i64 4, !118, i64 20, i64 4, !118}
!333 = distinct !{!333, !108}
!334 = !{!"_ZTSSt4pairIKtN4core4rectIiEEE", !33, i64 0, !218, i64 4}
!335 = !{!334, !33, i64 0}
!336 = !{ptr @_ZN13TouchControls10releaseAllEv, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!337 = !{ptr @_ZN13TouchControls10setVisibleEb, ptr @_ZN13TouchControls10releaseAllEv, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!338 = !{!78, !78, i64 0}
!339 = distinct !{null}
!340 = !{!41, !36, i64 24}
!341 = !{i64 0, i64 4, !118, i64 8, i64 8, !104}
!342 = !{!239, !239, i64 0}
!343 = distinct !{!343, !108}
!344 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!345 = distinct !{!345, !108}
!346 = !{!"_ZTSSt19_Sp_counted_deleterIPN3gui9IGUIImageEZ16grab_gui_elementIS1_ESt10shared_ptrIT_EPS5_EUlS2_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE", !188, i64 0, !203, i64 16}
!347 = !{!346, !53, i64 16}
!348 = !{!"_ZTSSt19_Sp_counted_deleterIPN3gui14IGUIStaticTextEZ16grab_gui_elementIS1_ESt10shared_ptrIT_EPS5_EUlS2_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE", !188, i64 0, !205, i64 16}
!349 = !{!348, !63, i64 16}
!350 = distinct !{null, null, null}
!351 = distinct !{!351, i1 true, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_"}
!352 = distinct !{!352, !351, !"_Z16grab_gui_elementIN3gui14IGUIStaticTextEESt10shared_ptrIT_EPS3_: argument 0"}
!353 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!354 = distinct !{!354, i1 true, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!355 = distinct !{!355, !354, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!356 = distinct !{!356, !354, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!357 = distinct !{!357, !108}
!358 = !{!"_ZTSZN13TouchControls11applyLayoutERK12ButtonLayoutE3$_0", !209, i64 0}
!359 = !{!358, !209, i64 0}
!360 = !{!352}
!361 = !{!356, !355}
!362 = !{!"p1 _ZTSSt9type_info", !24, i64 0}
!363 = !{!362, !362, i64 0}
!364 = distinct !{!364, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_"}
!365 = distinct !{!365, !364, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!366 = distinct !{!366, !364, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!367 = distinct !{!367, !108}
!368 = distinct !{!368, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_"}
!369 = distinct !{!369, !368, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!370 = distinct !{!370, !368, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gui14IGUIStaticTextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!371 = !{!365}
!372 = !{!366}
!373 = !{!369}
!374 = !{!370}
!375 = distinct !{!375, i1 true, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_"}
!376 = distinct !{!376, !375, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!377 = distinct !{!377, !375, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!378 = distinct !{!378, !108}
!379 = distinct !{!379, i1 true, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_"}
!380 = distinct !{!380, !379, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!381 = distinct !{!381, !379, !"_ZSt19__relocate_object_aI11button_infoS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!382 = !{!376}
!383 = !{!377}
!384 = !{!376, !377}
!385 = !{!380}
!386 = !{!381}
!387 = !{!380, !381}
!388 = distinct !{!388, !108}
!389 = distinct !{!389, !108}
!390 = !{!76, !37, i64 48}
!391 = !{!44, !36, i64 24}
!392 = distinct !{!392, !108}
!393 = !{!44, !37, i64 48}
end_hunk_4
