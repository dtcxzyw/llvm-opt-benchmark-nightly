Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-auto-parser-helpers?download=true
inline.NumInlined: 647
inline.NumDeleted: 202
begin_hunk_0_@"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIP7segmentSt6vectorIS2_SaIS2_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZ20calculate_diff_splitRKSD_SF_E3$_1ET0_T_SI_SH_T1_":bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.b
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bd, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !148

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.m
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !19
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.n:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %._crit_edge
  store ptr %i.bj, ptr %0, align 8, !tbaa !16
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !17
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.br = phi i64 [ %i.bn, %bb.n ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !15
  store ptr %i.bk, ptr %3, align 8, !tbaa !16
  store i64 0, ptr %i.bs, align 8, !tbaa !15
  store i8 0, ptr %i.bk, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI7segmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI7segmentEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyI7segmentEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyI7segmentEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyI7segmentEvPT_.exit.i.i

_ZSt8_DestroyI7segmentEvPT_.exit.i.i:             ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI7segmentEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit:   ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI7segmentSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZNSt12_Vector_baseI7segmentSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI7segmentSaIS0_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN10diff_splitD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z19until_common_prefixRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 3 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !16
  %i.h = load ptr, ptr %3, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01940 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01940
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.01940
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %.01940, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.sroa.speculated
  br i1 %exitcond.not, label %.critedge.thread48, label %bb.b, !llvm.loop !153

.critedge:                                        ; preds = %bb.b
  %i.o = icmp eq i64 %.01940, 0
  br i1 %i.o, label %._crit_edge.i.i, label %.critedge.thread48

._crit_edge.i.i:                                  ; preds = %bb.a, %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.p, align 8, !tbaa !17
  br label %bb.k

.critedge.thread48:                               ; preds = %bb.c, %.critedge
  %.019.lcssa50 = phi i64 [ %.01940, %.critedge ], [ %.sroa.speculated, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !19, !alias.scope !158
  %i.s = load ptr, ptr %2, align 8, !tbaa !16, !noalias !158 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.019.lcssa50, i64 %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !158
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !20, !noalias !158
  %i.t = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.t, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %.critedge.thread48
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !16, !alias.scope !158
  %i.v = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !158
  store i64 %i.v, ptr %i.r, align 8, !tbaa !17, !alias.scope !158
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %.critedge.thread48
  %i.w = phi ptr [ %i.u, %.noexc10.i.i ], [ %i.r, %.critedge.thread48 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.x, ptr %i.w, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.s, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !158 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !15, !alias.scope !158
  %i.aa = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !158
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !158
  %i.ac = load ptr, ptr %4, align 8, !tbaa !16
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ae = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ac, i64 noundef 0, i64 noundef %i.ad) #25 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %._crit_edge.i.i24, label %bb.f

._crit_edge.i.i24:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !15
  store i8 0, ptr %i.ag, align 8, !tbaa !17
  br label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15, !noalias !159
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !19, !alias.scope !159
  %i.al = load ptr, ptr %1, align 8, !tbaa !16, !noalias !159 ; 2 uses
  %spec.select.i.i.i28 = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.aj) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !159
  store i64 %spec.select.i.i.i28, ptr %i.a, align 8, !tbaa !20, !noalias !159
  %i.am = icmp ugt i64 %spec.select.i.i.i28, 15
  br i1 %i.am, label %.noexc10.i.i30, label %._crit_edge.i.i.i29

.noexc10.i.i30:                                   ; preds = %bb.f
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.i   ; 2 uses

.noexc31:                                         ; preds = %.noexc10.i.i30
  store ptr %i.an, ptr %0, align 8, !tbaa !16, !alias.scope !159
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !159
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !17, !alias.scope !159
  br label %._crit_edge.i.i.i29

._crit_edge.i.i.i29:                              ; preds = %.noexc31, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc31 ], [ %i.ak, %bb.f ] ; 2 uses
  switch i64 %spec.select.i.i.i28, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit32
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i29
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !17
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit32

bb.h:                                             ; preds = %._crit_edge.i.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.al, i64 %spec.select.i.i.i28, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit32: ; preds = %._crit_edge.i.i.i29, %bb.g, %bb.h
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !159 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !15, !alias.scope !159
  %i.at = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !159
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !159
  br label %bb.j

bb.i:                                             ; preds = %.noexc10.i.i30
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.r
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit32, %._crit_edge.i.i24
  %i.ay = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.r
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.i
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.av

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z19after_common_suffixRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 4 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !16
  %i.h = getelementptr i8, ptr %i.g, i64 %i.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02345 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.c ] ; 6 uses
  %i.k = xor i64 %.02345, -1                      ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = getelementptr i8, ptr %i.j, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw i64 %.02345, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %.sroa.speculated
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !160

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %5 = sub i64 %i.d, %.sroa.speculated
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.critedge:                                        ; preds = %bb.b
  %i.r = icmp eq i64 %.02345, 0
  br i1 %i.r, label %._crit_edge.i.i, label %6

._crit_edge.i.i:                                  ; preds = %bb.a, %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !15
  store i8 0, ptr %i.s, align 8, !tbaa !17
  br label %bb.l

6:                                                ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %7 = sub i64 %i.d, %.02345                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %8 = icmp ugt i64 %.02345, %i.d
  br i1 %8, label %9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

9:                                                ; preds = %6
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %7, i64 noundef %i.d) #24, !noalias !165
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.thread, %6
  %i.u = phi i64 [ %5, %.thread ], [ %7, %6 ]
  %.023.lcssa6062 = phi i64 [ %.sroa.speculated, %.thread ], [ %.02345, %6 ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !19, !alias.scope !165
  %i.w = load ptr, ptr %2, align 8, !tbaa !16, !noalias !165
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !165
  store i64 %.023.lcssa6062, ptr %i.b, align 8, !tbaa !20, !noalias !165
  %i.y = icmp ugt i64 %.023.lcssa6062, 15
  br i1 %i.y, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !16, !alias.scope !165
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !165
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !17, !alias.scope !165
  br label %bb.e

._crit_edge.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %cond = icmp eq i64 %.023.lcssa6062, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !17
  store i8 %i.ab, ptr %i.v, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ac = phi ptr [ %i.z, %._crit_edge.i.i.i.thread ], [ %i.v, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %.023.lcssa6062, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.d, %bb.e
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !165 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15, !alias.scope !165
  %i.af = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !165
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !165
  %i.ah = load ptr, ptr %4, align 8, !tbaa !16
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.aj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef -1, i64 noundef %i.ai) #25 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %._crit_edge.i.i28, label %bb.f

._crit_edge.i.i28:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !15
  store i8 0, ptr %i.al, align 8, !tbaa !17
  br label %bb.k

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.an = add i64 %i.aj, %.023.lcssa6062          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15, !noalias !166 ; 3 uses
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %i.an, i64 noundef %i.ap) #24
          to label %.noexc35 unwind label %bb.j

.noexc35:                                         ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !19, !alias.scope !166
  %i.as = load ptr, ptr %1, align 8, !tbaa !16, !noalias !166
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  %i.au = sub nuw i64 %i.ap, %i.an                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !166
  store i64 %i.au, ptr %i.a, align 8, !tbaa !20, !noalias !166
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc10.i.i34, label %._crit_edge.i.i.i33

.noexc10.i.i34:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.j   ; 2 uses

.noexc36:                                         ; preds = %.noexc10.i.i34
  store ptr %i.aw, ptr %0, align 8, !tbaa !16, !alias.scope !166
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !166
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !17, !alias.scope !166
  br label %._crit_edge.i.i.i33

._crit_edge.i.i.i33:                              ; preds = %.noexc36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32
  %i.ay = phi ptr [ %i.aw, %.noexc36 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i32 ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i33
  %i.az = load i8, ptr %i.at, align 1, !tbaa !17
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

bb.i:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.at, i64 %i.au, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37: ; preds = %._crit_edge.i.i.i33, %bb.h, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !166 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !15, !alias.scope !166
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !166
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !166
  br label %bb.k

bb.j:                                             ; preds = %.noexc10.i.i34, %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.v
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37, %._crit_edge.i.i28
  %i.bh = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.v
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !17
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.j
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !17
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z25prune_whitespace_segmentsRKSt6vectorI7segmentSaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorI7segmentSaIS0_EE9push_backERKS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7segmentSaIS0_EE9push_backERKS0_.exit
  %.sroa.010.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.al, %_ZNSt6vectorI7segmentSaIS0_EE9push_backERKS0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8 ; 2 uses
  invoke void @_Z15trim_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.n = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.n)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.k, label %_ZNSt6vectorI7segmentSaIS0_EE9push_backERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !30   ; 6 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.sroa.010.014, align 8, !tbaa !25
  store i32 %i.s, ptr %i.q, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !19
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.x, ptr %i.a, align 8, !tbaa !20
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.e
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %bb.e ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN7segmentC2ERKS_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !17
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !17
  br label %_ZN7segmentC2ERKS_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZN7segmentC2ERKS_.exit.i

_ZN7segmentC2ERKS_.exit.i:                        ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !17
end_hunk_0
