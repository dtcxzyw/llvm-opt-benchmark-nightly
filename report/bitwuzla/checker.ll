Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/checker?download=true
inline.NumInlined: 610
inline.NumDeleted: 239
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL7Checker13delete_clauseEmbRKSt6vectorIiSaIiEE:bb.a
  tail call void @_ZN7CaDiCaL7Checker14import_literalEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ae, %i.ac
  br i1 %.not.i17, label %_ZN7CaDiCaL7Checker13import_clauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

_ZN7CaDiCaL7Checker13import_clauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %1, ptr %i.af, align 8, !tbaa !79
  %i.ag = tail call noundef zeroext i1 @_ZN7CaDiCaL7Checker12tautologicalEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  br i1 %i.ag, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN7CaDiCaL7Checker13import_clauseERKSt6vectorIiSaIiEE.exit
  %i.ah = tail call noundef ptr @_ZN7CaDiCaL7Checker4findEv(ptr noundef nonnull align 8 dereferenceable(352) %0) ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 5 uses
  %.not12 = icmp eq ptr %i.ai, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !66
  %i.al = add <2 x i64> %i.ak, <i64 -1, i64 1>
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !66
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !26
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !26
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !49
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !221
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr %i.aq) #26 ; 0 uses
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !50  ; 2 uses
  %.not2930 = icmp eq ptr %i.ar, %i.as
  br i1 %.not2930, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !221
  %i.au = tail call i32 @fputc(i32 noundef 48, ptr noundef %i.at) ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.026.031 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ar, %bb.i ] ; 2 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !221
  %i.aw = load i32, ptr %.sroa.026.031, align 4, !tbaa !51
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.2, i32 noundef %i.aw) #27 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.026.031, i64 4 ; 2 uses
  %.not29 = icmp eq ptr %i.ay, %i.as
  br i1 %.not29, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h, %._crit_edge, %_ZN7CaDiCaL7Checker13import_clauseERKSt6vectorIiSaIiEE.exit
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !22  ; 2 uses
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !21
  %.not.i.i18 = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i18, label %_ZNSt6vectorIiSaIiEE5clearEv.exit20, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19:      ; preds = %bb.j
  store ptr %i.az, ptr %i.u, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit20

_ZNSt6vectorIiSaIiEE5clearEv.exit20:              ; preds = %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !21
  %.not.i.i21 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i21, label %_ZNSt6vectorIiSaIiEE5clearEv.exit23, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i22

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i22:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit20
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit23

_ZNSt6vectorIiSaIiEE5clearEv.exit23:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit20, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i22
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !76  ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 5760
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !217
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 3608
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !218
  %.not13 = icmp sgt i32 %i.bf, %i.bh
  br i1 %.not13, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 5728
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 3620
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !219
  %.not.i24 = icmp eq i32 %i.bk, 0
  br i1 %.not.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bd)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit25

bb.m:                                             ; preds = %bb.k
  %i.bm = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bd)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit25

_ZN7CaDiCaL8Internal4timeEv.exit25:               ; preds = %bb.l, %bb.m
  %i.bn = phi double [ %i.bl, %bb.l ], [ %i.bm, %bb.m ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bd, ptr noundef nonnull align 8 dereferenceable(36) %i.bi, double noundef %i.bn)
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit23, %_ZN7CaDiCaL8Internal4timeEv.exit25, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL7Checker21add_assumption_clauseEmRKSt6vectorIiSaIiEERKS1_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.d = load ptr, ptr %0, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL7Checker4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not57 = icmp eq i64 %i.b, 0
  br i1 %.not57, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  br label %bb.b

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.029.lcssa, i64 noundef %i.f) ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not59 = icmp eq i64 %i.h, 0
  br i1 %.not59, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph43, %._crit_edge
  %.02841 = phi i64 [ 0, %.lr.ph43 ], [ %i.v, %._crit_edge ] ; 2 uses
  %.02940 = phi i32 [ 0, %.lr.ph43 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02841
  %.02735 = load ptr, ptr %i.j, align 8, !tbaa !57 ; 2 uses
  %.not3136 = icmp eq ptr %.02735, null
  br i1 %.not3136, label %._crit_edge, label %.preheader32

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader32
  %.2.lcssa = phi i32 [ %.137, %.preheader32 ], [ %i.u, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.027 = load ptr, ptr %.02738, align 8, !tbaa !57 ; 2 uses
  %.not31 = icmp eq ptr %.027, null
  br i1 %.not31, label %._crit_edge, label %.preheader32, !llvm.loop !274

.preheader32:                                     ; preds = %bb.b, %.loopexit
  %.02738 = phi ptr [ %.027, %.loopexit ], [ %.02735, %bb.b ] ; 3 uses
  %.137 = phi i32 [ %.2.lcssa, %.loopexit ], [ %.02940, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02738, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not58 = icmp eq i32 %i.l, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader32
  %i.m = getelementptr inbounds nuw i8, ptr %.02738, i64 20 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.137, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !51
  %wide.load72 = load <4 x i32>, ptr %i.o, align 4, !tbaa !51
  %i.p = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.q = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load72, i1 true)
  %i.r = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %vec.phi) ; 2 uses
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.q, <4 x i32> %vec.phi71) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.233.ph = phi i32 [ %.137, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.02940, %bb.b ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %i.v = add nuw i64 %.02841, 1                   ; 2 uses
  %exitcond62.not = icmp eq i64 %i.v, %i.b
  br i1 %exitcond62.not, label %._crit_edge44, label %bb.b, !llvm.loop !276

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.233 = phi i32 [ %spec.select, %scalar.ph ], [ %.233.ph, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %.233) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !277

._crit_edge56:                                    ; preds = %._crit_edge52, %._crit_edge44
  ret void

bb.c:                                             ; preds = %.lr.ph55, %._crit_edge52
  %i.z = phi i64 [ %i.h, %.lr.ph55 ], [ %i.af, %._crit_edge52 ]
  %.02553 = phi i64 [ 0, %.lr.ph55 ], [ %i.ag, %._crit_edge52 ] ; 2 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.02553
  %.02449 = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 2 uses
  %.not50 = icmp eq ptr %.02449, null
  br i1 %.not50, label %._crit_edge52, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge48
  %.02451 = phi ptr [ %.024, %._crit_edge48 ], [ %.02449, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02451, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %.not60 = icmp eq i32 %i.ad, 0
  br i1 %.not60, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.02451, i64 20
  br label %bb.d

._crit_edge52.loopexit:                           ; preds = %._crit_edge48
  %.pre = load i64, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %bb.c
  %i.af = phi i64 [ %.pre, %._crit_edge52.loopexit ], [ %i.z, %bb.c ] ; 2 uses
  %i.ag = add nuw i64 %.02553, 1                  ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.c, label %._crit_edge56, !llvm.loop !278

._crit_edge48:                                    ; preds = %bb.d, %.preheader
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.024 = load ptr, ptr %.02451, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %.024, null
  br i1 %.not, label %._crit_edge52.loopexit, label %.preheader, !llvm.loop !279

bb.d:                                             ; preds = %.lr.ph47, %bb.d
  %indvars.iv63 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next64, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv63
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.aj) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next64, %i.am
  br i1 %i.an, label %bb.d, label %._crit_edge48, !llvm.loop !280
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer12weaken_minusEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer10strengthenEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL7Checker13report_statusEim(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL7Checker15finalize_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL7Checker11begin_proofEm(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer14add_assumptionEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer14add_constraintERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer14conclude_unsatENS_14ConclusionTypeERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer12conclude_satERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7CaDiCaL7Checker11print_statsEv(ptr noundef nonnull align 8 dereferenceable(352)) unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #13

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN7CaDiCaL12CheckerWatchESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !285
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !77
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
end_hunk_0
begin_hunk_1_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_RT0_:bb.a
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !51
  %i.ac = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.j, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !51
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.thread.i
  %.1.i7.i = phi i64 [ %i.aj, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i7.i, %.lr.ph.i.i.i ], [ %.0920.i.i89.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51 ; 3 uses
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, %i.an
  %i.as = icmp samesign ule i32 %i.aq, %i.an
  %i.at = icmp slt i32 %i.ap, %i.f
  %spec.select.i.i.i.i.i = and i1 %i.at, %i.as
  %.0.i.i.i.i.i = select i1 %i.ar, i1 true, i1 %spec.select.i.i.i.i.i
  br i1 %.0.i.i.i.i.i, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_SC_RT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.ap, ptr %i.au, align 4, !tbaa !51
  %.not10.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_SC_RT0_.exit, label %bb.d, !llvm.loop !6

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_SC_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %bb.d ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !51
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !297

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL11lit_smallerEEEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !51
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !21
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !51
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !51
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !63}
!1 = distinct !{!1, !63}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63}
!4 = distinct !{!4, !63}
!5 = distinct !{!5, !63}
!6 = distinct !{!6, !63}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !19, i64 0}
!23 = !{!"p1 _ZTSN7CaDiCaL13CheckerClauseE", !15, i64 0}
!24 = !{!"long", !11, i64 0}
!25 = !{!"_ZTSN7CaDiCaL13CheckerClauseE", !23, i64 0, !24, i64 8, !12, i64 16, !11, i64 20}
!26 = !{!25, !23, i64 0}
!27 = !{!"_ZTSN7CaDiCaL6TracerE"}
!28 = !{!"_ZTSN7CaDiCaL14InternalTracerE", !27, i64 0}
!29 = !{!"_ZTSN7CaDiCaL10StatTracerE", !28, i64 0}
!30 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !15, i64 0}
!31 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL12CheckerWatchESaIS1_EE", !15, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL12CheckerWatchESaIS2_EESaIS4_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL12CheckerWatchESaIS1_EESaIS3_EE", !34, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !17, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIaSaIaEE", !37, i64 0}
!39 = !{!"bool", !11, i64 0}
!40 = !{!"any p2 pointer", !15, i64 0}
!41 = !{!"p2 _ZTSN7CaDiCaL13CheckerClauseE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !20, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!45 = !{!"_ZTSN7CaDiCaL7CheckerUt_E", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88}
!46 = !{!"_ZTSN7CaDiCaL7CheckerE", !29, i64 0, !30, i64 8, !24, i64 16, !16, i64 24, !35, i64 32, !38, i64 56, !39, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !41, i64 112, !23, i64 120, !44, i64 128, !44, i64 152, !44, i64 176, !12, i64 200, !11, i64 208, !24, i64 240, !24, i64 248, !45, i64 256}
!47 = !{!46, !24, i64 240}
!48 = !{!25, !24, i64 8}
!49 = !{!25, !12, i64 16}
!50 = !{!19, !19, i64 0}
!51 = !{!12, !12, i64 0}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!46, !24, i64 88}
!55 = !{!46, !16, i64 24}
!56 = !{!11, !11, i64 0}
!57 = !{!23, !23, i64 0}
!58 = !{!"p1 _ZTSN7CaDiCaL12CheckerWatchE", !15, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL12CheckerWatchESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !58, i64 0}
!62 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 8, !57}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!59, !58, i64 16}
!65 = !{!32, !31, i64 0}
!66 = !{!24, !24, i64 0}
!67 = !{!46, !24, i64 104}
!68 = !{!46, !41, i64 112}
!69 = !{!46, !24, i64 16}
!70 = !{!46, !23, i64 120}
!71 = !{!58, !58, i64 0}
!72 = !{!"_ZTSN7CaDiCaL12CheckerWatchE", !12, i64 0, !12, i64 4, !23, i64 8}
!73 = !{!72, !23, i64 8}
!74 = !{!"vtable pointer", !10, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!46, !30, i64 8}
!77 = !{!32, !31, i64 8}
!78 = !{!20, !19, i64 16}
!79 = !{!46, !24, i64 248}
!80 = !{!46, !24, i64 304}
!81 = !{!46, !12, i64 200}
!82 = !{!46, !39, i64 80}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!"_ZTSN7CaDiCaL9ReluctantE", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !39, i64 40, !39, i64 41}
!86 = !{!"p1 long", !15, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !87, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseImSaImEE", !88, i64 0}
!90 = !{!"_ZTSSt6vectorImSaImEE", !89, i64 0}
!91 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !40, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !94, i64 0}
!96 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !15, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !99, i64 0}
!101 = !{!"_ZTSN7CaDiCaL6PhasesE", !38, i64 0, !38, i64 24, !38, i64 48, !38, i64 72, !38, i64 96, !38, i64 120}
!102 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIjSaIjEE", !104, i64 0}
!106 = !{!"_ZTSN7CaDiCaL5QueueE", !12, i64 0, !12, i64 4, !12, i64 8, !24, i64 16}
!107 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !15, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !108, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !109, i64 0}
!111 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !110, i64 0}
!112 = !{!"double", !11, i64 0}
!113 = !{!"_ZTSN7CaDiCaL13score_smallerE", !30, i64 0}
!114 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !105, i64 0, !105, i64 24, !113, i64 48}
!115 = !{!"p1 double", !15, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIdSaIdEE", !118, i64 0}
!120 = !{!"p1 _ZTSN7CaDiCaL3VarE", !15, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !123, i64 0}
!125 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !15, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !128, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !130, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorIlSaIlEE", !132, i64 0}
!134 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !15, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !137, i64 0}
!139 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !15, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !142, i64 0}
!144 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !15, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !147, i64 0}
!149 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !15, i64 0}
!150 = !{!"_ZTS4Reap", !24, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 24}
!151 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !15, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!153 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !152, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !153, i64 0}
!155 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !154, i64 0}
!156 = !{!"_ZTSN7CaDiCaL3EMAE", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32}
!157 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !156, i64 0, !156, i64 40}
!158 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !156, i64 0, !156, i64 40}
!159 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !157, i64 0, !158, i64 80, !156, i64 160, !156, i64 200, !156, i64 240}
!160 = !{!"_ZTSN7CaDiCaL8AveragesE", !24, i64 0, !159, i64 8, !159, i64 288}
!161 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !12, i64 0, !12, i64 4}
!162 = !{!"_ZTSN7CaDiCaL5LimitE", !39, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !24, i64 120, !12, i64 128, !12, i64 132, !11, i64 136, !24, i64 152, !161, i64 160}
!163 = !{!"_ZTSN7CaDiCaL4LastUt_E", !24, i64 0}
!164 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !24, i64 0, !24, i64 8, !24, i64 16}
!165 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !24, i64 0, !24, i64 8}
!166 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !24, i64 0}
end_hunk_1
