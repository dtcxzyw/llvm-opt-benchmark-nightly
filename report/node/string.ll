inline.NumInlined: 4553
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2v88internal12StringSearchIhhE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !424

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not93 = icmp eq i8 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !425

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !426

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !427

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhhE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit66, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.t = add nsw i32 %.150.us, %i.m
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %.not64.us = icmp eq i8 %i.p, %i.w
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sub nsw i32 %i.m, %i.z
  %i.ab = add nsw i32 %i.aa, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ab, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.i
  %.150.us.be = phi i32 [ %i.ab, %bb.d ], [ %.251.us, %bb.i ]
  br label %.preheader74.us, !llvm.loop !428

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ae = load i8, ptr %gep, align 1              ; 2 uses
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ag, label %bb.e, label %.thread, !llvm.loop !429

.critedge.us:                                     ; preds = %bb.e
  %i.ah = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ai = icmp sgt i32 %i.g, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.aj = and i64 %indvars.iv, 4294967295
  %i.ak = getelementptr [4 x i8], ptr %i.l, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 61460
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub nsw i32 %i.ah, %i.ap
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.aq)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.ar = load i32, ptr %i.s, align 4
  %i.as = sub nsw i32 %i.m, %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.as, %bb.h ], [ %spec.select.us, %bb.g ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.at = sext i32 %.150.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.at
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.j
  %.150 = phi i32 [ %i.az, %bb.j ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %4 = add nsw i32 %.150, %i.m
  %5 = sext i32 %4 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not64 = icmp eq i8 %i.p, %i.av
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %6 = sub nuw nsw i32 %i.m, %i.ay
  %i.az = add nsw i32 %6, %.150                   ; 2 uses
  %.not65 = icmp sgt i32 %i.az, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !430

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKhE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE16SingleCharSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.b = load i8, ptr %.sroa.01.0.copyload, align 1 ; 3 uses
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.g = sub nsw i32 %i.e, %i.f                   ; 3 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i8 %i.b, 0
  br i1 %i.i, label %.preheader.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.j = zext i8 %i.b to i32
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i8 %i.b to i16
  br label %bb.e

.preheader.i:                                     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.not43.i = icmp sgt i32 %3, %i.g
  br i1 %.not43.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.m = sext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i16, ptr %i.n, align 2
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %.thread.loopexit.split.loop.exit57.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !431

bb.e:                                             ; preds = %bb.g, %.preheader40.i
  %.0.i = phi i32 [ %i.af, %bb.g ], [ %3, %.preheader40.i ] ; 2 uses
  %i.q = sext i32 %.0.i to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %i.q
  %i.s = sub i32 %i.h, %.0.i
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = tail call noundef ptr @memchr(ptr noundef %i.r, i32 noundef %i.j, i64 noundef %i.u) #29 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = and i64 %i.x, -2
  %i.z = sub i64 %i.y, %i.k                       ; 2 uses
  %i.aa = lshr exact i64 %i.z, 1
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %sext.i = shl i64 %i.z, 31
  %i.ac = ashr i64 %sext.i, 32
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %.not39.i = icmp eq i16 %i.ae, %i.l
  br i1 %.not39.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.ab, 1
  %i.ag = icmp sgt i32 %i.g, %i.ab
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !432

.thread.loopexit.split.loop.exit57.i:             ; preds = %.lr.ph.i
  %i.ah = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %.preheader.i, %.thread.loopexit.split.loop.exit57.i
  %.4.i = phi i32 [ -1, %.preheader.i ], [ -1, %bb.d ], [ %i.ah, %.thread.loopexit.split.loop.exit57.i ], [ -1, %bb.e ], [ %i.ab, %bb.f ], [ -1, %bb.g ]
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE12LinearSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload17 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload17, i64 1
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIhtEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %i.am, %_ZN2v88internal11CharCompareIhtEEbPKT_PKT0_i.exit ] ; 3 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.d
  %i.l = load i8, ptr %.sroa.0.0.copyload17, align 1 ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.n = zext i8 %i.l to i32
  %i.o = zext i8 %i.l to i16
  br label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.p = sext i32 %.013 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.thread.loopexit.split.loop.exit57.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.g, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !431

bb.f:                                             ; preds = %bb.h, %.preheader40.i
  %.0.i = phi i32 [ %i.ai, %bb.h ], [ %.013, %.preheader40.i ] ; 2 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t
  %i.v = sub i32 %i.g, %.0.i
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = tail call noundef ptr @memchr(ptr noundef %i.u, i32 noundef %i.n, i64 noundef %i.x) #29 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, -2
  %i.ac = sub i64 %i.ab, %i.h                     ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 1
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %sext.i = shl i64 %i.ac, 31
  %i.af = ashr i64 %sext.i, 32
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %.not39.i = icmp eq i16 %i.ah, %i.o
  br i1 %.not39.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %i.ae, 1
  %i.aj = icmp sgt i32 %i.f, %i.ae
  br i1 %i.aj, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !432

.thread.loopexit.split.loop.exit57.i:             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !444

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not93 = icmp eq i8 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !445

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !446

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !447

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not83 = icmp sgt i32 %3, %i.n
  br i1 %.not83, label %.thread, label %.preheader76.lr.ph

.preheader76.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i16                      ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader76, label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.lr.ph, %.preheader76.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader76.us.backedge ], [ %3, %.preheader76.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 3 uses
  %.not64.us = icmp eq i16 %i.x, %i.r
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader76.us
  %i.y = icmp ugt i16 %i.x, 255
  br i1 %i.y, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i16 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi i32 [ %i.ab, %bb.e ], [ -1, %bb.d ]
  %i.ac = sub nsw i32 %i.m, %.0.i.us
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.n
  br i1 %.not65.us, label %.thread, label %.preheader76.us.backedge

.preheader76.us.backedge:                         ; preds = %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.k
  %.150.us.be = phi i32 [ %i.ad, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ %.251.us, %bb.k ]
  br label %.preheader76.us, !llvm.loop !448

bb.f:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ %i.o, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 3 uses
  %i.ah = zext i8 %i.af to i16
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aj, label %bb.f, label %.thread, !llvm.loop !449

.critedge.us:                                     ; preds = %bb.f
  %i.ak = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.al = icmp sgt i32 %i.g, %i.ak
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.us
  %i.am = and i64 %indvars.iv, 4294967295
  %i.an = getelementptr [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 61460
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp ugt i16 %i.ag, 255
  br i1 %i.aq, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = zext nneg i16 %i.ag to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us: ; preds = %bb.i, %bb.h
  %.0.i67.us = phi i32 [ %i.at, %bb.i ], [ -1, %bb.h ]
  %i.au = sub nsw i32 %i.ak, %.0.i67.us
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.au)
  br label %bb.k

bb.j:                                             ; preds = %.critedge.us
  %i.av = load i32, ptr %i.t, align 4
  %i.aw = sub nsw i32 %i.m, %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us
  %.pn.us = phi i32 [ %i.aw, %bb.j ], [ %spec.select.us, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.n
  br i1 %.not.us, label %.thread, label %.preheader76.us.backedge

.preheader.us:                                    ; preds = %.preheader76.us
  %i.ax = sext i32 %.150.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ax
  br label %bb.f

.preheader76:                                     ; preds = %.preheader76.lr.ph, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit
  %.150 = phi i32 [ %i.bd, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ %3, %.preheader76.lr.ph ] ; 3 uses
  %4 = add nsw i32 %.150, %i.m
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %5
  %i.ay = load i16, ptr %6, align 2               ; 3 uses
  %.not64 = icmp eq i16 %i.ay, %i.r
  br i1 %.not64, label %.thread, label %bb.l

bb.l:                                             ; preds = %.preheader76
  %i.az = icmp ugt i16 %i.ay, 255
  br i1 %i.az, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = zext nneg i16 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.bc, %bb.m ], [ -1, %bb.l ]
  %7 = sub nuw nsw i32 %i.m, %.0.i
  %i.bd = add nsw i32 %7, %.150                   ; 2 uses
  %.not65 = icmp sgt i32 %i.bd, %i.n
  br i1 %.not65, label %.thread, label %.preheader76, !llvm.loop !450

.thread:                                          ; preds = %bb.k, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.g, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, %.preheader76, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %bb.g ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ %.150, %.preheader76 ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ -1, %bb.k ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12SearchStringIhtEEiPNS0_7IsolateENS_4base6VectorIKT_EENS5_IKT0_EEi(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.v8::internal::StringSearch.821", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx8.i, align 8
  %i.b = icmp ult i64 %4, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = trunc nuw nsw i64 %4 to i32              ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 250)
  store i32 %.sroa.speculated.i, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %4 ; 4 uses
  %i.f = icmp samesign ugt i64 %4, 7
  br i1 %i.f, label %.preheader23.i.i.i.i, label %.loopexit.i.i.i.i

.preheader23.i.i.i.i:                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  %i.g = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.preheader23.i.i.i.i
  %i.j = load i16, ptr %3, align 2
  %i.k = icmp ugt i16 %i.j, 255
  br i1 %i.k, label %.lr.ph.i._crit_edge.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader23.i.i.i.i
  %.021.lcssa.i.i.i.i = phi ptr [ %3, %.preheader23.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i.i, i64 16
  %.not28.i.i.i.i = icmp ugt ptr %i.l, %i.e
  br i1 %.not28.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph30.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.m = load i16, ptr %i.p, align 2
  %i.n = icmp ugt i16 %i.m, 255
  br i1 %i.n, label %.lr.ph.i._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !451

.lr.ph.i._crit_edge.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.lcssa3.i.i.i = phi i64 [ %i.g, %.lr.ph.i.preheader.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.o = sub i64 %.lcssa3.i.i.i, %i.g
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %.02127.i6.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %3, %.lr.ph.i.preheader.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02127.i6.i.i.i, i64 2 ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 7
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !451

.lr.ph30.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %bb.c
  %.129.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %.021.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.t = load i64, ptr %.129.i.i.i.i, align 8
  %i.u = and i64 %i.t, -71777214294589696
  %.not22.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i.i.i.i, label %bb.c, label %.loopexit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph30.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.129.i.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.129.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp ugt ptr %i.w, %i.e
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph30.i.i.i.i, !llvm.loop !452

.loopexit.i.i.i.i:                                ; preds = %bb.c, %.lr.ph30.i.i.i.i, %.preheader.i.i.i.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  %.2.i.i.i.i = phi ptr [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %.021.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %.129.i.i.i.i, %.lr.ph30.i.i.i.i ], [ %i.v, %bb.c ] ; 3 uses
  %i.x = icmp ult ptr %.2.i.i.i.i, %i.e
  br i1 %i.x, label %.lr.ph35.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph35.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %bb.e
  %.334.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %.2.i.i.i.i, %.loopexit.i.i.i.i ] ; 3 uses
  %i.y = load i16, ptr %.334.i.i.i.i, align 2
  %i.z = icmp ugt i16 %i.y, 255
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph35.i.i.i.i
  %i.aa = ptrtoint ptr %.334.i.i.i.i to i64
  %i.ab = ptrtoint ptr %3 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i

bb.e:                                             ; preds = %.lr.ph35.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.334.i.i.i.i, i64 2 ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %i.e
  br i1 %i.ae, label %.lr.ph35.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !453

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %.loopexit.i.i.i.i
  %.3.lcssa.i.i.i.i = phi ptr [ %.2.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.af = ptrtoint ptr %.3.lcssa.i.i.i.i to i64
  %i.ag = ptrtoint ptr %3 to i64
  %i.ah = sub i64 %i.af, %i.ag
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i

_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.d, %.lr.ph.i._crit_edge.i.i.i
  %.0.in.in.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i._crit_edge.i.i.i ], [ %i.ac, %bb.d ], [ %i.ah, %._crit_edge.i.i.i.i ]
  %.0.in.i.i.i.i = lshr exact i64 %.0.in.in.i.i.i.i, 1
  %.0.i.i.i.i = trunc i64 %.0.in.i.i.i.i to i32
  %.not.i = icmp ugt i32 %i.d, %.0.i.i.i.i
  br i1 %.not.i, label %bb.f, label %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i

bb.f:                                             ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ai, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

_ZNK2v84base6VectorIKtE6lengthEv.exit3.i:         ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i
  %i.aj = icmp slt i64 %4, 7
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i
  %i.ak = icmp eq i64 %4, 1
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.al, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

bb.i:                                             ; preds = %bb.g
  store ptr @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.al, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

bb.j:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.am, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %i.an = phi ptr [ @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, %bb.f ], [ @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi, %bb.h ], [ @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, %bb.i ], [ @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, %bb.j ]
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %1, i64 %2, i32 noundef %5) #25, !inline_history !454
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i16, ptr %i.b, align 2              ; 3 uses
  %i.d = icmp ugt i16 %i.c, 255
  br i1 %i.d, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %2, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.f, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.g = trunc nuw nsw i64 %2 to i32
  %i.h = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.i = sub nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  %i.k = trunc nuw i16 %i.c to i8
  %i.l = zext nneg i16 %i.c to i32
  %i.m = ptrtoint ptr %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.016.i = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.n = sext i32 %.016.i to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = sub i32 %i.j, %.016.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !466

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !467

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !468

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !469

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not80 = icmp sgt i32 %3, %i.q
  br i1 %.not80, label %.thread, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader73, label %.preheader73.us

.preheader73.us:                                  ; preds = %.preheader73.lr.ph, %.preheader73.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader73.us.backedge ], [ %3, %.preheader73.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i16
  %.not64.us = icmp eq i16 %i.p, %i.y
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader73.us
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader73.us.backedge

.preheader73.us.backedge:                         ; preds = %bb.d, %bb.i
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.i ]
  br label %.preheader73.us, !llvm.loop !470

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i8, ptr %gep, align 1              ; 2 uses
  %i.ah = zext i8 %i.ag to i16
  %i.ai = icmp eq i16 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aj, label %bb.e, label %.thread, !llvm.loop !471

.critedge.us:                                     ; preds = %bb.e
  %i.ak = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.al = icmp sgt i32 %i.g, %i.ak
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.am = and i64 %indvars.iv, 4294967295
  %i.an = getelementptr [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 61460
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i8 %i.ag to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub nsw i32 %i.ak, %i.as
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.at)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.av, %bb.h ], [ %spec.select.us, %bb.g ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader73.us.backedge

.preheader.us:                                    ; preds = %.preheader73.us
  %i.aw = sext i32 %.150.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.aw
  br label %bb.e

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.j
  %.150 = phi i32 [ %i.bd, %bb.j ], [ %3, %.preheader73.lr.ph ] ; 3 uses
  %4 = add nsw i32 %.150, %i.m
  %5 = sext i32 %4 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = zext i8 %i.ay to i16
  %.not64 = icmp eq i16 %i.p, %i.az
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader73
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %6 = sub nuw nsw i32 %i.m, %i.bc
  %i.bd = add nsw i32 %6, %.150                   ; 2 uses
  %.not65 = icmp sgt i32 %i.bd, %i.q
  br i1 %.not65, label %.thread, label %.preheader73, !llvm.loop !472

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader73, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %.150, %.preheader73 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16SingleCharSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.b = load i16, ptr %.sroa.01.0.copyload, align 2 ; 4 uses
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.g = sub nsw i32 %i.e, %i.f                   ; 3 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i16 %i.b, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %.not44.i = icmp sgt i32 %3, %i.g
  br i1 %.not44.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = sext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.thread.loopexit.split.loop.exit58.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !473

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = trunc i16 %i.b to i8
  %i.o = lshr i16 %i.b, 8
  %i.p = trunc nuw i16 %i.o to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.n, i8 %i.p)
  %i.q = zext i8 %.sroa.speculated.i.i to i32
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ %3, %bb.e ], [ %i.ah, %bb.h ] ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.s
  %i.u = sub i32 %i.h, %.0.i
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 1
  %i.x = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.q, i64 noundef %i.w) #29 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = and i64 %i.z, -2
  %i.ab = sub i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %sext.i = shl i64 %i.ab, 31
  %i.ae = ashr i64 %sext.i, 32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %.not41.i = icmp eq i16 %i.ag, %i.b
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ad, 1
  %i.ai = icmp sgt i32 %i.g, %i.ad
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !474

.thread.loopexit.split.loop.exit58.i:             ; preds = %.lr.ph.i
  %i.aj = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.d, %.preheader.i, %.thread.loopexit.split.loop.exit58.i
  %.4.i = phi i32 [ -1, %.preheader.i ], [ -1, %bb.d ], [ %i.aj, %.thread.loopexit.split.loop.exit58.i ], [ -1, %bb.f ], [ %i.ad, %bb.g ], [ -1, %bb.h ]
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE12LinearSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload18 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit15, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit15:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload18, i64 2
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKtE6lengthEv.exit15
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit15 ], [ %i.ao, %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit ] ; 3 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %bb.d
  %i.l = load i16, ptr %.sroa.0.0.copyload18, align 2 ; 4 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = sext i32 %.013 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.thread.loopexit.split.loop.exit58.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.g, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !473

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.r = trunc i16 %i.l to i8
  %i.s = lshr i16 %i.l, 8
  %i.t = trunc nuw i16 %i.s to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.r, i8 %i.t)
  %i.u = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i = phi i32 [ %.013, %bb.f ], [ %i.ak, %bb.i ] ; 2 uses
  %i.v = sext i32 %.0.i to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %1, i64 %i.v
  %i.x = sub i32 %i.g, %.0.i
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = tail call noundef ptr @memchr(ptr noundef %i.w, i32 noundef %i.u, i64 noundef %i.z) #29 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = and i64 %i.ac, -2
  %i.ae = sub i64 %i.ad, %i.h                     ; 2 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %sext.i = shl i64 %i.ae, 31
  %i.ah = ashr i64 %sext.i, 32
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %.not41.i = icmp eq i16 %i.aj, %i.l
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.i

end_hunk_2
begin_hunk_3_@_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !485

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !486

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !487

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !488

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %.not64.us = icmp eq i16 %i.p, %i.x
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.y = and i16 %i.x, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.i
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.i ]
  br label %.preheader74.us, !llvm.loop !489

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 2 uses
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ai = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ai, label %bb.e, label %.thread, !llvm.loop !490

.critedge.us:                                     ; preds = %bb.e
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp sgt i32 %i.g, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.al = and i64 %indvars.iv, 4294967295
  %i.am = getelementptr [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 61460
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i16 %i.ag, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub nsw i32 %i.aj, %i.as
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.av, %bb.h ], [ %spec.select.us, %bb.g ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.aw = sext i32 %.150.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aw
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.j
  %.150 = phi i32 [ %i.bc, %bb.j ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %4 = add nsw i32 %.150, %i.m
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %5
  %i.ax = load i16, ptr %6, align 2               ; 2 uses
  %.not64 = icmp eq i16 %i.p, %i.ax
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.ay = and i16 %i.ax, 255
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %7 = sub nuw nsw i32 %i.m, %i.bb
  %i.bc = add nsw i32 %7, %.150                   ; 2 uses
  %.not65 = icmp sgt i32 %i.bc, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !491

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::ConsStringIterator", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = icmp eq i64 %0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %4, i8 0, i64 256, i1 false)
  br i1 %i.b, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit

_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.thread134

_ZN2v88internal18ConsStringIterator4NextEPi.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i32 0, ptr %i.e, align 8
  store i32 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 268
  store i32 33, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.h = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread134, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33
  %storemerge144 = phi i64 [ %i.cq, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %i.h, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.6.0142 = phi i64 [ %i.cm, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %2, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.039.0141 = phi ptr [ %i.cp, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %1, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 6 uses
  %i.j = add i64 %storemerge144, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.n) ; 7 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated, 0         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
  %.sroa.0119.0 = phi i64 [ %storemerge144, %.lr.ph ], [ %i.ci, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.p = add i64 %.sroa.0119.0, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 9 uses
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = and i16 %i.u, 15
  switch i16 %i.v, label %bb.q [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.p
    i16 3, label %bb.p
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = sext i32 %.0 to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i22
  br i1 %i.o, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.01013.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.039.0141, %bb.d ] ; 2 uses
  %i.ae = load i16, ptr %.01013.i.i, align 2
  %i.af = load i8, ptr %.01112.i.i, align 1
  %i.ag = zext i8 %i.af to i16
  %.not.i.i = icmp eq i16 %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.e, label %.thread134

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.ah, %i.ad
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !182

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.aj = tail call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.aj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = inttoptr i64 %i.al to ptr               ; 6 uses
  %i.an = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, 16
  %.not.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #25, !inline_history !49
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ay = load ptr, ptr %i.am, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25, !inline_history !49
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.k:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bf = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2
  %i.bj = and i16 %i.bi, 16
  %.not.i20 = icmp eq i16 %i.bj, 0
  br i1 %.not.i20, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25, !inline_history !53
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bq = load ptr, ptr %i.be, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !53
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i21 = phi ptr [ %i.bp, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = sext i32 %.0 to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i22
  br i1 %i.o, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.o
  %.01013.i.i24 = phi ptr [ %i.ca, %bb.o ], [ %i.bv, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %i.cb, %bb.o ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bx = load i16, ptr %.01013.i.i24, align 2
  %i.by = load i8, ptr %.01112.i.i25, align 1
  %i.bz = zext i8 %i.by to i16
  %.not.i.i26 = icmp eq i16 %i.bx, %i.bz
  br i1 %.not.i.i26, label %bb.o, label %.thread134

bb.o:                                             ; preds = %.lr.ph.i.i23
  %i.ca = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %i.ca, %i.bw
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !182

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
end_hunk_3
begin_hunk_4_@_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE:bb.a
  %i.ee = getelementptr i8, ptr %0, i64 %i.dp
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4     ; 2 uses
  %.0.copyload.i52 = load i32, ptr %0, align 1
  %i.eg = zext i32 %.0.copyload.i52 to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %.0.copyload.i53 = load i32, ptr %i.ef, align 1
  %i.ei = zext i32 %.0.copyload.i53 to i64
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i54 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i54 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i55 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i55 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread131, !prof !5

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i56, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i57, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i58, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i59, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i60
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i61, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !26, !llvm.loop !495

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i62
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i135, %.0.copyload.i63
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i64, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i65, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.gp, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.go, %bb.r ]
  %.2.i24 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread131 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i24, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0102, %i.dt
  %i.ht = xor i64 %.3.i, %.0103
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !496

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i160 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.013.i160, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !497

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !498

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #25
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !26

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %3 = getelementptr i8, ptr %0, i64 %i.bi
  %4 = getelementptr i8, ptr %3, i64 -1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %i.cr = or disjoint i64 %i.cq, %6
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = xor i64 %i.ct, %.0.copyload.i51
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cv, align 2
  %i.cw = xor i64 %i.bm, %.0.copyload.i52
  %i.cx = xor i64 %i.cw, %i.bu
  %i.cy = zext i64 %i.cu to i128
  %i.cz = zext i64 %i.cx to i128
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i64
  %i.de = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.df, align 1
  %i.dg = getelementptr i8, ptr %i.de, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dg, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cr, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dd, %.thread ], [ %i.bu, %bb.n ]
  %i.dh = xor i64 %.0107, %i.bm
  %i.di = xor i64 %.3.i.i, %.0108
  %i.dj = zext i64 %i.dh to i128
  %i.dk = zext i64 %i.di to i128
  %i.dl = mul nuw i128 %i.dk, %i.dj               ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = lshr i128 %i.dl, 64
  %i.do = xor i64 %i.bi, %i.dm
  %i.dp = xor i64 %i.do, %i.bj
  %i.dq = zext i64 %i.dp to i128
  %i.dr = xor i128 %i.dn, %i.bo
  %i.ds = mul nuw i128 %i.dr, %i.dq               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dv, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.dw = trunc i64 %.0.i to i32
  %i.dx = and i32 %i.dw, 1073741823               ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = shl nuw i32 %i.dx, 2
  %i.ea = select i1 %i.dy, i32 108, i32 %i.dz     ; 3 uses
  %i.eb = icmp ult i32 %i.ea, 536870912
  %i.ec = or i32 %i.ea, 536870912
  %spec.select = select i1 %i.eb, i32 %i.ec, i32 %i.ea
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.ed = icmp ugt i32 %1, 16383
  br i1 %i.ed, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ee = shl i32 %1, 2
  %i.ef = or disjoint i32 %i.ee, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.eg = load i64, ptr %2, align 8               ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !498

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = icmp ugt i16 %i.ej, 255
  br i1 %i.ek, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.el = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.eh, %bb.q ]
  %i.em = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.eg, %bb.q ]
  %i.en = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.em, ptr noundef nonnull %i.el) #25
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.eo = shl i32 %1, 1                           ; 5 uses
  %i.ep = zext i32 %i.eo to i64                   ; 9 uses
  %i.eq = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.er = xor i64 %i.eq, %i.eg
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = load i64, ptr %i.es, align 8            ; 4 uses
  %i.eu = zext i64 %i.er to i128
  %i.ev = zext i64 %i.et to i128                  ; 2 uses
  %i.ew = mul nuw i128 %i.ev, %i.eu               ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = xor i128 %i.ex, %i.ew
  %i.ez = trunc i128 %i.ey to i64
  %i.fa = xor i64 %i.ep, %i.ez
  %i.fb = xor i64 %i.fa, %i.eg                    ; 7 uses
  %i.fc = icmp ult i32 %i.eo, 17
  br i1 %i.fc, label %bb.r, label %bb.v, !prof !26

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fd = icmp samesign ugt i32 %i.eo, 3
  br i1 %i.fd, label %bb.s, label %bb.t, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.fe = getelementptr i8, ptr %0, i64 %i.ep
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fg = zext i32 %.0.copyload.i57 to i64
  %i.fh = shl nuw i64 %i.fg, 32
  %.0.copyload.i58 = load i32, ptr %i.ff, align 1
  %i.fi = zext i32 %.0.copyload.i58 to i64
  %i.fj = or disjoint i64 %i.fh, %i.fi
  %i.fk = and i64 %i.ep, 24
  %i.fl = lshr i64 %i.ep, 3
  %i.fm = lshr exact i64 %i.fk, %i.fl             ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fm
  %.0.copyload.i59 = load i32, ptr %i.fn, align 1
  %i.fo = zext i32 %.0.copyload.i59 to i64
  %i.fp = shl nuw i64 %i.fo, 32
  %i.fq = sub nsw i64 0, %i.fm
  %i.fr = getelementptr inbounds i8, ptr %i.ff, i64 %i.fq
  %.0.copyload.i60 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i60 to i64
  %i.ft = or disjoint i64 %i.fp, %i.fs
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.fu = load i8, ptr %0, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw i64 %i.fv, 56
  %i.fx = lshr exact i64 %i.ep, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 32
  %i.gc = or disjoint i64 %i.gb, %i.fw
  %i.gd = getelementptr i8, ptr %0, i64 %i.ep
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i64
  %i.gh = or disjoint i64 %i.gc, %i.gg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gi = icmp ugt i32 %i.eo, 48
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gk = load i64, ptr %i.gj, align 8            ; 3 uses
  br i1 %i.gi, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gt, %.preheader ], [ %i.fb, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.ho, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.hp, %.preheader ], [ %i.ep, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hd, %.preheader ], [ %i.fb, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hn, %.preheader ], [ %i.fb, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gl = xor i64 %.0.copyload.i61, %i.eq
  %i.gm = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gm, align 1
  %i.gn = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.go = zext i64 %i.gl to i128
  %i.gp = zext i64 %i.gn to i128
  %i.gq = mul nuw i128 %i.gp, %i.go               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = xor i128 %i.gr, %i.gq
  %i.gt = trunc i128 %i.gs to i64                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gu, align 1
  %i.gv = xor i64 %.0.copyload.i63, %i.et
  %i.gw = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.gw, align 1
  %i.gx = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.gy = zext i64 %i.gv to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.he, align 1
  %i.hf = xor i64 %i.gk, %.0.copyload.i65
  %i.hg = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hg, align 1
  %i.hh = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hi = zext i64 %i.hf to i128
  %i.hj = zext i64 %i.hh to i128
  %i.hk = mul nuw i128 %i.hj, %i.hi               ; 2 uses
end_hunk_4
