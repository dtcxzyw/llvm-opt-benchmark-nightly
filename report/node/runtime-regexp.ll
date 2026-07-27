inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal12StringSearchIhhE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !245

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !246

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !247

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !248

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit66, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  %i.m = add nsw i32 %i.e, -1                     ; 4 uses
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
  br label %.preheader74.us, !llvm.loop !249

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
  br i1 %i.ag, label %bb.e, label %.thread, !llvm.loop !250

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
  %4 = sext i32 %.150 to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.au = getelementptr i8, ptr %5, i64 -1
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not64 = icmp eq i8 %i.p, %i.av
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %6 = xor i32 %i.ay, -1
  %i.az = add nsw i32 %.150, %6                   ; 2 uses
  %.not65 = icmp sgt i32 %i.az, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !251

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
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !252

bb.e:                                             ; preds = %bb.g, %.preheader40.i
  %.0.i = phi i32 [ %i.af, %bb.g ], [ %3, %.preheader40.i ] ; 2 uses
  %i.q = sext i32 %.0.i to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %i.q
  %i.s = sub i32 %i.h, %.0.i
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = tail call noundef ptr @memchr(ptr noundef %i.r, i32 noundef %i.j, i64 noundef %i.u) #23 ; 2 uses
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
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !144

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !252

bb.f:                                             ; preds = %bb.h, %.preheader40.i
  %.0.i = phi i32 [ %i.ai, %bb.h ], [ %.013, %.preheader40.i ] ; 2 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t
  %i.v = sub i32 %i.g, %.0.i
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = tail call noundef ptr @memchr(ptr noundef %i.u, i32 noundef %i.n, i64 noundef %i.x) #23 ; 2 uses
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
  br i1 %i.aj, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !144

.thread.loopexit.split.loop.exit57.i:             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !264

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !265

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !266

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !267

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  %i.m = add nsw i32 %i.e, -1                     ; 4 uses
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
  br label %.preheader76.us, !llvm.loop !268

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
  br i1 %i.aj, label %bb.f, label %.thread, !llvm.loop !269

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
  %4 = sext i32 %.150 to i64
  %5 = getelementptr [2 x i8], ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 -2
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
  %7 = xor i32 %i.bc, -1
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %7, %bb.m ], [ 0, %bb.l ]
  %i.bd = add nsw i32 %.0.i, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bd, %i.n
  br i1 %.not65, label %.thread, label %.preheader76, !llvm.loop !270

.thread:                                          ; preds = %bb.k, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.g, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, %.preheader76, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %bb.g ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ %.150, %.preheader76 ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ -1, %bb.k ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ae, ptr %.08.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !272

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

declare ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6ObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_1
begin_hunk_2_@_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !291

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !292

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !293

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !294

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  %i.m = add nsw i32 %i.e, -1                     ; 4 uses
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
  br label %.preheader73.us, !llvm.loop !295

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
  br i1 %i.aj, label %bb.e, label %.thread, !llvm.loop !296

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
  %4 = sext i32 %.150 to i64
  %5 = getelementptr i8, ptr %1, i64 %4
  %i.ax = getelementptr i8, ptr %5, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = zext i8 %i.ay to i16
  %.not64 = icmp eq i16 %i.p, %i.az
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader73
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %6 = xor i32 %i.bc, -1
  %i.bd = add nsw i32 %.150, %6                   ; 2 uses
  %.not65 = icmp sgt i32 %i.bd, %i.q
  br i1 %.not65, label %.thread, label %.preheader73, !llvm.loop !297

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
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !298

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
  %i.x = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.q, i64 noundef %i.w) #23 ; 2 uses
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
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !299

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit15, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !298

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
  %i.aa = tail call noundef ptr @memchr(ptr noundef %i.w, i32 noundef %i.u, i64 noundef %i.z) #23 ; 2 uses
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
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !310

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !311

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !312

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !313

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
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
  %i.m = add nsw i32 %i.e, -1                     ; 4 uses
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
  br label %.preheader74.us, !llvm.loop !314

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
  br i1 %i.ai, label %bb.e, label %.thread, !llvm.loop !315

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
  %4 = sext i32 %.150 to i64
  %5 = getelementptr [2 x i8], ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 -2
  %i.ax = load i16, ptr %6, align 2               ; 2 uses
  %.not64 = icmp eq i16 %i.p, %i.ax
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.ay = and i16 %i.ax, 255
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %7 = xor i32 %i.bb, -1
  %i.bc = add nsw i32 %.150, %7                   ; 2 uses
  %.not65 = icmp sgt i32 %i.bc, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !316

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !318

_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !319
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %i.f = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
  %.sroa.090.0 = phi i64 [ %i.e, %bb.b ], [ %i.cc, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.g = add i64 %.sroa.090.0, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.p [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr %1, i64 %2)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i9
  br i1 %i.f, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.v = load i16, ptr %.01013.i.i, align 2
  %i.w = load i8, ptr %.01112.i.i, align 1
  %i.x = zext i8 %i.w to i16
  %.not.i.i = icmp eq i16 %i.v, %i.x              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.y, %i.u
  %or.cond = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !322

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.aa = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.090.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %i.ae = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
end_hunk_3
