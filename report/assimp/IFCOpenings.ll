Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  %.not.i104 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not.i104, label %.critedge.i107, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit94
  %.sroa.2.0.copyload.i.i106 = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ln = icmp eq ptr %storemerge.i.i.i101, %i.ll
  %i.lo = icmp eq i32 %i.lk, %.sroa.2.0.copyload.i.i106
  %i.lp = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %i.lp, label %bb.az, label %.critedge.i107

bb.az:                                            ; preds = %bb.ay
  %i.lq = add nuw nsw i32 %i.lk, 1
  store i32 %i.lq, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.lr = icmp eq i32 %i.lk, 63
  br i1 %i.lr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store ptr %i.ls, ptr %i.k, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.lt = and i64 %i.je, 63
  %i.lu = shl nuw i64 1, %i.lt
  %i.lv = xor i64 %i.lu, -1
  %i.lw = load i64, ptr %i.ll, align 8
  %i.lx = and i64 %i.lw, %i.lv
  store i64 %i.lx, ptr %i.ll, align 8
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

.critedge.i107:                                   ; preds = %bb.ay, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit94
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i101, i32 %i.lk, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread: ; preds = %.critedge.i107, %bb.bb, %bb.v, %bb.n, %bb.p, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %.3 = phi i64 [ %.1191, %bb.v ], [ %.2, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit ], [ %.1191, %bb.p ], [ %.1191, %bb.n ], [ %i.je, %bb.bb ], [ %i.je, %.critedge.i107 ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.cc
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !138

.loopexit:                                        ; preds = %._crit_edge, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.b
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ly, %i.e
  br i1 %.not, label %._crit_edge199, label %bb.b, !llvm.loop !139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not50 = icmp eq ptr %i.b, %i.d
  br i1 %.not50, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load double, ptr %i.b, align 8           ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e-04
  %i.h = fcmp ult double %i.f, 9.999000e-01
  %or.cond18.peel = and i1 %i.g, %i.h
  br i1 %or.cond18.peel, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 3 uses
  %i.k = fcmp ugt double %i.j, 1.000000e-04
  %i.l = fcmp ult double %i.j, 9.999000e-01
  %or.cond19.peel = and i1 %i.k, %i.l
  br i1 %or.cond19.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.copyload.peel = phi double [ %.sroa.6.0.copyload.peel.pre, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.115.peel = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %.2.peel = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.m, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.115.lcssa = phi i8 [ %.115.peel, %bb.d ], [ %.115, %bb.i ]
  %.sroa.041.0.copyload.lcssa = phi double [ %i.f, %bb.d ], [ %.sroa.041.0.copyload, %bb.i ]
  %.sroa.6.0.copyload.lcssa = phi double [ %.sroa.6.0.copyload.peel, %bb.d ], [ %.sroa.6.0.copyload, %bb.i ]
  %i.n = trunc nuw i8 %.115.lcssa to i1
  %i.o = and i1 %.2.peel, %i.n
  br i1 %i.o, label %bb.j, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.01454 = phi i8 [ %.115, %bb.i ], [ %.115.peel, %bb.d ]
  %.sroa.041.053 = phi double [ %.sroa.041.0.copyload, %bb.i ], [ %i.f, %bb.d ]
  %.sroa.6.052 = phi double [ %.sroa.6.0.copyload, %bb.i ], [ %.sroa.6.0.copyload.peel, %bb.d ]
  %.sroa.032.051 = phi ptr [ %i.ar, %bb.i ], [ %i.m, %bb.d ] ; 7 uses
  %i.p = load double, ptr %.sroa.032.051, align 8 ; 6 uses
  %i.q = fcmp ugt double %i.p, 1.000000e-04
  %i.r = fcmp ult double %i.p, 9.999000e-01
  %or.cond18 = and i1 %i.q, %i.r
  br i1 %or.cond18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fcmp ugt double %i.t, 1.000000e-04
  %i.v = fcmp ult double %i.t, 9.999000e-01
  %or.cond19 = and i1 %i.u, %i.v
  br i1 %or.cond19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = trunc nuw i8 %.01454 to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = fsub double %i.p, %.sroa.041.053
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fsub double %i.z, %.sroa.6.052
  %i.ab = fmul double %i.x, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp olt double %i.ac, f0x3E80000000000000
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %.sroa.032.051 to i64
  %i.af = sub i64 %i.ae, %i.e
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = sdiv i64 %i.ah, 64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = and i64 %i.ah, -9223372036854775745
  %i.am = icmp ugt i64 %i.al, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.am, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ak, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.an = and i64 %i.ah, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.aq = or i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %storemerge.i.i.i.i.i, align 8
  %.sroa.041.0.copyload.pre = load double, ptr %.sroa.032.051, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.g
  %.sroa.041.0.copyload = phi double [ %.sroa.041.0.copyload.pre, %bb.h ], [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %.115 = phi i8 [ 1, %bb.h ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %.sroa.6.0..sroa.032.0.33.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

bb.j:                                             ; preds = %._crit_edge
  %i.as = load double, ptr %i.b, align 8
  %i.at = fsub double %i.as, %.sroa.041.0.copyload.lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fsub double %i.av, %.sroa.6.0.copyload.lcssa
  %i.ax = fmul double %i.at, %i.aw
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp olt double %i.ay, f0x3E80000000000000
  br i1 %i.az, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = zext i32 %i.bd to i64
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = sdiv i64 %i.bl, 64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bm
  %i.bo = and i64 %i.bl, -9223372036854775745
  %i.bp = icmp ugt i64 %i.bo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i22 = select i1 %i.bp, i64 -8, i64 0
  %storemerge.i.i.i.i.i23 = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i22 ; 2 uses
  %i.bq = and i64 %i.bl, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %storemerge.i.i.i.i.i23, align 8
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %storemerge.i.i.i.i.i23, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.j, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not38 = icmp eq ptr %i.b, %i.d
  %.pre46 = load double, ptr %i.b, align 8        ; 4 uses
  br i1 %.not38, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.f, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.b
  %1 = insertelement <2 x double> poison, double %.pre46, i64 0
  %2 = insertelement <2 x double> %1, double %.sroa.6.0.copyload.peel.pre, i64 1
  br label %.lr.ph.peel.next

._crit_edge.loopexit.loopexit:                    ; preds = %bb.d
  %.pre.pre = load double, ptr %i.b, align 8
  %i.g = extractelement <2 x double> %i.as, i64 0
  %i.h = extractelement <2 x double> %i.as, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.loopexit, %bb.a
  %i.i = phi double [ %.pre46, %bb.a ], [ %.pre46, %bb.b ], [ %.pre.pre, %._crit_edge.loopexit.loopexit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.6.0.copyload.peel.pre, %bb.b ], [ %i.h, %._crit_edge.loopexit.loopexit ]
  %.sroa.028.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.pre46, %bb.b ], [ %i.g, %._crit_edge.loopexit.loopexit ]
  %i.j = fsub double %i.i, %.sroa.028.0.lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = fsub double %i.l, %.sroa.6.0.lcssa
  %i.n = tail call double @llvm.fabs.f64(double %i.j) ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.m) ; 3 uses
  %i.p = fsub double %i.n, %i.o
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp olt double %i.n, %i.o
  %.sroa.speculated.i = select i1 %i.r, double %i.o, double %i.n
  %i.s = fmul double %.sroa.speculated.i, 8.000000e-01
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next.preheader, %bb.d
  %.sroa.019.039 = phi ptr [ %i.at, %bb.d ], [ %i.f, %.lr.ph.peel.next.preheader ] ; 4 uses
  %i.u = phi <2 x double> [ %i.as, %bb.d ], [ %2, %.lr.ph.peel.next.preheader ]
  %i.v = load <2 x double>, ptr %.sroa.019.039, align 8
  %i.w = fsub <2 x double> %i.v, %i.u
  %i.x = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.w) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 3 uses
  %i.z = extractelement <2 x double> %i.x, i64 1  ; 3 uses
  %i.aa = fsub double %i.y, %i.z
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp olt double %i.y, %i.z
  %.sroa.speculated.i12 = select i1 %i.ac, double %i.z, double %i.y
  %i.ad = fmul double %.sroa.speculated.i12, 8.000000e-01
  %i.ae = fcmp olt double %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.af = ptrtoint ptr %.sroa.019.039 to i64
  %i.ag = sub i64 %i.af, %i.e
  %i.ah = ashr exact i64 %i.ag, 4
  %i.ai = add nsw i64 %i.ah, -1                   ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = sdiv i64 %i.ai, 64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = and i64 %i.ai, -9223372036854775745
  %i.an = icmp ugt i64 %i.am, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.an, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.al, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.ao = and i64 %i.ai, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.ar = or i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %storemerge.i.i.i.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.peel.next, %bb.c
  %i.as = load <2 x double>, ptr %.sroa.019.039, align 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.019.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.d
  br i1 %.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph.peel.next, !llvm.loop !146

bb.e:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = zext i32 %i.ax to i64
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = sdiv i64 %i.bf, 64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bg
  %i.bi = and i64 %i.bf, -9223372036854775745
  %i.bj = icmp ugt i64 %i.bi, -9223372036854775808
  %storemerge.idx.i.i.i.i.i13 = select i1 %i.bj, i64 -8, i64 0
  %storemerge.i.i.i.i.i14 = getelementptr inbounds i8, ptr %i.bh, i64 %storemerge.idx.i.i.i.i.i13 ; 2 uses
  %i.bk = and i64 %i.bf, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %storemerge.i.i.i.i.i14, align 8
  %i.bn = or i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %storemerge.i.i.i.i.i14, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.aiVector3t, align 8          ; 7 uses
  %5 = alloca %class.aiVector3t, align 8          ; 7 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %class.aiVector3t, align 8          ; 6 uses
  %8 = alloca %class.aiVector3t, align 8          ; 9 uses
  %9 = alloca %class.aiVector3t, align 16         ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not348417 = icmp eq ptr %i.a, %i.c
  br i1 %.not348417, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.b

._crit_edge426:                                   ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.692, %.loopexit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph425, %.loopexit
  %.0422 = phi i64 [ 0, %.lr.ph425 ], [ %.692, %.loopexit ] ; 5 uses
  %.sroa.0327.0418 = phi ptr [ %i.a, %.lr.ph425 ], [ %i.ts, %.loopexit ] ; 17 uses
  %i.r = load ptr, ptr %.sroa.0327.0418, align 8  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0327.0418, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 8
  %i.w = ptrtoint ptr %.sroa.0327.0418 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 104
  %i.aa = load ptr, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not349.not384 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not349.not384, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0323.0385, i64 8 ; 2 uses
  %.not349.not = icmp eq ptr %i.af, %i.ae
  br i1 %.not349.not, label %.lr.ph416, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0323.0385 = phi ptr [ %i.af, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.0323.0385, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0327.0418, i64 56 ; 3 uses
  %i.an = ptrtoint ptr %i.t to i64
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4                 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0327.0418, i64 72 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0327.0418, i64 80 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = zext i32 %i.au to i64
  %i.bb = add nsw i64 %i.az, %i.ba                ; 2 uses
  %i.bc = icmp ult i64 %i.aq, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = sdiv i64 %i.aq, 64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bd
  %i.bf = and i64 %i.aq, -9223372036854775745
  %i.bg = icmp ugt i64 %i.bf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bg, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.be, i64 %storemerge.idx.i.i.i.i.i
  %i.bh = trunc i64 %i.aq to i32
  %i.bi = and i32 %i.bh, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.ar, align 8
  store i32 %i.bi, ptr %i.at, align 8
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = sub nuw i64 %i.aq, %i.bb
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr %i.as, i32 %i.au, i64 noundef %i.bj, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit: ; preds = %bb.g, %bb.f
  call void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr nonnull %.sroa.0327.0418, ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0418)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0327.0418, i64 96
  %i.bl = load i8, ptr %i.bk, align 8, !range !22, !noundef !23
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  call void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0418)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  %i.bn = load ptr, ptr %i.am, align 8
  %i.bo = load ptr, ptr %i.d, align 8
  %i.bp = load ptr, ptr %3, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = sdiv exact i64 %i.bs, 24
end_hunk_0
