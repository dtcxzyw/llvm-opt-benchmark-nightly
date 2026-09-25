Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/unity?download=true
inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityPrintNumberUnsigned:bb.a
  %i.f = urem i64 %i.e, 10
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = or disjoint i32 %i.g, 48
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.j = tail call i32 @putc(i32 noundef %i.h, ptr noundef %i.i), !inline_history !0 ; 0 uses
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
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !13 ; 2 uses
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @putc(i32 noundef 49, ptr noundef %i.c), !inline_history !0 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @putc(i32 noundef 48, ptr noundef %i.c), !inline_history !0 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.g = tail call i32 @putc(i32 noundef 88, ptr noundef %i.f), !inline_history !0 ; 0 uses
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
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.g = tail call i32 @putc(i32 noundef 45, ptr noundef %i.f), !inline_history !0 ; 0 uses
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
  %.063.lcssa = phi i32 [ 0, %bb.j ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.n = fcmp olt double %.168.lcssa, 1.000000e+05
  br i1 %i.n, label %.lr.ph89, label %.preheader82

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.06385 = phi i32 [ %i.p, %.lr.ph ], [ 0, %bb.j ]
  %.16884 = phi double [ %i.o, %.lr.ph ], [ %.067, %bb.j ]
  %i.o = fmul nnan double %.16884, 1.000000e+06   ; 3 uses
  %i.p = add nsw i32 %.06385, -6                  ; 2 uses
  %i.q = fcmp olt double %i.o, f0x3FB99999A0000000
  br i1 %i.q, label %.lr.ph, label %.preheader83

.preheader82:                                     ; preds = %.lr.ph89, %.preheader83
  %.269.lcssa = phi double [ %.168.lcssa, %.preheader83 ], [ %i.s, %.lr.ph89 ] ; 3 uses
  %.164.lcssa = phi i32 [ %.063.lcssa, %.preheader83 ], [ %i.t, %.lr.ph89 ] ; 2 uses
  %i.r = fcmp ogt double %.269.lcssa, f0x426D1A94A0000000
  br i1 %i.r, label %.lr.ph94, label %.preheader81

.lr.ph89:                                         ; preds = %.preheader83, %.lr.ph89
  %.16488 = phi i32 [ %i.t, %.lr.ph89 ], [ %.063.lcssa, %.preheader83 ]
  %.26987 = phi double [ %i.s, %.lr.ph89 ], [ %.168.lcssa, %.preheader83 ]
  %i.s = fmul nnan double %.26987, 1.000000e+01   ; 3 uses
  %i.t = add nsw i32 %.16488, -1                  ; 2 uses
  %i.u = fcmp olt double %i.s, 1.000000e+05
  br i1 %i.u, label %.lr.ph89, label %.preheader82

.preheader81:                                     ; preds = %.lr.ph94, %.preheader82
  %.370.lcssa = phi double [ %.269.lcssa, %.preheader82 ], [ %i.w, %.lr.ph94 ] ; 3 uses
  %.265.lcssa = phi i32 [ %.164.lcssa, %.preheader82 ], [ %i.x, %.lr.ph94 ] ; 2 uses
  %i.v = fcmp ogt double %.370.lcssa, 1.000000e+06
  br i1 %i.v, label %.lr.ph99, label %._crit_edge

.lr.ph94:                                         ; preds = %.preheader82, %.lr.ph94
  %.26593 = phi i32 [ %i.x, %.lr.ph94 ], [ %.164.lcssa, %.preheader82 ]
  %.37092 = phi double [ %i.w, %.lr.ph94 ], [ %.269.lcssa, %.preheader82 ]
  %i.w = fdiv double %.37092, 1.000000e+06        ; 3 uses
  %i.x = add nsw i32 %.26593, 6                   ; 2 uses
  %i.y = fcmp ogt double %i.w, f0x426D1A94A0000000
  br i1 %i.y, label %.lr.ph94, label %.preheader81

.lr.ph99:                                         ; preds = %.preheader81, %.lr.ph99
  %.36698 = phi i32 [ %i.aa, %.lr.ph99 ], [ %.265.lcssa, %.preheader81 ]
  %.47197 = phi double [ %i.z, %.lr.ph99 ], [ %.370.lcssa, %.preheader81 ]
  %i.z = fdiv double %.47197, 1.000000e+01        ; 3 uses
  %i.aa = add nsw i32 %.36698, 1                  ; 2 uses
  %i.ab = fcmp ogt double %i.z, 1.000000e+06
  br i1 %i.ab, label %.lr.ph99, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph99, %.preheader81
  %.471.lcssa = phi double [ %.370.lcssa, %.preheader81 ], [ %i.z, %.lr.ph99 ]
  %.366.lcssa = phi i32 [ %.265.lcssa, %.preheader81 ], [ %i.aa, %.lr.ph99 ]
  %i.ac = fmul double %.471.lcssa, 2.000000e+00
  %i.ad = fptosi double %i.ac to i32              ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = sdiv i32 %i.ae, 2
  %i.ag = icmp sgt i32 %i.ad, 1999998             ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %spec.select = add nsw i32 %.366.lcssa, %i.ah   ; 3 uses
  %spec.select77 = select i1 %i.ag, i32 100000, i32 %i.af ; 4 uses
  %i.ai = add i32 %spec.select, 9
  %or.cond = icmp ult i32 %i.ai, 10
  %i.aj = sub nsw i32 0, %spec.select
  %i.ak = select i1 %or.cond, i32 %i.aj, i32 5    ; 5 uses
  %i.al = add nsw i32 %i.ak, %spec.select         ; 4 uses
  %i.am = icmp sgt i32 %i.ak, 0
  %i.an = srem i32 %spec.select77, 10
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond79102 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond79102, label %.lr.ph106, label %.critedge.preheader

.critedge.preheader:                              ; preds = %._crit_edge
  %i.ap = icmp ne i32 %spec.select77, 0
  %i.aq = icmp sgt i32 %i.ak, -1
  %i.ar = or i1 %i.ap, %i.aq
  br i1 %i.ar, label %.critedge.preheader119, label %._crit_edge115

.critedge.preheader119:                           ; preds = %.lr.ph106, %.critedge.preheader
  %.1.lcssa153 = phi i32 [ %spec.select77, %.critedge.preheader ], [ %i.at, %.lr.ph106 ]
  %.062.lcssa151 = phi i32 [ %i.ak, %.critedge.preheader ], [ %i.au, %.lr.ph106 ] ; 2 uses
  %i.as = sext i32 %.062.lcssa151 to i64
  br label %.critedge

.lr.ph106:                                        ; preds = %._crit_edge, %.lr.ph106
  %.1104 = phi i32 [ %i.at, %.lr.ph106 ], [ %spec.select77, %._crit_edge ]
  %.062103 = phi i32 [ %i.au, %.lr.ph106 ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.at = sdiv i32 %.1104, 10                     ; 3 uses
  %i.au = add nsw i32 %.062103, -1                ; 2 uses
  %i.av = icmp samesign ugt i32 %.062103, 1
  %i.aw = srem i32 %i.at, 10
  %i.ax = icmp eq i32 %i.aw, 0
  %or.cond79 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond79, label %.lr.ph106, label %.critedge.preheader119

.preheader80:                                     ; preds = %.critedge
  %1 = trunc nuw i64 %indvars.iv.next to i32
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %.preheader80
  %i.ay = zext i32 %.062.lcssa151 to i64
  br label %.lr.ph114

.critedge:                                        ; preds = %.critedge.preheader119, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.preheader119 ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.2110 = phi i32 [ %.1.lcssa153, %.critedge.preheader119 ], [ %i.bd, %.critedge ] ; 3 uses
  %i.az = srem i32 %.2110, 10
  %i.ba = trunc nsw i32 %i.az to i8
  %i.bb = add nsw i8 %i.ba, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !10
  %i.bd = sdiv i32 %.2110, 10
  %i.be = add nsw i32 %.2110, -10
  %i.bf = icmp ult i32 %i.be, -19
  %i.bg = icmp slt i64 %indvars.iv, %i.as
  %i.bh = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %i.bh, label %.critedge, label %.preheader80

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.l
  %indvars.iv132 = phi i64 [ %indvars.iv.next, %.lr.ph114.preheader ], [ %indvars.iv.next133, %bb.l ] ; 3 uses
  %i.bi = icmp eq i64 %indvars.iv132, %i.ay
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph114
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bk = tail call i32 @putc(i32 noundef 46, ptr noundef %i.bj), !inline_history !0 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph114
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next133
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.bn = sext i8 %i.bm to i32
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bp = tail call i32 @putc(i32 noundef %i.bn, ptr noundef %i.bo), !inline_history !0 ; 0 uses
  %i.bq = icmp sgt i64 %indvars.iv132, 1
  br i1 %i.bq, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.l, %.critedge.preheader, %.preheader80
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge115
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bs = tail call i32 @putc(i32 noundef 101, ptr noundef %i.br), !inline_history !0 ; 0 uses
  %i.bt = icmp slt i32 %i.al, 0
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !13 ; 2 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call i32 @putc(i32 noundef 45, ptr noundef %i.bu), !inline_history !0 ; 0 uses
  %i.bw = sub nsw i32 0, %i.al
  br label %.preheader174

bb.o:                                             ; preds = %bb.m
  %i.bx = tail call i32 @putc(i32 noundef 43, ptr noundef %i.bu), !inline_history !0 ; 0 uses
  br label %.preheader174

.preheader174:                                    ; preds = %bb.o, %bb.n
  %.6116.ph = phi i32 [ %i.bw, %bb.n ], [ %i.al, %bb.o ]
  br label %bb.p

bb.p:                                             ; preds = %.preheader174, %bb.p
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.p ], [ 1, %.preheader174 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.p ], [ 0, %.preheader174 ] ; 3 uses
  %.6116 = phi i32 [ %i.cc, %bb.p ], [ %.6116.ph, %.preheader174 ] ; 3 uses
  %i.by = urem i32 %.6116, 10
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 48
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv135
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !10
  %i.cc = udiv i32 %.6116, 10
  %i.cd = icmp ugt i32 %.6116, 9
  %i.ce = icmp eq i64 %indvars.iv135, 0
  %i.cf = or i1 %i.cd, %i.ce
  %indvars.iv.next139 = add nuw i64 %indvars.iv138, 1
  br i1 %i.cf, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.p, %.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.preheader ], [ %indvars.iv138, %bb.p ] ; 2 uses
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next141
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = sext i8 %i.ch to i32
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ck = tail call i32 @putc(i32 noundef %i.ci, ptr noundef %i.cj), !inline_history !0 ; 0 uses
  %i.cl = trunc nuw i64 %indvars.iv140 to i32
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %.loopexit, %bb.i, %bb.e
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @UnityConcludeTest() local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8, !tbaa !17
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 56), align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %.not1 = icmp eq i64 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @Unity, align 8, !tbaa !20
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 32), align 8, !tbaa !21
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.e, i64 noundef %i.f)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPass)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 48), align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 48), align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @Unity, i64 64), i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.j = tail call i32 @putc(i32 noundef 10, ptr noundef %i.i), !inline_history !0 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityTestResultsBegin(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @UnityPrint(ptr noundef %0)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.b = tail call i32 @putc(i32 noundef 58, ptr noundef %i.a), !inline_history !0 ; 0 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.e = tail call i32 @putc(i32 noundef 45, ptr noundef %i.d), !inline_history !0 ; 0 uses
  %i.f = sub nsw i64 0, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.g = icmp samesign ugt i64 %.0.i, 9
  br i1 %i.g, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ 1, %bb.c ]
  %i.h = mul i64 %.07.i.i, 10                     ; 3 uses
  %i.i = udiv i64 %.0.i, %i.h
  %i.j = icmp samesign ugt i64 %i.i, 9
  br i1 %i.j, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.c
  %.1.i.i.ph = phi i64 [ 1, %bb.c ], [ %i.h, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.1.i.i = phi i64 [ %i.q, %.preheader.i.i ], [ %.1.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %i.k = udiv i64 %.0.i, %.1.i.i
  %i.l = urem i64 %i.k, 10
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = or disjoint i32 %i.m, 48
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.p = tail call i32 @putc(i32 noundef %i.n, ptr noundef %i.o), !inline_history !0 ; 0 uses
  %i.q = udiv i64 %.1.i.i, 10
  %.not.i.i = icmp ult i64 %.1.i.i, 10
  br i1 %.not.i.i, label %UnityPrintNumber.exit, label %.preheader.i.i

UnityPrintNumber.exit:                            ; preds = %.preheader.i.i
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.s = tail call i32 @putc(i32 noundef 58, ptr noundef %i.r), !inline_history !0 ; 0 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 8), align 8, !tbaa !23
  tail call void @UnityPrint(ptr noundef %i.t)
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.v = tail call i32 @putc(i32 noundef 58, ptr noundef %i.u), !inline_history !0 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertBits(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %2, %1
  %i.f = and i64 %i.e, %0
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintMask(i64 noundef %0, i64 noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintMask(i64 noundef %0, i64 noundef %2)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityTestResultsFailBegin(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.a, i64 noundef %0)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.c = tail call i32 @putc(i32 noundef 58, ptr noundef %i.b), !inline_history !0 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityAddMsgIfSpecified(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  %.not2 = icmp eq ptr %i.a, null
  br i1 %.not2, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail1Name)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  tail call void @UnityPrint(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail2Name)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  tail call void @UnityPrint(ptr noundef %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
