Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/checker?download=true
inline.NumInlined: 610
inline.NumDeleted: 239
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL7Checker12tautologicalEv:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.01535 = phi i32 [ 0, %.lr.ph ], [ %.217, %bb.f ] ; 3 uses
  %.sroa.021.034 = phi ptr [ %.pre38, %.lr.ph ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.024.033 = phi ptr [ %.pre38, %.lr.ph ], [ %.sroa.024.1, %bb.f ] ; 3 uses
  %i.m = load i32, ptr %.sroa.021.034, align 4, !tbaa !51 ; 5 uses
  %i.n = icmp eq i32 %i.m, %.01535
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 0, %.01535
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56
  %i.u = icmp sgt i8 %i.t, 0
  br i1 %i.u, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.024.033, i64 4
  store i32 %i.m, ptr %.sroa.024.033, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.sroa.024.1 = phi ptr [ %.sroa.024.033, %bb.b ], [ %i.v, %bb.e ] ; 3 uses
  %.217 = phi i32 [ %.01535, %bb.b ], [ %i.m, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.034, i64 4 ; 2 uses
  %.not37 = icmp eq ptr %i.w, %.pre
  br i1 %.not37, label %.critedge.loopexit, label %bb.b, !llvm.loop !251

.critedge.loopexit:                               ; preds = %bb.f
  %.pre39 = ptrtoint ptr %.sroa.024.1 to i64
  %i.x = icmp eq ptr %.pre, %.sroa.024.1
  br label %.critedge

.critedge:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread, %.critedge.loopexit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit
  %.cast52 = phi i64 [ %.cast, %.critedge.loopexit ], [ %.cast, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit ], [ %.cast50, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread ] ; 2 uses
  %i.y = phi ptr [ %.pre, %.critedge.loopexit ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit ], [ %i.b, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread ]
  %i.z = phi ptr [ %.pre38, %.critedge.loopexit ], [ %.pre38, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit ], [ %i.b, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread ]
  %.pre-phi = phi i64 [ %.pre39, %.critedge.loopexit ], [ %.cast, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit ], [ %.cast50, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread ]
  %.sroa.024.0.lcssa = phi i1 [ %i.x, %.critedge.loopexit ], [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit ], [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL11lit_smallerEEvT_S9_T0_.exit.thread ]
  %i.aa = sub i64 %.pre-phi, %.cast52             ; 2 uses
  %i.ab = ashr exact i64 %i.aa, 2                 ; 3 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ac, %.cast52
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ag = sub nuw nsw i64 %i.ab, %i.ae
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ag)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.h:                                             ; preds = %.critedge
  %i.ah = icmp uge i64 %i.ab, %i.ae
  %or.cond = or i1 %i.ah, %.sroa.024.0.lcssa
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.d, %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.h, %bb.g
  %i.aj = phi i1 [ false, %bb.g ], [ false, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ false, %bb.h ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZN7CaDiCaL7Checker12compute_hashEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = and i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66
  %i.g = mul i64 %i.f, %i.b                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.g, ptr %i.h, align 8, !tbaa !47
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7CaDiCaL7Checker4findEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !254
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %i.f = and i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = mul i64 %i.i, %i.e                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.fr65 = freeze i64 %i.r
  %i.s = lshr i64 %.fr65, 2                       ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67   ; 3 uses
  %i.w = icmp ult i64 %i.v, 4294967296
  br i1 %i.w, label %.lr.ph.i, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.x = phi i64 [ %i.ab, %.lr.ph.i ], [ 32, %bb.a ]
  %.014.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.j, %bb.a ] ; 2 uses
  %.01013.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 32, %bb.a ]
  %i.y = lshr i64 %.014.i, %i.x
  %i.z = xor i64 %i.y, %.014.i                    ; 2 uses
  %i.aa = lshr i32 %.01013.i, 1                   ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %.highbits.i = lshr i64 %i.v, %i.ab
  %i.ac = icmp eq i64 %.highbits.i, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit, !llvm.loop !1

_ZN7CaDiCaL7Checker11reduce_hashEmm.exit:         ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ %i.j, %bb.a ], [ %i.z, %.lr.ph.i ]
  %i.ad = add i64 %i.v, -1
  %i.ae = and i64 %.0.lcssa.i, %i.ad
  %.not4244 = icmp eq ptr %i.o, %i.n
  br i1 %.not4244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ae ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57 ; 3 uses
  %.not50 = icmp eq ptr %i.aj, null
  br i1 %.not50, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge
  %.not66 = icmp eq i32 %i.t, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  br i1 %.not66, label %.lr.ph53.split.preheader, label %.lr.ph53.split.us.preheader

.lr.ph53.split.preheader:                         ; preds = %.lr.ph53
  %.promoted89 = load i64, ptr %i.al, align 8
  br label %.lr.ph53.split

.lr.ph53.split.us.preheader:                      ; preds = %.lr.ph53
  %i.am = and i64 %i.s, 4294967295
  %i.an = load ptr, ptr %i.ak, align 8
  %.promoted = load i64, ptr %i.al, align 8
  br label %.lr.ph53.split.us

.lr.ph53.split.us:                                ; preds = %.lr.ph53.split.us.preheader, %bb.d
  %i.ao = phi i64 [ %i.bg, %bb.d ], [ %.promoted, %.lr.ph53.split.us.preheader ]
  %i.ap = phi ptr [ %i.bh, %bb.d ], [ %i.aj, %.lr.ph53.split.us.preheader ] ; 6 uses
  %.051.us = phi ptr [ %i.ap, %bb.d ], [ %i.ai, %.lr.ph53.split.us.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  %i.as = icmp eq i64 %i.ar, %i.j
  br i1 %i.as, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph53.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !49
  %i.av = icmp eq i32 %i.au, %i.t
  br i1 %i.av, label %.lr.ph48.us, label %bb.d

.lr.ph48.us:                                      ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph48.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !51 ; 2 uses
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = shl nuw i32 %i.az, 1
  %.inv.i.i29.us = icmp sgt i32 %i.ay, -1
  %spec.select.v.i.i30.us = select i1 %.inv.i.i29.us, i32 -2, i32 -1
  %spec.select.i.i31.us = add i32 %i.ba, %spec.select.v.i.i30.us
  %i.bb = zext i32 %spec.select.i.i31.us to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.be = icmp ne i8 %i.bd, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = icmp ne i64 %indvars.iv.next, %i.am
  %1 = and i1 %i.be, %i.bf
  br i1 %1, label %bb.c, label %._crit_edge49.us, !llvm.loop !252

bb.d:                                             ; preds = %._crit_edge49.us, %bb.b, %.lr.ph53.split.us
  %i.bg = add nsw i64 %i.ao, 1                    ; 2 uses
  store i64 %i.bg, ptr %i.al, align 8, !tbaa !255
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %.not.us = icmp eq ptr %i.bh, null
  br i1 %.not.us, label %._crit_edge54, label %.lr.ph53.split.us, !llvm.loop !253

._crit_edge49.us:                                 ; preds = %bb.c
  br i1 %i.be, label %._crit_edge54, label %bb.d

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.039.045 = phi ptr [ %i.o, %.lr.ph ], [ %i.bo, %bb.e ] ; 2 uses
  %i.bi = load i32, ptr %.sroa.039.045, align 4, !tbaa !51 ; 2 uses
  %i.bj = tail call i32 @llvm.abs.i32(i32 %i.bi, i1 true)
  %i.bk = shl nuw i32 %i.bj, 1
  %.inv.i.i = icmp sgt i32 %i.bi, -1
  %spec.select.v.i.i = select i1 %.inv.i.i, i32 -2, i32 -1
  %spec.select.i.i = add i32 %i.bk, %spec.select.v.i.i
  %i.bl = zext i32 %spec.select.i.i to i64
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 1, ptr %i.bn, align 1, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.039.045, i64 4 ; 2 uses
  %.not42 = icmp eq ptr %i.bo, %i.n
  br i1 %.not42, label %._crit_edge, label %bb.e

.lr.ph53.split:                                   ; preds = %.lr.ph53.split.preheader, %bb.g
  %i.bp = phi i64 [ %i.bx, %bb.g ], [ %.promoted89, %.lr.ph53.split.preheader ]
  %i.bq = phi ptr [ %i.by, %bb.g ], [ %i.aj, %.lr.ph53.split.preheader ] ; 5 uses
  %.051 = phi ptr [ %i.bq, %bb.g ], [ %i.ai, %.lr.ph53.split.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !48
  %i.bt = icmp eq i64 %i.bs, %i.j
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph53.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !49
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %._crit_edge54, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph53.split
  %i.bx = add nsw i64 %i.bp, 1                    ; 2 uses
  store i64 %i.bx, ptr %i.al, align 8, !tbaa !255
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %._crit_edge54, label %.lr.ph53.split, !llvm.loop !253

._crit_edge54:                                    ; preds = %bb.d, %._crit_edge49.us, %bb.g, %bb.f, %._crit_edge
  %.0.lcssa = phi ptr [ %i.ai, %._crit_edge ], [ %.051, %bb.f ], [ %i.bq, %bb.g ], [ %i.ap, %bb.d ], [ %.051.us, %._crit_edge49.us ]
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !50  ; 2 uses
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %.not4359 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4359, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge54
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.h

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge54
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %.lr.ph62, %bb.h
  %.sroa.035.060 = phi ptr [ %i.bz, %.lr.ph62 ], [ %i.ci, %bb.h ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.035.060, align 4, !tbaa !51 ; 2 uses
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = shl nuw i32 %i.cd, 1
  %.inv.i.i32 = icmp sgt i32 %i.cc, -1
  %spec.select.v.i.i33 = select i1 %.inv.i.i32, i32 -2, i32 -1
  %spec.select.i.i34 = add i32 %i.ce, %spec.select.v.i.i33
  %i.cf = zext i32 %spec.select.i.i34 to i64
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.035.060, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %i.ci, %i.ca
  br i1 %.not43, label %._crit_edge63, label %bb.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL7Checker6insertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Checker15enlarge_clausesEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.l = and i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !66
  %i.p = mul i64 %i.o, %i.k                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.p, ptr %i.q, align 8, !tbaa !47
  %i.r = icmp ult i64 %i.i, 4294967296
  br i1 %i.r, label %.lr.ph.i, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.s = phi i64 [ %i.w, %.lr.ph.i ], [ 32, %bb.c ]
  %.014.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  %.01013.i = phi i32 [ %i.v, %.lr.ph.i ], [ 32, %bb.c ]
  %i.t = lshr i64 %.014.i, %i.s
  %i.u = xor i64 %i.t, %.014.i                    ; 2 uses
  %i.v = lshr i32 %.01013.i, 1                    ; 2 uses
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %.highbits.i = lshr i64 %i.i, %i.w
  %i.x = icmp eq i64 %.highbits.i, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZN7CaDiCaL7Checker11reduce_hashEmm.exit, !llvm.loop !1

_ZN7CaDiCaL7Checker11reduce_hashEmm.exit:         ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.p, %bb.c ], [ %i.u, %.lr.ph.i ]
  %i.y = add i64 %i.i, -1
  %i.z = and i64 %.0.lcssa.i, %i.y
  %i.aa = tail call noundef ptr @_ZN7CaDiCaL7Checker10new_clauseEv(ptr noundef nonnull align 8 dereferenceable(352) %0) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !26
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL7Checker9backtrackEj(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, %i.c
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.d, %.lr.ph ], [ %i.w, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51   ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.p = sub nsw i32 0, %i.n
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !56
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.t = sext i32 %i.n to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !56
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !21
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.c
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa5 = phi i64 [ %i.i, %bb.a ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ad = icmp samesign ult i64 %.lcssa5, %i.c
  br i1 %i.ad, label %bb.c, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ae = sub nuw nsw i64 %i.c, %.lcssa5
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._crit_edge, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %1, ptr %i.af, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
