Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decCompareOp:bb.a
  %.136 = select i1 %.not129, i32 1, i32 -1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.cg = and i8 %i.ce, %i.cc
  %or.cond13.not = icmp sgt i8 %i.cg, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  br i1 %or.cond13.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = icmp slt i32 %i.ci, %i.ck
  %.137 = select i1 %i.cl, i32 1, i32 -1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cm = icmp sgt i32 %i.ci, %i.ck
  %.138 = select i1 %i.cm, i32 1, i32 -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak, %bb.af
  %.5 = phi i32 [ %.1143, %bb.af ], [ %.136, %bb.ah ], [ %.138, %bb.ak ], [ %.137, %bb.aj ] ; 2 uses
  switch i8 %4, label %bb.an [
    i8 8, label %bb.am
    i8 3, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.cn = sub nsw i32 0, %.5
  br label %bb.an

bb.an:                                            ; preds = %.thread172, %bb.al, %bb.am
  %.6 = phi i32 [ %i.cn, %bb.am ], [ %.5, %bb.al ], [ %., %.thread172 ]
  %i.co = icmp sgt i32 %.6, 0
  %i.cp = select i1 %i.co, ptr %1, ptr %2         ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cr, ptr %i.cs, align 4, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cx = load i32, ptr %i.cp, align 4, !tbaa !19
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef readonly %3, ptr noundef nonnull readonly %i.cw, i32 noundef %i.cx, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %3, ptr noundef %i.a, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ao

bb.ao:                                            ; preds = %.thread.thread159, %.thread144, %.thread, %bb.ad, %bb.ae, %bb.ac, %bb.an, %bb.z
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberCompareSignal(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17
  %i.f = or i8 %i.e, %i.c
  %i.g = and i8 %i.f, 48
  %.not116.i = icmp eq i8 %i.g, 0
  br i1 %.not116.i, label %bb.b, label %decCompareOp.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @decCompare(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i8 noundef zeroext 0) ; 3 uses
  %i.i = icmp eq i32 %i.h, -2147483648
  br i1 %i.i, label %.thread9, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.j = icmp eq i32 %i.h, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.k, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.m, align 2, !tbaa !21
  br i1 %i.j, label %decCompareOp.exit.thread, label %bb.c

bb.c:                                             ; preds = %.thread.i
  store i16 1, ptr %i.m, align 2, !tbaa !21
  %i.n = icmp slt i32 %i.h, 0
  br i1 %i.n, label %bb.d, label %decCompareOp.exit.thread

bb.d:                                             ; preds = %bb.c
  store i8 -128, ptr %i.k, align 4, !tbaa !17
  br label %decCompareOp.exit.thread

decCompareOp.exit:                                ; preds = %bb.a
  store i32 1073741952, ptr %i.a, align 4, !tbaa !23
  %i.o = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef readonly %3, ptr noundef nonnull %i.a) ; 0 uses
  %.pr.pre = load i32, ptr %i.a, align 4, !tbaa !23 ; 6 uses
  %.not = icmp eq i32 %.pr.pre, 0
  br i1 %.not, label %decCompareOp.exit.thread, label %bb.e

bb.e:                                             ; preds = %decCompareOp.exit
  %i.p = and i32 %.pr.pre, 221
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %.pr.pre, 1073741824
  %.not6.i = icmp eq i32 %i.q, 0
  br i1 %.not6.i, label %.thread9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %.pr.pre, -1073741825
  br label %decStatus.exit

.thread9:                                         ; preds = %bb.b, %bb.f
  %i.s = phi i32 [ %.pr.pre, %bb.f ], [ 16, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.v, align 2, !tbaa !21
  store i8 32, ptr %i.t, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.e, %bb.g, %.thread9
  %.0.i = phi i32 [ %i.r, %bb.g ], [ %i.s, %.thread9 ], [ %.pr.pre, %bb.e ]
  %i.w = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %decCompareOp.exit.thread

decCompareOp.exit.thread:                         ; preds = %bb.d, %bb.c, %.thread.i, %decStatus.exit, %decCompareOp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberCompareTotal(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 4, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %decStatus.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.i, align 2, !tbaa !21
  store i8 32, ptr %i.g, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %decStatus.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberCompareTotalMag(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca [3 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [3 x %struct.decNumber], align 16   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17    ; 3 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !19     ; 7 uses
  %i.g = icmp slt i32 %i.f, 50                    ; 2 uses
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.f, 2
  %i.i = udiv i32 %i.h, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr @d2utable, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i64 %i.j, -40
  %i.o = icmp ult i64 %i.n, 10
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.p = phi i32 [ %i.i, %.thread ], [ %i.m, %bb.c ]
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = add nuw nsw i32 %i.q, 10
  %i.s = zext nneg i32 %i.r to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #20 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread76, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.036 = phi ptr [ null, %bb.c ], [ %i.t, %bb.d ]
  %.034 = phi ptr [ %4, %bb.c ], [ %i.t, %bb.d ]  ; 8 uses
  %i.v = icmp eq ptr %.034, %1
  br i1 %i.v, label %.decNumberCopy.exit_crit_edge, label %bb.f

.decNumberCopy.exit_crit_edge:                    ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %decNumberCopy.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !18
  store i32 %i.f, ptr %.034, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 10
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !21
  %i.ac = icmp sgt i32 %i.f, 3
  br i1 %i.ac, label %bb.g, label %decNumberCopy.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %.034, i64 12
  br i1 %i.g, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.ae = add nuw nsw i32 %i.f, 2
  %i.af = udiv i32 %i.ae, 3
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.f to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = zext i8 %i.ai to i32
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.af, %.thread.i ], [ %i.aj, %bb.h ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64
  %i.ak = getelementptr i8, ptr %1, i64 12
  %i.al = add i64 %i.b, %.idx35.pn.i
  %i.am = add i64 %i.al, 10
  %i.an = add i64 %i.b, 14
  %umax = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = add i64 %umax, -13
  %i.ap = sub i64 %i.ao, %i.b
  %i.aq = and i64 %i.ap, -2
  %i.ar = add i64 %i.aq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.ak, i64 %i.ar, i1 false), !tbaa !21
  br label %decNumberCopy.exit

decNumberCopy.exit:                               ; preds = %.decNumberCopy.exit_crit_edge, %.lr.ph.preheader.i, %bb.f
  %i.as = phi i8 [ %.pre, %.decNumberCopy.exit_crit_edge ], [ %i.e, %.lr.ph.preheader.i ], [ %i.e, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.au = and i8 %i.as, 127
  store i8 %i.au, ptr %i.at, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %decNumberCopy.exit, %bb.a
  %.039 = phi ptr [ %.034, %decNumberCopy.exit ], [ %1, %bb.a ]
  %.137 = phi ptr [ %.036, %decNumberCopy.exit ], [ null, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !17  ; 3 uses
  %.not52 = icmp sgt i8 %i.aw, -1
  br i1 %.not52, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %2, align 4, !tbaa !19    ; 7 uses
  %i.ay = icmp slt i32 %i.ax, 50                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %.thread94

.thread94:                                        ; preds = %bb.j
  %i.az = add nuw nsw i32 %i.ax, 2
  %i.ba = udiv i32 %i.az, 3
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = sext i32 %i.ax to i64                   ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr @d2utable, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i64 %i.bb, -40
  %i.bg = icmp ult i64 %i.bf, 10
  br i1 %i.bg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread94, %bb.k
  %i.bh = phi i32 [ %i.ba, %.thread94 ], [ %i.be, %bb.k ]
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.bi, 10
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #20 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16, ptr %i.c, align 4, !tbaa !23
  br label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.k
  %.035 = phi ptr [ null, %bb.k ], [ %i.bl, %bb.l ]
  %.0 = phi ptr [ %5, %bb.k ], [ %i.bl, %bb.l ]   ; 8 uses
  %i.bn = icmp eq ptr %.0, %2
  br i1 %i.bn, label %.decNumberCopy.exit64_crit_edge, label %bb.o

.decNumberCopy.exit64_crit_edge:                  ; preds = %bb.n
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.pre80 = load i8, ptr %.phi.trans.insert79, align 4, !tbaa !17
  br label %decNumberCopy.exit64

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !18
  store i32 %i.ax, ptr %.0, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 10
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !21
  %i.bu = icmp sgt i32 %i.ax, 3
  br i1 %i.bu, label %bb.p, label %decNumberCopy.exit64

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %.0, i64 12
  br i1 %i.ay, label %bb.q, label %.thread.i56

.thread.i56:                                      ; preds = %bb.p
  %i.bw = add nuw nsw i32 %i.ax, 2
  %i.bx = udiv i32 %i.bw, 3
  br label %.lr.ph.preheader.i57

bb.q:                                             ; preds = %bb.p
  %i.by = zext nneg i32 %i.ax to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = zext i8 %i.ca to i32
  br label %.lr.ph.preheader.i57

.lr.ph.preheader.i57:                             ; preds = %bb.q, %.thread.i56
  %.idx35.pn.in.in.i58 = phi i32 [ %i.bx, %.thread.i56 ], [ %i.cb, %bb.q ]
  %.idx35.pn.in.i59 = shl nuw nsw i32 %.idx35.pn.in.in.i58, 1
  %.idx35.pn.i60 = zext nneg i32 %.idx35.pn.in.i59 to i64
  %i.cc = getelementptr i8, ptr %2, i64 12
  %i.cd = add i64 %i.a, %.idx35.pn.i60
  %i.ce = add i64 %i.cd, 10
  %i.cf = add i64 %i.a, 14
  %umax78 = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.cg = add i64 %umax78, -13
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = and i64 %i.ch, -2
  %i.cj = add i64 %i.ci, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bv, ptr align 4 %i.cc, i64 %i.cj, i1 false), !tbaa !21
  br label %decNumberCopy.exit64

decNumberCopy.exit64:                             ; preds = %.decNumberCopy.exit64_crit_edge, %.lr.ph.preheader.i57, %bb.o
  %i.ck = phi i8 [ %.pre80, %.decNumberCopy.exit64_crit_edge ], [ %i.aw, %.lr.ph.preheader.i57 ], [ %i.aw, %bb.o ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cm = and i8 %i.ck, 127
  store i8 %i.cm, ptr %i.cl, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %decNumberCopy.exit64, %bb.i
  %.040 = phi ptr [ %.0, %decNumberCopy.exit64 ], [ %2, %bb.i ]
  %.1 = phi ptr [ %.035, %decNumberCopy.exit64 ], [ null, %bb.i ]
  %i.cn = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef nonnull %.039, ptr noundef nonnull %.040, ptr noundef %3, i8 noundef zeroext 4, ptr noundef %i.c) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.2 = phi ptr [ %.1, %bb.r ], [ null, %bb.m ]   ; 2 uses
  %.not53 = icmp eq ptr %.137, null
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %.137) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not54 = icmp eq ptr %.2, null
  br i1 %.not54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %.2) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pr = load i32, ptr %i.c, align 4, !tbaa !23   ; 6 uses
  %.not55 = icmp eq i32 %.pr, 0
  br i1 %.not55, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = and i32 %.pr, 221
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.cp, 0
  br i1 %.not6.i, label %.thread76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %.pr, -1073741825
  br label %decStatus.exit

.thread76:                                        ; preds = %bb.d, %bb.y
  %i.cr = phi i32 [ %.pr, %bb.y ], [ 16, %bb.d ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ct, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cu, align 2, !tbaa !21
  store i8 32, ptr %i.cs, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %bb.x, %bb.z, %.thread76
  %.0.i = phi i32 [ %i.cq, %bb.z ], [ %i.cr, %.thread76 ], [ %.pr, %bb.x ]
  %i.cv = call ptr @decContextSetStatus(ptr noundef %3, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %decStatus.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberCopy(ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !17
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.h = load i32, ptr %1, align 4, !tbaa !19     ; 5 uses
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.j, ptr %i.k, align 2, !tbaa !21
  %i.l = icmp sgt i32 %i.h, 3
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.n = icmp samesign ult i32 %i.h, 50
  br i1 %i.n, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.h, 2
  %i.p = udiv i32 %i.o, 3
  br label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.h to i64
  %i.r = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.h, -4
  %i.v = icmp ult i32 %i.u, 46
  br i1 %i.v, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.thread, %bb.d
  %.idx35.pn.in.in = phi i32 [ %i.p, %.thread ], [ %i.t, %bb.d ]
  %.idx35.pn.in = shl nuw nsw i32 %.idx35.pn.in.in, 1
  %.idx35.pn = zext nneg i32 %.idx35.pn.in to i64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx35.pn
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.y = add i64 %i.a, %.idx35.pn
  %i.z = add i64 %i.y, 10
  %i.aa = add i64 %i.a, 14
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ab = add i64 %umax, -13
  %i.ac = sub i64 %i.ab, %i.a                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  %i.af = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ah = shl i64 %n.vec, 1                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ak ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep37, align 2, !tbaa !21
  %wide.load38 = load <8 x i16>, ptr %i.al, align 2, !tbaa !21
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load38, ptr %i.am, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@decNumberSquareRoot:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 0, ptr %i.e, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !17    ; 6 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 112
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.j, 64
  %.not229 = icmp eq i32 %i.l, 0
  br i1 %.not229, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not230 = icmp sgt i8 %i.i, -1
  br i1 %.not230, label %bb.d, label %.thread304.thread.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.thread304, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.n, align 4, !tbaa !17
  %i.o = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %i.p = load i32, ptr %1, align 4, !tbaa !19     ; 4 uses
  store <2 x i32> %i.o, ptr %0, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !21
  %i.t = icmp sgt i32 %i.p, 3
  br i1 %i.t, label %bb.f, label %.thread304

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.v = icmp samesign ult i32 %i.p, 50
  br i1 %i.v, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.w = add nuw nsw i32 %i.p, 2
  %i.x = udiv i32 %i.w, 3
  br label %iter.check

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %.thread.i
  %.idx35.pn.in.in.i = phi i32 [ %i.x, %.thread.i ], [ %i.ab, %bb.g ]
  %.idx35.pn.in.i = shl nuw nsw i32 %.idx35.pn.in.in.i, 1
  %.idx35.pn.i = zext nneg i32 %.idx35.pn.in.i to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx35.pn.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ae = add i64 %i.b, %.idx35.pn.i
  %i.af = add i64 %i.ae, 10
  %i.ag = add i64 %i.b, 14
  %umax366 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = add i64 %umax366, -13
  %i.ai = sub i64 %i.ah, %i.b                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = add nuw i64 %i.aj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ai, 6
  %i.al = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond380 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond380, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check367 = icmp ult i64 %i.ai, 30
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.an = shl i64 %n.vec, 1                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aq ; 2 uses
  %next.gep368 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep368, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep368, align 2, !tbaa !21
  %wide.load369 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !21
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> %wide.load369, ptr %i.as, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread304, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec371 = and i64 %i.ak, -4                   ; 3 uses
  %i.au = shl i64 %n.vec371, 1                    ; 2 uses
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index372 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next376, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = shl i64 %index372, 1                    ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.u, i64 %i.ax
  %next.gep374 = getelementptr i8, ptr %i.ad, i64 %i.ax
  %wide.load375 = load <4 x i16>, ptr %next.gep374, align 2, !tbaa !21
  store <4 x i16> %wide.load375, ptr %next.gep373, align 2, !tbaa !21
  %index.next376 = add nuw i64 %index372, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n377 = icmp eq i64 %i.ak, %n.vec371
  br i1 %cmp.n377, label %.thread304, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.az = load i16, ptr %.02631.i, align 2, !tbaa !21
  store i16 %i.az, ptr %.032.i, align 2, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631.i, i64 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.032.i, i64 2
  %i.bc = icmp ult ptr %i.ba, %i.ac
  br i1 %i.bc, label %.lr.ph.i, label %.thread304, !llvm.loop !130

bb.h:                                             ; preds = %bb.b
  %i.bd = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %i.d) ; 0 uses
  br label %.thread304

bb.i:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18 ; 3 uses
  %i.bg = ashr i32 %i.bf, 1                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !21 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %1, align 4, !tbaa !19
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp eq ptr %0, %1
  br i1 %i.bm, label %decNumberCopy.exit245, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.bn, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.bo, align 2, !tbaa !21
  br label %decNumberCopy.exit245

decNumberCopy.exit245:                            ; preds = %bb.l, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bg, ptr %i.bp, align 4, !tbaa !18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef %i.c, ptr noundef %i.d)
  br label %.thread304

bb.m:                                             ; preds = %bb.j, %bb.i
  %.not220 = icmp sgt i8 %i.i, -1
  br i1 %.not220, label %bb.n, label %.thread304.thread.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %2, align 4, !tbaa !27
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = load i32, ptr %1, align 4, !tbaa !19    ; 10 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bs) ; 2 uses
  %i.bt = tail call i32 @llvm.smax.i32(i32 %., i32 7) ; 4 uses
  %i.bu = add nuw nsw i32 %i.bt, 2                ; 3 uses
  %i.bv = icmp slt i32 %i.bs, 50                  ; 2 uses
  br i1 %i.bv, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.bw = add nuw nsw i32 %i.bs, 2
  %i.bx = udiv i32 %i.bw, 3
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = sext i32 %i.bs to i64                   ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr @d2utable, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i64 %i.by, -40
  %i.cd = icmp ult i64 %i.cc, 10
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread, %bb.o
  %i.ce = phi i32 [ %i.bx, %.thread ], [ %i.cb, %bb.o ]
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = add nuw nsw i32 %i.cf, 10
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.ch) #20 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread304.thread.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0197 = phi ptr [ null, %bb.o ], [ %i.ci, %bb.p ] ; 2 uses
  %.0192 = phi ptr [ %6, %bb.o ], [ %i.ci, %bb.p ] ; 14 uses
  %i.ck = icmp slt i32 %., 48
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = zext nneg i32 %i.bu to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !24
  %i.co = zext i8 %i.cn to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cp = add nuw nsw i32 %i.bt, 4
  %i.cq = udiv i32 %i.cp, 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi i32 [ %i.co, %bb.r ], [ %i.cq, %bb.s ] ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 13
  br i1 %i.cs, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ct = shl nuw nsw i32 %i.cr, 1
  %i.cu = add nuw nsw i32 %i.ct, 10
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cv) #20 ; 4 uses
  %i.cx = tail call noalias ptr @malloc(i64 noundef %i.cv) #20 ; 4 uses
  %i.cy = icmp eq ptr %i.cw, null
  %i.cz = icmp eq ptr %i.cx, null
  %or.cond = or i1 %i.cy, %i.cz
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 16, ptr %i.d, align 4, !tbaa !23
  br label %decNumberCopy.exit

bb.w:                                             ; preds = %bb.u, %bb.t
  %.0195 = phi ptr [ null, %bb.t ], [ %i.cw, %bb.u ] ; 6 uses
  %.0193 = phi ptr [ null, %bb.t ], [ %i.cx, %bb.u ] ; 6 uses
  %.0191 = phi ptr [ %7, %bb.t ], [ %i.cw, %bb.u ] ; 36 uses
  %.0190 = phi ptr [ %8, %bb.t ], [ %i.cx, %bb.u ] ; 40 uses
  %.0191317 = ptrtoaddr ptr %.0191 to i64         ; 9 uses
  %i.da = icmp eq ptr %.0192, %1
  br i1 %i.da, label %.decNumberCopy.exit254_crit_edge, label %bb.x

.decNumberCopy.exit254_crit_edge:                 ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0192, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  br label %decNumberCopy.exit254

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.0192, i64 8
  store i8 %i.i, ptr %i.db, align 4, !tbaa !17
  store i32 %i.bs, ptr %.0192, align 4, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %.0192, i64 10
  store i16 %i.bi, ptr %i.dc, align 2, !tbaa !21
  %i.dd = icmp sgt i32 %i.bs, 3
  br i1 %i.dd, label %bb.y, label %decNumberCopy.exit254

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr i8, ptr %.0192, i64 12
  br i1 %i.bv, label %bb.z, label %.thread.i246

.thread.i246:                                     ; preds = %bb.y
  %i.df = add nuw nsw i32 %i.bs, 2
  %i.dg = udiv i32 %i.df, 3
  br label %.lr.ph.preheader.i247

bb.z:                                             ; preds = %bb.y
  %i.dh = zext nneg i32 %i.bs to i64
  %i.di = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24
  %i.dk = zext i8 %i.dj to i32
  br label %.lr.ph.preheader.i247

.lr.ph.preheader.i247:                            ; preds = %bb.z, %.thread.i246
  %.idx35.pn.in.in.i248 = phi i32 [ %i.dg, %.thread.i246 ], [ %i.dk, %bb.z ]
  %.idx35.pn.in.i249 = shl nuw nsw i32 %.idx35.pn.in.in.i248, 1
  %.idx35.pn.i250 = zext nneg i32 %.idx35.pn.in.i249 to i64
  %i.dl = getelementptr i8, ptr %1, i64 12
  %i.dm = add i64 %i.b, %.idx35.pn.i250
  %i.dn = add i64 %i.dm, 10
  %i.do = add i64 %i.b, 14
  %umax = call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.do)
  %i.dp = add i64 %umax, -13
  %i.dq = sub i64 %i.dp, %i.b
  %i.dr = and i64 %i.dq, -2
  %i.ds = add i64 %i.dr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.de, ptr align 4 %i.dl, i64 %i.ds, i1 false), !tbaa !21
  br label %decNumberCopy.exit254

decNumberCopy.exit254:                            ; preds = %.decNumberCopy.exit254_crit_edge, %.lr.ph.preheader.i247, %bb.x
  %i.dt = phi i32 [ %.pre, %.decNumberCopy.exit254_crit_edge ], [ %i.bf, %.lr.ph.preheader.i247 ], [ %i.bf, %bb.x ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0192, i64 4 ; 3 uses
  %i.dv = add nsw i32 %i.bs, %i.dt                ; 3 uses
  %i.dw = sub nsw i32 0, %i.bs
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !18
  %i.dx = call ptr @decContextDefault(ptr noundef nonnull %3, i32 noundef 64) #19 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 999999999, ptr %i.dy, align 4, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -999999999, ptr %i.dz, align 4, !tbaa !29
  store i32 %i.bt, ptr %3, align 4, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i8 0, ptr %i.ea, align 4, !tbaa !17
  store i32 3, ptr %9, align 4, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %.0191, i64 8 ; 4 uses
  store i8 0, ptr %i.eb, align 4, !tbaa !17
  store i32 3, ptr %.0191, align 4, !tbaa !19
  %i.ec = and i32 %i.dv, 1
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader, label %bb.aa

bb.aa:                                            ; preds = %decNumberCopy.exit254
  %i.ee = load i32, ptr %i.du, align 4, !tbaa !18
  %i.ef = add nsw i32 %i.ee, -1
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !18
  %i.eg = add nsw i32 %i.dv, 1
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa, %decNumberCopy.exit254
  %.sink324 = phi i32 [ -4, %bb.aa ], [ -3, %decNumberCopy.exit254 ]
  %.sink323 = phi i32 [ -2, %bb.aa ], [ -3, %decNumberCopy.exit254 ]
  %.sink322 = phi i16 [ 819, %bb.aa ], [ 259, %decNumberCopy.exit254 ]
  %.sink = phi i16 [ 259, %bb.aa ], [ 819, %decNumberCopy.exit254 ]
  %.0199 = phi i32 [ %i.eg, %bb.aa ], [ %i.dv, %decNumberCopy.exit254 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 5 uses
  store i32 %.sink324, ptr %i.eh, align 4, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.0191, i64 4 ; 10 uses
  store i32 %.sink323, ptr %i.ei, align 4, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 4 uses
  store i16 %.sink322, ptr %i.ej, align 2, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %.0191, i64 10 ; 6 uses
  store i16 %.sink, ptr %i.ek, align 2, !tbaa !21
  %i.el = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.0191, ptr noundef nonnull %.0191, ptr noundef nonnull %.0192, ptr noundef nonnull %3, ptr noundef %i.e) ; 0 uses
  %i.em = call fastcc ptr @decAddOp(ptr noundef nonnull %.0191, ptr noundef nonnull %.0191, ptr noundef nonnull %9, ptr noundef nonnull %3, i8 noundef zeroext 0, ptr noundef %i.e) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.en, align 4, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.eo, align 4, !tbaa !18
  store i32 1, ptr %5, align 4, !tbaa !19
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 0, ptr %i.ep, align 2, !tbaa !21
  store i8 0, ptr %i.ea, align 4, !tbaa !17
  store i32 1, ptr %9, align 4, !tbaa !19
  store i16 5, ptr %i.ej, align 2, !tbaa !21
  store i32 -1, ptr %i.eh, align 4, !tbaa !18
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.eq = phi i32 [ %i.ex, %.lr.ph ], [ 3, %.lr.ph.preheader ]
  %i.er = shl nsw i32 %i.eq, 1
  %i.es = add nsw i32 %i.er, -2
  %i.et = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.bu)
  store i32 %i.et, ptr %3, align 4, !tbaa !27
  %i.eu = call fastcc ptr @decDivideOp(ptr noundef nonnull %.0190, ptr noundef nonnull %.0192, ptr noundef nonnull %.0191, ptr noundef nonnull %3, i8 noundef zeroext -128, ptr noundef %i.e) ; 0 uses
  %i.ev = call fastcc ptr @decAddOp(ptr noundef nonnull %.0190, ptr noundef nonnull %.0190, ptr noundef nonnull %.0191, ptr noundef nonnull %3, i8 noundef zeroext 0, ptr noundef %i.e) ; 0 uses
  %i.ew = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.0191, ptr noundef nonnull %.0190, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef %i.e) ; 0 uses
  %i.ex = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %i.bu
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !35
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 3, ptr %i.ez, align 4, !tbaa !34
  %i.fa = sdiv i32 %.0199, 2                      ; 4 uses
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.fc = add nsw i32 %i.fb, %i.fa
  store i32 0, ptr %i.f, align 4, !tbaa !23
  store i32 0, ptr %i.c, align 4, !tbaa !23
  store i32 %i.fc, ptr %i.ei, align 4, !tbaa !18
  %i.fd = load i32, ptr %.0191, align 4, !tbaa !19
  call fastcc void @decSetCoeff(ptr noundef nonnull %.0191, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.ek, i32 noundef %i.fd, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  call fastcc void @decFinalize(ptr noundef nonnull %.0191, ptr noundef nonnull %4, ptr noundef %i.c, ptr noundef %i.f)
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !23  ; 6 uses
  %i.ff = and i32 %i.fe, 512
  %.not221 = icmp eq i32 %i.ff, 0
  br i1 %.not221, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i32 %i.fe, ptr %i.d, align 4, !tbaa !23
  %i.fg = icmp eq ptr %0, %.0191
  br i1 %i.fg, label %decNumberCopy.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load i8, ptr %i.eb, align 4, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fh, ptr %i.fi, align 4, !tbaa !17
  %i.fj = load <2 x i32>, ptr %.0191, align 4, !tbaa !23
  %i.fk = load i32, ptr %.0191, align 4, !tbaa !19 ; 4 uses
  store <2 x i32> %i.fj, ptr %0, align 4, !tbaa !23
  %i.fl = load i16, ptr %i.ek, align 2, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !21
  %i.fn = icmp sgt i32 %i.fk, 3
  br i1 %i.fn, label %bb.ad, label %decNumberCopy.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr i8, ptr %0, i64 12
  %i.fp = icmp samesign ult i32 %i.fk, 50
  br i1 %i.fp, label %bb.ae, label %.thread.i255

.thread.i255:                                     ; preds = %bb.ad
  %i.fq = add nuw nsw i32 %i.fk, 2
  %i.fr = udiv i32 %i.fq, 3
  br label %.lr.ph.preheader.i256

bb.ae:                                            ; preds = %bb.ad
  %i.fs = zext nneg i32 %i.fk to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @d2utable, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !24
  %i.fv = zext i8 %i.fu to i32
  br label %.lr.ph.preheader.i256

.lr.ph.preheader.i256:                            ; preds = %bb.ae, %.thread.i255
  %.idx35.pn.in.in.i257 = phi i32 [ %i.fr, %.thread.i255 ], [ %i.fv, %bb.ae ]
  %.idx35.pn.in.i258 = shl nuw nsw i32 %.idx35.pn.in.in.i257, 1
  %.idx35.pn.i259 = zext nneg i32 %.idx35.pn.in.i258 to i64
  %i.fw = getelementptr i8, ptr %.0191, i64 12
  %i.fx = add i64 %.0191317, %.idx35.pn.i259
  %i.fy = add i64 %i.fx, 10
  %i.fz = add i64 %.0191317, 14
  %umax318 = call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.fz)
  %i.ga = add i64 %umax318, -13
  %i.gb = sub i64 %i.ga, %.0191317
  %i.gc = and i64 %i.gb, -2
  %i.gd = add i64 %i.gc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fo, ptr align 4 %i.fw, i64 %i.gd, i1 false), !tbaa !21
  br label %decNumberCopy.exit

bb.af:                                            ; preds = %._crit_edge
  %i.ge = and i32 %i.fe, -2593                    ; 5 uses
  store i32 %i.ge, ptr %i.d, align 4, !tbaa !23
  %i.gf = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.gg = sub nsw i32 %i.gf, %i.fa
  store i32 %i.gg, ptr %i.ei, align 4, !tbaa !18
  %i.gh = load i32, ptr %3, align 4, !tbaa !27
  %i.gi = add nsw i32 %i.gh, -1
  store i32 %i.gi, ptr %3, align 4, !tbaa !27
  %i.gj = load i32, ptr %.0191, align 4, !tbaa !19
  %i.gk = xor i32 %i.gj, -1
  store i32 %i.gk, ptr %i.eh, align 4, !tbaa !18
  %i.gl = call fastcc ptr @decAddOp(ptr noundef nonnull %.0190, ptr noundef nonnull %.0191, ptr noundef nonnull %9, ptr noundef nonnull %3, i8 noundef zeroext -128, ptr noundef %i.e) ; 0 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 1, ptr %i.gm, align 4, !tbaa !34
  %i.gn = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %.0190, ptr noundef nonnull %.0190, ptr noundef nonnull %.0190, ptr noundef nonnull %3, ptr noundef %i.e) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0192, i64 8 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 4, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %.0190, i64 8 ; 9 uses
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !17
  %i.gs = or i8 %i.gr, %i.gp
  %i.gt = and i8 %i.gs, 48
  %.not116.i = icmp eq i8 %i.gt, 0
  br i1 %.not116.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = call fastcc ptr @decNaNs(ptr noundef nonnull %.0190, ptr noundef nonnull readonly %.0192, ptr noundef nonnull readonly %.0190, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.e) ; 0 uses
  br label %decCompareOp.exit

bb.ah:                                            ; preds = %bb.af
  %i.gv = call fastcc i32 @decCompare(ptr noundef nonnull readonly %.0192, ptr noundef nonnull readonly %.0190, i8 noundef zeroext 0) ; 3 uses
end_hunk_1
