Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hashtable?download=true
inline.NumInlined: 980
inline.NumDeleted: 607
begin_hunk_0_@_ZN4absl12lts_2026052618profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7IterateERKSt8functionIFvRKS4_EE:bb.a
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.0)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit9 unwind label %bb.h, !llvm.loop !68

bb.h:                                             ; preds = %_ZNKSt8functionIFvRKN4absl12lts_2026052618container_internal14HashtablezInfoEEEclES5_.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

bb.i:                                             ; preds = %_ZN4absl12lts_202605269MutexLockD2Ev.exit9
  %i.p = load atomic i64, ptr %0 monotonic, align 8
  ret i64 %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4absl12lts_2026052618debugging_internalL22DroppedHashtableSampleEv() #4 {
bb.a:
  ret void
}

declare void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder9AddSampleElNS0_4SpanIKPKvEENS3_IKSt4pairINS1_8StringIdElEEE(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef, ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilder18AddCurrentMappingsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare void @_ZNO4absl12lts_2026052618debugging_internal14ProfileBuilder4EmitB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618debugging_internal14ProfileBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.81, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !73

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i
  %.05.i.i.i15 = phi ptr [ %i.aw, %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 72 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 40 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 88 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.aw, %i.aj
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !79

_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingEEvPT_.exit.i.i.i
  %.pr.i17 = load ptr, ptr %i.ag, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.ax = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingES4_EvT_S6_RSaIT0_E.exit.i, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE16clear_and_deleteEPS5_PSaISt4pairIKmmEE(ptr noundef %i.bh, ptr noundef nonnull %i.bi)
          to label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #22
  unreachable

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052618debugging_internal14ProfileBuilder7MappingESaIS4_EED2Ev.exit, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = and i64 %i.bm, 255
  %i.bo = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = and i64 %i.bm, 254
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.bl, ptr %1, align 8, !tbaa !82
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef 16, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSN_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.br = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bs    ; 8 uses
  %i.bt = add nsw i64 %notmask.i.i.i.i.i.i, 281474976710655
  %i.bu = or i64 %i.bt, %notmask.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.bx)
  %i.by = and i64 %i.br, 65536                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.by, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !28 ; 5 uses
  br i1 %.not.i.i.i.i.i, label %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE5infozEv.exit_crit_edge.i.i.i, label %2

._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE5infozEv.exit_crit_edge.i.i.i: ; preds = %.noexc.i
  %.pre.i.i.i = sub nsw i64 15, %notmask.i.i.i.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7deallocEv.exit.i.i

2:                                                ; preds = %.noexc.i
  %3 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %4 = sub nsw i64 15, %notmask.i.i.i.i.i.i       ; 2 uses
  %5 = select i1 %3, i64 0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 %5
  %7 = icmp ule ptr %6, %i.bl
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i2.pre.i.i.i
  %10 = select i1 %7, i1 true, i1 %9
  call void @llvm.assume(i1 %10)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7deallocEv.exit.i.i: ; preds = %2, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE5infozEv.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE5infozEv.exit_crit_edge.i.i.i ], [ %4, %2 ]
  %11 = xor i64 %notmask.i.i.i.i.i.i, -1
  %12 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %13 = select i1 %12, i64 0, i64 %.pre-phi.i.i.i
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 %13
  %15 = icmp ule ptr %14, %i.bl
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = icmp ule ptr %16, %.sroa.0.0.copyload.i.i.i2.pre.i.i.i
  %18 = select i1 %15, i1 true, i1 %17
  call void @llvm.assume(i1 %18)
  %19 = icmp ne i64 %i.by, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %11, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %19)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7deallocEv.exit.i.i, %bb.g
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #22
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implImmJEEEEEED2Ev.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEE7deallocEv.exit.i.i
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEED2Ev.exit
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #22
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS4_14ProfileBuilder17HashtablezBarrierISt4pairIKmS5_EEEEED2Ev.exit
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %2, ptr noundef %i.a, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19transfer_n_slots_fnEPvSM_SM_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit
  %.014 = phi ptr [ %i.r, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.q, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01012 = phi i64 [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !21
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !24
  %i.i = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.i, ptr %i.a, align 8, !tbaa !28
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !27
  store ptr %i.c, ptr %.0913, align 8, !tbaa !24
  store i64 0, ptr %i.j, align 8, !tbaa !27
  store i8 0, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  store i64 %i.o, ptr %i.m, align 8, !tbaa !31
  %i.p = add i64 %.01012, -1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE8transferEPNS1_13map_slot_typeIS9_SB_EESO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvS7_m(ptr noundef %0, i64 noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvPT0_m.exit, !prof !86

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !86 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 3 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !28 ; 5 uses
  %5 = sub i64 15, %notmask.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #25, !srcloc !87 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !88

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.sroa.052.061 = phi i32 [ %i.ec, %bb.t ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.x ; 6 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !24  ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27 ; 14 uses
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 1
  %i.ah = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %i.ac, align 1
  %i.ai = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.ae, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.av, %i.ba
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.an, %bb.e ], [ %i.bb, %bb.g ], [ 87, %bb.f ]
  %i.bc = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.bd = xor i64 %i.bc, %i.ab
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw nsw i128 %i.be, 8779197792823184629 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %i.ae, 17
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bk, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bm, align 1
  %i.bn = xor i64 %.0.copyload.i.i38.i.i, %.0.copyload.i.i.i.i.i
  %i.bo = xor i64 %i.bn, %i.ab
  %i.bp = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bq = zext i64 %i.bo to i128
  %i.br = zext i64 %i.bp to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ult i64 %i.ae, 33
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i42.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i42.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i43.i.i = load i64, ptr %i.ac, align 1
  %i.bz = xor i64 %.0.copyload.i.i43.i.i, 1376283091369227076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i44.i.i = load i64, ptr %i.ca, align 1
  %i.cb = xor i64 %.0.copyload.i.i44.i.i, %i.by
  %i.cc = zext i64 %i.bz to i128
  %i.cd = zext i64 %i.cb to i128
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %.0.copyload.i.i48.i.i = load i64, ptr %i.cg, align 1
  %i.ch = xor i64 %.0.copyload.i.i48.i.i, 589684135938649225
  %i.ci = getelementptr i8, ptr %i.cf, i64 -8
  %.0.copyload.i.i49.i.i = load i64, ptr %i.ci, align 1
  %i.cj = xor i64 %.0.copyload.i.i49.i.i, %i.by
  %i.ck = zext i64 %i.ch to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
  %i.cn = xor i128 %i.cm, %i.ce
  %i.co = lshr i128 %i.cn, 64
  %i.cp = xor i128 %i.ce, %i.co
  %i.cq = xor i128 %i.cp, %i.cm
  %i.cr = trunc i128 %i.cq to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.ae)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bi, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bv, %bb.i ], [ %i.cr, %bb.k ], [ %i.cs, %bb.l ] ; 6 uses
  %i.ct = lshr i64 %.0.i.i, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 2 uses
  %i.cv = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.cw = and i64 %i.i, %i.cv
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.n, !prof !89

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %i.cv, 15
  %i.cz = add i64 %i.cy, %.0.i.i
  %i.da = and i64 %i.cz, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.db = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.db, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !89

bb.o:                                             ; preds = %bb.n
  %i.dc = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dc
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !28
  %i.df = icmp slt <16 x i8> %i.de, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh) #25, !srcloc !87 ; 2 uses
  %.not26.i = icmp eq i32 %i.di, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !86

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nuw i64 %i.dc, %i.dk
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cu, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.dl, %bb.p ], [ %i.da, %bb.m ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm:bb.a
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJRKSB_EEEEESH_INSL_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !92, !nonnull !94, !align !95 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.c = load i64, ptr %i.b, align 8, !noalias !96 ; 2 uses
  %i.d = and i64 %i.c, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !28, !noalias !102 ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !24, !noalias !102
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27, !noalias !102 ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !24, !noalias !102
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27, !noalias !102
  %i.m = icmp eq i64 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.j, i64 %i.i), !noalias !102
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !102
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !103, !alias.scope !102
  br label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !102
  store ptr %i.b, ptr %6, align 8, !tbaa !107, !noalias !102
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !43, !noalias !102
  %i.r = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !102 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.s, ptr %0, align 8, !alias.scope !102
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !102
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.u, align 8, !tbaa !103, !alias.scope !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !102
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !103, !range !109
  %i.v = trunc nuw i8 %.pre to i1
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %i.w = load i64, ptr %4, align 8, !tbaa !43
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i64, ptr %5, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.z, ptr %.sroa.2.0.copyload, align 8, !tbaa !21
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !110
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %.sroa.2.0.copyload, align 8, !tbaa !24
  %i.af = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.af, ptr %i.z, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ag = phi ptr [ %i.ae, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESQ_IJRKSB_EEEEEvNSL_8iteratorEDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !28
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !28
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESQ_IJRKSB_EEEEEvNSL_8iteratorEDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESQ_IJRKSB_EEEEEvNSL_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESQ_IJRKSB_EEEEEvNSL_8iteratorEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ai = inttoptr i64 %i.y to ptr
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !27
  %i.al = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !9
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit.thread5, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESQ_IJRKSB_EEEEEvNSL_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE22find_or_prepare_insertIS9_EESH_INSL_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %3 = and i64 %i.b, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %3         ; 2 uses
  %4 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %5 = sub i64 15, %notmask.i.i.i.i.i
  %6 = select i1 %4, i64 0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %6
  %8 = icmp ule ptr %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  tail call void @llvm.assume(i1 %11)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !111
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j     ; 5 uses
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  %12 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %13 = sub i64 15, %notmask.i.i.i.i.i.i          ; 3 uses
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %14
  %16 = icmp ule ptr %15, %1
  %17 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !28 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !28 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #25, !srcloc !87 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !24
  %i.y = load i64, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !114

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #25, !srcloc !87 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !86

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  %.pre = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !28
  %.pre76 = and i64 %.pre, 255
  %.pre77 = shl nsw i64 -1, %.pre76               ; 2 uses
  %.pre78 = sub i64 15, %.pre77
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE28find_or_prepare_insert_largeIS9_EESH_INSL_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.pre-phi79 = phi i64 [ %.pre78, %bb.e ], [ %13, %bb.d ], [ %13, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %notmask.i.i.i.i.i8.pre-phi = phi i64 [ %.pre77, %bb.e ], [ %notmask.i.i.i.i.i.i, %bb.d ], [ %notmask.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %19 = icmp samesign ugt i64 %notmask.i.i.i.i.i8.pre-phi, -3
  %20 = select i1 %19, i64 0, i64 %.pre-phi79
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %20
  %22 = icmp ule ptr %21, %1
  %23 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i7
  %24 = select i1 %22, i1 true, i1 %23
  tail call void @llvm.assume(i1 %24)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !103
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !94, !align !95 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %1, ptr noundef %i.c, i64 noundef %i.e)
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.69, align 8             ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8, !tbaa !117
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS3_10StringHashENS3_8StringEqENSC_14ProfileBuilder17HashtablezBarrierISt4pairIKSB_SD_EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.e
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %i.m = and i64 %i.l, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.m         ; 8 uses
  %i.n = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.o = or i64 %i.n, %notmask.i.i.i.i
  %i.p = icmp eq i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.q)
  %i.r = and i64 %i.l, 65536                      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !28 ; 5 uses
  br i1 %.not.i.i.i, label %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE5infozEv.exit_crit_edge.i, label %2

._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE5infozEv.exit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit
  %.pre.i = sub nsw i64 15, %notmask.i.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7deallocEv.exit

2:                                                ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit
  %3 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %4 = sub nsw i64 15, %notmask.i.i.i.i           ; 2 uses
  %5 = select i1 %3, i64 0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i2.pre.i
  %10 = select i1 %7, i1 true, i1 %9
  call void @llvm.assume(i1 %10)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7deallocEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7deallocEv.exit: ; preds = %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE5infozEv.exit_crit_edge.i, %2
  %.pre-phi.i = phi i64 [ %.pre.i, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE5infozEv.exit_crit_edge.i ], [ %4, %2 ]
  %11 = xor i64 %notmask.i.i.i.i, -1
  %12 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %13 = select i1 %12, i64 0, i64 %.pre-phi.i
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i, i64 %13
  %15 = icmp ule ptr %14, %0
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %17 = icmp ule ptr %16, %.sroa.0.0.copyload.i.i.i2.pre.i
  %18 = select i1 %15, i1 true, i1 %17
  call void @llvm.assume(i1 %18)
  %19 = icmp ne i64 %i.r, 0
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS0_18debugging_internal14ProfileBuilder17HashtablezBarrierIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %19)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS1_10StringHashENS1_8StringEqENSA_14ProfileBuilder17HashtablezBarrierISt4pairIKS9_SB_EEEEE7deallocEv.exit
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18debugging_internal8StringIdEEEJNS3_10StringHashENS3_8StringEqENSC_14ProfileBuilder17HashtablezBarrierISt4pairIKSB_SD_EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18debugging_internal8StringIdEEEJNS2_10StringHashENS2_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSU_DpOSV_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !28
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18debugging_internal8StringIdEEEJNS2_10StringHashENS2_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSU_DpOSV_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18debugging_internal8StringIdEEEJNS2_10StringHashENS2_8StringEqENSB_14ProfileBuilder17HashtablezBarrierISt4pairIKSA_SC_EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyImNS0_18debugging_internal10LocationIdEEEJNS0_13hash_internal4HashImEESt8equal_toImENS6_14ProfileBuilder17HashtablezBarrierISt4pairIKmS7_EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSN_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implImmJEEEE16clear_and_deleteEPS5_PSaISt4pairIKmmEE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = add nuw nsw i64 %i.d, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !119
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.p, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.q, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.147
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28    ; 2 uses
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.x, %.lr.ph66 ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28    ; 2 uses
  %.not.i56 = icmp eq i8 %i.z, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !121

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ae = phi i8 [ %i.z, %._crit_edge67 ], [ %i.v, %bb.d ]
  %.251 = phi ptr [ %i.x, %._crit_edge67 ], [ %i.t, %bb.d ]
  %.248 = phi i64 [ %i.ac, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ad, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i64
  %.not.not = icmp samesign ult i64 %.248, %i.ak
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.ar, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.an, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !122

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28  ; 2 uses
  %i.an = load ptr, ptr %.3, align 8, !tbaa !119  ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 384) #23
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %.not = icmp ult i8 %i.am, %i.aq
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !123

bb.g:                                             ; preds = %bb.f
  %i.ar = zext i8 %i.am to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 384, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

declare void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

declare void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN4absl12lts_2026052618container_internal14HashtablezInfoEEZNS1_18debugging_internal23MarshalHashtableProfileB5cxx11ERNS1_18profiling_internal14SampleRecorderIS3_EENS1_4TimeEE3$_0E9_M_invokeERKSt9_Any_dataS5_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(664) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !14    ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 3 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !124, !nonnull !94, !align !95
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i", label %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618debugging_internal8StringIdElESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

_ZNKSt6vectorISt4pairIN4absl12lts_2026052618debugging_internal8StringIdElESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i" unwind label %bb.bg ; 5 uses

"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i": ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618debugging_internal8StringIdElESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  store i64 %i.d, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.b, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129, !nonnull !94, !align !95
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load atomic i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit63.i.i.i", label %.thread.i.i.i

"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i": ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129, !nonnull !94, !align !95
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit63.thread.i.i.i", label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i", %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i"
  %.sroa.0.2305314.i.i.i = phi ptr [ null, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i" ], [ %i.f, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i" ] ; 7 uses
  %.sroa.33.0306313.i.i.i = phi ptr [ null, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i" ], [ %i.h, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i" ] ; 4 uses
  %i.u = phi i64 [ %i.q, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i" ], [ %i.k, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i" ]
  %i.v = phi i64 [ %i.s, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.thread.i.i.i" ], [ %i.m, %"_ZZZN4absl12lts_2026052618debugging_internal23MarshalHashtableProfileB5cxx11ERNS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEENS0_4TimeEENK3$_0clERKS5_ENKUlNS1_8StringIdEmE_clESC_m.exit.i.i.i" ]
  %i.w = ptrtoint ptr %.sroa.33.0306313.i.i.i to i64
  %i.x = ptrtoint ptr %.sroa.0.2305314.i.i.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775792
end_hunk_1
