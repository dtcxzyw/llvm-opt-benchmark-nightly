Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_th?download=true
inline.NumInlined: 393
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE:bb.a
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !12
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  %i.an = load i32, ptr %i.al, align 4, !tbaa !12
  store i32 %i.an, ptr %i.am, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i.1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.1
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !12
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !12
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i.2
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.2
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !12
  store i32 %i.at, ptr %i.as, align 4, !tbaa !12
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.h
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !533

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.a
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.i, %.lr.ph.i.i ], [ %i.i, %.lr.ph.i.i.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %.pre-phi.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.au, ptr %i.av, align 8, !tbaa !512
  %.not42.i.i = icmp eq i32 %3, 0
  br i1 %.not42.i.i, label %_ZN3euf10th_explain2mkERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_ES4_S9_S9_PKNS_13th_proof_hintE.exit, label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %._crit_edge.i.i, %bb.c
  %indvars.iv44.i.i = phi i64 [ %indvars.iv.next45.i.i, %bb.c ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv44.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv44.i.i ; 3 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !497 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !497
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !499 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !499
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !500
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !66
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !500
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = icmp ugt i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph39.i.i
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !68
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph39.i.i
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i, 1 ; 2 uses
  %exitcond48.not.i.i = icmp eq i64 %indvars.iv.next45.i.i, %i.j
  br i1 %exitcond48.not.i.i, label %_ZN3euf10th_explain2mkERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_ES4_S9_S9_PKNS_13th_proof_hintE.exit, label %.lr.ph39.i.i, !llvm.loop !513

_ZN3euf10th_explain2mkERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_ES4_S9_S9_PKNS_13th_proof_hintE.exit: ; preds = %bb.c, %._crit_edge.i.i
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN3euf10th_explain8conflictERNS_13th_euf_solverERK7svectorISt4pairIPNS_5enodeES6_EjEPKNS_13th_proof_hintE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !519    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  br label %_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit

_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50, !nonnull !64, !align !65 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8528) %i.f), !inline_history !527
  %i.k = zext i32 %.0.i to i64                    ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = add nuw nsw i64 %i.l, 64
  %i.n = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 noundef %i.m) ; 9 uses
  store ptr %0, ptr %i.n, align 8, !tbaa !514
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 -2, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.q, align 8, !tbaa !501
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 0, ptr %i.r, align 8, !tbaa !504
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  store i32 %.0.i, ptr %i.s, align 4, !tbaa !505
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.t, ptr %i.u, align 8, !tbaa !506
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.t, ptr %i.v, align 8, !tbaa !512
  %.not42.i.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not42.i.i.i, label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit, label %.lr.ph39.i.i.i

.lr.ph39.i.i.i:                                   ; preds = %_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit, %bb.d
  %indvars.iv44.i.i.i = phi i64 [ %indvars.iv.next45.i.i.i, %bb.d ], [ 0, %_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv44.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv44.i.i.i ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !497  ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !497
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !499 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !499
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !500
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !66
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !500
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !66
  %i.ag = icmp ugt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph39.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !68
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph39.i.i.i
  %indvars.iv.next45.i.i.i = add nuw nsw i64 %indvars.iv44.i.i.i, 1 ; 2 uses
  %exitcond48.not.i.i.i = icmp eq i64 %indvars.iv.next45.i.i.i, %i.k
  br i1 %exitcond48.not.i.i.i, label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit, label %.lr.ph39.i.i.i, !llvm.loop !513

_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit: ; preds = %bb.d, %_ZNK6vectorISt4pairIPN3euf5enodeES3_ELb0EjE4sizeEv.exit
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN3euf10th_explain8conflictERNS_13th_euf_solverEN3sat7literalEPKNS_13th_proof_hintE(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !64, !align !65 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8528) %i.b), !inline_history !527
  %i.g = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef 68) ; 10 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !514
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 -2, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.j, align 8, !tbaa !501
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1, ptr %i.k, align 8, !tbaa !504
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !505
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !506
  store i32 %1, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !512
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN3euf10th_explain8conflictERNS_13th_euf_solverEN3sat7literalEPNS_5enodeES6_PKNS_13th_proof_hintE(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !64, !align !65 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8528) %i.b), !inline_history !527
  %i.g = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef 84) ; 12 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !514
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 -2, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.j, align 8, !tbaa !501
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1, ptr %i.k, align 8, !tbaa !504
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 1, ptr %i.l, align 4, !tbaa !505
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !506
  store i32 %1, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !512
  %i.q = load ptr, ptr %2, align 8, !tbaa !500
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66
  %i.s = load ptr, ptr %3, align 8, !tbaa !500
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66
  %i.u = icmp ugt i32 %i.r, %i.t
  br i1 %i.u, label %.lr.ph39.i.i.i.us.preheader, label %.lr.ph39.i.i.i.preheader

.lr.ph39.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i
  store ptr %2, ptr %i.o, align 8, !tbaa !497
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store ptr %3, ptr %5, align 8, !tbaa !499
  br label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit

.lr.ph39.i.i.i.us.preheader:                      ; preds = %.lr.ph.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store ptr %3, ptr %i.o, align 8, !tbaa !68
  store ptr %2, ptr %6, align 8, !tbaa !68
  br label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit

_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit: ; preds = %.lr.ph39.i.i.i.preheader, %.lr.ph39.i.i.i.us.preheader
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN3euf10th_explain8conflictERNS_13th_euf_solverEPNS_5enodeES4_PKNS_13th_proof_hintE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !64, !align !65 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8528) %i.b), !inline_history !527
  %i.g = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef 80) ; 11 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !514
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 -2, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.j, align 8, !tbaa !501
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !504
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 1, ptr %i.l, align 4, !tbaa !505
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !506
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.m, ptr %i.o, align 8, !tbaa !512
  %i.p = load ptr, ptr %1, align 8, !tbaa !500
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66
  %i.r = load ptr, ptr %2, align 8, !tbaa !500
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %.lr.ph39.i.i.i.us.preheader, label %.lr.ph39.i.i.i.preheader

.lr.ph39.i.i.i.preheader:                         ; preds = %bb.a
  store ptr %1, ptr %i.m, align 8, !tbaa !497
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %2, ptr %4, align 8, !tbaa !499
  br label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit

.lr.ph39.i.i.i.us.preheader:                      ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %2, ptr %i.m, align 8, !tbaa !68
  store ptr %1, ptr %5, align 8, !tbaa !68
  br label %_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit

_ZN3euf10th_explain8conflictERNS_13th_euf_solverEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_EPKNS_13th_proof_hintE.exit: ; preds = %.lr.ph39.i.i.i.preheader, %.lr.ph39.i.i.i.us.preheader
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3euf10th_explain7displayERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !506  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !504  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3satlsERSoNS_7literalE.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !512  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !505  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx47 = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx47
  %.not2742 = icmp eq i32 %i.j, 0
  br i1 %.not2742, label %._crit_edge46, label %.lr.ph45

.lr.ph:                                           ; preds = %bb.a, %_ZN3satlsERSoNS_7literalE.exit
  %.041 = phi ptr [ %i.w, %_ZN3satlsERSoNS_7literalE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.012.0.copyload = load i32, ptr %.041, align 4, !tbaa !12 ; 4 uses
  %i.m = icmp eq i32 %.sroa.012.0.copyload, -2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = trunc i32 %.sroa.012.0.copyload to i1
  %i.p = select i1 %i.o, ptr @.str.9, ptr @.str.10
  %.mask.i = and i32 %.sroa.012.0.copyload, 1
  %i.q = zext nneg i32 %.mask.i to i64
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.p, i64 noundef %i.q) ; 0 uses
  %i.s = lshr i32 %.sroa.012.0.copyload, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.t) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.b, %bb.c
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge46:                                    ; preds = %.lr.ph45, %._crit_edge
  %i.x = load i32, ptr %0, align 8, !tbaa !534
  %.not39 = icmp eq i32 %i.x, -2
  br i1 %.not39, label %_ZN3satlsERSoNS_7literalE.exit31, label %bb.d

.lr.ph45:                                         ; preds = %._crit_edge, %.lr.ph45
  %.02643 = phi ptr [ %i.ai, %.lr.ph45 ], [ %i.h, %._crit_edge ] ; 3 uses
  %.sroa.034.0.copyload = load ptr, ptr %.02643, align 8
  %.sroa.4.0..026.sroa_idx = getelementptr inbounds nuw i8, ptr %.02643, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..026.sroa_idx, align 8
  %i.y = load ptr, ptr %.sroa.034.0.copyload, align 8, !tbaa !500
  %i.z = load i32, ptr %i.y, align 4, !tbaa !66
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aa) ; 2 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !500
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !66
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.af)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02643, i64 16 ; 2 uses
  %.not27 = icmp eq ptr %i.ai, %i.l
  br i1 %.not27, label %._crit_edge46, label %.lr.ph45

bb.d:                                             ; preds = %._crit_edge46
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 4) ; 0 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 8, !tbaa !12 ; 4 uses
  %i.ak = icmp eq i32 %.sroa.0.0.copyload, -2
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit31

bb.f:                                             ; preds = %bb.d
  %i.am = trunc i32 %.sroa.0.0.copyload to i1
  %i.an = select i1 %i.am, ptr @.str.9, ptr @.str.10
  %.mask.i30 = and i32 %.sroa.0.0.copyload, 1
  %i.ao = zext nneg i32 %.mask.i30 to i64
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.an, i64 noundef %i.ao) ; 0 uses
  %i.aq = lshr i32 %.sroa.0.0.copyload, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ar) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit31

_ZN3satlsERSoNS_7literalE.exit31:                 ; preds = %bb.f, %bb.e, %._crit_edge46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload33 = load ptr, ptr %i.at, align 8 ; 2 uses
  %.not28 = icmp eq ptr %.sroa.0.0.copyload33, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3satlsERSoNS_7literalE.exit31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 4) ; 0 uses
  %i.av = load ptr, ptr %.sroa.0.0.copyload33, align 8, !tbaa !500
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !66
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  %i.ba = load ptr, ptr %.sroa.5.0.copyload, align 8, !tbaa !500
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !66
  %i.bc = zext i32 %i.bb to i64
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.bc) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3satlsERSoNS_7literalE.exit31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !501
  %.not29 = icmp eq ptr %i.bf, null
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3euf9th_solverD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3euf15th_internalizerE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6vectorIN3sat6eframeELb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN6vectorIN3sat6eframeELb0EjED2Ev.exit.i unwind label %bb.c, !inline_history !535

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30, !inline_history !535
  unreachable

_ZN6vectorIN3sat6eframeELb0EjED2Ev.exit.i:        ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZN3euf15th_internalizerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN3sat6eframeELb0EjED2Ev.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN3euf15th_internalizerD2Ev.exit unwind label %bb.e, !inline_history !535

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30, !inline_history !535
  unreachable

_ZN3euf15th_internalizerD2Ev.exit:                ; preds = %_ZN6vectorIN3sat6eframeELb0EjED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3euf9th_solverD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3sat9extension10set_solverEPNS_6solverE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3sat9extension13set_lookaheadEPNS_9lookaheadE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
end_hunk_0
