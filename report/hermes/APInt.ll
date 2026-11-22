Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb:bb.a
  br i1 %i.a, label %bb.f, label %bb.g

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 3 uses
  %.06985 = phi i64 [ %.3, %bb.e ], [ %3, %.lr.ph.split ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !33 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = mul nuw i64 %i.bm, %i.c                 ; 2 uses
  %i.bo = lshr i64 %i.bk, 32                      ; 2 uses
  %i.bp = mul nuw i64 %i.bo, %i.d
  %i.bq = mul nuw i64 %i.bm, %i.d                 ; 2 uses
  %i.br = lshr i64 %i.bq, 32
  %i.bs = add nuw i64 %i.br, %i.bp
  %i.bt = shl i64 %i.bq, 32
  %i.bu = add i64 %i.bt, %i.bn                    ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.bn
  %i.bw = zext i1 %i.bv to i64
  %i.bx = mul nuw i64 %i.bo, %i.c                 ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = shl i64 %i.bx, 32
  %i.ca = add i64 %i.bu, %i.bz                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.bu
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add i64 %i.ca, %.06985                  ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.ca
  %i.cf = zext i1 %i.ce to i64
  %spec.select = add nuw i64 %i.bs, %i.by
  %i.cg = add nuw i64 %spec.select, %i.bw
  %.1 = add nuw i64 %i.cg, %i.cc
  %.2 = add i64 %.1, %i.cf
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split, %bb.d
  %.065 = phi i64 [ %i.cd, %bb.d ], [ %.06985, %.lr.ph.split.split ]
  %.3 = phi i64 [ %.2, %bb.d ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %.065, ptr %i.ch, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count121
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !6

bb.f:                                             ; preds = %._crit_edge
  %i.ci = zext i32 %4 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ci
  store i64 %.069.lcssa, ptr %i.cj, align 8, !tbaa !33
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %.069.lcssa, 0
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.not74 = icmp ne i64 %2, 0
  %.not7696 = icmp ult i32 %5, %4
  %or.cond = and i1 %.not74, %.not7696
  br i1 %or.cond, label %.lr.ph98.preheader, label %.critedge

.lr.ph98.preheader:                               ; preds = %bb.h
  %i.ck = zext i32 %5 to i64
  %wide.trip.count126 = zext i32 %4 to i64
  br label %.lr.ph98

bb.i:                                             ; preds = %.lr.ph98
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %.lr.ph98, !llvm.loop !134

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.i
  %indvars.iv123 = phi i64 [ %i.ck, %.lr.ph98.preheader ], [ %indvars.iv.next124, %bb.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv123
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !33
  %.not75 = icmp eq i64 %i.cm, 0
  br i1 %.not75, label %bb.i, label %.critedge

.critedge:                                        ; preds = %.lr.ph98, %bb.i, %bb.h, %bb.g, %bb.f
  %.168 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %.lr.ph98 ], [ 0, %bb.i ]
  ret i32 %.168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt13EqualSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 !guid !136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 3
  %.idx = and i64 %i.e, 1073741816                ; 2 uses
  %.not.not.i.i.i.i = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.i.i.i.i, label %_ZSt5equalIPmS0_EbT_S1_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = load ptr, ptr %1, align 8, !tbaa !31
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.g, i64 %.idx)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_ZSt5equalIPmS0_EbT_S1_T0_.exit

_ZSt5equalIPmS0_EbT_S1_T0_.exit:                  ; preds = %bb.a, %bb.b
  %spec.select.i.i.i.i = phi i1 [ %.not9.i.i.i.i, %bb.b ], [ true, %bb.a ]
  ret i1 %spec.select.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZNK4llvh5APInt7compareERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 !guid !137 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !31
  %i.e = load i64, ptr %1, align 8, !tbaa !31
  %i.f = tail call i32 @llvm.ucmp.i32.i64(i64 %i.d, i64 %i.e)
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !31
  %i.h = load ptr, ptr %1, align 8, !tbaa !31
  %i.i = zext i32 %i.b to i64
  %i.j = add nuw nsw i64 %i.i, 63
  %i.k = lshr i64 %i.j, 6                         ; 2 uses
  %.not.i13 = icmp eq i64 %i.k, 0
  br i1 %.not.i13, label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i14 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %i.l = add nsw i64 %indvars.iv.i14, -1          ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %.not13.i = icmp eq i64 %i.n, %i.p
  br i1 %.not13.i, label %bb.d, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp ugt i64 %i.n, %i.p
  %i.r = select i1 %i.q, i32 1, i32 -1
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

_ZN4llvh5APInt9tcCompareEPKmS2_j.exit:            ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 align 2 !guid !138 {
bb.a:
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv21 = phi i64 [ %i.a, %.lr.ph ], [ %i.b, %bb.b ]
  %i.b = add nsw i64 %indvars.iv21, -1            ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not13 = icmp eq i64 %i.d, %i.f
  br i1 %.not13, label %bb.b, label %bb.d, !llvm.loop !7

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i64 %i.d, %i.f
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.010 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZNK4llvh5APInt13compareSignedERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 !guid !139 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !31
  %i.e = sub nuw nsw i32 64, %i.b
  %i.f = zext nneg i32 %i.e to i64                ; 4 uses
  %i.g = shl i64 %i.d, %i.f
  %2 = ashr exact i64 %i.g, %i.f
  %i.h = load i64, ptr %1, align 8, !tbaa !31
  %i.i = shl i64 %i.h, %i.f
  %3 = ashr exact i64 %i.i, %i.f
  %i.j = tail call i32 @llvm.scmp.i32.i64(i64 %2, i64 %3)
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

bb.c:                                             ; preds = %bb.a
  %i.k = add i32 %i.b, -1                         ; 2 uses
  %i.l = and i32 %i.k, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = lshr i32 %i.k, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = and i64 %i.s, %i.n
  %i.u = icmp ne i64 %i.t, 0                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = add i32 %i.w, -1                         ; 2 uses
  %i.y = and i32 %i.x, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = icmp ult i32 %i.w, 65
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %i.ad = lshr i32 %i.x, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %.in.i.i.i11 = select i1 %i.ab, ptr %1, ptr %i.af
  %i.ag = load i64, ptr %.in.i.i.i11, align 8, !tbaa !31
  %i.ah = and i64 %i.aa, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = xor i1 %i.u, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = select i1 %i.u, i32 -1, i32 1
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

bb.e:                                             ; preds = %bb.c
  %i.al = zext i32 %i.b to i64
  %i.am = add nuw nsw i64 %i.al, 63
  %i.an = lshr i64 %i.am, 6                       ; 2 uses
  %.not.i19 = icmp eq i64 %i.an, 0
  br i1 %.not.i19, label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i20 = phi i64 [ %i.ao, %bb.f ], [ %i.an, %bb.e ]
  %i.ao = add nsw i64 %indvars.iv.i20, -1         ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ao
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %.not13.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not13.i, label %bb.f, label %bb.g, !llvm.loop !7

bb.g:                                             ; preds = %.lr.ph
  %i.at = icmp ugt i64 %i.aq, %i.as
  %i.au = select i1 %i.at, i32 1, i32 -1
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

_ZN4llvh5APInt9tcCompareEPKmS2_j.exit:            ; preds = %bb.f, %bb.e, %bb.g, %bb.d, %bb.b
  %.1 = phi i32 [ %i.j, %bb.b ], [ %i.ak, %bb.d ], [ %i.au, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt15setBitsSlowCaseEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !guid !142 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 4 uses
  %i.b = lshr i32 %2, 6                           ; 4 uses
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d                     ; 3 uses
  %i.f = and i32 %2, 63                           ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i32 64, %i.f
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h                        ; 2 uses
  %i.j = icmp eq i32 %i.b, %i.a
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = zext nneg i32 %i.b to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  %i.p = or i64 %i.o, %i.i
  store i64 %i.p, ptr %i.n, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ %i.e, %bb.a ], [ %i.k, %bb.c ], [ %i.e, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !31
  %i.r = zext nneg i32 %i.a to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = or i64 %i.t, %.1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !33
  %.022 = add nuw nsw i32 %i.a, 1
  %i.v = icmp samesign ult i32 %.022, %i.b
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.w = lshr i32 %1, 6                           ; 2 uses
  %narrow = add nuw nsw i32 %i.w, 1
  %i.x = zext nneg i32 %narrow to i64             ; 2 uses
  %i.y = add nuw nsw i32 %i.b, %i.w
  %i.z = sub nsw i32 %i.y, %i.a
  %wide.trip.count = zext i32 %i.z to i64         ; 3 uses
  %i.aa = lshr i32 %1, 6
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = xor i64 %i.ab, -1
  %i.ad = add nsw i64 %i.ac, %wide.trip.count
  %i.ae = add nsw i64 %wide.trip.count, -2
  %i.af = sub nsw i64 %i.ae, %i.ab
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.prol
  store i64 -1, ptr %i.ah, align 8, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !140

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ai = icmp ult i64 %i.af, 3
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.e
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store i64 -1, ptr %i.ak, align 8, !tbaa !33
  %i.al = load ptr, ptr %0, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 -1, ptr %i.an, align 8, !tbaa !33
  %i.ao = load ptr, ptr %0, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 -1, ptr %i.aq, align 8, !tbaa !33
  %i.ar = load ptr, ptr %0, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 -1, ptr %i.at, align 8, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt19flipAllBitsSlowCaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 !guid !145 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6                         ; 5 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh5APInt12tcComplementEPmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.c, 193
  br i1 %min.iters.check, label %.lr.ph.i.preheader2, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !33
  %wide.load1 = load <2 x i64>, ptr %i.h, align 8, !tbaa !33
  %i.i = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.j = xor <2 x i64> %wide.load1, splat (i64 -1)
  store <2 x i64> %i.i, ptr %i.g, align 8, !tbaa !33
  store <2 x i64> %i.j, ptr %i.h, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_0
