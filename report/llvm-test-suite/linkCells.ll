Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linkCells?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@putAtomInBox:bb.a
  %i.bd = add nsw i32 %i.av, %i.bc
  %i.be = add nsw i32 %i.bb, 1
  store i32 %i.be, ptr %i.au, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.bh = sext i32 %i.bd to i64                   ; 4 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  store i32 %2, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bh
  store i32 %3, ptr %i.bl, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bn, i64 %i.bh ; 3 uses
  store double %4, ptr %i.bo, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store double %5, ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store double %6, ptr %i.bq, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bs, i64 %i.bh ; 3 uses
  store double %7, ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store double %8, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store double %9, ptr %i.bv, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @moveAtom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = shl nsw i32 %3, 6                        ; 2 uses
  %i.g = add nsw i32 %i.f, %2
  %i.h = shl nsw i32 %4, 6
  %i.i = add nsw i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = sext i32 %i.g to i64                     ; 12 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sext i32 %i.i to i64                     ; 6 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o
  store i32 %i.n, ptr %i.p, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.l
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.o
  %i.y = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.o
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.o
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.l
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.c ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  %i.aq = sext i32 %3 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, -1                   ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = add nsw i32 %i.at, %i.f
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %i.aw = sext i32 %i.au to i64                   ; 6 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.l
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.l
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.be, i64 %i.l
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.be, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.l
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.l
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.l
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aw
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  %i.bt = icmp sgt i32 %4, %i.bs
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = load i32, ptr %1, align 8, !tbaa !19
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %1, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateLinkCells(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %emptyHaloCells.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %bb.b, label %emptyHaloCells.exit.loopexit

emptyHaloCells.exit.loopexit:                     ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %emptyHaloCells.exit

emptyHaloCells.exit:                              ; preds = %emptyHaloCells.exit.loopexit, %bb.a
  %i.m = phi i32 [ %.pre, %emptyHaloCells.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %emptyHaloCells.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.pre27 = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %bb.c

._crit_edge25:                                    ; preds = %._crit_edge, %emptyHaloCells.exit
  ret void

bb.c:                                             ; preds = %.lr.ph24, %._crit_edge
  %i.ad = phi i32 [ %i.m, %.lr.ph24 ], [ %i.gp, %._crit_edge ] ; 8 uses
  %i.ae = phi ptr [ %.pre27, %.lr.ph24 ], [ %i.gq, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %2 = shl nuw i32 %indvars.iv.tr, 6              ; 2 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %moveAtom.exit
  %i.ai = phi i32 [ %i.ad, %.lr.ph ], [ %i.ge, %moveAtom.exit ]
  %i.aj = phi i32 [ %i.ad, %.lr.ph ], [ %i.gf, %moveAtom.exit ] ; 7 uses
  %i.ak = phi i32 [ %i.ad, %.lr.ph ], [ %i.gg, %moveAtom.exit ] ; 11 uses
  %i.al = phi i32 [ %i.ad, %.lr.ph ], [ %i.gh, %moveAtom.exit ] ; 9 uses
  %i.am = phi i32 [ %i.ad, %.lr.ph ], [ %i.gi, %moveAtom.exit ] ; 7 uses
  %i.an = phi i32 [ %i.ad, %.lr.ph ], [ %i.gj, %moveAtom.exit ] ; 5 uses
  %i.ao = phi i32 [ %i.ad, %.lr.ph ], [ %i.gk, %moveAtom.exit ] ; 3 uses
  %i.ap = phi ptr [ %i.ae, %.lr.ph ], [ %i.gl, %moveAtom.exit ]
  %.022 = phi i32 [ 0, %.lr.ph ], [ %.1, %moveAtom.exit ] ; 4 uses
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %3 = add nsw i32 %.022, %2
  %4 = sext i32 %3 to i64                         ; 12 uses
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %4 ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !8 ; 3 uses
  %i.av = load <2 x double>, ptr %i.r, align 8, !tbaa !8
  %i.aw = load <2 x double>, ptr %i.s, align 8, !tbaa !8
  %i.ax = load double, ptr %i.q, align 8, !tbaa !8
  %i.ay = fcmp olt double %i.as, %i.ax
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.a
  %i.az = load double, ptr %i.u, align 8, !tbaa !8
  %i.ba = fsub double %i.as, %i.az
  %i.bb = load double, ptr %i.t, align 8, !tbaa !8
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = tail call double @llvm.floor.f64(double %i.bc)
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = load i32, ptr %0, align 8, !tbaa !4     ; 3 uses
  %i.bg = icmp eq i32 %i.bf, %i.be
  %i.bh = add nsw i32 %i.bf, -1
  %spec.select.i = select i1 %i.bg, i32 %i.bh, i32 %i.be
  br label %getBoxFromCoord.exit

bb.e:                                             ; preds = %.lr.ph.a
  %i.bi = load i32, ptr %0, align 8, !tbaa !4     ; 2 uses
  br label %getBoxFromCoord.exit

getBoxFromCoord.exit:                             ; preds = %bb.d, %bb.e
  %i.bj = phi i32 [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 6 uses
  %.034.i = phi i32 [ %i.bi, %bb.e ], [ %spec.select.i, %bb.d ] ; 7 uses
  %i.bk = fsub <2 x double> %i.au, %i.av
  %i.bl = load double, ptr %i.v, align 8, !tbaa !8
  %i.bm = extractelement <2 x double> %i.au, i64 0
  %i.bn = fcmp uge double %i.bm, %i.bl            ; 2 uses
  %i.bo = load double, ptr %i.x, align 8, !tbaa !8
  %i.bp = extractelement <2 x double> %i.au, i64 1
  %i.bq = fcmp uge double %i.bp, %i.bo
  %i.br = fmul <2 x double> %i.bk, %i.aw
  %i.bs = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.br)
  %i.bt = fptosi <2 x double> %i.bs to <2 x i32>  ; 3 uses
  %i.bu = load <2 x i32>, ptr %i.w, align 4, !tbaa !4 ; 3 uses
  %i.bv = extractelement <2 x i32> %i.bu, i64 0   ; 9 uses
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = icmp eq <2 x i32> %i.bu, %i.bt          ; 2 uses
  %i.by = extractelement <2 x i1> %i.bx, i64 0
  %i.bz = extractelement <2 x i32> %i.bt, i64 0
  %spec.select41.i = select i1 %i.by, i32 %i.bw, i32 %i.bz ; 4 uses
  %.033.i = select i1 %i.bn, i32 %i.bv, i32 %spec.select41.i ; 2 uses
  %i.ca = extractelement <2 x i32> %i.bu, i64 1   ; 7 uses
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = extractelement <2 x i1> %i.bx, i64 1
  %i.cd = extractelement <2 x i32> %i.bt, i64 1
  %spec.select42.i = select i1 %i.cc, i32 %i.cb, i32 %i.cd ; 5 uses
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %getBoxFromCoord.exit
  %i.ce = shl nsw i32 %i.ca, 1                    ; 2 uses
  %i.cf = mul nsw i32 %i.ce, %i.bv
  %i.cg = add nsw i32 %i.bj, 2
  %i.ch = add i32 %i.bv, 3
  %reass.add71.i = add i32 %i.ch, %.033.i
  %reass.add72.i = add i32 %reass.add71.i, %i.ce
  %reass.mul73.i = mul i32 %i.cg, %reass.add72.i
  %i.ci = add i32 %.034.i, 1
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = add i32 %i.cj, %i.aj
  %i.cl = add i32 %i.ck, %reass.mul73.i
  br label %getBoxFromTuple.exit

bb.g:                                             ; preds = %getBoxFromCoord.exit
  %i.cm = icmp eq i32 %spec.select42.i, -1
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = shl nsw i32 %i.ca, 1                    ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.bv
  %i.cp = add nsw i32 %i.bj, 2
  %i.cq = add nsw i32 %.033.i, 1
  %reass.add69.i = add i32 %i.cq, %i.cn
  %reass.mul70.i = mul i32 %i.cp, %reass.add69.i
  %i.cr = add i32 %.034.i, 1
  %i.cs = add i32 %i.cr, %i.co
  %i.ct = add i32 %i.cs, %i.ak
  %i.cu = add i32 %i.ct, %reass.mul70.i
  br label %getBoxFromTuple.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = shl nsw i32 %i.ca, 1
  %i.cw = mul nsw i32 %i.cv, %i.bv
  %i.cx = add nsw i32 %i.bj, 2
  %reass.add67.i = add i32 %spec.select42.i, %i.ca
  %reass.mul68.i = mul i32 %i.cx, %reass.add67.i
  %i.cy = add i32 %.034.i, 1
  %i.cz = add i32 %i.cy, %i.cw
  %i.da = add i32 %i.cz, %i.al
  %i.db = add i32 %i.da, %reass.mul68.i
  br label %getBoxFromTuple.exit

bb.k:                                             ; preds = %bb.i
  %i.dc = icmp eq i32 %spec.select41.i, -1
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dd = shl i32 %i.bv, 1
  %i.de = mul i32 %i.dd, %i.ca
  %i.df = add nsw i32 %i.bj, 2
  %i.dg = mul nsw i32 %i.df, %spec.select42.i
  %i.dh = add i32 %.034.i, 1
  %i.di = add i32 %i.dh, %i.de
  %i.dj = add i32 %i.di, %i.am
  %i.dk = add i32 %i.dj, %i.dg
  br label %getBoxFromTuple.exit

bb.m:                                             ; preds = %bb.k
  %i.dl = icmp eq i32 %.034.i, %i.bj
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %reass.add65.i = add i32 %spec.select42.i, %i.ca
  %reass.mul66.i = mul i32 %reass.add65.i, %i.bv
  %i.dm = add i32 %reass.mul66.i, %spec.select41.i
  %i.dn = add i32 %i.dm, %i.an
  br label %getBoxFromTuple.exit

bb.o:                                             ; preds = %bb.m
  %i.do = icmp eq i32 %.034.i, -1
  %i.dp = mul i32 %spec.select42.i, %i.bv
  %i.dq = add i32 %i.dp, %spec.select41.i         ; 2 uses
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dr = add i32 %i.dq, %i.ao
  br label %getBoxFromTuple.exit

bb.q:                                             ; preds = %bb.o
  %reass.mul.i = mul i32 %i.bj, %i.dq
  %i.ds = add i32 %reass.mul.i, %.034.i
  br label %getBoxFromTuple.exit

getBoxFromTuple.exit:                             ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %i.dt = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.h ], [ %i.ak, %bb.j ], [ %i.ak, %bb.l ], [ %i.ak, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.q ]
  %i.du = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.h ], [ %i.al, %bb.j ], [ %i.al, %bb.l ], [ %i.al, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.q ]
  %i.dv = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.h ], [ %i.al, %bb.j ], [ %i.am, %bb.l ], [ %i.am, %bb.n ], [ %i.am, %bb.p ], [ %i.am, %bb.q ]
  %i.dw = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.h ], [ %i.al, %bb.j ], [ %i.am, %bb.l ], [ %i.an, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.q ]
  %i.dx = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.h ], [ %i.al, %bb.j ], [ %i.am, %bb.l ], [ %i.an, %bb.n ], [ %i.ao, %bb.p ], [ %i.ao, %bb.q ]
  %.0.i21 = phi i32 [ %i.cl, %bb.f ], [ %i.cu, %bb.h ], [ %i.db, %bb.j ], [ %i.dk, %bb.l ], [ %i.dn, %bb.n ], [ %i.dr, %bb.p ], [ %i.ds, %bb.q ] ; 4 uses
  %i.dy = zext i32 %.0.i21 to i64
  %.not = icmp eq i64 %indvars.iv, %i.dy
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %getBoxFromTuple.exit
  %i.dz = sext i32 %.0.i21 to i64                 ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = shl nsw i32 %.0.i21, 6
  %i.ed = add nsw i32 %i.eb, %i.ec
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = sext i32 %i.ed to i64                   ; 6 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !4
  %i.ej = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eh
  store i32 %i.el, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.eo = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ep = getelementptr inbounds [24 x i8], ptr %i.eo, i64 %i.eh
  %i.eq = getelementptr inbounds [24 x i8], ptr %i.eo, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  %i.er = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.es = getelementptr inbounds [24 x i8], ptr %i.er, i64 %i.eh
  %i.et = getelementptr inbounds [24 x i8], ptr %i.er, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  %i.eu = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.eh
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %4
  %i.ex = load i64, ptr %i.ew, align 8
  store i64 %i.ex, ptr %i.ev, align 8
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.dz ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = add nsw i32 %i.fd, -1                   ; 3 uses
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %5 = add nsw i32 %i.fe, %2
  %6 = load ptr, ptr %i.y, align 8, !tbaa !22     ; 2 uses
  %7 = sext i32 %5 to i64                         ; 6 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  %i.fh = getelementptr inbounds [4 x i8], ptr %6, i64 %4
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !4
  %i.fi = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %7
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %4
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !4
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %i.fn = getelementptr inbounds [24 x i8], ptr %i.fm, i64 %4
  %i.fo = getelementptr inbounds [24 x i8], ptr %i.fm, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 24, i1 false)
  %i.fp = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.fq = getelementptr inbounds [24 x i8], ptr %i.fp, i64 %4
  %i.fr = getelementptr inbounds [24 x i8], ptr %i.fp, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false)
  %i.fs = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ft = getelementptr inbounds [24 x i8], ptr %i.fs, i64 %4
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fs, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false)
  %i.fv = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %4
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %7
  %i.fy = load i64, ptr %i.fx, align 8
  store i64 %i.fy, ptr %i.fw, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fz = load i32, ptr %i.a, align 4, !tbaa !10  ; 15 uses
  %i.ga = icmp sgt i32 %.0.i21, %i.fz
  br i1 %i.ga, label %bb.u, label %moveAtom.exit

bb.u:                                             ; preds = %bb.t
  %i.gb = load i32, ptr %1, align 8, !tbaa !19
  %i.gc = add nsw i32 %i.gb, -1
  store i32 %i.gc, ptr %1, align 8, !tbaa !19
  br label %moveAtom.exit

bb.v:                                             ; preds = %getBoxFromTuple.exit
  %i.gd = add nsw i32 %.022, 1
  br label %moveAtom.exit

moveAtom.exit:                                    ; preds = %bb.u, %bb.t, %bb.v
  %i.ge = phi i32 [ %i.ai, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ] ; 2 uses
  %i.gf = phi i32 [ %i.aj, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %i.gg = phi i32 [ %i.dt, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %i.gh = phi i32 [ %i.du, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %i.gi = phi i32 [ %i.dv, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %i.gj = phi i32 [ %i.dw, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %i.gk = phi i32 [ %i.dx, %bb.v ], [ %i.fz, %bb.t ], [ %i.fz, %bb.u ]
  %.1 = phi i32 [ %i.gd, %bb.v ], [ %.022, %bb.t ], [ %.022, %bb.u ] ; 2 uses
  %i.gl = load ptr, ptr %i.o, align 8, !tbaa !16  ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = icmp slt i32 %.1, %i.gn
  br i1 %i.go, label %.lr.ph.a, label %._crit_edge

._crit_edge:                                      ; preds = %moveAtom.exit, %bb.c
  %i.gp = phi i32 [ %i.ad, %bb.c ], [ %i.ge, %moveAtom.exit ] ; 2 uses
  %i.gq = phi ptr [ %i.ae, %bb.c ], [ %i.gl, %moveAtom.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gr = sext i32 %i.gp to i64
  %i.gs = icmp slt i64 %indvars.iv.next, %i.gr
  br i1 %i.gs, label %bb.c, label %._crit_edge25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @maxOccupancy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep12 = getelementptr i8, ptr %i.g, i64 %i.h
  %bound0 = icmp ult ptr %i.a, %scevgep12
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !4, !alias.scope !28
  %wide.load14 = load <4 x i32>, ptr %i.j, align 4, !tbaa !4, !alias.scope !28
  %i.k = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.l = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi13, <4 x i32> %wide.load14) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.k, <4 x i32> %i.l)
  %i.n = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !4, !alias.scope !34, !noalias !28
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.89.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.n, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.89.prol = phi i32 [ %..prol, %scalar.ph.prol ], [ %.89.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %..prol = tail call i32 @llvm.smax.i32(i32 %.89.prol, i32 %i.p) ; 3 uses
  store i32 %..prol, ptr %i.a, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !36

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.89.unr = phi i32 [ %.89.ph, %scalar.ph.preheader ], [ %..prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  tail call void @profileStart(i32 noundef 10) #14
  call void @maxIntParallel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #14
  call void @profileStop(i32 noundef 10) #14
  %i.s = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.s

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.89 = phi i32 [ %..3, %scalar.ph ], [ %.89.unr, %scalar.ph.prol.loopexit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %. = tail call i32 @llvm.smax.i32(i32 %.89, i32 %i.u) ; 2 uses
  store i32 %., ptr %i.a, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %..1 = tail call i32 @llvm.smax.i32(i32 %., i32 %i.x) ; 2 uses
  store i32 %..1, ptr %i.a, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %..2 = tail call i32 @llvm.smax.i32(i32 %..1, i32 %i.aa) ; 2 uses
  store i32 %..2, ptr %i.a, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %..3 = tail call i32 @llvm.smax.i32(i32 %..2, i32 %i.ad) ; 2 uses
  store i32 %..3, ptr %i.a, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !38
}

declare void @profileStart(i32 noundef) local_unnamed_addr #8

declare void @maxIntParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @profileStop(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
