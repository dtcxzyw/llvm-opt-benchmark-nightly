Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/unity?download=true
inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityPrintMask:bb.a
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
  %i.ay = trunc nuw i64 %indvars.iv.next to i32
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %.preheader80
  %i.ba = zext i32 %.062.lcssa151 to i64
  br label %.lr.ph114

.critedge:                                        ; preds = %.critedge.preheader119, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.preheader119 ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.2110 = phi i32 [ %.1.lcssa153, %.critedge.preheader119 ], [ %i.bf, %.critedge ] ; 3 uses
  %i.bb = srem i32 %.2110, 10
  %i.bc = trunc nsw i32 %i.bb to i8
  %i.bd = add nsw i8 %i.bc, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !10
  %i.bf = sdiv i32 %.2110, 10
  %i.bg = add nsw i32 %.2110, -10
  %i.bh = icmp ult i32 %i.bg, -19
  %i.bi = icmp slt i64 %indvars.iv, %i.as
  %i.bj = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %i.bj, label %.critedge, label %.preheader80

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.l
  %indvars.iv132 = phi i64 [ %indvars.iv.next, %.lr.ph114.preheader ], [ %indvars.iv.next133, %bb.l ] ; 3 uses
  %i.bk = icmp eq i64 %indvars.iv132, %i.ba
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph114
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bm = tail call i32 @putc(i32 noundef 46, ptr noundef %i.bl), !inline_history !0 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph114
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next133
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = sext i8 %i.bo to i32
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.br = tail call i32 @putc(i32 noundef %i.bp, ptr noundef %i.bq), !inline_history !0 ; 0 uses
  %i.bs = icmp sgt i64 %indvars.iv132, 1
  br i1 %i.bs, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.l, %.critedge.preheader, %.preheader80
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge115
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bu = tail call i32 @putc(i32 noundef 101, ptr noundef %i.bt), !inline_history !0 ; 0 uses
  %i.bv = icmp slt i32 %i.al, 0
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !13 ; 2 uses
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = tail call i32 @putc(i32 noundef 45, ptr noundef %i.bw), !inline_history !0 ; 0 uses
  %i.by = sub nsw i32 0, %i.al
  br label %.preheader174

bb.o:                                             ; preds = %bb.m
  %i.bz = tail call i32 @putc(i32 noundef 43, ptr noundef %i.bw), !inline_history !0 ; 0 uses
  br label %.preheader174

.preheader174:                                    ; preds = %bb.o, %bb.n
  %.6116.ph = phi i32 [ %i.by, %bb.n ], [ %i.al, %bb.o ]
  br label %bb.p

bb.p:                                             ; preds = %.preheader174, %bb.p
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.p ], [ 1, %.preheader174 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.p ], [ 0, %.preheader174 ] ; 3 uses
  %.6116 = phi i32 [ %i.ce, %bb.p ], [ %.6116.ph, %.preheader174 ] ; 3 uses
  %i.ca = urem i32 %.6116, 10
  %i.cb = trunc nuw nsw i32 %i.ca to i8
  %i.cc = or disjoint i8 %i.cb, 48
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv135
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !10
  %i.ce = udiv i32 %.6116, 10
  %i.cf = icmp ugt i32 %.6116, 9
  %i.cg = icmp eq i64 %indvars.iv135, 0
  %i.ch = or i1 %i.cf, %i.cg
  %indvars.iv.next139 = add nuw i64 %indvars.iv138, 1
  br i1 %i.ch, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.p, %.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.preheader ], [ %indvars.iv138, %bb.p ] ; 2 uses
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next141
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = sext i8 %i.cj to i32
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.cm = tail call i32 @putc(i32 noundef %i.ck, ptr noundef %i.cl), !inline_history !0 ; 0 uses
  %i.cn = trunc nuw i64 %indvars.iv140 to i32
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %.preheader, label %.loopexit

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
define dso_local void @UnityAssertEqualNumber(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  %.not = icmp eq i64 %0, %1
  %or.cond9 = or i1 %.not, %or.cond
end_hunk_0
begin_hunk_1_@UnityPrintExpectedAndActualStringsLen:bb.a
  tail call void @UnityPrintLen(ptr noundef nonnull %1, i32 noundef %2)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !0 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualStringArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %.loopexit56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %.split.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.i = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.i, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.k = tail call i32 @putc(i32 noundef 58, ptr noundef %i.j) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.split.us:                                        ; preds = %bb.f
  %.not46 = icmp eq i32 %5, 1                     ; 2 uses
  %spec.select = select i1 %.not46, ptr null, ptr %0 ; 2 uses
  %wide.trip.count125 = zext i32 %2 to i64        ; 2 uses
  br i1 %.not46, label %.split.us.split.us, label %.split.us.split.split

.split.us.split.us:                               ; preds = %.split.us, %.loopexit.us.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.loopexit.us.us ], [ 0, %.split.us ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv122
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 5 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.m, null
  %or.cond3.us.us = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond3.us.us, label %.preheader.us.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.us
  %.not47.us.us = icmp eq ptr %i.o, %i.m
  br i1 %.not47.us.us, label %.loopexit.us.us, label %.thread

.preheader.us.us:                                 ; preds = %.split.us.split.us, %.critedge.us.us
  %.040.us.us = phi i32 [ %i.w, %.critedge.us.us ], [ 0, %.split.us.split.us ] ; 2 uses
  %i.r = zext i32 %.040.us.us to i64              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 2 uses
  %.not48.us.us = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10    ; 2 uses
  %.not49.us.us = icmp eq i8 %i.v, 0
  %or.cond157 = select i1 %.not48.us.us, i1 %.not49.us.us, i1 false
  br i1 %or.cond157, label %.loopexit.us.us, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.preheader.us.us
  %.not50.us.us = icmp eq i8 %i.t, %i.v
  %i.w = add i32 %.040.us.us, 1
  br i1 %.not50.us.us, label %.preheader.us.us, label %.thread

.loopexit.us.us:                                  ; preds = %.preheader.us.us, %bb.h
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit56, label %.split.us.split.us

.split.us.split.split:                            ; preds = %.split.us, %.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 0, %.split.us ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us.split.split, %.critedge.us
  %.040.us = phi i32 [ %i.ae, %.critedge.us ], [ 0, %.split.us.split.split ] ; 2 uses
  %i.z = zext i32 %.040.us to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 2 uses
  %.not48.us = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10  ; 2 uses
  %.not49.us = icmp eq i8 %i.ad, 0
  %or.cond158 = select i1 %.not48.us, i1 %.not49.us, i1 false
  br i1 %or.cond158, label %.loopexit.us, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.us
  %.not50.us = icmp eq i8 %i.ab, %i.ad
  %i.ae = add i32 %.040.us, 1
  br i1 %.not50.us, label %.preheader.us, label %.thread

.loopexit.us:                                     ; preds = %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count125
  br i1 %exitcond.not, label %.loopexit56, label %.split.us.split.split

.thread:                                          ; preds = %.split.us.split.split, %.critedge.us, %bb.h, %.critedge.us.us
  %.267 = phi ptr [ %spec.select, %.critedge.us ], [ %i.o, %.critedge.us.us ], [ %i.o, %bb.h ], [ %spec.select, %.split.us.split.split ]
  %i.af = phi i64 [ %indvars.iv, %.critedge.us ], [ %indvars.iv122, %.critedge.us.us ], [ %indvars.iv122, %bb.h ], [ %indvars.iv, %.split.us.split.split ]
  %i.ag = phi ptr [ %i.y, %.critedge.us ], [ %i.m, %.critedge.us.us ], [ %i.m, %bb.h ], [ null, %.split.us.split.split ]
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  %.not52 = icmp eq i32 %2, 1
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.af)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  tail call fastcc void @UnityPrintExpectedAndActualStrings(ptr noundef %.267, ptr noundef %i.ag)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.loopexit56:                                      ; preds = %.loopexit.us, %.loopexit.us.us, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualMemory(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  %i.f = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.g, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.f
  %i.j = add i32 %3, -1                           ; 2 uses
  %i.k = add i32 %2, -1                           ; 5 uses
  %i.l = icmp eq i32 %6, 0
  br i1 %i.l, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.m = zext i32 %i.k to i64
  %7 = add nuw nsw i64 %i.m, 1                    ; 2 uses
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.n = load i8, ptr %0, align 1, !tbaa !10
  %i.o = zext i32 %i.k to i64
  %.not42.us141 = icmp eq i32 %i.k, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.split.us
  %i.p = phi i32 [ %i.j, %.preheader.lr.ph.split.split.us ], [ %i.y, %._crit_edge.us ] ; 3 uses
  %.03358.us = phi i32 [ %3, %.preheader.lr.ph.split.split.us ], [ %i.p, %._crit_edge.us ] ; 2 uses
  %.03457.us = phi ptr [ %1, %.preheader.lr.ph.split.split.us ], [ %scevgep93, %._crit_edge.us ] ; 4 uses
  %i.q = load i8, ptr %.03457.us, align 1, !tbaa !10
  %.not43.us64 = icmp eq i8 %i.n, %i.q
  br i1 %.not43.us64, label %.lr.ph.preheader, label %.split.us

.lr.ph.preheader:                                 ; preds = %.preheader.us
  %i.r = getelementptr i8, ptr %.03457.us, i64 %i.o
  %scevgep93 = getelementptr i8, ptr %i.r, i64 1
  br i1 %.not42.us141, label %._crit_edge.us, label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.s = phi i32 [ %i.x, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.152.us65143 = phi ptr [ %i.t, %.lr.ph ], [ %.03457.us, %.lr.ph.preheader ]
  %.13651.us66142 = phi ptr [ %i.u, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.152.us65143, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.13651.us66142, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10
  %i.w = load i8, ptr %i.t, align 1, !tbaa !10
  %.not43.us = icmp eq i8 %i.v, %i.w
  br i1 %.not43.us, label %.lr.ph, label %.split.us

.lr.ph:                                           ; preds = %.lr.ph144
  %i.x = add i32 %i.s, -1                         ; 2 uses
  %.not42.us = icmp eq i32 %i.x, 0
  br i1 %.not42.us, label %._crit_edge.us, label %.lr.ph144

._crit_edge.us:                                   ; preds = %.lr.ph, %.lr.ph.preheader
  %i.y = add i32 %i.p, -1
  %.not41.us = icmp eq i32 %i.p, 0
  br i1 %.not41.us, label %.loopexit, label %.preheader.us

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.z = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.z, i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ab = tail call i32 @putc(i32 noundef 58, ptr noundef %i.aa) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.at, %._crit_edge ], [ %i.j, %.preheader.preheader ] ; 3 uses
  %.03358 = phi i32 [ %i.ac, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  %.03457 = phi ptr [ %scevgep92, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.03556 = phi ptr [ %scevgep.a, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %scevgep.a = getelementptr i8, ptr %.03556, i64 %7
  %scevgep92 = getelementptr i8, ptr %.03457, i64 %7
  %i.ad = load i8, ptr %.03556, align 1, !tbaa !10
  %i.ae = load i8, ptr %.03457, align 1, !tbaa !10
  %.not43130 = icmp eq i8 %i.ad, %i.ae
  br i1 %.not43130, label %.lr.ph133, label %.split.us

bb.h:                                             ; preds = %.lr.ph133
  %i.af = getelementptr inbounds nuw i8, ptr %.13651132, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.152131, i64 1 ; 3 uses
  %i.ah = add i32 %i.as, -1
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !10
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !10
  %.not43 = icmp eq i8 %i.ai, %i.aj
  br i1 %.not43, label %.lr.ph133, label %.split.us

.split.us:                                        ; preds = %.preheader, %bb.h, %.preheader.us, %.lr.ph144
  %.us-phi = phi i32 [ %.03358.us, %.preheader.us ], [ %.03358, %bb.h ], [ %.03358.us, %.lr.ph144 ], [ %.03358, %.preheader ]
  %.us-phi59 = phi ptr [ %0, %.preheader.us ], [ %i.af, %bb.h ], [ %i.u, %.lr.ph144 ], [ %.03556, %.preheader ]
  %.us-phi60 = phi ptr [ %.03457.us, %.preheader.us ], [ %i.ag, %bb.h ], [ %i.t, %.lr.ph144 ], [ %.03457, %.preheader ]
  %.us-phi61 = phi i32 [ %2, %.preheader.us ], [ %i.as, %bb.h ], [ %i.s, %.lr.ph144 ], [ %2, %.preheader ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrMemory)
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.us
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.ak = sub nuw i32 %3, %.us-phi
  %i.al = zext i32 %i.ak to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.al)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.us
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrByte)
  %i.am = sub nuw i32 %2, %.us-phi61
  %i.an = zext i32 %i.am to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.an)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ao = load i8, ptr %.us-phi59, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i64
  tail call void @UnityPrintNumberByStyle(i64 noundef %i.ap, i32 noundef 65)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.aq = load i8, ptr %.us-phi60, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  tail call void @UnityPrintNumberByStyle(i64 noundef %i.ar, i32 noundef 65)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.lr.ph133:                                        ; preds = %.preheader, %bb.h
  %.13651132 = phi ptr [ %i.af, %bb.h ], [ %.03556, %.preheader ]
  %.152131 = phi ptr [ %i.ag, %bb.h ], [ %.03457, %.preheader ]
  %i.as = phi i32 [ %i.ah, %bb.h ], [ %i.k, %.preheader ] ; 3 uses
  %.not42 = icmp eq i32 %i.as, 0
  br i1 %.not42, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %.lr.ph133
  %i.at = add i32 %i.ac, -1
  %.not41 = icmp eq i32 %i.ac, 0
  br i1 %.not41, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @UnityNumToPtr(i64 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  switch i8 %1, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %0 to i8
  store i8 %i.a, ptr @UnityQuickCompare, align 8, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i16
  store i16 %i.b, ptr @UnityQuickCompare, align 8, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 %0, ptr @UnityQuickCompare, align 8, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.c = trunc i64 %0 to i32
  store i32 %i.c, ptr @UnityQuickCompare, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr @UnityQuickCompare
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @UnityFloatToPtr(float noundef %0) local_unnamed_addr #4 {
bb.a:
  store float %0, ptr @UnityQuickCompare, align 8, !tbaa !10
  ret ptr @UnityQuickCompare
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @UnityDoubleToPtr(double noundef %0) local_unnamed_addr #4 {
bb.a:
  store double %0, ptr @UnityQuickCompare, align 8, !tbaa !10
  ret ptr @UnityQuickCompare
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityFail(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.e, i64 noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.g = tail call i32 @putc(i32 noundef 58, ptr noundef %i.f), !inline_history !0 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail1Name)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  tail call void @UnityPrint(ptr noundef %i.i)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  %.not5 = icmp eq ptr %i.j, null
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail2Name)
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  tail call void @UnityPrint(ptr noundef %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.l = load i8, ptr %0, align 1, !tbaa !10
  %.not6 = icmp eq i8 %i.l, 32
  br i1 %.not6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.n = tail call i32 @putc(i32 noundef 32, ptr noundef %i.m), !inline_history !0 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @UnityPrint(ptr noundef nonnull %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityIgnore(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.e, i64 noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrIgnore)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.g = tail call i32 @putc(i32 noundef 58, ptr noundef %i.f), !inline_history !0 ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !13
end_hunk_1
