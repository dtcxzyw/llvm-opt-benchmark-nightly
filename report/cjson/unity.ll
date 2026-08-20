inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityPrintNumberByStyle:bb.a
  %i.ah = and i8 %i.ag, 30                        ; 2 uses
  %.not8 = icmp eq i8 %i.ah, 0
  br i1 %.not8, label %UnityPrintNumber.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 16)
  %i.ai = zext nneg i8 %spec.select.i to i64
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i7 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aj = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.ak = lshr i64 %0, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 15                       ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 10
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ap = add nuw nsw i32 %i.am, 55
  %i.aq = or disjoint i32 %i.am, 48
  %.sink.i = select i1 %i.an, i32 %i.aq, i32 %i.ap
  %i.ar = tail call i32 @putc(i32 noundef %.sink.i, ptr noundef %i.ao) ; 0 uses
  %i.as = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.as, label %.lr.ph.i7, label %UnityPrintNumber.exit

UnityPrintNumber.exit:                            ; preds = %.preheader.i.i, %.preheader.i, %.lr.ph.i7, %bb.g
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityPrintNumber(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.c = tail call i32 @putc(i32 noundef 45, ptr noundef %i.b), !inline_history !13 ; 0 uses
  %i.d = sub nsw i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %i.e = icmp samesign ugt i64 %.0, 9
  br i1 %i.e, label %.lr.ph.i, label %.preheader.i.preheader

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i64 [ %i.f, %.lr.ph.i ], [ 1, %bb.c ]
  %i.f = mul i64 %.07.i, 10                       ; 3 uses
  %i.g = udiv i64 %.0, %i.f
  %i.h = icmp samesign ugt i64 %i.g, 9
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.c
  %.1.i.ph = phi i64 [ 1, %bb.c ], [ %i.f, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i64 [ %i.o, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.i = udiv i64 %.0, %.1.i
  %i.j = urem i64 %i.i, 10
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = or disjoint i32 %i.k, 48
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.n = tail call i32 @putc(i32 noundef %i.l, ptr noundef %i.m), !inline_history !13 ; 0 uses
  %i.o = udiv i64 %.1.i, 10
  %.not.i = icmp ult i64 %.1.i, 10
  br i1 %.not.i, label %UnityPrintNumberUnsigned.exit, label %.preheader.i

UnityPrintNumberUnsigned.exit:                    ; preds = %.preheader.i
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityPrintNumberUnsigned(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %0, 9
  br i1 %i.a, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.b, %.lr.ph ], [ 1, %bb.a ]
  %i.b = mul i64 %.07, 10                         ; 3 uses
  %i.c = udiv i64 %0, %i.b
  %i.d = icmp samesign ugt i64 %i.c, 9
  br i1 %i.d, label %.lr.ph, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %bb.a
  %.1.ph = phi i64 [ 1, %bb.a ], [ %i.b, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.1 = phi i64 [ %i.k, %.preheader ], [ %.1.ph, %.preheader.preheader ] ; 3 uses
  %i.e = udiv i64 %0, %.1
  %i.f = urem i64 %i.e, 10
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = or disjoint i32 %i.g, 48
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.j = tail call i32 @putc(i32 noundef %i.h, ptr noundef %i.i), !inline_history !13 ; 0 uses
  %i.k = udiv i64 %.1, 10
  %.not = icmp ult i64 %.1, 10
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityPrintMask(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %.010 = phi i32 [ 0, %bb.a ], [ %i.i, %bb.g ]
  %.079 = phi i64 [ 2147483648, %bb.a ], [ %i.h, %bb.g ] ; 3 uses
  %i.a = and i64 %.079, %0
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %.079, %1
  %.not8 = icmp eq i64 %i.b, 0
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10 ; 2 uses
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @putc(i32 noundef 49, ptr noundef %i.c), !inline_history !13 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @putc(i32 noundef 48, ptr noundef %i.c), !inline_history !13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.g = tail call i32 @putc(i32 noundef 88, ptr noundef %i.f), !inline_history !13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.h = lshr i64 %.079, 1
  %i.i = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, 32
  br i1 %exitcond.not, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityPrintFloat(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = fcmp olt double %0, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fdiv double 1.000000e+00, %0
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %or.cond76 = and i1 %i.c, %i.e
  br i1 %or.cond76, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.g = tail call i32 @putc(i32 noundef 45, ptr noundef %i.f), !inline_history !13 ; 0 uses
  %i.h = fneg double %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi double [ %i.h, %bb.c ], [ %0, %bb.b ] ; 7 uses
  %i.i = fcmp oeq double %.067, 0.000000e+00
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @.str)
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.j = fcmp uno double %.067, 0.000000e+00
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @UnityPrint(ptr noundef nonnull @.str.1)
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.k = fsub double %.067, %.067
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @UnityPrint(ptr noundef nonnull @.str.2)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.m = fcmp olt double %.067, f0x3FB99999A0000000
  br i1 %i.m, label %.lr.ph, label %.preheader83

.preheader83:                                     ; preds = %.lr.ph, %bb.j
  %.168.lcssa = phi double [ %.067, %bb.j ], [ %i.o, %.lr.ph ] ; 3 uses
  %.063.lcssa = phi i32 [ 0, %bb.j ], [ -6, %.lr.ph ] ; 2 uses
  %i.n = fcmp olt double %.168.lcssa, 1.000000e+05
  br i1 %i.n, label %.lr.ph89, label %.preheader82

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.16884 = phi double [ %i.o, %.lr.ph ], [ %.067, %bb.j ]
  %i.o = fmul nnan double %.16884, 1.000000e+06   ; 3 uses
  %i.p = fcmp olt double %i.o, f0x3FB99999A0000000
  br i1 %i.p, label %.lr.ph, label %.preheader83

.preheader82:                                     ; preds = %.lr.ph89, %.preheader83
  %.269.lcssa = phi double [ %.168.lcssa, %.preheader83 ], [ %i.r, %.lr.ph89 ] ; 3 uses
  %.164.lcssa = phi i32 [ %.063.lcssa, %.preheader83 ], [ %i.s, %.lr.ph89 ] ; 2 uses
  %i.q = fcmp ogt double %.269.lcssa, f0x426D1A94A0000000
  br i1 %i.q, label %.lr.ph94, label %.preheader81

.lr.ph89:                                         ; preds = %.preheader83, %.lr.ph89
  %.16488 = phi i32 [ %i.s, %.lr.ph89 ], [ %.063.lcssa, %.preheader83 ]
  %.26987 = phi double [ %i.r, %.lr.ph89 ], [ %.168.lcssa, %.preheader83 ]
  %i.r = fmul nnan double %.26987, 1.000000e+01   ; 3 uses
  %i.s = add nsw i32 %.16488, -1                  ; 2 uses
  %i.t = fcmp olt double %i.r, 1.000000e+05
  br i1 %i.t, label %.lr.ph89, label %.preheader82

.preheader81:                                     ; preds = %.lr.ph94, %.preheader82
  %.370.lcssa = phi double [ %.269.lcssa, %.preheader82 ], [ %i.v, %.lr.ph94 ] ; 3 uses
  %.265.lcssa = phi i32 [ %.164.lcssa, %.preheader82 ], [ %i.w, %.lr.ph94 ] ; 2 uses
  %i.u = fcmp ogt double %.370.lcssa, 1.000000e+06
  br i1 %i.u, label %.lr.ph99, label %._crit_edge

.lr.ph94:                                         ; preds = %.preheader82, %.lr.ph94
  %.26593 = phi i32 [ %i.w, %.lr.ph94 ], [ %.164.lcssa, %.preheader82 ]
  %.37092 = phi double [ %i.v, %.lr.ph94 ], [ %.269.lcssa, %.preheader82 ]
  %i.v = fdiv double %.37092, 1.000000e+06        ; 3 uses
  %i.w = add nsw i32 %.26593, 6                   ; 2 uses
  %i.x = fcmp ogt double %i.v, f0x426D1A94A0000000
  br i1 %i.x, label %.lr.ph94, label %.preheader81

.lr.ph99:                                         ; preds = %.preheader81, %.lr.ph99
  %.36698 = phi i32 [ %i.z, %.lr.ph99 ], [ %.265.lcssa, %.preheader81 ]
  %.47197 = phi double [ %i.y, %.lr.ph99 ], [ %.370.lcssa, %.preheader81 ]
  %i.y = fdiv double %.47197, 1.000000e+01        ; 3 uses
  %i.z = add nsw i32 %.36698, 1                   ; 2 uses
  %i.aa = fcmp ogt double %i.y, 1.000000e+06
  br i1 %i.aa, label %.lr.ph99, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph99, %.preheader81
  %.471.lcssa = phi double [ %.370.lcssa, %.preheader81 ], [ %i.y, %.lr.ph99 ] ; 2 uses
  %.366.lcssa = phi i32 [ %.265.lcssa, %.preheader81 ], [ %i.z, %.lr.ph99 ]
  %i.ab = fadd double %.471.lcssa, %.471.lcssa
  %i.ac = fptosi double %i.ab to i32              ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = sdiv i32 %i.ad, 2
  %i.af = icmp sgt i32 %i.ac, 1999998             ; 2 uses
  %i.ag = zext i1 %i.af to i32
  %spec.select = add nsw i32 %.366.lcssa, %i.ag   ; 3 uses
  %spec.select77 = select i1 %i.af, i32 100000, i32 %i.ae ; 4 uses
  %i.ah = add i32 %spec.select, 9
  %or.cond = icmp ult i32 %i.ah, 10
  %i.ai = sub nsw i32 0, %spec.select
  %i.aj = select i1 %or.cond, i32 %i.ai, i32 5    ; 5 uses
  %i.ak = add nsw i32 %i.aj, %spec.select         ; 4 uses
  %i.al = icmp sgt i32 %i.aj, 0
  %i.am = srem i32 %spec.select77, 10
  %i.an = icmp eq i32 %i.am, 0
  %or.cond79102 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond79102, label %.lr.ph106, label %.critedge.preheader

.critedge.preheader:                              ; preds = %._crit_edge
  %i.ao = icmp ne i32 %spec.select77, 0
  %i.ap = icmp sgt i32 %i.aj, -1
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.critedge.preheader119, label %._crit_edge115

.critedge.preheader119:                           ; preds = %.lr.ph106, %.critedge.preheader
  %.1.lcssa153 = phi i32 [ %spec.select77, %.critedge.preheader ], [ %i.as, %.lr.ph106 ]
  %.062.lcssa151 = phi i32 [ %i.aj, %.critedge.preheader ], [ %i.at, %.lr.ph106 ] ; 2 uses
  %i.ar = sext i32 %.062.lcssa151 to i64
  br label %.critedge

.lr.ph106:                                        ; preds = %._crit_edge, %.lr.ph106
  %.1104 = phi i32 [ %i.as, %.lr.ph106 ], [ %spec.select77, %._crit_edge ]
  %.062103 = phi i32 [ %i.at, %.lr.ph106 ], [ %i.aj, %._crit_edge ] ; 2 uses
  %i.as = sdiv i32 %.1104, 10                     ; 3 uses
  %i.at = add nsw i32 %.062103, -1                ; 2 uses
  %i.au = icmp samesign ugt i32 %.062103, 1
  %i.av = srem i32 %i.as, 10
  %i.aw = icmp eq i32 %i.av, 0
  %or.cond79 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond79, label %.lr.ph106, label %.critedge.preheader119

.preheader80:                                     ; preds = %.critedge
  %i.ax = trunc nuw i64 %indvars.iv.next to i32
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %.preheader80
  %i.az = zext i32 %.062.lcssa151 to i64
  br label %.lr.ph114

.critedge:                                        ; preds = %.critedge.preheader119, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.preheader119 ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.2110 = phi i32 [ %.1.lcssa153, %.critedge.preheader119 ], [ %i.be, %.critedge ] ; 3 uses
  %i.ba = srem i32 %.2110, 10
  %i.bb = trunc nsw i32 %i.ba to i8
  %i.bc = add nsw i8 %i.bb, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = sdiv i32 %.2110, 10
  %i.bf = add nsw i32 %.2110, -10
  %i.bg = icmp ult i32 %i.bf, -19
  %i.bh = icmp slt i64 %indvars.iv, %i.ar
  %i.bi = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %i.bi, label %.critedge, label %.preheader80

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.l
  %indvars.iv132 = phi i64 [ %indvars.iv.next, %.lr.ph114.preheader ], [ %indvars.iv.next133, %bb.l ] ; 3 uses
  %i.bj = icmp eq i64 %indvars.iv132, %i.az
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph114
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.bl = tail call i32 @putc(i32 noundef 46, ptr noundef %i.bk), !inline_history !13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph114
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next133
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = sext i8 %i.bn to i32
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.bq = tail call i32 @putc(i32 noundef %i.bo, ptr noundef %i.bp), !inline_history !13 ; 0 uses
  %i.br = icmp sgt i64 %indvars.iv132, 1
  br i1 %i.br, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.l, %.critedge.preheader, %.preheader80
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge115
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.bt = tail call i32 @putc(i32 noundef 101, ptr noundef %i.bs), !inline_history !13 ; 0 uses
  %i.bu = icmp slt i32 %i.ak, 0
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !10 ; 2 uses
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call i32 @putc(i32 noundef 45, ptr noundef %i.bv), !inline_history !13 ; 0 uses
  %i.bx = sub nsw i32 0, %i.ak
  br label %.preheader174

bb.o:                                             ; preds = %bb.m
  %i.by = tail call i32 @putc(i32 noundef 43, ptr noundef %i.bv), !inline_history !13 ; 0 uses
  br label %.preheader174

.preheader174:                                    ; preds = %bb.o, %bb.n
  %.6116.ph = phi i32 [ %i.bx, %bb.n ], [ %i.ak, %bb.o ]
  br label %bb.p

bb.p:                                             ; preds = %.preheader174, %bb.p
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.p ], [ 1, %.preheader174 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.p ], [ 0, %.preheader174 ] ; 3 uses
  %.6116 = phi i32 [ %i.cd, %bb.p ], [ %.6116.ph, %.preheader174 ] ; 3 uses
  %i.bz = urem i32 %.6116, 10
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv135
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9
  %i.cd = udiv i32 %.6116, 10
  %i.ce = icmp ugt i32 %.6116, 9
  %i.cf = icmp eq i64 %indvars.iv135, 0
  %i.cg = or i1 %i.ce, %i.cf
  %indvars.iv.next139 = add nuw i64 %indvars.iv138, 1
  br i1 %i.cg, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.p, %.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.preheader ], [ %indvars.iv138, %bb.p ] ; 2 uses
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next141
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = sext i8 %i.ci to i32
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.cl = tail call i32 @putc(i32 noundef %i.cj, ptr noundef %i.ck), !inline_history !13 ; 0 uses
  %i.cm = trunc nuw i64 %indvars.iv140 to i32
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %.loopexit, %bb.i, %bb.e
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityConcludeTest() local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8, !tbaa !14
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
end_hunk_0
