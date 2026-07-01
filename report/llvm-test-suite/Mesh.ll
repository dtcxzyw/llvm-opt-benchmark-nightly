inline.NumInlined: 767
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4MeshD2Ev:bb.a
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIiSaIiEED2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4

_ZNSt6vectorIiSaIiEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12

_ZNSt6vectorIiSaIiEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIiSaIiEED2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16

_ZNSt6vectorIiSaIiEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit14, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit16, %bb.p
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7GenMeshD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN7WriteXYD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN10ExportGoldD1Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188)) unnamed_addr #9

declare void @_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((88, 112), (120, 136)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #21 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.e, ptr %i.f, align 8, !tbaa !92
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.i) #21 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.j, ptr %i.k, align 8, !tbaa !93
  %i.l = load i32, ptr %i.a, align 8, !tbaa !52
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #21 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.o, ptr %i.p, align 8, !tbaa !91
  %i.q = load i32, ptr %i.a, align 8, !tbaa !52
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #21 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.t, ptr %i.u, align 8, !tbaa !107
  %i.v = load i32, ptr %i.a, align 8, !tbaa !52
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #21 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.y, ptr %i.z, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.ad = load ptr, ptr %1, align 8, !tbaa !44
  %i.ae = load ptr, ptr %2, align 8, !tbaa !44
  %i.af = load ptr, ptr %3, align 8               ; 6 uses
  %wide.trip.count43 = zext nneg i32 %i.ab to i64
  br label %bb.b

._crit_edge37:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv40
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv40
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4  ; 5 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.al = add i32 %i.ah, -1                       ; 3 uses
  %i.am = sext i32 %i.ah to i64                   ; 8 uses
  %i.an = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.ao = icmp ne i32 %i.aj, 1
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add nsw i32 %i.ah, %i.ap                ; 2 uses
  %i.ar = add i32 %i.al, %i.aj
  %i.as = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.am
  %i.at = trunc nuw nsw i64 %indvars.iv40 to i32  ; 3 uses
  store i32 %i.at, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.am
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.am
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.am
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.am
  store i32 %i.ar, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.am
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !4
  switch i32 %i.aj, label %.peel.next.preheader.split [
    i32 1, label %._crit_edge
    i32 2, label %.peel.next.peel
  ]

.peel.next.preheader.split:                       ; preds = %.lr.ph
  %i.bd = add nsw i64 %i.an, -2
  br label %.peel.next

.peel.next.peel:                                  ; preds = %.lr.ph, %.peel.next
  %i.be = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.peel.next ] ; 3 uses
  %i.bf = add nsw i64 %i.be, %i.am                ; 6 uses
  %indvars.iv.next.peel = add nuw nsw i64 %i.be, 1 ; 2 uses
  %i.bg = icmp eq i64 %indvars.iv.next.peel, %i.an
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.peel to i32
  %i.bi = select i1 %i.bg, i32 0, i32 %i.bh
  %i.bj = add nsw i32 %i.bi, %i.ah                ; 2 uses
  %i.bk = trunc i64 %i.be to i32
  %i.bl = add i32 %i.al, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bf
  store i32 %i.at, ptr %i.bm, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bf
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bf
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %i.bq = sext i32 %i.bj to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bf
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bf
  store i32 %i.bl, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bf
  store i32 %i.bj, ptr %i.bv, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.peel.next.peel, %bb.b
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge37, label %bb.b, !llvm.loop !109

.peel.next:                                       ; preds = %.peel.next.preheader.split, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.peel.next.preheader.split ] ; 4 uses
  %i.bw = add nsw i64 %indvars.iv, %i.am          ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %4 = icmp eq i64 %indvars.iv.next, %i.an
  %i.bx = trunc nuw nsw i64 %indvars.iv.next to i32
  %5 = select i1 %4, i32 0, i32 %i.bx
  %i.by = add nsw i32 %5, %i.ah                   ; 2 uses
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = add i32 %i.al, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bw
  store i32 %i.at, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bw
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bw
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %i.cf = sext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bw
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bw
  store i32 %i.ca, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bw
  store i32 %i.by, ptr %i.ck, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv, %i.bd
  br i1 %exitcond.not, label %.peel.next.peel, label %.peel.next, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9initEdgesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.16", align 8    ; 10 uses
  %2 = alloca %"class.std::vector.16", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.e = mul nuw nsw i64 %i.c, 24                 ; 6 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !115
  store ptr %scevgep.i.i.i.i.i, ptr %i.h, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20
          to label %.noexc37 unwind label %bb.g   ; 5 uses

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 0, ptr %2, align 8
  br label %bb.b

.noexc37:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.j, ptr %2, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.e, i1 false)
  %scevgep.i.i.i.i.i32 = getelementptr i8, ptr %i.j, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.noexc37, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35
  %.pr.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %i.j, %.noexc37 ] ; 6 uses
  %.pr.i46 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %i.f, %.noexc37 ] ; 6 uses
  %i.n = phi ptr [ %i.l, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %i.i, %.noexc37 ]
  %i.o = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %i.h, %.noexc37 ]
  %i.p = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %i.m, %.noexc37 ] ; 2 uses
  %i.q = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35 ], [ %scevgep.i.i.i.i.i32, %.noexc37 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.p, ptr %i.s, align 8, !tbaa !115
  store ptr %i.q, ptr %i.r, align 8, !tbaa !116
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = tail call noalias noundef ptr @malloc(i64 noundef %i.w) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !117
  %i.z = load i32, ptr %i.t, align 8, !tbaa !52
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.h

._crit_edge:                                      ; preds = %bb.aa, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %bb.aa ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.0.lcssa, ptr %i.ad, align 8, !tbaa !58
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !118

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, %._crit_edge
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = ptrtoint ptr %.pr.i to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.an) #18
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i39 = icmp eq ptr %.pr.i46, %i.ao
  br i1 %.not4.i.i.i39, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43
  %.05.i.i.i41 = phi ptr [ %i.av, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43 ], [ %.pr.i46, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ap = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i42, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i40
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43: ; preds = %bb.e, %.lr.ph.i.i.i40
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 24 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.av, %i.ao
  br i1 %.not.i.i.i44, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, label %.lr.ph.i.i.i40, !llvm.loop !118

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %.not.i.i1.i48 = icmp eq ptr %.pr.i46, null
  br i1 %.not.i.i1.i48, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %.pr.i46 to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i46, i64 noundef %i.az) #18
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %.lr.ph, %bb.aa
  %i.bb = phi ptr [ %i.x, %.lr.ph ], [ %i.el, %bb.aa ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %.092 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 4 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bi = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bh)
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bg) ; 9 uses
  %i.bk = sext i32 %i.bi to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.pr.i46, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.bk ; 5 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !55 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
end_hunk_0
