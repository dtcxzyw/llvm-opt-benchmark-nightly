Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SchedClassResolution?download=true
inline.NumInlined: 860
inline.NumDeleted: 529
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm8exegesis18ResolvedSchedClass10getAsPointENS0_9Benchmark5ModeEERKNS_15MCSubtargetInfoENS_8ArrayRefINS0_19PerInstructionStatsEEE:bb.a
_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.u, %bb.v
  %i.ec = phi ptr [ %.pre, %bb.u ], [ %i.eb, %bb.v ] ; 3 uses
  %.0.i.i = phi ptr [ %i.dz, %bb.u ], [ %i.dq, %bb.v ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !193
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ec to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp ugt i64 %.fr27.i, %i.ei
  br i1 %i.ej, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ek = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.bf, i64 noundef %.fr27.i) #17 ; 2 uses
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8, !tbaa !194
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i38 = icmp eq i64 %.fr27.i, 0
  br i1 %.not.i38, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.bf, i64 %.fr27.i, i1 false)
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !194
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.fr27.i ; 2 uses
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !194
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.w, %bb.x, %bb.y
  %i.en = phi ptr [ %.pre121, %bb.w ], [ %i.em, %bb.y ], [ %i.ec, %bb.x ] ; 2 uses
  %.0.i39 = phi ptr [ %i.ek, %bb.w ], [ %.0.i.i, %bb.y ], [ %.0.i.i, %bb.x ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i39, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !193
  %i.eq = icmp eq ptr %i.ep, %i.en
  br i1 %i.eq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i39, ptr noundef nonnull @.str.2, i64 noundef 1) #17 ; 0 uses
  br label %.lr.ph.i.i.i.preheader

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i39, i64 32 ; 2 uses
  store i8 10, ptr %i.en, align 1
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !194
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !194
  br label %.lr.ph.i.i.i.preheader

"_ZN4llvm7find_ifIRKSt6vectorISt4pairItfESaIS3_EEZNKS_8exegesis18ResolvedSchedClass10getAsPointENS8_9Benchmark5ModeEERKNS_15MCSubtargetInfoENS_8ArrayRefINS8_19PerInstructionStatsEEEE3$_0EEDaOT_T0_.exit.thread": ; preds = %bb.t, %"_ZN4llvm7find_ifIRKSt6vectorISt4pairItfESaIS3_EEZNKS_8exegesis18ResolvedSchedClass10getAsPointENS8_9Benchmark5ModeEERKNS_15MCSubtargetInfoENS_8ArrayRefINS8_19PerInstructionStatsEEEE3$_0EEDaOT_T0_.exit", %._crit_edge.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sink = phi double [ %i.dp, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.dc, %bb.t ], [ 0.000000e+00, %"_ZN4llvm7find_ifIRKSt6vectorISt4pairItfESaIS3_EEZNKS_8exegesis18ResolvedSchedClass10getAsPointENS8_9Benchmark5ModeEERKNS_15MCSubtargetInfoENS_8ArrayRefINS8_19PerInstructionStatsEEEE3$_0EEDaOT_T0_.exit" ], [ 0.000000e+00, %._crit_edge.i.i.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.8.0103, i64 32
  store double %.sink, ptr %i.ev, align 8, !tbaa !179
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.8.0103, i64 104 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.054.0104, i64 64 ; 2 uses
  %i.ey = icmp ne ptr %i.ew, %.0.lcssa.i.i.i.i.i
  %i.ez = icmp ne ptr %i.ex, %i.az
  %.not3.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %.not3.i, label %bb.f, label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread

.unreachabledefault:                              ; preds = %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EEC2EmRKS3_.exit
  unreachable

bb.ab:                                            ; preds = %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EEC2EmRKS3_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !79
  %i.fc = tail call noundef double @_ZN4llvm12MCSchedModel23getReciprocalThroughputERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320) %3, ptr noundef nonnull align 2 dereferenceable(14) %i.fb) #17
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  store double %i.fc, ptr %i.fd, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread

._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa: ; preds = %bb.d
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa, %.lr.ph106
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next.1, %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph106 ], [ %.sroa.speculated.1, %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i16 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.fe = load i16, ptr %gep.epil, align 2, !tbaa !184
  %i.ff = sitofp i16 %i.fe to double              ; 2 uses
  %i.fg = fcmp olt double %.epil.init, %i.ff
  %.sroa.speculated.epil = select i1 %i.fg, double %i.ff, double %.epil.init
  br label %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge

._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge: ; preds = %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa, %.epil.preheader
  %.sroa.speculated.lcssa = phi double [ %.sroa.speculated.1, %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader ]
  store double %.sroa.speculated.lcssa, ptr %i.ag, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread

_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread: ; preds = %"_ZN4llvm7find_ifIRKSt6vectorISt4pairItfESaIS3_EEZNKS_8exegesis18ResolvedSchedClass10getAsPointENS8_9Benchmark5ModeEERKNS_15MCSubtargetInfoENS_8ArrayRefINS8_19PerInstructionStatsEEEE3$_0EEDaOT_T0_.exit.thread", %bb.e, %bb.c, %._ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread.loopexit_crit_edge, %bb.ab
  store ptr %.sroa.0.1, ptr %0, align 8, !tbaa !198
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fh, align 8, !tbaa !199
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.16.1, ptr %i.fi, align 8, !tbaa !200
  br label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.z, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i ], [ %.sroa.0.1, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !168
  call void @_ZNSt8_Rb_treeIN4llvm8exegesis15ValidationEventESt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef %i.fl)
  %i.fm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !185 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !201
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #20
  br label %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.fr, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i44, label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !164

_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i
  %i.fs = ptrtoint ptr %.sroa.16.1 to i64
  %i.ft = ptrtoint ptr %.sroa.0.1 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.fu) #20
  br label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i.thread, %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i, %bb.ac
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef double @_ZN4llvm12MCSchedModel23getReciprocalThroughputERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 2 dereferenceable(14)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEET_SC_SC_T0_.exit"
  %i.g = icmp eq i64 %i.ec, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.fm, %bb.b ] ; 2 uses
  %.024.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr i64 %.lcssa47, 1                    ; 2 uses
  %i.i = add nsw i64 %i.h, -2                     ; 3 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = and i64 %.lcssa47, 2
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"
  %.014.us.i.i.i = phi i64 [ %i.aw, %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i" ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load i16, ptr %i.r, align 2, !tbaa !26   ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !18 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.034.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val29.i.us.i.i.i = load i16, ptr %i.w, align 2, !tbaa !26
  %.val30.i.us.i.i.i = load i16, ptr %i.y, align 2, !tbaa !26
  %i.z = zext i16 %.val29.i.us.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !22
  %i.ac = zext i16 %.val30.i.us.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !22
  %i.af = fcmp olt float %i.ab, %i.ae
  %i.ag = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.v ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !26
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.034.i.us.i.i.i
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !26
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !203

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.al = zext i16 %i.s to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.0134.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.05.in.i.i.us.i.i.i = add nsw i64 %.0134.i.i.us.i.i.i, -1
  %.059.i.i.us.i.i.i = lshr i64 %.05.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.059.i.i.us.i.i.i
  %.val14.i.i.us.i.i.i = load i16, ptr %i.ao, align 2, !tbaa !26 ; 2 uses
  %i.ap = zext i16 %.val14.i.i.us.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !22
  %i.as = fcmp olt float %i.ar, %i.an
  br i1 %i.as, label %bb.e, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0134.i.i.us.i.i.i
  store i16 %.val14.i.i.us.i.i.i, ptr %i.at, align 2, !tbaa !26
  %i.au = icmp samesign ugt i64 %.059.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.au, label %bb.d, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i", !llvm.loop !204

"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ], [ %.0134.i.i.us.i.i.i, %bb.d ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store i16 %i.s, ptr %i.av, align 2, !tbaa !26
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.aw = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !205

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.014.i.i.i = phi i64 [ %i.cf, %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i" ], [ %i.j, %.split.preheader.i.i.i ] ; 8 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.014.i.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !26 ; 2 uses
  %i.az = icmp slt i64 %.014.i.i.i, %i.l
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !18 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.ba = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %.val29.i.i.i.i = load i16, ptr %i.bc, align 2, !tbaa !26
  %.val30.i.i.i.i = load i16, ptr %i.be, align 2, !tbaa !26
  %i.bf = zext i16 %.val29.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !22
  %i.bi = zext i16 %.val30.i.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !22
  %i.bl = fcmp olt float %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.ba, 1
  %spec.select.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bb ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !26
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.034.i.i.i.i
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !26
  %i.bq = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bq, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !203

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.br = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = load i16, ptr %i.p, align 2, !tbaa !26
  store i16 %i.bs, ptr %i.q, align 2, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.o, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bt = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !18 ; 2 uses
  %i.bu = zext i16 %i.ay to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.0134.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i, %bb.j ] ; 3 uses
  %.05.in.i.i.i.i.i = add nsw i64 %.0134.i.i.i.i.i, -1
  %.059.i.i.i.i.i = lshr i64 %.05.in.i.i.i.i.i, 1 ; 4 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.059.i.i.i.i.i
  %.val14.i.i.i.i.i = load i16, ptr %i.bx, align 2, !tbaa !26 ; 2 uses
  %i.by = zext i16 %.val14.i.i.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !22
  %i.cb = fcmp olt float %i.ca, %i.bw
  br i1 %i.cb, label %bb.j, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0134.i.i.i.i.i
  store i16 %.val14.i.i.i.i.i, ptr %i.cc, align 2, !tbaa !26
  %i.cd = icmp samesign ugt i64 %.059.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cd, label %bb.i, label %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i", !llvm.loop !204

"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.h ], [ %.0134.i.i.i.i.i, %bb.i ], [ %.059.i.i.i.i.i, %bb.j ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i16 %i.ay, ptr %i.ce, align 2, !tbaa !26
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.cf = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.i.i.i, !llvm.loop !205

.lr.ph.i5.i.preheader:                            ; preds = %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_T0_SD_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.preheader, %"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i"
  %.01.i.i = phi ptr [ %i.cg, %"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i" ], [ %.024.lcssa, %.lr.ph.i5.i.preheader ]
  %i.cg = getelementptr inbounds i8, ptr %.01.i.i, i64 -2 ; 4 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !26 ; 2 uses
  %i.ci = load i16, ptr %0, align 2, !tbaa !26
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !26
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.cj, %i.a                     ; 3 uses
  %i.cl = ashr exact i64 %i.ck, 1                 ; 3 uses
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = lshr i64 %i.cm, 1
  %i.co = icmp sgt i64 %i.cl, 2
  br i1 %i.co, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i6.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i5.i
  %.val.val.i.i.i17.i = load ptr, ptr %3, align 8, !tbaa !18 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i16.i
  %.034.i.i.i18.i = phi i64 [ 0, %.lr.ph.i.i.i16.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cp = shl i64 %.034.i.i.i18.i, 1              ; 3 uses
  %i.cq = add i64 %i.cp, 2                        ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %.val29.i.i.i19.i = load i16, ptr %i.cr, align 2, !tbaa !26
  %.val30.i.i.i20.i = load i16, ptr %i.ct, align 2, !tbaa !26
  %i.cu = zext i16 %.val29.i.i.i19.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i17.i, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !22
  %i.cx = zext i16 %.val30.i.i.i20.i to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i17.i, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !22
  %i.da = fcmp olt float %i.cw, %i.cz
  %i.db = or disjoint i64 %i.cp, 1
  %spec.select.i.i.i21.i = select i1 %i.da, i64 %i.db, i64 %i.cq ; 4 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %spec.select.i.i.i21.i
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !26
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.034.i.i.i18.i
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !26
  %i.df = icmp slt i64 %spec.select.i.i.i21.i, %i.cn
  br i1 %i.df, label %bb.k, label %._crit_edge.i.i.i6.i, !llvm.loop !203

._crit_edge.i.i.i6.i:                             ; preds = %bb.k, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dg = and i64 %i.ck, 2
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.di = add nsw i64 %i.cl, -2
  %i.dj = ashr exact i64 %i.di, 1
  %i.dk = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.dj
  br i1 %i.dk, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dl = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dm = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !26
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !26
  br label %.lr.ph.i.i.i.i9.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i", label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.m, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.dm, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.m ]
  %.val.val.i.i.i.i10.i = load ptr, ptr %3, align 8, !tbaa !18 ; 2 uses
  %i.dq = zext i16 %i.ch to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i11.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i13.i, %bb.o ] ; 3 uses
  %.05.in.i.i.i.i12.i = add nsw i64 %.0134.i.i.i.i11.i, -1
  %.059.i.i.i.i13.i = lshr i64 %.05.in.i.i.i.i12.i, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.059.i.i.i.i13.i
  %.val14.i.i.i.i14.i = load i16, ptr %i.dt, align 2, !tbaa !26 ; 2 uses
  %i.du = zext i16 %.val14.i.i.i.i14.i to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = fcmp olt float %i.dw, %i.ds
  br i1 %i.dx, label %bb.o, label %"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0134.i.i.i.i11.i
  store i16 %.val14.i.i.i.i14.i, ptr %i.dy, align 2, !tbaa !26
  %.not3.i.i.i = icmp eq i64 %.059.i.i.i.i13.i, 0
  br i1 %.not3.i.i.i, label %"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i", label %bb.n, !llvm.loop !204

"_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.m ], [ %.0134.i.i.i.i11.i, %bb.n ], [ 0, %bb.o ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i16 %i.ch, ptr %i.dz, align 2, !tbaa !26
  %i.ea = icmp sgt i64 %i.ck, 2
  br i1 %i.ea, label %.lr.ph.i5.i, label %"_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_T0_.exit", !llvm.loop !206

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.ec, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.eb = phi i64 [ %i.fm, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ec = add nsw i64 %.0152350, -1               ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !18    ; 6 uses
  %i.ed = lshr i64 %i.eb, 2
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ed ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.02449, i64 -2 ; 3 uses
  %.val34.i.i = load i16, ptr %i.e, align 2, !tbaa !26 ; 3 uses
  %.val35.i.i = load i16, ptr %i.ee, align 2, !tbaa !26 ; 3 uses
  %i.eg = zext i16 %.val34.i.i to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !22 ; 3 uses
  %i.ej = zext i16 %.val35.i.i to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !22 ; 3 uses
  %i.em = fcmp olt float %i.ei, %i.el
  %.val32.i.i = load i16, ptr %i.ef, align 2, !tbaa !26 ; 3 uses
  %i.en = zext i16 %.val32.i.i to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !22 ; 4 uses
  br i1 %i.em, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph51
  %i.eq = fcmp olt float %i.el, %i.ep
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = load i16, ptr %0, align 2, !tbaa !26
  store i16 %.val35.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.er, ptr %i.ee, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.es = fcmp olt float %i.ei, %i.ep
  %i.et = load i16, ptr %0, align 2, !tbaa !26    ; 2 uses
  br i1 %i.es, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i16 %.val32.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.et, ptr %i.ef, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i16 %.val34.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.et, ptr %i.e, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph51
  %i.eu = fcmp olt float %i.ei, %i.ep
  br i1 %i.eu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ev = load i16, ptr %0, align 2, !tbaa !26
  store i16 %.val34.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.ev, ptr %i.e, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.ew = fcmp olt float %i.el, %i.ep
  %i.ex = load i16, ptr %0, align 2, !tbaa !26    ; 2 uses
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %.val32.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.ex, ptr %i.ef, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i16 %.val35.i.i, ptr %0, align 2, !tbaa !26
  store i16 %i.ex, ptr %i.ee, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i"

"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader", %bb.ab
  %.013.i.i = phi ptr [ %.114.i.i, %bb.ab ], [ %.02449, %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.ff, %bb.ab ], [ %i.e, %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
  %.val17.i.i = load i16, ptr %0, align 2, !tbaa !26
  %i.ey = zext i16 %.val17.i.i to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !22 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i" ], [ %i.ff, %bb.z ] ; 8 uses
  %.1.val.i.i = load i16, ptr %.1.i.i, align 2, !tbaa !26 ; 2 uses
  %i.fb = zext i16 %.1.val.i.i to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !22
  %i.fe = fcmp olt float %i.fd, %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.fe, label %bb.z, label %.preheader.i.i, !llvm.loop !207

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.z ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 5 uses
  %.114.val.i.i = load i16, ptr %.114.i.i, align 2, !tbaa !26 ; 2 uses
  %i.fg = zext i16 %.114.val.i.i to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !22
  %i.fj = fcmp olt float %i.fa, %i.fi
  br i1 %i.fj, label %.preheader.i.i, label %bb.aa, !llvm.loop !208

bb.aa:                                            ; preds = %.preheader.i.i
  %i.fk = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.fk, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEET_SC_SC_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store i16 %.114.val.i.i, ptr %.1.i.i, align 2, !tbaa !26
  store i16 %.1.val.i.i, ptr %.114.i.i, align 2, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_SC_SC_T0_.exit.i", !llvm.loop !209

"_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEET_SC_SC_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm8exegesisL18distributePressureEfNS4_11SmallVectorItLj32EEERNS6_IfLj32EEEE3$_0EEEvT_SC_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02449, i64 noundef %i.ec, ptr nonnull %3)
  %i.fl = ptrtoint ptr %.1.i.i to i64
  %i.fm = sub i64 %i.fl, %i.a                     ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, 32
end_hunk_0
