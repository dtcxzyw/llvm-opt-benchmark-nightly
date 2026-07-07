inline.NumInlined: 1409
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10duckdb_re24Prog8OptimizeEv:bb.a
  store i32 %.sroa.0.3, ptr %i.cr, align 4, !tbaa !3
  %i.cy = sext i32 %.sroa.0.3 to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cy
  store i32 %i.cp, ptr %i.cz, align 4, !tbaa !3
  %i.da = add nsw i32 %.sroa.0.3, 1
  %.pre148 = load i32, ptr %i.bz, align 4, !tbaa !7
  br label %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit103

_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit103: ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i101, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i.i.i102, %bb.n, %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit96
  %i.db = phi i32 [ %i.cl, %bb.n ], [ %i.cl, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i.i.i102 ], [ %.pre148, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i101 ], [ %i.cl, %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit96 ] ; 3 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.n ], [ %.sroa.0.3, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.i.i.i102 ], [ %i.da, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit.thread.i.i.i101 ], [ %.sroa.0.3, %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit96 ] ; 2 uses
  %i.dc = and i32 %i.db, 7
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.p, label %.critedge66

bb.p:                                             ; preds = %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit103
  %i.de = lshr i32 %i.db, 4
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !9
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dj ; 4 uses
  %i.dl = load i32, ptr %i.dg, align 4, !tbaa !7  ; 3 uses
  %i.dm = and i32 %i.dl, 7
  %i.dn = icmp eq i32 %i.dm, 2
  %i.do = lshr i32 %i.dl, 4
  %i.dp = icmp eq i32 %i.do, %i.bx
  %or.cond112 = and i1 %i.dn, %i.dp
  br i1 %or.cond112, label %bb.q, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader

_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %bb.r, %bb.q, %bb.p
  br label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !9
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.r, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = icmp eq i8 %i.du, -1
  br i1 %i.dv, label %.preheader, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader

.preheader:                                       ; preds = %bb.r, %bb.s
  %.06.i = phi ptr [ %i.ea, %bb.s ], [ %i.dk, %bb.r ]
  %i.dw = load i32, ptr %.06.i, align 4, !tbaa !7 ; 2 uses
  %i.dx = and i32 %i.dw, 7
  switch i32 %i.dx, label %.preheader.unreachabledefault [
    i32 0, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 1, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 2, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 7, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 4, label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 3, label %bb.s
    i32 6, label %bb.s
    i32 5, label %.critedge66.sink.split
  ]

.preheader.unreachabledefault:                    ; preds = %.preheader
  unreachable

default.unreachable:                              ; preds = %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  unreachable

bb.s:                                             ; preds = %.preheader, %.preheader
  %i.dy = lshr i32 %i.dw, 4
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dz
  br label %.preheader, !llvm.loop !93

_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit: ; preds = %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader, %bb.t
  %i.eb = phi i32 [ %.pre149, %bb.t ], [ %i.dl, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader ] ; 2 uses
  %i.ec = and i32 %i.eb, 7
  switch i32 %i.ec, label %default.unreachable [
    i32 0, label %.critedge66
    i32 1, label %.critedge66
    i32 2, label %.critedge66
    i32 7, label %.critedge66
    i32 4, label %.critedge66
    i32 3, label %bb.t
    i32 6, label %bb.t
    i32 5, label %bb.u
  ]

bb.t:                                             ; preds = %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  %i.ed = lshr i32 %i.eb, 4
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ee
  %.pre149 = load i32, ptr %i.ef, align 4, !tbaa !7
  br label %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, !llvm.loop !93

bb.u:                                             ; preds = %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  %i.eg = load i32, ptr %i.dk, align 4, !tbaa !7  ; 2 uses
  %i.eh = and i32 %i.eg, 7
  %i.ei = icmp eq i32 %i.eh, 2
  %i.ej = lshr i32 %i.eg, 4
  %i.ek = icmp eq i32 %i.ej, %i.bx
  %or.cond114 = and i1 %i.ei, %i.ek
  br i1 %or.cond114, label %bb.v, label %.critedge66

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.em = load i8, ptr %i.el, align 4, !tbaa !9
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.w, label %.critedge66

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 5
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.eq = icmp eq i8 %i.ep, -1
  br i1 %i.eq, label %.critedge66.sink.split, label %.critedge66

.critedge66.sink.split:                           ; preds = %.preheader, %bb.w
  %i.er = or disjoint i32 %i.db, 1
  store i32 %i.er, ptr %i.bz, align 4, !tbaa !7
  br label %.critedge66

.critedge66:                                      ; preds = %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN10duckdb_re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %.critedge66.sink.split, %_ZN10duckdb_re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit103, %bb.u, %bb.v, %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %.056125, i64 4 ; 2 uses
  %i.et = sext i32 %.sroa.0.4 to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.et ; 2 uses
  %.not57 = icmp eq ptr %i.es, %i.eu
  br i1 %.not57, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit, label %bb.l, !llvm.loop !94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 64) i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.b = icmp eq ptr %1, %i.a                     ; 2 uses
  br i1 %i.b, label %bb.b, label %.thread61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %.thread53, label %bb.c

.thread61:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9     ; 4 uses
  %i.i = icmp eq i8 %i.h, 10
  %spec.select = zext i1 %i.i to i32              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k ; 2 uses
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread61, %bb.b
  %i.n = phi ptr [ %i.l, %.thread61 ], [ %i.e, %bb.b ]
  %.064 = phi i32 [ %spec.select, %.thread61 ], [ 5, %bb.b ] ; 3 uses
  %i.o = icmp ult ptr %1, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %1, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 10
  %i.r = or disjoint i32 %.064, 2
  %spec.select36 = select i1 %i.q, i32 %i.r, i32 %.064
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %spec.select36, %bb.d ], [ %.064, %bb.c ] ; 4 uses
  br i1 %i.b, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %1, align 1, !tbaa !9       ; 3 uses
  %i.t = and i8 %i.s, -33
  %i.u = add i8 %i.t, -65
  %or.cond15.i = icmp ult i8 %i.u, 26
  %i.v = add i8 %i.s, -48
  %or.cond8.i = icmp ult i8 %i.v, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.w = icmp eq i8 %i.s, 95
  %i.x = or i1 %i.w, %or.cond16.i
  %i.y = or i32 %.1, 16
  %spec.select37 = select i1 %i.x, i32 %i.y, i32 %.1
  br label %.thread53

bb.g:                                             ; preds = %.thread61
  %i.z = and i8 %i.h, -33
  %i.aa = add i8 %i.z, -65
  %or.cond15.i41 = icmp ult i8 %i.aa, 26
  %i.ab = add i8 %i.h, -48
  %or.cond8.i42 = icmp ult i8 %i.ab, 10
  %or.cond16.i43 = or i1 %or.cond8.i42, %or.cond15.i41
  %i.ac = icmp eq i8 %i.h, 95
  %i.ad = or i1 %i.ac, %or.cond16.i43
  %spec.select38.v = select i1 %i.ad, i32 26, i32 10
  %spec.select38 = or disjoint i32 %spec.select38.v, %spec.select
  br label %.thread53

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -1
  %i.af = load <2 x i8>, ptr %i.ae, align 1, !tbaa !9 ; 3 uses
  %i.ag = and <2 x i8> %i.af, splat (i8 -33)
  %i.ah = add <2 x i8> %i.ag, splat (i8 -65)
  %i.ai = icmp ult <2 x i8> %i.ah, splat (i8 26)
  %i.aj = add <2 x i8> %i.af, splat (i8 -48)
  %i.ak = icmp ult <2 x i8> %i.aj, splat (i8 10)
  %i.al = or <2 x i1> %i.ak, %i.ai
  %i.am = icmp eq <2 x i8> %i.af, splat (i8 95)
  %i.an = or <2 x i1> %i.am, %i.al                ; 2 uses
  %shift = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.an, %shift
  %i.ao = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %i.ap = or i32 %.1, 16
  %spec.select39 = select i1 %i.ao, i32 %i.ap, i32 %.1
  br label %.thread53

.thread53:                                        ; preds = %bb.b, %bb.h, %bb.g, %bb.f
  %.2 = phi i32 [ %spec.select37, %bb.f ], [ %spec.select38, %bb.g ], [ %spec.select39, %bb.h ], [ 15, %bb.b ] ; 2 uses
  %i.aq = shl nuw nsw i32 %.2, 1
  %i.ar = and i32 %i.aq, 32
  %i.as = xor i32 %i.ar, 32
  %spec.select40 = or i32 %i.as, %.2
  ret i32 %spec.select40
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re214ByteMapBuilder4MarkEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1112) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 255
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.e, align 4, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %i.h, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !98
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !105  ; 7 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store i32 %1, ptr %i.v, align 4, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %2, ptr %i.w, align 4, !tbaa !104
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = sub i64 %i.k, %i.l
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  %i.ac = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond10 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond10, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 4, !alias.scope !109, !noalias !106
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !109, !noalias !106
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !106, !noalias !109
  store <2 x i64> %wide.load8, ptr %i.ai, align 4, !alias.scope !106, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.preheader11:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !109, !noalias !106
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !106, !noalias !109
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !114

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !105
  store ptr %i.an, ptr %i.d, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !101
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEEvDpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  %.not33 = icmp eq ptr %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %i.bd, %bb.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.h, ptr %i.i, align 8, !tbaa !98
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit:    ; preds = %._crit_edge, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.f, %i.k
  br i1 %.not.i.i23, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit
  store ptr %i.k, ptr %i.c, align 8, !tbaa !98
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25:  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.027.034 = phi ptr [ %i.b, %.lr.ph ], [ %i.bd, %bb.i ] ; 3 uses
  %i.l = load i32, ptr %.sroa.027.034, align 4, !tbaa !102 ; 4 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.027.034, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !104  ; 5 uses
  %i.p = icmp sgt i32 %i.l, 0
  br i1 %i.p, label %bb.c, label %bb.e

end_hunk_0
