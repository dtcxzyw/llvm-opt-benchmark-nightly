Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/eval?download=true
inline.NumInlined: 119
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@evalGetCommandFlags:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 6 uses
  br i1 %spec.select, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i = load i8, ptr %i.p, align 1, !tbaa !24
  %i.q = and i8 %.val.i, 7
  switch i8 %i.q, label %sdslen.exit.thread [
    i8 4, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.v = load i16, ptr %i.u, align 1, !tbaa !107
  %i.w = zext i16 %i.v to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.y = load i32, ptr %i.x, align 1, !tbaa !17
  %i.z = zext i32 %i.y to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ %i.z, %bb.e ], [ %i.t, %bb.c ], [ %i.w, %bb.d ]
  %.not = icmp eq i64 %.0.i, 40
  br i1 %.not, label %._crit_edge, label %sdslen.exit.thread

._crit_edge:                                      ; preds = %bb.a, %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  call fastcc void @evalCalcFunctionName(i32 noundef %i.i, ptr noundef %i.o, ptr noundef %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.af = call ptr @dictFind(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #17 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !120
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  br i1 %spec.select, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  %i.am = call i32 @evalExtractShebangFlags(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.k, label %._crit_edge28

bb.i:                                             ; preds = %._crit_edge
  %i.ao = call ptr @dictGetVal(ptr noundef nonnull %i.af) #17
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.ao, %bb.i ], [ %i.b, %bb.h ]
  %.pre29 = load i64, ptr %.sink, align 8, !tbaa !108 ; 2 uses
  %i.ap = and i64 %.pre29, 16
  %.not21 = icmp eq i64 %i.ap, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge28
  %i.aq = call i64 @scriptFlagsToCmdFlags(i64 noundef %1, i64 noundef %.pre29) #17
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge28, %bb.h, %bb.g, %bb.j
  %.0 = phi i64 [ %1, %bb.h ], [ %i.aq, %bb.j ], [ %1, %bb.g ], [ %1, %._crit_edge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.b, %sdslen.exit, %bb.k
  %.1 = phi i64 [ %.0, %bb.k ], [ %1, %sdslen.exit ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @evalShaCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1488), align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !126
  tail call void @replicationFeedMonitors(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.i) #17
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119  ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %.val.i = load i8, ptr %i.o, align 1, !tbaa !24
  %i.p = and i8 %.val.i, 7
  switch i8 %i.p, label %sdslen.exit.thread [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !107
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.aa, %bb.e ], [ %i.y, %bb.d ], [ %i.s, %bb.b ], [ %i.v, %bb.c ]
  %.not = icmp eq i64 %.0.i, 40
  br i1 %.not, label %bb.f, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.a, %sdslen.exit
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 240), align 8, !tbaa !128
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ab) #17
  br label %bb.i

bb.f:                                             ; preds = %sdslen.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !88
  %i.ae = and i64 %i.ad, 33554432
  %.not9 = icmp eq i64 %i.ae, 0
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %sdslen.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @evalShaRoCommand(ptr noundef %0) #0 {
bb.a:
  tail call void @evalShaCommand(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evalCalcFunctionName(i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 43)) %2) unnamed_addr #0 {
bb.a:
  store i8 102, ptr %2, align 1, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 95, ptr %i.a, align 1, !tbaa !24
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.b, 40
  %i.e = add i64 %i.c, 2
  %i.f = add i64 %i.c, 43
  %rt.bound0 = icmp ult i64 %i.e, %i.d
  %rt.bound1 = icmp ugt i64 %i.f, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader.preheader.rtscalar, label %.preheader.preheader.rtvec, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !24 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %1, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !107
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %1, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !17
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %1, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.v, %bb.g ], [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ 0, %bb.b ]
  tail call void @sha1hex(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %.0.i)
  br label %.preheader.preheader.rtcont

.preheader.preheader.rtcont:                      ; preds = %.preheader.preheader.rtvec, %.preheader.preheader.rtscalar, %sdslen.exit
  ret void

.preheader.preheader.rtvec:                       ; preds = %.preheader.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load <16 x i8>, ptr %1, align 1, !tbaa !24 ; 3 uses
  %i.y = add <16 x i8> %i.x, splat (i8 -65)
  %i.z = icmp ult <16 x i8> %i.y, splat (i8 26)
  %i.aa = add nuw nsw <16 x i8> %i.x, splat (i8 32)
  %i.ab = select <16 x i1> %i.z, <16 x i8> %i.aa, <16 x i8> %i.x
  store <16 x i8> %i.ab, ptr %i.w, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ae = load <16 x i8>, ptr %i.ac, align 1, !tbaa !24 ; 3 uses
  %i.af = add <16 x i8> %i.ae, splat (i8 -65)
  %i.ag = icmp ult <16 x i8> %i.af, splat (i8 26)
  %i.ah = add nuw nsw <16 x i8> %i.ae, splat (i8 32)
  %i.ai = select <16 x i1> %i.ag, <16 x i8> %i.ah, <16 x i8> %i.ae
  store <16 x i8> %i.ai, ptr %i.ad, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.al = load <8 x i8>, ptr %i.aj, align 1, !tbaa !24 ; 3 uses
  %i.am = add <8 x i8> %i.al, splat (i8 -65)
  %i.an = icmp ult <8 x i8> %i.am, splat (i8 26)
  %i.ao = add nuw nsw <8 x i8> %i.al, splat (i8 32)
  %i.ap = select <8 x i1> %i.an, <8 x i8> %i.ao, <8 x i8> %i.al
  store <8 x i8> %i.ap, ptr %i.ak, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 42
  store i8 0, ptr %i.aq, align 1, !tbaa !24
  br label %.preheader.preheader.rtcont

.preheader.preheader.rtscalar:                    ; preds = %.preheader.preheader
  %i.ar = load i8, ptr %1, align 1, !tbaa !24     ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond.scalar = icmp ult i8 %i.as, 26
  %i.at = add nuw nsw i8 %i.ar, 32
  %spec.select.scalar = select i1 %or.cond.scalar, i8 %i.at, i8 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %spec.select.scalar, ptr %i.au, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24  ; 3 uses
  %i.ax = add i8 %i.aw, -65
  %or.cond.1.scalar = icmp ult i8 %i.ax, 26
  %i.ay = add nuw nsw i8 %i.aw, 32
  %spec.select.1.scalar = select i1 %or.cond.1.scalar, i8 %i.ay, i8 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %spec.select.1.scalar, ptr %i.az, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !24  ; 3 uses
  %i.bc = add i8 %i.bb, -65
  %or.cond.2.scalar = icmp ult i8 %i.bc, 26
  %i.bd = add nuw nsw i8 %i.bb, 32
  %spec.select.2.scalar = select i1 %or.cond.2.scalar, i8 %i.bd, i8 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %spec.select.2.scalar, ptr %i.be, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !24  ; 3 uses
  %i.bh = add i8 %i.bg, -65
  %or.cond.3.scalar = icmp ult i8 %i.bh, 26
  %i.bi = add nuw nsw i8 %i.bg, 32
  %spec.select.3.scalar = select i1 %or.cond.3.scalar, i8 %i.bi, i8 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %spec.select.3.scalar, ptr %i.bj, align 1, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24  ; 3 uses
  %i.bm = add i8 %i.bl, -65
  %or.cond.4.scalar = icmp ult i8 %i.bm, 26
  %i.bn = add nuw nsw i8 %i.bl, 32
  %spec.select.4.scalar = select i1 %or.cond.4.scalar, i8 %i.bn, i8 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %spec.select.4.scalar, ptr %i.bo, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !24  ; 3 uses
  %i.br = add i8 %i.bq, -65
  %or.cond.5.scalar = icmp ult i8 %i.br, 26
  %i.bs = add nuw nsw i8 %i.bq, 32
  %spec.select.5.scalar = select i1 %or.cond.5.scalar, i8 %i.bs, i8 %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %spec.select.5.scalar, ptr %i.bt, align 1, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24  ; 3 uses
  %i.bw = add i8 %i.bv, -65
  %or.cond.6.scalar = icmp ult i8 %i.bw, 26
  %i.bx = add nuw nsw i8 %i.bv, 32
  %spec.select.6.scalar = select i1 %or.cond.6.scalar, i8 %i.bx, i8 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %spec.select.6.scalar, ptr %i.by, align 1, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24  ; 3 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.7.scalar = icmp ult i8 %i.cb, 26
  %i.cc = add nuw nsw i8 %i.ca, 32
  %spec.select.7.scalar = select i1 %or.cond.7.scalar, i8 %i.cc, i8 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %spec.select.7.scalar, ptr %i.cd, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24  ; 3 uses
  %i.cg = add i8 %i.cf, -65
  %or.cond.8.scalar = icmp ult i8 %i.cg, 26
  %i.ch = add nuw nsw i8 %i.cf, 32
  %spec.select.8.scalar = select i1 %or.cond.8.scalar, i8 %i.ch, i8 %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %spec.select.8.scalar, ptr %i.ci, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !24  ; 3 uses
  %i.cl = add i8 %i.ck, -65
  %or.cond.9.scalar = icmp ult i8 %i.cl, 26
  %i.cm = add nuw nsw i8 %i.ck, 32
  %spec.select.9.scalar = select i1 %or.cond.9.scalar, i8 %i.cm, i8 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %spec.select.9.scalar, ptr %i.cn, align 1, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !24  ; 3 uses
  %i.cq = add i8 %i.cp, -65
  %or.cond.10.scalar = icmp ult i8 %i.cq, 26
  %i.cr = add nuw nsw i8 %i.cp, 32
  %spec.select.10.scalar = select i1 %or.cond.10.scalar, i8 %i.cr, i8 %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %spec.select.10.scalar, ptr %i.cs, align 1, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !24  ; 3 uses
  %i.cv = add i8 %i.cu, -65
  %or.cond.11.scalar = icmp ult i8 %i.cv, 26
  %i.cw = add nuw nsw i8 %i.cu, 32
  %spec.select.11.scalar = select i1 %or.cond.11.scalar, i8 %i.cw, i8 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %spec.select.11.scalar, ptr %i.cx, align 1, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24  ; 3 uses
  %i.da = add i8 %i.cz, -65
  %or.cond.12.scalar = icmp ult i8 %i.da, 26
  %i.db = add nuw nsw i8 %i.cz, 32
  %spec.select.12.scalar = select i1 %or.cond.12.scalar, i8 %i.db, i8 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %spec.select.12.scalar, ptr %i.dc, align 1, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24  ; 3 uses
  %i.df = add i8 %i.de, -65
  %or.cond.13.scalar = icmp ult i8 %i.df, 26
  %i.dg = add nuw nsw i8 %i.de, 32
  %spec.select.13.scalar = select i1 %or.cond.13.scalar, i8 %i.dg, i8 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %spec.select.13.scalar, ptr %i.dh, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24  ; 3 uses
  %i.dk = add i8 %i.dj, -65
  %or.cond.14.scalar = icmp ult i8 %i.dk, 26
  %i.dl = add nuw nsw i8 %i.dj, 32
  %spec.select.14.scalar = select i1 %or.cond.14.scalar, i8 %i.dl, i8 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %spec.select.14.scalar, ptr %i.dm, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !24  ; 3 uses
end_hunk_0
begin_hunk_1_@evalCalcFunctionName:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !24  ; 3 uses
  %i.hq = add i8 %i.hp, -65
  %or.cond.36.scalar = icmp ult i8 %i.hq, 26
  %i.hr = add nuw nsw i8 %i.hp, 32
  %spec.select.36.scalar = select i1 %or.cond.36.scalar, i8 %i.hr, i8 %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 38
  store i8 %spec.select.36.scalar, ptr %i.hs, align 1, !tbaa !24
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !24  ; 3 uses
  %i.hv = add i8 %i.hu, -65
  %or.cond.37.scalar = icmp ult i8 %i.hv, 26
  %i.hw = add nuw nsw i8 %i.hu, 32
  %spec.select.37.scalar = select i1 %or.cond.37.scalar, i8 %i.hw, i8 %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 39
  store i8 %spec.select.37.scalar, ptr %i.hx, align 1, !tbaa !24
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !24  ; 3 uses
  %i.ia = add i8 %i.hz, -65
  %or.cond.38.scalar = icmp ult i8 %i.ia, 26
  %i.ib = add nuw nsw i8 %i.hz, 32
  %spec.select.38.scalar = select i1 %or.cond.38.scalar, i8 %i.ib, i8 %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 %spec.select.38.scalar, ptr %i.ic, align 1, !tbaa !24
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24  ; 3 uses
  %i.if = add i8 %i.ie, -65
  %or.cond.39.scalar = icmp ult i8 %i.if, 26
  %i.ig = add nuw nsw i8 %i.ie, 32
  %spec.select.39.scalar = select i1 %or.cond.39.scalar, i8 %i.ig, i8 %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 41
  store i8 %spec.select.39.scalar, ptr %i.ih, align 1, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 42
  store i8 0, ptr %i.ii, align 1, !tbaa !24
  br label %.preheader.preheader.rtcont
}

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #1

declare i64 @scriptFlagsToCmdFlags(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @luaCreateFunction(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 102, ptr %i.a, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 95, ptr %i.e, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !24 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !107
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !17
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ 0, %bb.a ]
  call void @sha1hex(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, i64 noundef %.0.i)
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.y = call ptr @dictFind(ptr noundef %i.x, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  %i.z = call ptr @dictGetKey(ptr noundef nonnull %i.y) #17
  br label %bb.z

bb.h:                                             ; preds = %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store ptr null, ptr %i.d, align 8, !tbaa !106
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !119
  %i.ab = call i32 @evalExtractShebangFlags(ptr noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not32 = icmp eq ptr %0, null
  br i1 %.not32, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !106
  call void @addReplyErrorSds(ptr noundef nonnull %0, ptr noundef %i.ad) #17
  br label %bb.y

bb.k:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @lctx, align 8, !tbaa !89
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !119 ; 6 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.af, i64 -1
  %.val.i33 = load i8, ptr %i.ai, align 1, !tbaa !24 ; 2 uses
  %i.aj = and i8 %.val.i33, 7
  switch i8 %i.aj, label %sdslen.exit35 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = lshr i8 %.val.i33, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %sdslen.exit35

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  br label %sdslen.exit35

bb.n:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !107
  %i.ar = zext i16 %i.aq to i64
  br label %sdslen.exit35

bb.o:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i32 %i.at to i64
  br label %sdslen.exit35

bb.p:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !108
  br label %sdslen.exit35

sdslen.exit35:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i34 = phi i64 [ %i.aw, %bb.p ], [ %i.al, %bb.l ], [ %i.ao, %bb.m ], [ %i.ar, %bb.n ], [ %i.au, %bb.o ], [ 0, %bb.k ]
  %i.ax = sub i64 %.0.i34, %i.ag
  %i.ay = call i32 @luaL_loadbuffer(ptr noundef %i.ae, ptr noundef nonnull %i.ah, i64 noundef %i.ax, ptr noundef nonnull @.str.20) #17
  %.not29 = icmp eq i32 %i.ay, 0
  br i1 %.not29, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sdslen.exit35
  %.not31 = icmp eq ptr %0, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr @lctx, align 8, !tbaa !89
  %i.ba = call ptr @lua_tolstring(ptr noundef %i.az, i32 noundef -1, ptr noundef null) #17
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef %i.ba) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = load ptr, ptr @lctx, align 8, !tbaa !89
  call void @lua_settop(ptr noundef %i.bb, i32 noundef -2) #17
  %i.bc = load ptr, ptr @lctx, align 8, !tbaa !89
  call void @luaGC(ptr noundef %i.bc, ptr noundef nonnull @gc_count) #17
  br label %bb.y

bb.t:                                             ; preds = %sdslen.exit35
  %i.bd = load ptr, ptr @lctx, align 8, !tbaa !89
  %i.be = call i32 @lua_type(ptr noundef %i.bd, i32 noundef -1) #17
  %i.bf = icmp eq i32 %i.be, 6
  br i1 %i.bf, label %bb.v, label %bb.u, !prof !158

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 471) #17
  call void @abort() #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr @lctx, align 8, !tbaa !89
  call void @lua_setfield(ptr noundef %i.bg, i32 noundef -10000, ptr noundef nonnull %i.a) #17
  %i.bh = call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #20 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %1, ptr %i.bi, align 8, !tbaa !23
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !129
  %i.bk = call ptr @sdsnewlen(ptr noundef nonnull %i.f, i64 noundef 40) #17 ; 4 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.preheader.i, label %luaScriptsLRUAdd.exit

.preheader.i:                                     ; preds = %bb.v
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !130
  %i.bo = icmp ugt i64 %i.bn, 499
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.bp = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bl, %.preheader.i ]
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !131
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !132
  call void @luaDeleteFunction(ptr noundef %0, ptr noundef %i.bs)
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !133
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !133
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !130
  %i.by = icmp ugt i64 %i.bx, 499
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa.i = phi ptr [ %i.bl, %.preheader.i ], [ %i.bv, %.lr.ph.i ]
  %i.bz = call ptr @listAddNodeTail(ptr noundef nonnull %.lcssa.i, ptr noundef %i.bk) #17 ; 0 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !134
  br label %luaScriptsLRUAdd.exit

luaScriptsLRUAdd.exit:                            ; preds = %bb.v, %._crit_edge.i
  %.0.i36 = phi ptr [ %i.cc, %._crit_edge.i ], [ null, %bb.v ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %.0.i36, ptr %i.cd, align 8, !tbaa !135
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.cf = call i32 @dictAdd(ptr noundef %i.ce, ptr noundef %i.bk, ptr noundef nonnull %i.bh) #17
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.x, label %bb.w, !prof !158

bb.w:                                             ; preds = %luaScriptsLRUAdd.exit
  %.not30 = icmp eq ptr %0, null
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 8), align 8
  %i.ci = select i1 %.not30, ptr %i.ch, ptr %0
  call void @_serverAssertWithInfo(ptr noundef %i.ci, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 484) #17
  call void @abort() #19
  unreachable

bb.x:                                             ; preds = %luaScriptsLRUAdd.exit
  %i.cj = call i64 @sdsZmallocSize(ptr noundef %i.bk) #17
  %i.ck = call i64 @getStringObjectSdsUsedMemory(ptr noundef nonnull %1) #17
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 32), align 8, !tbaa !75
  %i.cn = add i64 %i.cl, %i.cm
  store i64 %i.cn, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 32), align 8, !tbaa !75
  call void @incrRefCount(ptr noundef nonnull %1) #17
  %i.co = load ptr, ptr @lctx, align 8, !tbaa !89
  call void @luaGC(ptr noundef %i.co, ptr noundef nonnull @gc_count) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %bb.j, %bb.x, %bb.s
  %.0 = phi ptr [ %i.bk, %bb.x ], [ null, %bb.s ], [ null, %bb.j ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.g
  %.1 = phi ptr [ %i.z, %bb.g ], [ %.0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.1
}

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorSds(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @luaGC(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @luaScriptsLRUAdd(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !130
  %i.d = icmp ugt i64 %i.c, 499
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.e = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %.preheader ]
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  tail call void @luaDeleteFunction(ptr noundef %0, ptr noundef %i.h)
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !133
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2624), align 8, !tbaa !133
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !130
  %i.n = icmp ugt i64 %i.m, 499
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.k, %.lr.ph ]
  %i.o = tail call ptr @listAddNodeTail(ptr noundef nonnull %.lcssa, ptr noundef %1) #17 ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.r, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @sdsZmallocSize(ptr noundef) local_unnamed_addr #1

declare i64 @getStringObjectSdsUsedMemory(ptr noundef) local_unnamed_addr #1

declare void @incrRefCount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @luaDeleteFunction(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 102, ptr %i.a, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 95, ptr %i.b, align 1, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i8 0, ptr %i.d, align 2, !tbaa !24
  %i.e = load ptr, ptr @lctx, align 8, !tbaa !89
  tail call void @lua_pushnil(ptr noundef %i.e) #17
  %i.f = load ptr, ptr @lctx, align 8, !tbaa !89
  call void @lua_setfield(ptr noundef %i.f, i32 noundef -10000, ptr noundef nonnull %i.a) #17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.h = call ptr @dictUnlink(ptr noundef %i.g, ptr noundef nonnull %1) #17 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %0, null
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 8), align 8
  %i.j = select i1 %.not12, ptr %i.i, ptr %0
  call void @_serverAssertWithInfo(ptr noundef %i.j, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 511) #17
  call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = call ptr @dictGetVal(ptr noundef nonnull %i.h) #17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135  ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %bb.d, label %bb.e, !prof !136

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 514) #17
  call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  call void @listDelNode(ptr noundef %i.n, ptr noundef nonnull %i.m) #17
  %i.o = call i64 @sdsZmallocSize(ptr noundef nonnull %1) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = call i64 @getStringObjectSdsUsedMemory(ptr noundef %i.q) #17
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 32), align 8, !tbaa !75
  %i.t = add i64 %i.r, %i.o
  %i.u = sub i64 %i.s, %i.t
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 32), align 8, !tbaa !75
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  call void @dictFreeUnlinkedEntry(ptr noundef %i.v, ptr noundef nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare ptr @dictUnlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dictFreeUnlinkedEntry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @evalGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [43 x i8], align 16               ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.scriptRunCtx, align 8       ; 6 uses
  %i.c = load ptr, ptr @lctx, align 8, !tbaa !89  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef null) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !126
  %i.l = add nsw i32 %i.k, -3
  %i.m = sext i32 %i.l to i64
  %i.n = icmp sgt i64 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #17
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.i, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #17
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 2 uses
  %.not46 = icmp eq ptr %i.q, null
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 102, ptr %i.a, align 16, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 95, ptr %i.r, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = call ptr @dictGetKey(ptr noundef nonnull %i.q) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(40) %i.s, ptr noundef nonnull align 1 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i8 0, ptr %i.u, align 2, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !119
  call fastcc void @evalCalcFunctionName(i32 noundef %1, ptr noundef %i.z, ptr noundef %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @lua_getfield(ptr noundef %i.c, i32 noundef -10002, ptr noundef nonnull @.str.29) #17
  call void @lua_getfield(ptr noundef %i.c, i32 noundef -10000, ptr noundef nonnull %i.a) #17
  %i.aa = call i32 @lua_type(ptr noundef %i.c, i32 noundef -1) #17
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @lua_settop(ptr noundef %i.c, i32 noundef -2) #17
  %.not47 = icmp eq i32 %1, 0
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @lua_settop(ptr noundef %i.c, i32 noundef -2) #17
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 240), align 8, !tbaa !128
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ac) #17
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.ag = call ptr @luaCreateFunction(ptr noundef nonnull %0, ptr noundef %i.af, i32 noundef 0)
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @lua_settop(ptr noundef %i.c, i32 noundef -2) #17
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  call void @lua_getfield(ptr noundef %i.c, i32 noundef -10000, ptr noundef nonnull %i.a) #17
  %i.ai = call i32 @lua_type(ptr noundef %i.c, i32 noundef -1) #17
  %.not48 = icmp eq i32 %i.ai, 0
  br i1 %.not48, label %bb.o, label %bb.p, !prof !136

bb.o:                                             ; preds = %bb.n
  call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, i32 noundef 598) #17
  call void @abort() #19
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !120 ; 2 uses
  %.not49 = icmp eq ptr %i.ak, null
  br i1 %.not49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.am = call ptr @dictFind(ptr noundef %i.al, ptr noundef nonnull %i.aj) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.ak, %bb.p ], [ %i.am, %bb.q ]
  %i.an = call ptr @dictGetVal(ptr noundef %.0) #17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115 ; 2 uses
  %i.as = icmp eq ptr %i.ar, @evalRoCommand
  %i.at = icmp eq ptr %i.ar, @evalShaRoCommand
  %narrow = or i1 %i.as, %i.at
  %i.au = zext i1 %narrow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 8), align 8, !tbaa !41
  %i.aw = load i64, ptr %i.an, align 8, !tbaa !129
  %i.ax = call i32 @scriptPrepareForRun(ptr noundef nonnull %2, ptr noundef %i.av, ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i64 noundef %i.aw, i32 noundef %i.au) #17
  %.not50 = icmp eq i32 %i.ax, 0
  br i1 %.not50, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @lua_settop(ptr noundef %i.c, i32 noundef -3) #17
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !159
  %i.ba = or i32 %i.az, 128
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !135 ; 2 uses
  %.not51 = icmp eq ptr %i.bc, null
  br i1 %.not51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  call void @listUnlinkNode(ptr noundef %i.bd, ptr noundef nonnull %i.bc) #17
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !135
  call void @listLinkNodeTail(ptr noundef %i.be, ptr noundef %i.bf) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !137 ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.j, align 8, !tbaa !126
  %i.bl = add nsw i32 %i.bk, -3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = sub nsw i64 %i.bm, %i.bi
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 8), align 8, !tbaa !31
  call void @luaCallFunction(ptr noundef nonnull %2, ptr noundef %i.c, ptr noundef nonnull %i.bh, i64 noundef %i.bi, ptr noundef nonnull %i.bj, i64 noundef %i.bn, i32 noundef %i.bo) #17
  call void @lua_settop(ptr noundef %i.c, i32 noundef -2) #17
  call void @scriptResetRun(ptr noundef nonnull %2) #17
  call void @luaGC(ptr noundef %i.c, ptr noundef nonnull @gc_count) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w, %bb.m, %bb.k, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @evalRoCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1488), align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !126
  tail call void @replicationFeedMonitors(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.i) #17, !inline_history !160
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !88
  %i.l = and i64 %i.k, 33554432
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 0), !inline_history !160
  br label %evalCommand.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @ldbStartSession(ptr noundef nonnull %0), !inline_history !161
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 0), !inline_history !161
  tail call void @ldbEndSession(ptr noundef nonnull %0), !inline_history !161
  br label %evalCommand.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !88
  %i.o = and i64 %i.n, -100663297
  store i64 %i.o, ptr %i.j, align 8, !tbaa !88
  br label %evalCommand.exit

evalCommand.exit:                                 ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

declare i32 @scriptPrepareForRun(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @listUnlinkNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @listLinkNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaCallFunction(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @scriptResetRun(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @evalCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1488), align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !126
  tail call void @replicationFeedMonitors(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.i) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !88
  %i.l = and i64 %i.k, 33554432
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 0)
  br label %evalGenericCommandWithDebugging.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @ldbStartSession(ptr noundef nonnull %0), !inline_history !162
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @evalGenericCommand(ptr noundef nonnull %0, i32 noundef 0), !inline_history !162
  tail call void @ldbEndSession(ptr noundef nonnull %0), !inline_history !162
  br label %evalGenericCommandWithDebugging.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !88
  %i.o = and i64 %i.n, -100663297
  store i64 %i.o, ptr %i.j, align 8, !tbaa !88
  br label %evalGenericCommandWithDebugging.exit

evalGenericCommandWithDebugging.exit:             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

declare void @replicationFeedMonitors(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @evalGenericCommandWithDebugging(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ldbStartSession(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @evalGenericCommand(ptr noundef %0, i32 noundef %1)
  tail call void @ldbEndSession(ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !88
  %i.d = and i64 %i.c, -100663297
  store i64 %i.d, ptr %i.b, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @scriptCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [15 x ptr], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !126  ; 5 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119  ; 4 uses
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.32) #16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, ptr noundef nonnull align 16 dereferenceable(120) @__const.scriptCommand.help, i64 120, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.c, 1
  br i1 %i.l, label %.thread, label %.thread72

.thread:                                          ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !116 ; 3 uses
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !117
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %.pre78, i64 8
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !119 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = tail call i32 @strcasecmp(ptr noundef %.pre80, ptr noundef nonnull @.str.47) #16
  %.not53 = icmp eq i32 %i.n, 0
  br i1 %.not53, label %bb.e, label %bb.j

.thread.thread:                                   ; preds = %bb.b
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.47) #16
  %.not5382 = icmp eq i32 %i.o, 0
  br i1 %.not5382, label %bb.h, label %.thread85

bb.e:                                             ; preds = %.thread
  %i.p = icmp eq i32 %i.c, 3
  br i1 %i.p, label %bb.f, label %.thread67

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119  ; 2 uses
  %i.u = tail call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.48) #16
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.49) #16
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.i, label %.thread67

bb.h:                                             ; preds = %.thread.thread
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8376), align 8, !tbaa !164
  %.not56 = icmp ne i32 %i.w, 0
  %i.x = zext i1 %.not56 to i32
  br label %bb.i

.thread67:                                        ; preds = %bb.e, %bb.g
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #17
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.049 = phi i32 [ %i.x, %bb.h ], [ 0, %bb.f ], [ 1, %bb.g ]
  tail call void @scriptingRelease(i32 noundef %.049)
  tail call void @scriptingInit(i32 noundef 0)
  %i.y = load ptr, ptr @shared, align 8, !tbaa !165
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.y) #17
  br label %.loopexit

bb.j:                                             ; preds = %.thread
  %i.z = tail call i32 @strcasecmp(ptr noundef %.pre80, ptr noundef nonnull @.str.51) #16
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %bb.k, label %bb.l

.thread85:                                        ; preds = %.thread.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.51) #16
  %.not5786 = icmp eq i32 %i.ab, 0
  br i1 %.not5786, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.thread85, %bb.j
  %i.ac = phi ptr [ %i.aa, %.thread85 ], [ %i.m, %bb.j ]
  %i.ad = add nsw i32 %i.c, -2
  %i.ae = zext nneg i32 %i.ad to i64
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ae) #17
  %i.af = load i32, ptr %i.b, align 8, !tbaa !126
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 2, %bb.k ] ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119
  %i.an = tail call ptr @dictFind(ptr noundef %i.ah, ptr noundef %i.am) #17
  %.not58 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %.sink = select i1 %.not58, ptr %i.ap, ptr %i.ao
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %.sink) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !126
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.loopexit, !llvm.loop !163

bb.l:                                             ; preds = %bb.j
  %i.at = icmp eq i32 %i.c, 3
  br i1 %i.at, label %bb.m, label %.thread72

bb.m:                                             ; preds = %bb.l
  %i.au = tail call i32 @strcasecmp(ptr noundef %.pre80, ptr noundef nonnull @.str.52) #16
  %.not59 = icmp eq i32 %i.au, 0
  br i1 %.not59, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !117
  %i.ax = tail call ptr @luaCreateFunction(ptr noundef nonnull %0, ptr noundef %i.aw, i32 noundef 1) ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i64 noundef 40) #17
  br label %.loopexit

bb.p:                                             ; preds = %.thread85
  %i.az = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.53) #16
  %.not60 = icmp eq i32 %i.az, 0
  br i1 %.not60, label %bb.q, label %.thread72

bb.q:                                             ; preds = %bb.p
  tail call void @scriptKill(ptr noundef nonnull %0, i32 noundef 1) #17
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %i.ba = tail call i32 @strcasecmp(ptr noundef %.pre80, ptr noundef nonnull @.str.6) #16
  %.not61 = icmp eq i32 %i.ba, 0
  br i1 %.not61, label %bb.s, label %.thread72

bb.s:                                             ; preds = %bb.r
  %i.bb = tail call i32 @clientHasPendingReplies(ptr noundef nonnull %0) #17
  %.not62 = icmp eq i32 %i.bb, 0
  br i1 %.not62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.54) #17
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119 ; 3 uses
  %i.bh = tail call i32 @strcasecmp(ptr noundef %i.bg, ptr noundef nonnull @.str.55) #16
  %.not63 = icmp eq i32 %i.bh, 0
  br i1 %.not63, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !88
  %i.bk = and i64 %i.bj, -100663297
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !88
  %i.bl = load ptr, ptr @shared, align 8, !tbaa !165
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bl) #17
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bm = tail call i32 @strcasecmp(ptr noundef %i.bg, ptr noundef nonnull @.str.56) #16
  %.not64 = icmp eq i32 %i.bm, 0
  br i1 %.not64, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @ldbEnable(ptr noundef nonnull %0)
  %i.bn = load ptr, ptr @shared, align 8, !tbaa !165
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bn) #17
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.bo = tail call i32 @strcasecmp(ptr noundef %i.bg, ptr noundef nonnull @.str.48) #16
  %.not65 = icmp eq i32 %i.bo, 0
  br i1 %.not65, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @ldbEnable(ptr noundef nonnull %0)
  %i.bp = load ptr, ptr @shared, align 8, !tbaa !165
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bp) #17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !88
  %i.bs = or i64 %i.br, 67108864
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !88
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #17
  br label %.loopexit

.thread72:                                        ; preds = %bb.l, %bb.p, %bb.d, %bb.r
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.o, %bb.n, %.thread67, %bb.i, %.thread72, %bb.x, %bb.z, %bb.v, %bb.q, %bb.aa, %bb.t, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @addReplyHelp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @scriptKill(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @clientHasPendingReplies(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ldbDisable(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = and i64 %i.b, -100663297
  store i64 %i.c, ptr %i.a, align 8, !tbaa !88
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbEnable(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = or i64 %i.b, 33554432
  store i64 %i.c, ptr %i.a, align 8, !tbaa !88
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %.not3.i = icmp eq ptr %i.e, null
  br i1 %.not3.i, label %ldbFlushLog.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi ptr [ %i.g, %.lr.ph.i ], [ %i.e, %bb.a ]
  tail call void @listDelNode(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #17
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ldbFlushLog.exit, label %.lr.ph.i, !llvm.loop !1

ldbFlushLog.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  store ptr %i.i, ptr @ldb, align 8, !tbaa !65
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 304), align 8, !tbaa !32
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  tail call void @sdsfree(ptr noundef %i.j) #17
  %i.k = tail call ptr @sdsempty() #17
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  store i64 256, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 344), align 8, !tbaa !142
  ret void
}

declare void @addReplySubcommandSyntaxError(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @evalScriptsMemoryVM() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @lctx, align 8, !tbaa !89
  %i.b = tail call i64 @luaMemory(ptr noundef %i.a) #17
  ret i64 %i.b
}

declare i64 @luaMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @evalScriptsDict() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @evalScriptsMemoryEngine() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 32), align 8, !tbaa !75
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73
  %i.c = tail call i64 @dictMemUsage(ptr noundef %i.b) #17
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 16), align 8, !tbaa !73 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108
  %i.i = add i64 %i.h, %i.f
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lctx, i64 24), align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !130
  %reass.add = add i64 %i.i, %i.l
  %reass.mul = mul i64 %reass.add, 24
  %i.m = add i64 %i.c, %i.a
  %i.n = add i64 %i.m, %reass.mul
  ret i64 %i.n
}

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #1

declare void @sdsfreegeneric(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbFlushLog(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @listDelNode(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ldbIsEnabled() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 8), align 8, !tbaa !31
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbLogWithMaxLen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141 ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %sdslen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !24 ; 2 uses
  %i.c = and i8 %.val.i, 7
  switch i8 %i.c, label %sdslen.exit.thread [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i8 %.val.i, 3
  %i.e = zext nneg i8 %i.d to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %i.h = zext i8 %i.g to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -5
  %i.j = load i16, ptr %i.i, align 1, !tbaa !107
  %i.k = zext i16 %i.j to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %0, i64 -9
  %i.m = load i32, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i32 %i.m to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %0, i64 -17
  %i.p = load i64, ptr %i.o, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.p, %bb.g ], [ %i.e, %bb.c ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.n, %bb.f ]
  %i.q = icmp ugt i64 %.0.i, %i.a
  br i1 %i.q, label %bb.h, label %sdslen.exit.thread

bb.h:                                             ; preds = %sdslen.exit
  %i.r = add i64 %i.a, -1
  tail call void @sdsrange(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r) #17
  %i.s = tail call ptr @sdscatlen(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, i64 noundef 4) #17
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.b, %bb.h, %sdslen.exit, %bb.a
  %.05 = phi ptr [ %i.s, %bb.h ], [ %0, %sdslen.exit ], [ %0, %bb.a ], [ %0, %bb.b ]
  %i.t = phi i1 [ true, %bb.h ], [ false, %sdslen.exit ], [ false, %bb.a ], [ false, %bb.b ]
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.v = tail call ptr @listAddNodeTail(ptr noundef %i.u, ptr noundef %.05) #17 ; 0 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 344), align 8
  %i.x = icmp eq i32 %i.w, 0
  %or.cond = select i1 %i.t, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sdslen.exit.thread
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 344), align 8, !tbaa !142
  %i.y = tail call ptr @sdsnew(ptr noundef nonnull @.str.59) #17
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.aa = tail call ptr @listAddNodeTail(ptr noundef %i.z, ptr noundef %i.y) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sdslen.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbSendLogs() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsempty() #17
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !130
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.a, ptr noundef nonnull @.str.60, i32 noundef %i.e) #17 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.j = phi ptr [ %i.t, %.lr.ph ], [ %i.g, %bb.a ]
  %.011 = phi ptr [ %i.r, %.lr.ph ], [ %i.f, %bb.a ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.l = tail call ptr @sdscatlen(ptr noundef %.011, ptr noundef nonnull @.str.61, i64 noundef 1) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132
  %i.o = tail call ptr @sdsmapchars(ptr noundef %i.n, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i64 noundef 2) #17 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !132
  %i.q = tail call ptr @sdscatsds(ptr noundef %i.l, ptr noundef %i.p) #17
  %i.r = tail call ptr @sdscatlen(ptr noundef %i.q, ptr noundef nonnull @.str.62, i64 noundef 2) #17 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  tail call void @listDelNode(ptr noundef %i.s, ptr noundef %i.k) #17
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !130
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.r, %.lr.ph ] ; 7 uses
  %i.w = load ptr, ptr @ldb, align 8, !tbaa !65   ; 2 uses
  %i.x = getelementptr i8, ptr %.0.lcssa, i64 -1
  %.val.i = load i8, ptr %i.x, align 1, !tbaa !24 ; 2 uses
  %i.y = and i8 %.val.i, 7
  switch i8 %i.y, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.z = lshr i8 %.val.i, 3
  %i.aa = zext nneg i8 %i.z to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds i8, ptr %.0.lcssa, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = zext i8 %i.ac to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds i8, ptr %.0.lcssa, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !107
  %i.ag = zext i16 %i.af to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds i8, ptr %.0.lcssa, i64 -9
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i32 %i.ai to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds i8, ptr %.0.lcssa, i64 -17
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %._crit_edge, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.al, %bb.f ], [ %i.aa, %bb.b ], [ %i.ad, %bb.c ], [ %i.ag, %bb.d ], [ %i.aj, %bb.e ], [ 0, %._crit_edge ]
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !144
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !169
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.w, ptr noundef nonnull %.0.lcssa, i64 noundef %.0.i) #17, !inline_history !168 ; 0 uses
  tail call void @sdsfree(ptr noundef nonnull %.0.lcssa) #17
  ret void
}

declare ptr @sdsmapchars(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ldbStartSession(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = and i64 %i.b, 67108864
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 12), align 4, !tbaa !146
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @redisFork(i32 noundef 3) #17 ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 -1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #21
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #17
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, ptr noundef %i.i) #17
  br label %.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = call i32 @sigemptyset(ptr noundef nonnull %i.j) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 0, ptr %i.l, align 8, !tbaa !173
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !24
  %i.m = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.n = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.65) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  %i.r = sext i32 %i.f to i64
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call ptr @listAddNodeTail(ptr noundef %i.q, ptr noundef nonnull %i.s) #17 ; 0 uses
  tail call void @freeClientAsync(ptr noundef nonnull %0) #17
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.v = icmp sgt i32 %i.u, 2
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.66) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.w = load ptr, ptr @ldb, align 8, !tbaa !65
  %i.x = call i32 @connBlock(ptr noundef %i.w) #17 ; 0 uses
  %i.y = load ptr, ptr @ldb, align 8, !tbaa !65
  %i.z = call i32 @connSendTimeout(ptr noundef %i.y, i64 noundef 5000) #17 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 8), align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !119
  %i.ag = call ptr @sdsdup(ptr noundef %i.af) #17 ; 21 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 5 uses
  %.val.i = load i8, ptr %i.ah, align 1, !tbaa !24 ; 4 uses
  %i.ai = and i8 %.val.i, 7
  switch i8 %i.ai, label %.split25 [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = lshr i8 %.val.i, 3
  %i.ak = zext nneg i8 %i.aj to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 -3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = zext i8 %i.am to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 -5
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !107
  %i.aq = zext i16 %i.ap to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -9
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i32 %i.as to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds i8, ptr %i.ag, i64 -17
  %i.av = load i64, ptr %i.au, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.av, %bb.o ], [ %i.ak, %bb.k ], [ %i.an, %bb.l ], [ %i.aq, %bb.m ], [ %i.at, %bb.n ] ; 2 uses
  %.not36 = icmp eq i64 %.0.i, 0
  br i1 %.not36, label %.split25, label %.lr.ph

.split25.loopexit:                                ; preds = %.critedge2
  %.val.i28.pre = load i8, ptr %i.ah, align 1, !tbaa !24
  br label %.split25

.split25:                                         ; preds = %bb.j, %.split25.loopexit, %sdslen.exit
  %.val.i28 = phi i8 [ %.val.i28.pre, %.split25.loopexit ], [ %.val.i, %sdslen.exit ], [ %.val.i, %bb.j ] ; 6 uses
  %i.aw = and i8 %.val.i28, 7
  switch i8 %i.aw, label %.critedge [
    i8 0, label %.critedge.thread
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

.critedge.thread:                                 ; preds = %.split25
  store i8 0, ptr %i.ah, align 1, !tbaa !24
  br label %bb.y

bb.p:                                             ; preds = %.split25
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 -3
  store i8 0, ptr %i.ax, align 1, !tbaa !24
  br label %.critedge

bb.q:                                             ; preds = %.split25
  %i.ay = getelementptr inbounds i8, ptr %i.ag, i64 -5
  store i16 0, ptr %i.ay, align 1, !tbaa !107
  br label %.critedge

bb.r:                                             ; preds = %.split25
  %i.az = getelementptr inbounds i8, ptr %i.ag, i64 -9
  store i32 0, ptr %i.az, align 1, !tbaa !17
  br label %.critedge

bb.s:                                             ; preds = %.split25
  %i.ba = getelementptr inbounds i8, ptr %i.ag, i64 -17
  store i64 0, ptr %i.ba, align 1, !tbaa !108
  br label %.critedge

.lr.ph:                                           ; preds = %sdslen.exit, %.critedge2
  %.037 = phi i64 [ %i.bn, %.critedge2 ], [ %.0.i, %sdslen.exit ] ; 7 uses
  %i.bb = getelementptr i8, ptr %i.ag, i64 %.037
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  switch i8 %i.bd, label %.split [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.split:                                           ; preds = %.lr.ph
  %.val.i29 = load i8, ptr %i.ah, align 1, !tbaa !24 ; 6 uses
  %i.be = and i8 %.val.i29, 7
  switch i8 %i.be, label %.critedge [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %.split
  %.tr.i = trunc i64 %.037 to i8
  %i.bf = shl i8 %.tr.i, 3                        ; 2 uses
  store i8 %i.bf, ptr %i.ah, align 1, !tbaa !24
  br label %.critedge

bb.u:                                             ; preds = %.split
  %i.bg = trunc i64 %.037 to i8
  %i.bh = getelementptr inbounds i8, ptr %i.ag, i64 -3
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !24
  br label %.critedge

bb.v:                                             ; preds = %.split
  %i.bi = trunc i64 %.037 to i16
  %i.bj = getelementptr inbounds i8, ptr %i.ag, i64 -5
  store i16 %i.bi, ptr %i.bj, align 1, !tbaa !107
  br label %.critedge

bb.w:                                             ; preds = %.split
  %i.bk = trunc i64 %.037 to i32
  %i.bl = getelementptr inbounds i8, ptr %i.ag, i64 -9
  store i32 %i.bk, ptr %i.bl, align 1, !tbaa !17
  br label %.critedge

bb.x:                                             ; preds = %.split
  %i.bm = getelementptr inbounds i8, ptr %i.ag, i64 -17
  store i64 %.037, ptr %i.bm, align 1, !tbaa !108
  br label %.critedge

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.bn = add i64 %.037, -1                       ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !24
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %.split25.loopexit, label %.lr.ph, !llvm.loop !170

.critedge:                                        ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.split, %bb.s, %bb.r, %bb.q, %bb.p, %.split25
  %.val.i31 = phi i8 [ %.val.i29, %bb.x ], [ %.val.i29, %bb.w ], [ %.val.i29, %bb.v ], [ %.val.i29, %bb.u ], [ %i.bf, %bb.t ], [ %.val.i29, %.split ], [ %.val.i28, %bb.s ], [ %.val.i28, %bb.r ], [ %.val.i28, %bb.q ], [ %.val.i28, %bb.p ], [ %.val.i28, %.split25 ] ; 2 uses
  %i.bp = and i8 %.val.i31, 7
  switch i8 %i.bp, label %sdslen.exit33 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.critedge.thread, %.critedge
  %.val.i3144 = phi i8 [ 0, %.critedge.thread ], [ %.val.i31, %.critedge ]
  %i.bq = lshr i8 %.val.i3144, 3
  %i.br = zext nneg i8 %i.bq to i64
  br label %sdslen.exit33

bb.z:                                             ; preds = %.critedge
  %i.bs = getelementptr inbounds i8, ptr %i.ag, i64 -3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24
  %i.bu = zext i8 %i.bt to i64
  br label %sdslen.exit33

bb.aa:                                            ; preds = %.critedge
  %i.bv = getelementptr inbounds i8, ptr %i.ag, i64 -5
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !107
  %i.bx = zext i16 %i.bw to i64
  br label %sdslen.exit33

bb.ab:                                            ; preds = %.critedge
  %i.by = getelementptr inbounds i8, ptr %i.ag, i64 -9
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !17
  %i.ca = zext i32 %i.bz to i64
  br label %sdslen.exit33

bb.ac:                                            ; preds = %.critedge
  %i.cb = getelementptr inbounds i8, ptr %i.ag, i64 -17
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !108
  br label %sdslen.exit33

sdslen.exit33:                                    ; preds = %.critedge, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i32 = phi i64 [ %i.cc, %bb.ac ], [ %i.br, %bb.y ], [ %i.bu, %bb.z ], [ %i.bx, %bb.aa ], [ %i.ca, %bb.ab ], [ 0, %.critedge ]
  %i.cd = call ptr @sdssplitlen(ptr noundef nonnull %i.ag, i64 noundef %.0.i32, ptr noundef nonnull @.str.67, i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ldb, i64 320)) #17
  store ptr %i.cd, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  call void @sdsfree(ptr noundef nonnull %i.ag) #17
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c, %sdslen.exit33
  %.1 = phi i32 [ 1, %sdslen.exit33 ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i32 %.1
}

declare i32 @redisFork(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @freeClientAsync(ptr noundef) local_unnamed_addr #1

declare i32 @connBlock(ptr noundef) local_unnamed_addr #1

declare i32 @connSendTimeout(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbEndSession(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef nonnull @.str.68) #17
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.c = tail call ptr @listAddNodeTail(ptr noundef %i.b, ptr noundef %i.a) #17 ; 0 uses
  tail call void @ldbSendLogs()
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 12), align 4, !tbaa !146
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @writeToClient(ptr noundef %0, i32 noundef 0) #17 ; 0 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.g = icmp sgt i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.69) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @exitFromChild(i32 noundef 0, i32 noundef 0) #17
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.70) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load ptr, ptr @ldb, align 8, !tbaa !65
  %i.k = tail call i32 @connNonBlock(ptr noundef %i.j) #17 ; 0 uses
  %i.l = load ptr, ptr @ldb, align 8, !tbaa !65
  %i.m = tail call i32 @connSendTimeout(ptr noundef %i.l, i64 noundef 0) #17 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !88
  %i.p = or i64 %i.o, 64
  store i64 %i.p, ptr %i.n, align 8, !tbaa !88
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8, !tbaa !70
  tail call void @sdsfreesplitres(ptr noundef %i.q, i32 noundef %i.r) #17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8, !tbaa !70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 8), align 8, !tbaa !31
  ret void
}

declare i32 @writeToClient(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @exitFromChild(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @connNonBlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ldbRemoveChild(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  %i.b = sext i32 %0 to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @listSearchKey(ptr noundef %i.a, ptr noundef %i.c) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  tail call void @listDelNode(ptr noundef %i.e, ptr noundef nonnull %i.d) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @listSearchKey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ldbPendingChildren() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !130
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbKillForkedSessions() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %0) #17
  %i.b = call ptr @listNext(ptr noundef nonnull %0) #17 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %sext = shl i64 %i.f, 32
  %i.j = ashr exact i64 %sext, 32
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.71, i64 noundef %i.j) #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = call i32 @kill(i32 noundef %i.g, i32 noundef 9) #17 ; 0 uses
  %i.l = call ptr @listNext(ptr noundef nonnull %0) #17 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  call void @listRelease(ptr noundef %i.m) #17
  %i.n = call ptr @listCreate() #17
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 32), align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret void
}

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ldbGetSourceLine(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not = icmp sgt i32 %0, %i.b
  %or.cond = select i1 %i.a, i1 true, i1 %.not.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ @.str.72, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ldbIsBreakpoint(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = icmp eq i32 %i.d, %0
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ldbAddBreakpoint(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %i.c = icmp sgt i32 %0, %i.b
  %or.cond9 = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond9, label %ldbIsBreakpoint.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %ldbIsBreakpoint.exit.thread14

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ldbIsBreakpoint.exit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %i.h = icmp eq i32 %i.g, %0
  br i1 %i.h, label %ldbIsBreakpoint.exit.thread, label %bb.c

ldbIsBreakpoint.exit:                             ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 64
  br i1 %.not, label %ldbIsBreakpoint.exit.thread, label %ldbIsBreakpoint.exit.thread14

ldbIsBreakpoint.exit.thread14:                    ; preds = %bb.b, %ldbIsBreakpoint.exit
  %i.i = add nsw i32 %i.d, 1
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.j = sext i32 %i.d to i64
  %i.k = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %i.j
  store i32 %0, ptr %i.k, align 4, !tbaa !17
  br label %ldbIsBreakpoint.exit.thread

ldbIsBreakpoint.exit.thread:                      ; preds = %.lr.ph.i, %ldbIsBreakpoint.exit, %bb.a, %ldbIsBreakpoint.exit.thread14
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %ldbIsBreakpoint.exit.thread14 ], [ 0, %ldbIsBreakpoint.exit ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ldbDelBreakpoint(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = icmp eq i32 %i.d, %0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = sub nuw nsw i32 %i.h, %i.g
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.i, i64 %i.k, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.08 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbReplParseCommand(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71 ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !24 ; 2 uses
  %i.c = and i8 %.val.i, 7
  switch i8 %i.c, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %.val.i, 3
  %i.e = zext nneg i8 %i.d to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %i.h = zext i8 %i.g to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.j = load i16, ptr %i.i, align 1, !tbaa !107
  %i.k = zext i16 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -9
  %i.m = load i32, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i32 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 -17
  %i.p = load i64, ptr %i.o, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@ldbReplParseCommand:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ac
  %.val.i66 = load i8, ptr %i.ad, align 1, !tbaa !24 ; 2 uses
  %i.ax = and i8 %.val.i66, 7
  switch i8 %i.ax, label %sdslen.exit68 [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.ay = lshr i8 %.val.i66, 3
  %i.az = zext nneg i8 %i.ay to i64
  br label %sdslen.exit68

bb.q:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.bb = zext i8 %i.ba to i64
  br label %sdslen.exit68

bb.r:                                             ; preds = %bb.o
  %i.bc = load i16, ptr %i.ag, align 1, !tbaa !107
  %i.bd = zext i16 %i.bc to i64
  br label %sdslen.exit68

bb.s:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.af, align 1, !tbaa !17
  %i.bf = zext i32 %i.be to i64
  br label %sdslen.exit68

bb.t:                                             ; preds = %bb.o
  %i.bg = load i64, ptr %i.ae, align 1, !tbaa !108
  br label %sdslen.exit68

sdslen.exit68:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i67 = phi i64 [ %i.bg, %bb.t ], [ %i.az, %bb.p ], [ %i.bb, %bb.q ], [ %i.bd, %bb.r ], [ %i.bf, %bb.s ], [ 0, %bb.o ]
  %i.bh = icmp ugt i64 %i.aw, %.0.i67
  br i1 %i.bh, label %.thread73.loopexit, label %bb.u

bb.u:                                             ; preds = %sdslen.exit68
  %i.bi = tail call ptr @sdsnewlen(ptr noundef nonnull %i.ao, i64 noundef %i.as) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !106
  %i.bk = load i8, ptr %i.at, align 1, !tbaa !24
  %.not62 = icmp eq i8 %i.bk, 13
  br i1 %.not62, label %bb.v, label %.thread.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %.not63 = icmp eq i8 %i.bm, 10
  br i1 %.not63, label %bb.k, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.v, %bb.n, %bb.u, %bb.l
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv, %bb.n ], [ %indvars.iv.next, %bb.u ], [ %indvars.iv, %bb.l ], [ %indvars.iv.next, %bb.v ]
  %indvars.le = trunc i64 %indvars.iv.next.lcssa.sink to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.i, %bb.g
  %.049 = phi ptr [ null, %bb.i ], [ null, %bb.g ], [ %i.ab, %.thread.loopexit ]
  %.2 = phi i32 [ 0, %bb.i ], [ 0, %bb.g ], [ %indvars.le, %.thread.loopexit ]
  store ptr @.str.73, ptr %1, align 8, !tbaa !106
  br label %.thread73

.thread73.loopexit:                               ; preds = %bb.m, %bb.l, %sdslen.exit68
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread73

.thread73:                                        ; preds = %.thread73.loopexit, %bb.h, %.thread
  %.150 = phi ptr [ %.049, %.thread ], [ null, %bb.h ], [ %i.ab, %.thread73.loopexit ]
  %.3 = phi i32 [ %.2, %.thread ], [ 0, %bb.h ], [ %i.bn, %.thread73.loopexit ]
  tail call void @sdsfreesplitres(ptr noundef %.150, i32 noundef %.3) #17
  br label %sdslen.exit.thread.sink.split

sdslen.exit.thread.sink.split:                    ; preds = %bb.k, %.thread73
  %.152.ph = phi ptr [ null, %.thread73 ], [ %i.ab, %bb.k ]
  tail call void @sdsfree(ptr noundef nonnull %i.r) #17
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %sdslen.exit.thread.sink.split, %bb.a, %sdslen.exit
  %.152 = phi ptr [ null, %sdslen.exit ], [ null, %bb.a ], [ %.152.ph, %sdslen.exit.thread.sink.split ]
  ret ptr %.152
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ldbLogSourceLine(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i = icmp sgt i32 %0, %i.b
  %or.cond.i = select i1 %i.a, i1 true, i1 %.not.not.i
  br i1 %or.cond.i, label %ldbGetSourceLine.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  br label %ldbGetSourceLine.exit

ldbGetSourceLine.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ @.str.72, %bb.a ]
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %ldbGetSourceLine.exit
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = icmp eq i32 %i.k, %0
  br i1 %i.l, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.lr.ph.i, %bb.c, %ldbGetSourceLine.exit
  %i.m = phi ptr [ @.str.77, %ldbGetSourceLine.exit ], [ @.str.77, %bb.c ], [ @.str.76, %.lr.ph.i ]
  %i.n = phi ptr [ @.str.75, %ldbGetSourceLine.exit ], [ @.str.75, %bb.c ], [ @.str.74, %.lr.ph.i ]
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.p = icmp eq i32 %i.o, %0
  %.0 = select i1 %i.p, ptr %i.n, ptr %i.m
  %i.q = tail call ptr @sdsempty() #17
  %i.r = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.q, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0, i32 noundef %0, ptr noundef %.0.i) #17
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.t = tail call ptr @listAddNodeTail(ptr noundef %i.s, ptr noundef %i.r) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbList(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8, !tbaa !70 ; 2 uses
  %.not10 = icmp slt i32 %i.a, 1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not8 = icmp eq i32 %0, 0
  br i1 %.not8, label %ldbGetSourceLine.exit.i.us, label %.lr.ph.split

ldbGetSourceLine.exit.i.us:                       ; preds = %.lr.ph, %ldbLogSourceLine.exit.us
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %ldbLogSourceLine.exit.us ], [ 1, %.lr.ph ] ; 6 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.c = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv19
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i.us, label %ldbLogSourceLine.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %ldbGetSourceLine.exit.i.us
  %wide.trip.count.i.i.us = zext nneg i32 %i.f to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.b, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i.us
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = zext i32 %i.i to i64
  %i.k = icmp eq i64 %indvars.iv19, %i.j
  br i1 %i.k, label %ldbLogSourceLine.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.us
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %ldbLogSourceLine.exit.us, label %.lr.ph.i.i.us, !llvm.loop !2

ldbLogSourceLine.exit.us:                         ; preds = %.lr.ph.i.i.us, %bb.b, %ldbGetSourceLine.exit.i.us
  %i.l = phi ptr [ @.str.77, %ldbGetSourceLine.exit.i.us ], [ @.str.76, %.lr.ph.i.i.us ], [ @.str.77, %bb.b ]
  %i.m = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i.us ], [ @.str.74, %.lr.ph.i.i.us ], [ @.str.75, %bb.b ]
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.o = zext i32 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv19, %i.o
  %.0.i.us = select i1 %i.p, ptr %i.m, ptr %i.l
  %i.q = tail call ptr @sdsempty() #17
  %i.r = trunc nuw nsw i64 %indvars.iv19 to i32
  %i.s = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.q, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i.us, i32 noundef %i.r, ptr noundef %i.e) #17
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.u = tail call ptr @listAddNodeTail(ptr noundef %i.t, ptr noundef %i.s) #17 ; 0 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8, !tbaa !70
  %i.w = sext i32 %i.v to i64
  %.not.us.not = icmp slt i64 %indvars.iv19, %i.w
  br i1 %.not.us.not, label %ldbGetSourceLine.exit.i.us, label %._crit_edge, !llvm.loop !175

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.x = phi i32 [ %i.aw, %bb.d ], [ %i.a, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %.lr.ph ] ; 7 uses
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = sub i32 %0, %i.y
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = icmp sgt i32 %i.aa, %1
  br i1 %i.ab, label %bb.d, label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %.lr.ph.split
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %ldbLogSourceLine.exit

.lr.ph.preheader.i.i:                             ; preds = %ldbGetSourceLine.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.ag to i64
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp eq i64 %indvars.iv, %i.ak
  br i1 %i.al, label %ldbLogSourceLine.exit, label %bb.c

ldbLogSourceLine.exit:                            ; preds = %bb.c, %.lr.ph.i.i, %ldbGetSourceLine.exit.i
  %i.am = phi ptr [ @.str.77, %ldbGetSourceLine.exit.i ], [ @.str.76, %.lr.ph.i.i ], [ @.str.77, %bb.c ]
  %i.an = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i ], [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.c ]
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp eq i64 %indvars.iv, %i.ap
  %.0.i = select i1 %i.aq, ptr %i.an, ptr %i.am
  %i.ar = tail call ptr @sdsempty() #17
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i, i32 noundef %i.as, ptr noundef %i.af) #17
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.av = tail call ptr @listAddNodeTail(ptr noundef %i.au, ptr noundef %i.at) #17 ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %ldbLogSourceLine.exit
  %i.aw = phi i32 [ %i.x, %.lr.ph.split ], [ %.pre, %ldbLogSourceLine.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ax = sext i32 %i.aw to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ax
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %bb.d, %ldbLogSourceLine.exit.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbCatStackValueRec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i32 @lua_type(ptr noundef %1, i32 noundef %2) #17 ; 2 uses
  %i.c = add nsw i32 %3, 1                        ; 3 uses
  %i.d = icmp eq i32 %3, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @sdscat(ptr noundef %0, ptr noundef nonnull @.str.79) #17
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.z [
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 0, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.y
    i32 7, label %bb.y
    i32 8, label %bb.y
    i32 2, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call ptr @lua_tolstring(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a) #17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !108
  %i.h = call ptr @sdscatrepr(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @lua_toboolean(ptr noundef %1, i32 noundef %2) #17
  %.not73 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not73, ptr @.str.81, ptr @.str.80
  %i.k = tail call ptr @sdscat(ptr noundef %0, ptr noundef nonnull %i.j) #17
  br label %bb.aa

bb.f:                                             ; preds = %bb.c
  %i.l = tail call double @lua_tonumber(ptr noundef %1, i32 noundef %2) #17
  %i.m = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %0, ptr noundef nonnull @.str.82, double noundef %i.l) #17
  br label %bb.aa

bb.g:                                             ; preds = %bb.c
  %i.n = tail call ptr @sdscatlen(ptr noundef %0, ptr noundef nonnull @.str.83, i64 noundef 3) #17
  br label %bb.aa

bb.h:                                             ; preds = %bb.c
  %i.o = tail call ptr @sdsempty() #17            ; 3 uses
  %i.p = tail call ptr @sdsempty() #17            ; 2 uses
  tail call void @lua_pushnil(ptr noundef %1) #17
  %i.q = add nsw i32 %2, -1                       ; 2 uses
  %i.r = tail call i32 @lua_next(ptr noundef %1, i32 noundef %i.q) #17
  %.not81 = icmp eq i32 %i.r, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %.06186 = phi ptr [ %i.ad, %bb.l ], [ %i.p, %bb.h ]
  %.06285 = phi ptr [ %i.y, %bb.l ], [ %i.o, %bb.h ]
  %.06384 = phi i32 [ %.1, %bb.l ], [ 1, %bb.h ]
  %.06482 = phi i32 [ %i.ae, %bb.l ], [ 1, %bb.h ] ; 2 uses
  %.not71 = icmp eq i32 %.06384, 0
  br i1 %.not71, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @lua_type(ptr noundef %1, i32 noundef -2) #17
  %.not72 = icmp eq i32 %i.s, 3
  br i1 %.not72, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = tail call double @lua_tonumber(ptr noundef %1, i32 noundef -2) #17
  %i.u = uitofp nneg i32 %.06482 to double
  %i.v = fcmp une double %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph
  %i.w = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ true, %.lr.ph ]
  %.1 = phi i32 [ 0, %bb.k ], [ 1, %bb.j ], [ 0, %.lr.ph ]
  %i.x = tail call ptr @ldbCatStackValueRec(ptr noundef %.06285, ptr noundef %1, i32 noundef -1, i32 noundef %i.c)
  %i.y = tail call ptr @sdscatlen(ptr noundef %i.x, ptr noundef nonnull @.str.84, i64 noundef 2) #17 ; 3 uses
  %i.z = tail call ptr @sdscatlen(ptr noundef %.06186, ptr noundef nonnull @.str.85, i64 noundef 1) #17
  %i.aa = tail call ptr @ldbCatStackValueRec(ptr noundef %i.z, ptr noundef %1, i32 noundef -2, i32 noundef %i.c)
  %i.ab = tail call ptr @sdscatlen(ptr noundef %i.aa, ptr noundef nonnull @.str.86, i64 noundef 2) #17
  %i.ac = tail call ptr @ldbCatStackValueRec(ptr noundef %i.ab, ptr noundef %1, i32 noundef -1, i32 noundef %i.c)
  %i.ad = tail call ptr @sdscatlen(ptr noundef %i.ac, ptr noundef nonnull @.str.84, i64 noundef 2) #17 ; 3 uses
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2) #17
  %i.ae = add nuw nsw i32 %.06482, 1
  %i.af = tail call i32 @lua_next(ptr noundef %1, i32 noundef %i.q) #17
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !176

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ag = select i1 %i.w, ptr %i.ad, ptr %i.y
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.063.lcssa = phi ptr [ %i.o, %bb.h ], [ %i.ag, %._crit_edge.loopexit ]
  %.062.lcssa = phi ptr [ %i.o, %bb.h ], [ %i.y, %._crit_edge.loopexit ] ; 7 uses
  %.061.lcssa = phi ptr [ %i.p, %bb.h ], [ %i.ad, %._crit_edge.loopexit ] ; 7 uses
  %i.ah = getelementptr i8, ptr %.062.lcssa, i64 -1
  %.val.i = load i8, ptr %i.ah, align 1, !tbaa !24 ; 2 uses
  %i.ai = and i8 %.val.i, 7
  switch i8 %i.ai, label %sdslen.exit.thread [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.aj = lshr i8 %.val.i, 3
  %i.ak = zext nneg i8 %i.aj to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds i8, ptr %.062.lcssa, i64 -3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = zext i8 %i.am to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds i8, ptr %.062.lcssa, i64 -5
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !107
  %i.aq = zext i16 %i.ap to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds i8, ptr %.062.lcssa, i64 -9
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i32 %i.as to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds i8, ptr %.062.lcssa, i64 -17
  %i.av = load i64, ptr %i.au, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.av, %bb.q ], [ %i.ak, %bb.m ], [ %i.an, %bb.n ], [ %i.aq, %bb.o ], [ %i.at, %bb.p ]
  %.not68 = icmp eq i64 %.0.i, 0
  br i1 %.not68, label %sdslen.exit.thread, label %bb.r

bb.r:                                             ; preds = %sdslen.exit
  tail call void @sdsrange(ptr noundef nonnull %.062.lcssa, i64 noundef 0, i64 noundef -3) #17
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %._crit_edge, %bb.r, %sdslen.exit
  %i.aw = getelementptr i8, ptr %.061.lcssa, i64 -1
  %.val.i74 = load i8, ptr %i.aw, align 1, !tbaa !24 ; 2 uses
  %i.ax = and i8 %.val.i74, 7
  switch i8 %i.ax, label %sdslen.exit76.thread [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %sdslen.exit.thread
  %i.ay = lshr i8 %.val.i74, 3
  %i.az = zext nneg i8 %i.ay to i64
  br label %sdslen.exit76

bb.t:                                             ; preds = %sdslen.exit.thread
  %i.ba = getelementptr inbounds i8, ptr %.061.lcssa, i64 -3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !24
  %i.bc = zext i8 %i.bb to i64
  br label %sdslen.exit76

bb.u:                                             ; preds = %sdslen.exit.thread
  %i.bd = getelementptr inbounds i8, ptr %.061.lcssa, i64 -5
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !107
  %i.bf = zext i16 %i.be to i64
  br label %sdslen.exit76

bb.v:                                             ; preds = %sdslen.exit.thread
  %i.bg = getelementptr inbounds i8, ptr %.061.lcssa, i64 -9
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !17
  %i.bi = zext i32 %i.bh to i64
  br label %sdslen.exit76

bb.w:                                             ; preds = %sdslen.exit.thread
  %i.bj = getelementptr inbounds i8, ptr %.061.lcssa, i64 -17
  %i.bk = load i64, ptr %i.bj, align 1, !tbaa !108
  br label %sdslen.exit76

sdslen.exit76:                                    ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i75 = phi i64 [ %i.bk, %bb.w ], [ %i.az, %bb.s ], [ %i.bc, %bb.t ], [ %i.bf, %bb.u ], [ %i.bi, %bb.v ]
  %.not69 = icmp eq i64 %.0.i75, 0
  br i1 %.not69, label %sdslen.exit76.thread, label %bb.x

bb.x:                                             ; preds = %sdslen.exit76
  tail call void @sdsrange(ptr noundef nonnull %.061.lcssa, i64 noundef 0, i64 noundef -3) #17
  br label %sdslen.exit76.thread

sdslen.exit76.thread:                             ; preds = %sdslen.exit.thread, %bb.x, %sdslen.exit76
  %i.bl = tail call ptr @sdscatlen(ptr noundef %0, ptr noundef nonnull @.str.87, i64 noundef 1) #17
  %i.bm = tail call ptr @sdscatsds(ptr noundef %i.bl, ptr noundef %.063.lcssa) #17
  %i.bn = tail call ptr @sdscatlen(ptr noundef %i.bm, ptr noundef nonnull @.str.88, i64 noundef 1) #17
  tail call void @sdsfree(ptr noundef nonnull %.062.lcssa) #17
  tail call void @sdsfree(ptr noundef nonnull %.061.lcssa) #17
  br label %bb.aa

bb.y:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.bo = tail call ptr @lua_topointer(ptr noundef %1, i32 noundef %2) #17
  %switch.tableidx = add i32 %i.b, -2             ; 2 uses
  %i.bp = icmp ult i32 %switch.tableidx, 7
  br i1 %i.bp, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.y
  %i.bq = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ldbCatStackValueRec, i64 %i.bq
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.fold.split

.fold.split:                                      ; preds = %bb.y, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.89, %bb.y ]
  %i.br = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef nonnull %.0, ptr noundef %i.bo) #17
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.bs = tail call ptr @sdscat(ptr noundef %0, ptr noundef nonnull @.str.95) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %sdslen.exit76.thread, %.fold.split, %bb.z, %bb.b
  %.065 = phi ptr [ %i.e, %bb.b ], [ %i.bs, %bb.z ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.bn, %sdslen.exit76.thread ], [ %i.br, %.fold.split ]
  ret ptr %.065
}

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sdscatrepr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_topointer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbLogStackValue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %1) #17
  %i.b = tail call ptr @ldbCatStackValueRec(ptr noundef %i.a, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  tail call void @ldbLogWithMaxLen(ptr noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbRedisProtocolToHuman(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !24
  switch i8 %i.b, label %bb.p [
    i8 58, label %bb.b
    i8 36, label %bb.c
    i8 43, label %bb.f
    i8 45, label %bb.g
    i8 42, label %bb.h
    i8 126, label %bb.i
    i8 37, label %bb.j
    i8 95, label %bb.k
    i8 35, label %bb.l
    i8 44, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 13) #16 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !106
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = xor i64 %i.g, -1
  %i.i = add i64 %i.f, %i.h
  %i.j = tail call ptr @sdscatlen(ptr noundef %i.e, ptr noundef nonnull %i.c, i64 noundef %i.i) #17
  store ptr %i.j, ptr %0, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 13) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = xor i64 %i.o, -1
  %i.q = add i64 %i.n, %i.p
end_hunk_2
begin_hunk_3_@ldbRedisProtocolToHuman:bb.a
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = tail call ptr @sdscatrepr(ptr noundef %i.ac, ptr noundef nonnull %1, i64 noundef %i.af) #17
  store ptr %i.ag, ptr %0, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef 13) #16 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !106
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = tail call ptr @sdscatrepr(ptr noundef %i.ak, ptr noundef nonnull %1, i64 noundef %i.an) #17
  store ptr %i.ao, ptr %0, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.aq = tail call ptr @ldbRedisProtocolToHuman_MultiBulk(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.ar = tail call ptr @ldbRedisProtocolToHuman_Set(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.as = tail call ptr @ldbRedisProtocolToHuman_Map(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.au = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.at, i32 noundef 13) #16
  %i.av = load ptr, ptr %0, align 8, !tbaa !106
  %i.aw = tail call ptr @sdscatlen(ptr noundef %i.av, ptr noundef nonnull @.str.101, i64 noundef 6) #17
  store ptr %i.aw, ptr %0, align 8, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.az = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.ay, i32 noundef 13) #16
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !24
  %i.bb = icmp eq i8 %i.ba, 116
  %i.bc = load ptr, ptr %0, align 8, !tbaa !106   ; 2 uses
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call ptr @sdscatlen(ptr noundef %i.bc, ptr noundef nonnull @.str.102, i64 noundef 5) #17
  br label %ldbRedisProtocolToHuman_Bool.exit

bb.n:                                             ; preds = %bb.l
  %i.be = tail call ptr @sdscatlen(ptr noundef %i.bc, ptr noundef nonnull @.str.103, i64 noundef 6) #17
  br label %ldbRedisProtocolToHuman_Bool.exit

ldbRedisProtocolToHuman_Bool.exit:                ; preds = %bb.m, %bb.n
  %storemerge.i = phi ptr [ %i.be, %bb.n ], [ %i.bd, %bb.m ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bh = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bg, i32 noundef 13) #16 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !106
  %i.bj = tail call ptr @sdscatlen(ptr noundef %i.bi, ptr noundef nonnull @.str.104, i64 noundef 9) #17 ; 2 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = xor i64 %i.bl, -1
  %i.bn = add i64 %i.bk, %i.bm
  %i.bo = tail call ptr @sdscatlen(ptr noundef %i.bj, ptr noundef nonnull %i.bg, i64 noundef %i.bn) #17
  store ptr %i.bo, ptr %0, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %ldbRedisProtocolToHuman_Bool.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %ldbRedisProtocolToHuman_Bulk.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.k, %bb.b ], [ %.0.i, %ldbRedisProtocolToHuman_Bulk.exit ], [ %i.ah, %bb.f ], [ %i.ap, %bb.g ], [ %i.aq, %bb.h ], [ %i.ar, %bb.i ], [ %i.as, %bb.j ], [ %i.ax, %bb.k ], [ %i.bf, %ldbRedisProtocolToHuman_Bool.exit ], [ %i.bp, %bb.o ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Int(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.g) #17
  store ptr %i.h, ptr %0, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Bulk(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 13) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = call i32 @string2ll(ptr noundef nonnull %i.b, i64 noundef %i.g, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @sdscatlen(ptr noundef %i.k, ptr noundef nonnull @.str.96, i64 noundef 4) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.n = call ptr @sdscatrepr(ptr noundef %i.k, ptr noundef nonnull %i.m, i64 noundef %i.i) #17
  %i.o = load i64, ptr %i.a, align 8, !tbaa !137
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %.pn = phi ptr [ %i.c, %bb.b ], [ %i.p, %bb.c ]
  store ptr %.sink, ptr %0, align 8, !tbaa !106
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Status(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call ptr @sdscatrepr(ptr noundef %i.c, ptr noundef %1, i64 noundef %i.f) #17
  store ptr %i.g, ptr %0, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbRedisProtocolToHuman_MultiBulk(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 13) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = call i32 @string2ll(ptr noundef nonnull %i.b, i64 noundef %i.g, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !137
  %i.k = icmp eq i64 %i.j, -1
  %i.l = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @sdscatlen(ptr noundef %i.l, ptr noundef nonnull @.str.96, i64 noundef 4) #17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = call ptr @sdscatlen(ptr noundef %i.l, ptr noundef nonnull @.str.85, i64 noundef 1) #17 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !106
  %i.o = load i64, ptr %i.a, align 8, !tbaa !137
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.02023 = phi ptr [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  %i.q = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %0, ptr noundef %.02023) ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.s = add nsw i64 %i.r, -1
  %.not = icmp eq i64 %i.s, %indvars.iv
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %0, align 8, !tbaa !106
  %i.u = call ptr @sdscatlen(ptr noundef %i.t, ptr noundef nonnull @.str.17, i64 noundef 1) #17
  store ptr %i.u, ptr %0, align 8, !tbaa !106
  %.pre = load i64, ptr %i.a, align 8, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.v = phi i64 [ %i.r, %.lr.ph ], [ %.pre, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp sgt i64 %i.v, %indvars.iv.next
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !177

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.x = phi ptr [ %i.n, %bb.c ], [ %.pre26, %._crit_edge.loopexit ]
  %.020.lcssa = phi ptr [ %i.i, %bb.c ], [ %i.q, %._crit_edge.loopexit ]
  %i.y = call ptr @sdscatlen(ptr noundef %i.x, ptr noundef nonnull @.str.97, i64 noundef 1) #17
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %storemerge = phi ptr [ %i.y, %._crit_edge ], [ %i.m, %bb.b ]
  %.021 = phi ptr [ %.020.lcssa, %._crit_edge ], [ %i.i, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbRedisProtocolToHuman_Set(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 13) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = call i32 @string2ll(ptr noundef nonnull %i.b, i64 noundef %i.g, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = call ptr @sdscatlen(ptr noundef %i.j, ptr noundef nonnull @.str.98, i64 noundef 2) #17 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !106
  %i.l = load i64, ptr %i.a, align 8, !tbaa !137
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.01618 = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.a ]
  %i.n = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %0, ptr noundef %.01618) ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.p = add nsw i64 %i.o, -1
  %.not = icmp eq i64 %i.p, %indvars.iv
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %0, align 8, !tbaa !106
  %i.r = call ptr @sdscatlen(ptr noundef %i.q, ptr noundef nonnull @.str.17, i64 noundef 1) #17
  store ptr %i.r, ptr %0, align 8, !tbaa !106
  %.pre = load i64, ptr %i.a, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.s = phi i64 [ %i.o, %.lr.ph ], [ %.pre, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = icmp sgt i64 %i.s, %indvars.iv.next
  br i1 %i.t, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %i.k, %bb.a ], [ %.pre21, %._crit_edge.loopexit ]
  %.016.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %i.v = call ptr @sdscatlen(ptr noundef %i.u, ptr noundef nonnull @.str.99, i64 noundef 1) #17
  store ptr %i.v, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.016.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ldbRedisProtocolToHuman_Map(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 13) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = xor i64 %i.e, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = call i32 @string2ll(ptr noundef nonnull %i.b, i64 noundef %i.g, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = call ptr @sdscatlen(ptr noundef %i.j, ptr noundef nonnull @.str.87, i64 noundef 1) #17 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !106
  %i.l = load i64, ptr %i.a, align 8, !tbaa !137
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.02022 = phi ptr [ %i.q, %bb.c ], [ %i.i, %bb.a ]
  %i.n = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %0, ptr noundef %.02022)
  %i.o = load ptr, ptr %0, align 8, !tbaa !106
  %i.p = call ptr @sdscatlen(ptr noundef %i.o, ptr noundef nonnull @.str.100, i64 noundef 4) #17
  store ptr %i.p, ptr %0, align 8, !tbaa !106
  %i.q = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %0, ptr noundef %i.n) ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.s = add nsw i64 %i.r, -1
  %.not = icmp eq i64 %i.s, %indvars.iv
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %0, align 8, !tbaa !106
  %i.u = call ptr @sdscatlen(ptr noundef %i.t, ptr noundef nonnull @.str.17, i64 noundef 1) #17
  store ptr %i.u, ptr %0, align 8, !tbaa !106
  %.pre = load i64, ptr %i.a, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi i64 [ %i.r, %.lr.ph ], [ %.pre, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp sgt i64 %i.v, %indvars.iv.next
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi ptr [ %i.k, %bb.a ], [ %.pre25, %._crit_edge.loopexit ]
  %.020.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %i.y = call ptr @sdscatlen(ptr noundef %i.x, ptr noundef nonnull @.str.88, i64 noundef 1) #17
  store ptr %i.y, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.020.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Null(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !106
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull @.str.101, i64 noundef 6) #17
  store ptr %i.d, ptr %0, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Bool(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16
  %i.c = load i8, ptr %i.a, align 1, !tbaa !24
  %i.d = icmp eq i8 %i.c, 116
  %i.e = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @sdscatlen(ptr noundef %i.e, ptr noundef nonnull @.str.102, i64 noundef 5) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @sdscatlen(ptr noundef %i.e, ptr noundef nonnull @.str.103, i64 noundef 6) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @ldbRedisProtocolToHuman_Double(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull @.str.104, i64 noundef 9) #17 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !106
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.e, %i.g
  %i.i = tail call ptr @sdscatlen(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.h) #17
  store ptr %i.i, ptr %0, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.j
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbLogRedisReply(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @sdsnew(ptr noundef nonnull @.str.105) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !106
  %i.c = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !106
  tail call void @ldbLogWithMaxLen(ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbPrint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_Debug, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #17
  %.not25 = icmp eq i32 %i.a, 0
  br i1 %.not25, label %.critedge._crit_edge, label %.lr.ph27

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph27
  %i.b = call i32 @lua_getstack(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull %2) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge._crit_edge, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a, %.critedge.loopexit
  %.01826 = phi i32 [ %i.c, %.critedge.loopexit ], [ 0, %bb.a ]
  %i.c = add nuw nsw i32 %.01826, 1               ; 2 uses
  %i.d = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #17 ; 2 uses
  %.not2223 = icmp eq ptr %i.d, null
  br i1 %.not2223, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27, %bb.c
  %i.e = phi ptr [ %i.k, %bb.c ], [ %i.d, %.lr.ph27 ]
  %.01724 = phi i32 [ %i.j, %bb.c ], [ 1, %.lr.ph27 ]
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = call ptr @sdsnew(ptr noundef nonnull @.str.106) #17
  %i.i = call ptr @ldbCatStackValueRec(ptr noundef %i.h, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.i)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.g, !llvm.loop !180

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.01724, 1               ; 2 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.k = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.j) #17 ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !181

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %bb.a
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.107) #16
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.108) #16
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.critedge._crit_edge
  call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull %1) #17
  %i.n = call ptr @sdsnew(ptr noundef nonnull @.str.106) #17
  %i.o = call ptr @ldbCatStackValueRec(ptr noundef %i.n, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.o)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = call ptr @sdsnew(ptr noundef nonnull @.str.109) #17
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.r = call ptr @listAddNodeTail(ptr noundef %i.q, ptr noundef %i.p) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @lua_getstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lua_getlocal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbPrintAll(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #17 ; 2 uses
  %.not1315 = icmp eq ptr %i.b, null
  br i1 %.not1315, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.b, %.preheader ] ; 2 uses
  %.017 = phi i32 [ %.1, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %.01116 = phi i32 [ %i.d, %bb.c ], [ 1, %.preheader ]
  %i.d = add nuw nsw i32 %.01116, 1               ; 2 uses
  %i.e = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.110) #16
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = call ptr @sdsempty() #17
  %i.g = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.f, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.h = call ptr @sdsnew(ptr noundef %i.g) #17
  %i.i = call ptr @ldbCatStackValueRec(ptr noundef %i.h, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.i)
  call void @sdsfree(ptr noundef %i.g) #17
  %i.j = add nsw i32 %.017, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %.017, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.k = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.d) #17 ; 2 uses
  %.not13 = icmp eq ptr %i.k, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.c
  %i.l = icmp eq i32 %.1, 0
  br i1 %i.l, label %.critedge, label %bb.d

.critedge:                                        ; preds = %.preheader, %bb.a, %._crit_edge
  %i.m = call ptr @sdsnew(ptr noundef nonnull @.str.112) #17
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.o = call ptr @listAddNodeTail(ptr noundef %i.n, ptr noundef %i.m) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbBreak(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @sdsnew(ptr noundef nonnull @.str.113) #17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.h = tail call ptr @listAddNodeTail(ptr noundef %i.g, ptr noundef %i.f) #17 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @sdsempty() #17
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.k = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.i, ptr noundef nonnull @.str.114, i32 noundef %i.j) #17
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.m = tail call ptr @listAddNodeTail(ptr noundef %i.l, ptr noundef %i.k) #17 ; 0 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %bb.d, %ldbLogSourceLine.exit.loopexit
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %ldbLogSourceLine.exit.loopexit ], [ 0, %bb.d ] ; 2 uses
  %i.p = phi i32 [ %i.ai, %ldbLogSourceLine.exit.loopexit ], [ %i.n, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv42
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 6 uses
  %i.s = icmp slt i32 %i.r, 1
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i.i = icmp sgt i32 %i.r, %i.t
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %ldbGetSourceLine.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph38
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.v = zext nneg i32 %i.r to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  br label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %bb.e, %.lr.ph38
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ @.str.72, %.lr.ph38 ]
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.f, %ldbGetSourceLine.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %ldbGetSourceLine.exit.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = icmp eq i32 %i.aa, %i.r
  br i1 %i.ab, label %ldbLogSourceLine.exit.loopexit, label %bb.f

ldbLogSourceLine.exit.loopexit:                   ; preds = %.lr.ph.i.i, %bb.f
  %.ph = phi ptr [ @.str.76, %.lr.ph.i.i ], [ @.str.77, %bb.f ]
  %.ph28 = phi ptr [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.f ]
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.ad = icmp eq i32 %i.ac, %i.r
  %.0.i = select i1 %i.ad, ptr %.ph28, ptr %.ph
  %i.ae = tail call ptr @sdsempty() #17
  %i.af = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i, i32 noundef %i.r, ptr noundef %.0.i.i) #17
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ah = tail call ptr @listAddNodeTail(ptr noundef %i.ag, ptr noundef %i.af) #17 ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next43, %i.aj
  br i1 %i.ak, label %.lr.ph38, label %.loopexit, !llvm.loop !183

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %.val.i = load i8, ptr %i.an, align 1, !tbaa !24 ; 2 uses
  %i.ao = and i8 %.val.i, 7
  switch i8 %i.ao, label %sdslen.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.ap = lshr i8 %.val.i, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !107
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i16 = phi i64 [ %i.bb, %bb.k ], [ %i.aq, %bb.g ], [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ 0, %.lr.ph ]
  %i.bc = call i32 @string2l(ptr noundef nonnull %i.am, i64 noundef %.0.i16, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %sdslen.exit
  %i.bd = call ptr @sdsempty() #17
  %i.be = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.bd, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.am) #17
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bg = call ptr @listAddNodeTail(ptr noundef %i.bf, ptr noundef %i.be) #17 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %sdslen.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.bj = call ptr @sdsnew(ptr noundef nonnull @.str.116) #17
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bl = call ptr @listAddNodeTail(ptr noundef %i.bk, ptr noundef %i.bj) #17 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.bm = icmp sgt i64 %i.bh, 0
  br i1 %i.bm, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 5 uses
  %i.bo = icmp eq i32 %i.bn, 64
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = call ptr @sdsnew(ptr noundef nonnull @.str.117) #17
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.br = call ptr @listAddNodeTail(ptr noundef %i.bq, ptr noundef %i.bp) #17 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bs = trunc i64 %i.bh to i32                  ; 5 uses
  %i.bt = icmp slt i32 %i.bs, 1
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %i.bv = icmp slt i32 %i.bu, %i.bs
  %or.cond9.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond9.i, label %.loopexit29, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp sgt i32 %i.bn, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i18, label %.loopexit30

.lr.ph.preheader.i.i18:                           ; preds = %bb.s
  %wide.trip.count.i.i19 = zext nneg i32 %i.bn to i64
  br label %.lr.ph.i.i20

bb.t:                                             ; preds = %.lr.ph.i.i20
  %indvars.iv.next.i.i22 = add nuw nsw i64 %indvars.iv.i.i21, 1 ; 2 uses
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i23, label %.loopexit30, label %.lr.ph.i.i20, !llvm.loop !2

.lr.ph.i.i20:                                     ; preds = %bb.t, %.lr.ph.preheader.i.i18
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph.preheader.i.i18 ], [ %indvars.iv.next.i.i22, %bb.t ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i21
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !17
  %i.bz = icmp eq i32 %i.by, %i.bs
  br i1 %i.bz, label %.loopexit29, label %bb.t

.loopexit30:                                      ; preds = %bb.t, %bb.s
  %i.ca = add nsw i32 %i.bn, 1
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.cb = sext i32 %i.bn to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %i.cb
  store i32 %i.bs, ptr %i.cc, align 4, !tbaa !17
  call void @ldbList(i32 noundef %i.bs, i32 noundef 1)
  br label %bb.x

.loopexit29:                                      ; preds = %.lr.ph.i.i20, %bb.r
  %i.cd = call ptr @sdsnew(ptr noundef nonnull @.str.118) #17
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cf = call ptr @listAddNodeTail(ptr noundef %i.ce, ptr noundef %i.cd) #17 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.cg = trunc i64 %i.bh to i32
  %i.ch = sub i32 0, %i.cg
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader.i, label %.loopexit31

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i = zext nneg i32 %i.ci to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !17
  %i.cm = icmp eq i32 %i.cl, %i.ch
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit31, label %.lr.ph.i, !llvm.loop !3

bb.w:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cp = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = sub nuw nsw i32 %i.cp, %i.co
  %i.cs = zext nneg i32 %i.cr to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.cq, i64 %i.cs, i1 false)
  %i.ct = call ptr @sdsnew(ptr noundef nonnull @.str.119) #17
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cv = call ptr @listAddNodeTail(ptr noundef %i.cu, ptr noundef %i.ct) #17 ; 0 uses
  br label %bb.x

.loopexit31:                                      ; preds = %bb.v, %bb.u
  %i.cw = call ptr @sdsnew(ptr noundef nonnull @.str.120) #17
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cy = call ptr @listAddNodeTail(ptr noundef %i.cx, ptr noundef %i.cw) #17 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %.loopexit31, %bb.w, %bb.q, %.loopexit29, %.loopexit30, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !184

.loopexit:                                        ; preds = %bb.x, %ldbLogSourceLine.exit.loopexit, %.preheader, %bb.d, %bb.c
  ret void
}

declare i32 @string2l(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbEval(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = add nsw i32 %2, -1
  %i.c = tail call ptr @sdsjoinsds(ptr noundef nonnull %i.a, i32 noundef %i.b, ptr noundef nonnull @.str.121, i64 noundef 1) #17 ; 9 uses
  %i.d = tail call ptr @sdsnew(ptr noundef nonnull @.str.122) #17
  %i.e = tail call ptr @sdscatsds(ptr noundef %i.d, ptr noundef %i.c) #17 ; 8 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !24 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !107
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !17
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ]
  %i.u = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %.0.i, ptr noundef nonnull @.str.123) #17
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.v = getelementptr i8, ptr %i.c, i64 -1
  %.val.i22 = load i8, ptr %i.v, align 1, !tbaa !24 ; 2 uses
  %i.w = and i8 %.val.i22, 7
  switch i8 %i.w, label %sdslen.exit24 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = lshr i8 %.val.i22, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit24

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit24

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !107
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit24

bb.k:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit24

bb.l:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !108
  br label %sdslen.exit24

sdslen.exit24:                                    ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i23 = phi i64 [ %i.aj, %bb.l ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ %i.ae, %bb.j ], [ %i.ah, %bb.k ], [ 0, %bb.g ]
  %i.ak = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %.0.i23, ptr noundef nonnull @.str.123) #17
  %.not20 = icmp eq i32 %i.ak, 0
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %sdslen.exit24
  %i.al = tail call ptr @sdsempty() #17
  %i.am = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #17
  %i.an = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.al, ptr noundef nonnull @.str.124, ptr noundef %i.am) #17
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ap = tail call ptr @listAddNodeTail(ptr noundef %i.ao, ptr noundef %i.an) #17 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  tail call void @sdsfree(ptr noundef nonnull %i.c) #17
  tail call void @sdsfree(ptr noundef nonnull %i.e) #17
  br label %bb.q

bb.n:                                             ; preds = %sdslen.exit24, %sdslen.exit
  tail call void @sdsfree(ptr noundef %i.c) #17
  tail call void @sdsfree(ptr noundef nonnull %i.e) #17
  %i.aq = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #17
  %.not21 = icmp eq i32 %i.aq, 0
  br i1 %.not21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @sdsempty() #17
  %i.as = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #17
  %i.at = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.ar, ptr noundef nonnull @.str.124, ptr noundef %i.as) #17
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.av = tail call ptr @listAddNodeTail(ptr noundef %i.au, ptr noundef %i.at) #17 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aw = tail call ptr @sdsnew(ptr noundef nonnull @.str.125) #17
  %i.ax = tail call ptr @ldbCatStackValueRec(ptr noundef %i.aw, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  tail call void @ldbLogWithMaxLen(ptr noundef %i.ax)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  ret void
}

declare ptr @sdsjoinsds(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbRedis(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = add nsw i32 %2, 1
  %i.c = tail call i32 @lua_checkstack(ptr noundef %0, i32 noundef %i.b) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = tail call ptr @sdsnew(ptr noundef nonnull @.str.105) #17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !106
  %i.e = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.126) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !106
  tail call void @ldbLogWithMaxLen(ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.4) #17
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.127) #17
  tail call void @lua_gettable(ptr noundef %0, i32 noundef -2) #17
  %i.g = icmp sgt i32 %2, 1
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sdslen.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %sdslen.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !24 ; 2 uses
  %i.k = and i8 %.val.i, 7
  switch i8 %i.k, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.l = lshr i8 %.val.i, 3
  %i.m = zext nneg i8 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -5
  %i.r = load i16, ptr %i.q, align 1, !tbaa !107
  %i.s = zext i16 %i.r to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -9
  %i.u = load i32, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i32 %i.u to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 -17
  %i.x = load i64, ptr %i.w, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.x, %bb.h ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ 0, %.lr.ph ]
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %.0.i) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %sdslen.exit, %bb.c
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  %i.y = add nsw i32 %2, -1
  %i.z = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) #17 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbTrace(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #17
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.f ] ; 2 uses
  %i.e = call i32 @lua_getinfo(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef nonnull %1) #17 ; 0 uses
  %i.f = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.129) #16
  %.not5 = icmp eq ptr %i.f, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @sdsempty() #17
  %i.h = icmp eq i32 %.09, 0
  %i.i = select i1 %i.h, ptr @.str.131, ptr @.str.132
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %.not6 = icmp eq ptr %i.j, null
  %i.k = select i1 %.not6, ptr @.str.133, ptr %i.j
  %i.l = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.g, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #17
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.n = call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef %i.l) #17 ; 0 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !148  ; 6 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i.i = icmp sgt i32 %i.o, %i.q
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %ldbGetSourceLine.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  br label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ @.str.72, %bb.c ]
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %ldbLogSourceLine.exit

.lr.ph.preheader.i.i:                             ; preds = %ldbGetSourceLine.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.w to i64
  br label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = icmp eq i32 %i.z, %i.o
  br i1 %i.aa, label %ldbLogSourceLine.exit, label %bb.e

ldbLogSourceLine.exit:                            ; preds = %bb.e, %.lr.ph.i.i, %ldbGetSourceLine.exit.i
  %i.ab = phi ptr [ @.str.77, %ldbGetSourceLine.exit.i ], [ @.str.76, %.lr.ph.i.i ], [ @.str.77, %bb.e ]
  %i.ac = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i ], [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.e ]
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ad, %i.o
  %.0.i = select i1 %i.ae, ptr %i.ac, ptr %i.ab
  %i.af = call ptr @sdsempty() #17
  %i.ag = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.af, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i, i32 noundef %i.o, ptr noundef %.0.i.i) #17
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ai = call ptr @listAddNodeTail(ptr noundef %i.ah, ptr noundef %i.ag) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %ldbLogSourceLine.exit, %bb.b
  %i.aj = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ak = call i32 @lua_getstack(ptr noundef %0, i32 noundef %i.aj, ptr noundef nonnull %1) #17
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !186

._crit_edge.thread:                               ; preds = %bb.a
  %i.al = call ptr @sdsnew(ptr noundef nonnull @.str.134) #17
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.an = call ptr @listAddNodeTail(ptr noundef %i.am, ptr noundef %i.al) #17 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

declare i32 @lua_getinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbMaxlen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #17, !inline_history !4 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 344), align 8, !tbaa !142
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp slt i32 %i.e, 61
  %or.cond = and i1 %i.f, %i.g
  %sext = shl i64 %i.d, 32
  %i.h = ashr exact i64 %sext, 32
  %i.i = select i1 %or.cond, i64 60, i64 %i.h     ; 2 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.j = phi i64 [ %.pr, %thread-pre-split ], [ %i.i, %bb.b ]
  %.not = icmp eq i64 %i.j, 0
  %i.k = tail call ptr @sdsempty() #17            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.k, ptr noundef nonnull @.str.135, i32 noundef %i.m) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.k, ptr noundef nonnull @.str.136) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink5 = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.q = tail call ptr @listAddNodeTail(ptr noundef %i.p, ptr noundef %.sink5) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ldbRepl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !106
  br label %bb.b

bb.b:                                             ; preds = %bb.bd, %bb.a
  %i.d = call ptr @ldbReplParseCommand(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %sdslen.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not86 = icmp eq ptr %i.f, null
  br i1 %.not86, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @luaPushError(ptr noundef %0, ptr noundef nonnull %i.f) #17
  %i.g = call i32 @luaError(ptr noundef %0) #17   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = load ptr, ptr @ldb, align 8, !tbaa !65   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.l = call i32 %i.k(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, i64 noundef 1024) #17, !inline_history !188 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.be

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  %i.o = zext nneg i32 %i.l to i64
  %i.p = call ptr @sdscatlen(ptr noundef %i.n, ptr noundef nonnull %i.c, i64 noundef %i.o) #17 ; 5 uses
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !24
  %i.r = and i8 %.val.i, 7
  switch i8 %i.r, label %sdslen.exit.thread [
    i8 4, label %bb.g
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !17
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.w, %bb.g ], [ %i.u, %bb.f ]
  %i.x = icmp ugt i64 %.0.i, 1048576
  br i1 %i.x, label %bb.h, label %sdslen.exit.thread

bb.h:                                             ; preds = %sdslen.exit
  call void @sdsfree(ptr noundef nonnull %i.p) #17
  %i.y = call ptr @sdsempty() #17
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  call void @luaPushError(ptr noundef %0, ptr noundef nonnull @.str.137) #17
  %i.z = call i32 @luaError(ptr noundef %0) #17   ; 0 uses
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.e, %sdslen.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.aa = call ptr @ldbReplParseCommand(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %sdslen.exit.thread, %bb.b
  %.lcssa = phi ptr [ %i.d, %bb.b ], [ %i.aa, %sdslen.exit.thread ] ; 10 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  call void @sdsfree(ptr noundef %i.ac) #17
  %i.ad = call ptr @sdsempty() #17
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 328), align 8, !tbaa !71
  %i.ae = load ptr, ptr %.lcssa, align 8, !tbaa !106 ; 26 uses
  %i.af = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.138) #16
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ag = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.32) #16
  %.not61 = icmp eq i32 %i.ag, 0
  br i1 %.not61, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ah = call ptr @sdsnew(ptr noundef nonnull @.str.139) #17
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.aj = call ptr @listAddNodeTail(ptr noundef %i.ai, ptr noundef %i.ah) #17 ; 0 uses
  %i.ak = call ptr @sdsnew(ptr noundef nonnull @.str.140) #17
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.am = call ptr @listAddNodeTail(ptr noundef %i.al, ptr noundef %i.ak) #17 ; 0 uses
  %i.an = call ptr @sdsnew(ptr noundef nonnull @.str.141) #17
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ap = call ptr @listAddNodeTail(ptr noundef %i.ao, ptr noundef %i.an) #17 ; 0 uses
  %i.aq = call ptr @sdsnew(ptr noundef nonnull @.str.142) #17
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.as = call ptr @listAddNodeTail(ptr noundef %i.ar, ptr noundef %i.aq) #17 ; 0 uses
  %i.at = call ptr @sdsnew(ptr noundef nonnull @.str.143) #17
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.av = call ptr @listAddNodeTail(ptr noundef %i.au, ptr noundef %i.at) #17 ; 0 uses
  %i.aw = call ptr @sdsnew(ptr noundef nonnull @.str.144) #17
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ay = call ptr @listAddNodeTail(ptr noundef %i.ax, ptr noundef %i.aw) #17 ; 0 uses
  %i.az = call ptr @sdsnew(ptr noundef nonnull @.str.145) #17
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bb = call ptr @listAddNodeTail(ptr noundef %i.ba, ptr noundef %i.az) #17 ; 0 uses
  %i.bc = call ptr @sdsnew(ptr noundef nonnull @.str.146) #17
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.be = call ptr @listAddNodeTail(ptr noundef %i.bd, ptr noundef %i.bc) #17 ; 0 uses
  %i.bf = call ptr @sdsnew(ptr noundef nonnull @.str.147) #17
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bh = call ptr @listAddNodeTail(ptr noundef %i.bg, ptr noundef %i.bf) #17 ; 0 uses
  %i.bi = call ptr @sdsnew(ptr noundef nonnull @.str.148) #17
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bk = call ptr @listAddNodeTail(ptr noundef %i.bj, ptr noundef %i.bi) #17 ; 0 uses
  %i.bl = call ptr @sdsnew(ptr noundef nonnull @.str.149) #17
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bn = call ptr @listAddNodeTail(ptr noundef %i.bm, ptr noundef %i.bl) #17 ; 0 uses
  %i.bo = call ptr @sdsnew(ptr noundef nonnull @.str.150) #17
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bq = call ptr @listAddNodeTail(ptr noundef %i.bp, ptr noundef %i.bo) #17 ; 0 uses
  %i.br = call ptr @sdsnew(ptr noundef nonnull @.str.151) #17
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bt = call ptr @listAddNodeTail(ptr noundef %i.bs, ptr noundef %i.br) #17 ; 0 uses
  %i.bu = call ptr @sdsnew(ptr noundef nonnull @.str.152) #17
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bw = call ptr @listAddNodeTail(ptr noundef %i.bv, ptr noundef %i.bu) #17 ; 0 uses
  %i.bx = call ptr @sdsnew(ptr noundef nonnull @.str.153) #17
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bz = call ptr @listAddNodeTail(ptr noundef %i.by, ptr noundef %i.bx) #17 ; 0 uses
  %i.ca = call ptr @sdsnew(ptr noundef nonnull @.str.154) #17
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cc = call ptr @listAddNodeTail(ptr noundef %i.cb, ptr noundef %i.ca) #17 ; 0 uses
  %i.cd = call ptr @sdsnew(ptr noundef nonnull @.str.155) #17
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cf = call ptr @listAddNodeTail(ptr noundef %i.ce, ptr noundef %i.cd) #17 ; 0 uses
  %i.cg = call ptr @sdsnew(ptr noundef nonnull @.str.156) #17
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ci = call ptr @listAddNodeTail(ptr noundef %i.ch, ptr noundef %i.cg) #17 ; 0 uses
  %i.cj = call ptr @sdsnew(ptr noundef nonnull @.str.157) #17
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cl = call ptr @listAddNodeTail(ptr noundef %i.ck, ptr noundef %i.cj) #17 ; 0 uses
  %i.cm = call ptr @sdsnew(ptr noundef nonnull @.str.158) #17
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.co = call ptr @listAddNodeTail(ptr noundef %i.cn, ptr noundef %i.cm) #17 ; 0 uses
  %i.cp = call ptr @sdsnew(ptr noundef nonnull @.str.159) #17
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cr = call ptr @listAddNodeTail(ptr noundef %i.cq, ptr noundef %i.cp) #17 ; 0 uses
  %i.cs = call ptr @sdsnew(ptr noundef nonnull @.str.160) #17
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cu = call ptr @listAddNodeTail(ptr noundef %i.ct, ptr noundef %i.cs) #17 ; 0 uses
  %i.cv = call ptr @sdsnew(ptr noundef nonnull @.str.161) #17
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cx = call ptr @listAddNodeTail(ptr noundef %i.cw, ptr noundef %i.cv) #17 ; 0 uses
  %i.cy = call ptr @sdsnew(ptr noundef nonnull @.str.162) #17
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.da = call ptr @listAddNodeTail(ptr noundef %i.cz, ptr noundef %i.cy) #17 ; 0 uses
  %i.db = call ptr @sdsnew(ptr noundef nonnull @.str.163) #17
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.dd = call ptr @listAddNodeTail(ptr noundef %i.dc, ptr noundef %i.db) #17 ; 0 uses
  %i.de = call ptr @sdsnew(ptr noundef nonnull @.str.164) #17
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.dg = call ptr @listAddNodeTail(ptr noundef %i.df, ptr noundef %i.de) #17 ; 0 uses
  %i.dh = call ptr @sdsnew(ptr noundef nonnull @.str.165) #17
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.dj = call ptr @listAddNodeTail(ptr noundef %i.di, ptr noundef %i.dh) #17 ; 0 uses
  %i.dk = call ptr @sdsnew(ptr noundef nonnull @.str.166) #17
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.dm = call ptr @listAddNodeTail(ptr noundef %i.dl, ptr noundef %i.dk) #17 ; 0 uses
  %i.dn = call ptr @sdsnew(ptr noundef nonnull @.str.167) #17
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.dp = call ptr @listAddNodeTail(ptr noundef %i.do, ptr noundef %i.dn) #17 ; 0 uses
  %i.dq = call ptr @sdsnew(ptr noundef nonnull @.str.168) #17
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ds = call ptr @listAddNodeTail(ptr noundef %i.dr, ptr noundef %i.dq) #17 ; 0 uses
  call void @ldbSendLogs()
  br label %bb.bd

bb.k:                                             ; preds = %bb.i
  %i.dt = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.169) #16
  %.not62 = icmp eq i32 %i.dt, 0
  br i1 %.not62, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.170) #16
  %.not63 = icmp eq i32 %i.du, 0
  br i1 %.not63, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.171) #16
  %.not64 = icmp eq i32 %i.dv, 0
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.172) #16
  %.not65 = icmp eq i32 %i.dw, 0
  br i1 %.not65, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.dx = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.173) #16
  %.not66 = icmp eq i32 %i.dx, 0
  br i1 %.not66, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.174) #16
  %.not67 = icmp eq i32 %i.dy, 0
  br i1 %.not67, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.175) #16
  %.not68 = icmp eq i32 %i.dz, 0
  br i1 %.not68, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.176) #16
  %.not69 = icmp eq i32 %i.ea, 0
  br i1 %.not69, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @ldbTrace(ptr noundef %0)
  call void @ldbSendLogs()
  br label %bb.bd

bb.u:                                             ; preds = %bb.s
  %i.eb = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.177) #16
  %.not70 = icmp eq i32 %i.eb, 0
  br i1 %.not70, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.178) #16
  %.not71 = icmp eq i32 %i.ec, 0
  br i1 %.not71, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.x, label %thread-pre-split.i

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !106
  %i.eh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.eg, ptr noundef null, i32 noundef 10) #17, !inline_history !4 ; 2 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 344), align 8, !tbaa !142
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = icmp slt i32 %i.ei, 61
  %or.cond.i = and i1 %i.ej, %i.ek
  %sext.i = shl i64 %i.eh, 32
  %i.el = ashr exact i64 %sext.i, 32
  %i.em = select i1 %or.cond.i, i64 60, i64 %i.el ; 2 uses
  store i64 %i.em, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  br label %bb.y

thread-pre-split.i:                               ; preds = %bb.w
  %.pr.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 336), align 8, !tbaa !141
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i, %bb.x
  %i.en = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %i.em, %bb.x ]
  %.not.i = icmp eq i64 %i.en, 0
  %i.eo = call ptr @sdsempty() #17                ; 2 uses
  br i1 %.not.i, label %bb.aa, label %bb.z

end_hunk_3
begin_hunk_4_@ldbRepl:bb.a
  %.not75 = icmp eq i32 %i.ez, 0
  br i1 %.not75, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !17
  call void @ldbEval(ptr noundef %0, ptr noundef nonnull %.lcssa, i32 noundef %i.fa)
  call void @ldbSendLogs()
  br label %bb.bd

bb.ah:                                            ; preds = %bb.af
  %i.fb = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.183) #16
  %.not76 = icmp eq i32 %i.fb, 0
  br i1 %.not76, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.184) #16
  %.not77 = icmp eq i32 %i.fc, 0
  br i1 %.not77, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @luaPushError(ptr noundef %0, ptr noundef nonnull @.str.185) #17
  %i.fd = call i32 @luaError(ptr noundef %0) #17  ; 0 uses
  br label %bb.bd

bb.ak:                                            ; preds = %bb.ai
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !17  ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 1                   ; 2 uses
  br i1 %i.ff, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fg = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.186) #16
  %.not78 = icmp eq i32 %i.fg, 0
  br i1 %.not78, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.4) #16
  %.not79 = icmp eq i32 %i.fh, 0
  br i1 %.not79, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @ldbRedis(ptr noundef %0, ptr noundef nonnull %.lcssa, i32 noundef %i.fe)
  call void @ldbSendLogs()
  br label %bb.bd

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.fi = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.187) #16
  %.not80 = icmp eq i32 %i.fi, 0
  br i1 %.not80, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.188) #16
  %.not81 = icmp eq i32 %i.fj, 0
  br i1 %.not81, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = icmp eq i32 %i.fe, 2
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !106
  call void @ldbPrint(ptr noundef %0, ptr noundef %i.fm)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @ldbPrintAll(ptr noundef %0)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @ldbSendLogs()
  br label %bb.bd

bb.au:                                            ; preds = %bb.ap
  %i.fn = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.189) #16
  %.not82 = icmp eq i32 %i.fn, 0
  br i1 %.not82, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.190) #16
  %.not83 = icmp eq i32 %i.fo, 0
  br i1 %.not83, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33 ; 2 uses
  br i1 %i.ff, label %bb.ax, label %.thread88

bb.ax:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !106
  %i.fs = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fr, ptr noundef null, i32 noundef 10) #17, !inline_history !4
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  %spec.select = select i1 %i.fu, i32 %i.ft, i32 %i.fp ; 2 uses
  %.not91 = icmp eq i32 %i.fe, 2
  br i1 %.not91, label %.thread88, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !106
  %i.fx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fw, ptr noundef null, i32 noundef 10) #17, !inline_history !4
  %i.fy = trunc i64 %i.fx to i32
  br label %.thread88

.thread88:                                        ; preds = %bb.aw, %bb.ay, %bb.ax
  %.190 = phi i32 [ %spec.select, %bb.ay ], [ %spec.select, %bb.ax ], [ %i.fp, %bb.aw ]
  %.0 = phi i32 [ %i.fy, %bb.ay ], [ 5, %bb.ax ], [ 5, %bb.aw ]
  call void @ldbList(i32 noundef %.190, i32 noundef %.0)
  call void @ldbSendLogs()
  br label %bb.bd

bb.az:                                            ; preds = %bb.av
  %i.fz = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.191) #16
  %.not84 = icmp eq i32 %i.fz, 0
  br i1 %.not84, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.192) #16
  %.not85 = icmp eq i32 %i.ga, 0
  br i1 %.not85, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @ldbList(i32 noundef 1, i32 noundef 1000000)
  call void @ldbSendLogs()
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gb = call ptr @sdsnew(ptr noundef nonnull @.str.193) #17
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.gd = call ptr @listAddNodeTail(ptr noundef %i.gc, ptr noundef %i.gb) #17 ; 0 uses
  call void @ldbSendLogs()
  br label %bb.bd

bb.bd:                                            ; preds = %bb.t, %bb.ad, %bb.aj, %bb.at, %bb.bb, %bb.bc, %.thread88, %bb.an, %bb.ag, %ldbMaxlen.exit, %bb.j
  %i.ge = load i32, ptr %i.a, align 4, !tbaa !17
  call void @sdsfreesplitres(ptr noundef nonnull %.lcssa, i32 noundef %i.ge) #17
  br label %bb.b

.loopexit:                                        ; preds = %bb.p, %bb.q, %bb.o
  %i.gf = load i32, ptr %i.a, align 4, !tbaa !17
  call void @sdsfreesplitres(ptr noundef nonnull %.lcssa, i32 noundef %i.gf) #17
  br label %bb.be

bb.be:                                            ; preds = %.thread, %.loopexit
  %.3 = phi i32 [ -1, %.thread ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.3
}

declare void @luaPushError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaError(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @luaLdbLineHook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaGetFromRegistry(ptr noundef %0, ptr noundef nonnull @.str.194) #17 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.23, i32 noundef 1715) #17
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef %1) #17 ; 0 uses
  %i.c = tail call i32 @lua_getinfo(ptr noundef %0, ptr noundef nonnull @.str.196, ptr noundef %1) #17 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %ldbIsBreakpoint.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = icmp eq i32 %i.i, %i.e                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %ldbIsBreakpoint.exit, label %.lr.ph.i, !llvm.loop !2

ldbIsBreakpoint.exit:                             ; preds = %.lr.ph.i, %bb.c
  %i.k = phi i1 [ false, %bb.c ], [ %i.j, %.lr.ph.i ]
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 304), align 8
  %i.m = icmp ne i32 %i.l, 0
  %i.n = select i1 %i.k, i1 true, i1 %i.m         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) @.str.129) #16
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %bb.d

bb.d:                                             ; preds = %ldbIsBreakpoint.exit
  %i.r = load i32, ptr %1, align 8, !tbaa !192
  %i.s = icmp ne i32 %i.r, 3
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4 ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.not34 = select i1 %i.s, i1 true, i1 %i.u ; 2 uses
  %or.cond3.not = select i1 %or.cond.not34, i1 true, i1 %i.n ; 2 uses
  br i1 %or.cond3.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !193
  %i.x = load ptr, ptr @getMonotonicUs, align 8, !tbaa !194
  %i.y = tail call i64 %i.x() #17, !inline_history !191
  %i.z = sub i64 %i.y, %i.w
  %i.aa = udiv i64 %i.z, 1000
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8336), align 8, !tbaa !195 ; 2 uses
  %.not35 = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not35, i64 5000, i64 %i.ab
  %.not36.not = icmp slt i64 %i.aa, %i.ac
  br i1 %.not36.not, label %.critedge, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp ne i32 %i.t, 0
  %or.cond5 = select i1 %i.ad, i1 true, i1 %i.n
  br i1 %or.cond5, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 304), align 8
  %.not38 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not38, ptr @.str.199, ptr @.str.198
  %spec.select = select i1 %or.cond.not34, ptr @.str.197, ptr @.str.200
  %.0 = select i1 %i.n, ptr %i.af, ptr %spec.select
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 304), align 8, !tbaa !32
  %i.ag = tail call ptr @sdsempty() #17
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.ai = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.201, i32 noundef %i.ah, ptr noundef nonnull %.0) #17
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ak = tail call ptr @listAddNodeTail(ptr noundef %i.aj, ptr noundef %i.ai) #17 ; 0 uses
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33 ; 5 uses
  %i.am = icmp slt i32 %i.al, 1
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i.i = icmp sgt i32 %i.al, %i.an
  %or.cond.i.i = select i1 %i.am, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %ldbGetSourceLine.exit.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.ap = zext nneg i32 %i.al to i64
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !106
  br label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %bb.g, %.thread
  %.0.i.i = phi ptr [ %i.as, %bb.g ], [ @.str.72, %.thread ]
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %ldbLogSourceLine.exit

.lr.ph.preheader.i.i:                             ; preds = %ldbGetSourceLine.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.at to i64
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = icmp eq i32 %i.aw, %i.al
  br i1 %i.ax, label %ldbLogSourceLine.exit, label %bb.h

ldbLogSourceLine.exit:                            ; preds = %bb.h, %.lr.ph.i.i, %ldbGetSourceLine.exit.i
  %i.ay = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i ], [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.h ]
  %i.az = tail call ptr @sdsempty() #17
  %i.ba = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.az, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.ay, i32 noundef %i.al, ptr noundef %.0.i.i) #17
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.bc = tail call ptr @listAddNodeTail(ptr noundef %i.bb, ptr noundef %i.ba) #17 ; 0 uses
  tail call void @ldbSendLogs()
  %i.bd = tail call i32 @ldbRepl(ptr noundef %0)
  %i.be = icmp ne i32 %i.bd, -1
  %or.cond7.not = or i1 %or.cond3.not, %i.be
  br i1 %or.cond7.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ldbLogSourceLine.exit
  tail call void @luaPushError(ptr noundef %0, ptr noundef nonnull @.str.202) #17
  %i.bf = tail call i32 @luaError(ptr noundef %0) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ldbLogSourceLine.exit
  %i.bg = load ptr, ptr @getMonotonicUs, align 8, !tbaa !194
  %i.bh = tail call i64 %i.bg() #17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !193
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.j, %bb.f, %ldbIsBreakpoint.exit
  ret void
}

declare ptr @luaGetFromRegistry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @dictGenCaseHashFunction(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @decrRefCount(ptr noundef) local_unnamed_addr #1

declare void @zfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i32 1, !"ThinLTO", i32 0}
!12 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!13 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !15, i64 0}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{!"p1 _ZTS11redisObject", !19, i64 0}
!21 = !{!"p1 _ZTS8listNode", !19, i64 0}
!22 = !{!"luaScript", !18, i64 0, !20, i64 8, !21, i64 16}
!23 = !{!22, !20, i64 8}
!24 = !{!15, !15, i64 0}
!25 = !{!"p1 _ZTS10connection", !19, i64 0}
!26 = !{!"p1 _ZTS4list", !19, i64 0}
!27 = !{!"any p2 pointer", !19, i64 0}
!28 = !{!"p2 omnipotent char", !27, i64 0}
!29 = !{!"p1 omnipotent char", !19, i64 0}
!30 = !{!"ldbState", !25, i64 0, !16, i64 8, !16, i64 12, !26, i64 16, !26, i64 24, !26, i64 32, !15, i64 40, !16, i64 296, !16, i64 300, !16, i64 304, !28, i64 312, !16, i64 320, !16, i64 324, !29, i64 328, !18, i64 336, !16, i64 344}
!31 = !{!30, !16, i64 8}
!32 = !{!30, !16, i64 304}
!33 = !{!30, !16, i64 324}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!30, !26, i64 16}
!36 = !{!"p1 _ZTS9lua_State", !19, i64 0}
!37 = !{!"p1 _ZTS6client", !19, i64 0}
!38 = !{!"p1 _ZTS4dict", !19, i64 0}
!39 = !{!"long long", !15, i64 0}
!40 = !{!"luaCtx", !36, i64 0, !37, i64 8, !38, i64 16, !26, i64 24, !39, i64 32}
!41 = !{!40, !37, i64 8}
!42 = !{!"p1 _ZTS7redisDb", !19, i64 0}
!43 = !{!"p1 _ZTS11aeEventLoop", !19, i64 0}
!44 = !{!"p1 _ZTS3rax", !19, i64 0}
!45 = !{!"p1 _ZTS14ConnectionType", !19, i64 0}
!46 = !{!"connListener", !15, i64 0, !16, i64 64, !28, i64 72, !16, i64 80, !16, i64 84, !45, i64 88, !19, i64 96}
!47 = !{!"p2 _ZTS14pendingCommand", !27, i64 0}
!48 = !{!"pendingCommandPool", !47, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!49 = !{!"double", !15, i64 0}
!50 = !{!"malloc_stats", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80}
!51 = !{!"p1 _ZTS11hotkeyStats", !19, i64 0}
!52 = !{!"p1 double", !19, i64 0}
!53 = !{!"p1 _ZTS9saveparam", !19, i64 0}
!54 = !{!"p2 _ZTS10connection", !27, i64 0}
!55 = !{!"p1 _ZTS7redisOp", !19, i64 0}
!56 = !{!"redisOpArray", !55, i64 0, !16, i64 8, !16, i64 12}
!57 = !{!"p1 _ZTS11replBacklog", !19, i64 0}
!58 = !{!"replDataBuf", !26, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!59 = !{!"p1 _ZTS8_kvstore", !19, i64 0}
!60 = !{!"p1 _ZTS12clusterState", !19, i64 0}
!61 = !{!"aclInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!62 = !{!"redisTLSContextConfig", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !16, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116}
!63 = !{!"p1 _ZTS14sentinelConfig", !19, i64 0}
!64 = !{!"redisServer", !16, i64 0, !18, i64 8, !29, i64 16, !29, i64 24, !28, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !42, i64 64, !38, i64 72, !38, i64 80, !43, i64 88, !44, i64 96, !16, i64 104, !16, i64 108, !15, i64 112, !15, i64 116, !39, i64 120, !15, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !29, i64 144, !16, i64 152, !16, i64 156, !15, i64 160, !16, i64 204, !18, i64 208, !16, i64 216, !16, i64 220, !16, i64 224, !29, i64 232, !29, i64 240, !16, i64 248, !16, i64 252, !18, i64 256, !15, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !26, i64 296, !15, i64 304, !16, i64 312, !16, i64 316, !15, i64 320, !16, i64 324, !16, i64 328, !16, i64 332, !15, i64 336, !16, i64 464, !29, i64 472, !29, i64 480, !16, i64 488, !15, i64 496, !16, i64 1328, !46, i64 1336, !26, i64 1440, !26, i64 1448, !26, i64 1456, !26, i64 1464, !26, i64 1472, !26, i64 1480, !26, i64 1488, !37, i64 1496, !37, i64 1504, !19, i64 1512, !44, i64 1520, !16, i64 1528, !44, i64 1536, !16, i64 1544, !26, i64 1552, !15, i64 1560, !15, i64 1624, !38, i64 1880, !15, i64 1888, !16, i64 1896, !16, i64 1900, !15, i64 1904, !16, i64 2416, !16, i64 2420, !48, i64 2424, !16, i64 2448, !39, i64 2456, !16, i64 2464, !16, i64 2468, !16, i64 2472, !16, i64 2476, !16, i64 2480, !18, i64 2488, !18, i64 2496, !18, i64 2504, !18, i64 2512, !18, i64 2520, !18, i64 2528, !39, i64 2536, !39, i64 2544, !39, i64 2552, !39, i64 2560, !39, i64 2568, !39, i64 2576, !49, i64 2584, !39, i64 2592, !39, i64 2600, !39, i64 2608, !39, i64 2616, !39, i64 2624, !39, i64 2632, !18, i64 2640, !39, i64 2648, !39, i64 2656, !39, i64 2664, !39, i64 2672, !39, i64 2680, !39, i64 2688, !39, i64 2696, !39, i64 2704, !18, i64 2712, !18, i64 2720, !18, i64 2728, !39, i64 2736, !39, i64 2744, !39, i64 2752, !39, i64 2760, !39, i64 2768, !49, i64 2776, !39, i64 2784, !39, i64 2792, !39, i64 2800, !39, i64 2808, !39, i64 2816, !26, i64 2824, !39, i64 2832, !39, i64 2840, !18, i64 2848, !50, i64 2856, !15, i64 2944, !15, i64 2952, !15, i64 2960, !15, i64 2968, !18, i64 2976, !18, i64 2984, !18, i64 2992, !18, i64 3000, !18, i64 3008, !18, i64 3016, !18, i64 3024, !18, i64 3032, !49, i64 3040, !15, i64 3048, !18, i64 3080, !39, i64 3088, !39, i64 3096, !39, i64 3104, !15, i64 3112, !15, i64 4136, !15, i64 5160, !39, i64 5168, !39, i64 5176, !39, i64 5184, !39, i64 5192, !15, i64 5200, !39, i64 6264, !39, i64 6272, !18, i64 6280, !39, i64 6288, !39, i64 6296, !18, i64 6304, !15, i64 6312, !51, i64 6408, !16, i64 6416, !16, i64 6420, !16, i64 6424, !16, i64 6428, !16, i64 6432, !16, i64 6436, !16, i64 6440, !16, i64 6444, !16, i64 6448, !16, i64 6452, !16, i64 6456, !16, i64 6460, !16, i64 6464, !18, i64 6472, !16, i64 6480, !16, i64 6484, !16, i64 6488, !16, i64 6492, !18, i64 6496, !18, i64 6504, !16, i64 6512, !16, i64 6516, !16, i64 6520, !16, i64 6524, !16, i64 6528, !16, i64 6532, !29, i64 6536, !15, i64 6544, !16, i64 6616, !16, i64 6620, !16, i64 6624, !52, i64 6632, !16, i64 6640, !16, i64 6644, !16, i64 6648, !16, i64 6652, !16, i64 6656, !16, i64 6660, !16, i64 6664, !16, i64 6668, !16, i64 6672, !29, i64 6680, !29, i64 6688, !16, i64 6696, !16, i64 6700, !18, i64 6704, !18, i64 6712, !18, i64 6720, !18, i64 6728, !18, i64 6736, !16, i64 6744, !16, i64 6748, !29, i64 6752, !16, i64 6760, !16, i64 6764, !39, i64 6768, !39, i64 6776, !18, i64 6784, !18, i64 6792, !18, i64 6800, !16, i64 6808, !16, i64 6812, !18, i64 6816, !16, i64 6824, !16, i64 6828, !16, i64 6832, !16, i64 6836, !16, i64 6840, !18, i64 6848, !16, i64 6856, !15, i64 6860, !15, i64 6864, !19, i64 6872, !16, i64 6880, !39, i64 6888, !39, i64 6896, !39, i64 6904, !39, i64 6912, !16, i64 6920, !53, i64 6928, !16, i64 6936, !29, i64 6944, !16, i64 6952, !16, i64 6956, !16, i64 6960, !18, i64 6968, !18, i64 6976, !18, i64 6984, !18, i64 6992, !16, i64 7000, !16, i64 7004, !16, i64 7008, !16, i64 7012, !16, i64 7016, !16, i64 7020, !54, i64 7024, !16, i64 7032, !16, i64 7036, !29, i64 7040, !16, i64 7048, !16, i64 7052, !16, i64 7056, !15, i64 7060, !16, i64 7068, !56, i64 7072, !16, i64 7088, !29, i64 7096, !16, i64 7104, !29, i64 7112, !16, i64 7120, !16, i64 7124, !16, i64 7128, !16, i64 7132, !16, i64 7136, !16, i64 7140, !16, i64 7144, !15, i64 7148, !15, i64 7189, !39, i64 7232, !39, i64 7240, !15, i64 7248, !39, i64 7256, !16, i64 7264, !16, i64 7268, !57, i64 7272, !39, i64 7280, !39, i64 7288, !58, i64 7296, !18, i64 7344, !18, i64 7352, !16, i64 7360, !16, i64 7364, !16, i64 7368, !16, i64 7372, !16, i64 7376, !16, i64 7380, !16, i64 7384, !16, i64 7388, !16, i64 7392, !18, i64 7400, !26, i64 7408, !18, i64 7416, !29, i64 7424, !29, i64 7432, !29, i64 7440, !16, i64 7448, !16, i64 7452, !37, i64 7456, !37, i64 7464, !16, i64 7472, !16, i64 7476, !16, i64 7480, !16, i64 7484, !18, i64 7488, !18, i64 7496, !18, i64 7504, !18, i64 7512, !18, i64 7520, !25, i64 7528, !25, i64 7536, !16, i64 7544, !29, i64 7552, !18, i64 7560, !16, i64 7568, !16, i64 7572, !16, i64 7576, !18, i64 7584, !18, i64 7592, !16, i64 7600, !16, i64 7604, !16, i64 7608, !16, i64 7612, !29, i64 7616, !16, i64 7624, !16, i64 7628, !15, i64 7632, !39, i64 7680, !16, i64 7688, !26, i64 7696, !16, i64 7704, !39, i64 7712, !39, i64 7720, !18, i64 7728, !18, i64 7736, !16, i64 7744, !39, i64 7752, !18, i64 7760, !16, i64 7768, !16, i64 7772, !16, i64 7776, !16, i64 7780, !16, i64 7784, !39, i64 7792, !15, i64 7800, !16, i64 7812, !16, i64 7816, !16, i64 7820, !15, i64 7824, !26, i64 7872, !26, i64 7880, !16, i64 7888, !18, i64 7896, !26, i64 7904, !26, i64 7912, !16, i64 7920, !16, i64 7924, !16, i64 7928, !16, i64 7932, !18, i64 7936, !18, i64 7944, !18, i64 7952, !18, i64 7960, !18, i64 7968, !18, i64 7976, !18, i64 7984, !18, i64 7992, !18, i64 8000, !39, i64 8008, !39, i64 8016, !39, i64 8024, !16, i64 8032, !16, i64 8036, !15, i64 8040, !18, i64 8048, !15, i64 8056, !39, i64 8064, !39, i64 8072, !16, i64 8080, !18, i64 8088, !39, i64 8096, !18, i64 8104, !39, i64 8112, !59, i64 8120, !38, i64 8128, !16, i64 8136, !59, i64 8144, !16, i64 8152, !16, i64 8156, !16, i64 8160, !16, i64 8164, !39, i64 8168, !39, i64 8176, !29, i64 8184, !39, i64 8192, !39, i64 8200, !39, i64 8208, !16, i64 8216, !60, i64 8224, !16, i64 8232, !16, i64 8236, !16, i64 8240, !16, i64 8244, !16, i64 8248, !29, i64 8256, !29, i64 8264, !29, i64 8272, !16, i64 8280, !16, i64 8284, !16, i64 8288, !16, i64 8292, !16, i64 8296, !16, i64 8300, !16, i64 8304, !16, i64 8308, !39, i64 8312, !16, i64 8320, !16, i64 8324, !16, i64 8328, !39, i64 8336, !16, i64 8344, !16, i64 8348, !16, i64 8352, !16, i64 8356, !16, i64 8360, !16, i64 8364, !16, i64 8368, !16, i64 8372, !16, i64 8376, !39, i64 8384, !38, i64 8392, !29, i64 8400, !18, i64 8408, !29, i64 8416, !16, i64 8424, !61, i64 8432, !16, i64 8472, !18, i64 8480, !16, i64 8488, !16, i64 8492, !16, i64 8496, !62, i64 8504, !29, i64 8624, !29, i64 8632, !29, i64 8640, !29, i64 8648, !63, i64 8656, !39, i64 8664, !16, i64 8672, !29, i64 8680, !16, i64 8688, !16, i64 8692, !16, i64 8696, !18, i64 8704, !16, i64 8712, !16, i64 8716, !29, i64 8720, !16, i64 8728, !16, i64 8732}
!65 = !{!30, !25, i64 0}
!66 = !{!"list", !21, i64 0, !21, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !18, i64 40}
!67 = !{!66, !19, i64 24}
!68 = !{!30, !26, i64 32}
!69 = !{!30, !28, i64 312}
!70 = !{!30, !16, i64 320}
!71 = !{!30, !29, i64 328}
!72 = !{!64, !16, i64 6416}
!73 = !{!40, !38, i64 16}
!74 = !{!40, !26, i64 24}
!75 = !{!40, !39, i64 32}
!76 = !{!"p2 _ZTS11redisObject", !27, i64 0}
!77 = !{!"p1 _ZTS14pendingCommand", !19, i64 0}
!78 = !{!"pendingCommandList", !77, i64 0, !77, i64 8, !16, i64 16, !16, i64 20}
!79 = !{!"p1 _ZTS14deferredObject", !19, i64 0}
!80 = !{!"p1 _ZTS12redisCommand", !19, i64 0}
!81 = !{!"p1 _ZTS9dictEntry", !19, i64 0}
!82 = !{!"multiState", !47, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !18, i64 24, !16, i64 32}
!83 = !{!"blockingState", !16, i64 0, !39, i64 8, !16, i64 16, !38, i64 24, !16, i64 32, !16, i64 36, !39, i64 40, !19, i64 48, !19, i64 56, !18, i64 64}
!84 = !{!"listNode", !21, i64 0, !21, i64 8, !19, i64 16}
!85 = !{!"p1 _ZTS13payloadHeader", !19, i64 0}
!86 = !{!"p1 _ZTS7asmTask", !19, i64 0}
!87 = !{!"client", !18, i64 0, !18, i64 8, !25, i64 16, !15, i64 24, !15, i64 25, !15, i64 26, !15, i64 27, !16, i64 28, !42, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !29, i64 64, !18, i64 72, !18, i64 80, !16, i64 88, !76, i64 96, !16, i64 104, !16, i64 108, !76, i64 112, !18, i64 120, !78, i64 128, !77, i64 152, !79, i64 160, !16, i64 168, !76, i64 176, !16, i64 184, !16, i64 188, !80, i64 192, !80, i64 200, !80, i64 208, !80, i64 216, !19, i64 224, !16, i64 232, !16, i64 236, !18, i64 240, !26, i64 248, !39, i64 256, !26, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !16, i64 296, !16, i64 300, !81, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !39, i64 336, !39, i64 344, !16, i64 352, !16, i64 356, !16, i64 360, !16, i64 364, !18, i64 368, !18, i64 376, !29, i64 384, !39, i64 392, !39, i64 400, !39, i64 408, !39, i64 416, !39, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !15, i64 480, !16, i64 524, !29, i64 528, !16, i64 536, !16, i64 540, !18, i64 544, !82, i64 552, !83, i64 592, !39, i64 664, !26, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !29, i64 704, !29, i64 712, !21, i64 720, !21, i64 728, !21, i64 736, !19, i64 744, !19, i64 752, !19, i64 760, !19, i64 768, !19, i64 776, !18, i64 784, !44, i64 792, !18, i64 800, !16, i64 808, !21, i64 816, !19, i64 824, !21, i64 832, !18, i64 840, !21, i64 848, !18, i64 856, !21, i64 864, !18, i64 872, !84, i64 880, !84, i64 904, !18, i64 928, !18, i64 936, !18, i64 944, !39, i64 952, !18, i64 960, !18, i64 968, !29, i64 976, !15, i64 984, !85, i64 992, !39, i64 1000, !39, i64 1008, !39, i64 1016, !86, i64 1024, !29, i64 1032, !15, i64 1040}
!88 = !{!87, !18, i64 8}
!89 = !{!40, !36, i64 0}
!90 = !{!"p1 _ZTS8GCObject", !19, i64 0}
!91 = !{!"p1 _ZTS10lua_TValue", !19, i64 0}
!92 = !{!"p1 _ZTS12global_State", !19, i64 0}
!93 = !{!"p1 _ZTS8CallInfo", !19, i64 0}
!94 = !{!"p1 int", !19, i64 0}
!95 = !{!"short", !15, i64 0}
!96 = !{!"lua_TValue", !15, i64 0, !16, i64 8}
!97 = !{!"p1 _ZTS11lua_longjmp", !19, i64 0}
!98 = !{!"lua_State", !90, i64 0, !15, i64 8, !15, i64 9, !15, i64 10, !91, i64 16, !91, i64 24, !92, i64 32, !93, i64 40, !94, i64 48, !91, i64 56, !91, i64 64, !93, i64 72, !93, i64 80, !16, i64 88, !16, i64 92, !95, i64 96, !95, i64 98, !15, i64 100, !15, i64 101, !16, i64 104, !16, i64 108, !19, i64 112, !96, i64 120, !96, i64 136, !90, i64 152, !90, i64 160, !97, i64 168, !18, i64 176}
!99 = !{!98, !92, i64 32}
!100 = !{!"p2 _ZTS8GCObject", !27, i64 0}
!101 = !{!"stringtable", !100, i64 0, !16, i64 8, !16, i64 12}
!102 = !{!"Mbuffer", !29, i64 0, !18, i64 8, !18, i64 16}
!103 = !{!"UpVal", !90, i64 0, !15, i64 8, !15, i64 9, !91, i64 16, !15, i64 24}
!104 = !{!"global_State", !101, i64 0, !19, i64 16, !19, i64 24, !15, i64 32, !15, i64 33, !16, i64 36, !90, i64 40, !100, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !102, i64 88, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !16, i64 144, !16, i64 148, !19, i64 152, !96, i64 160, !36, i64 176, !103, i64 184, !15, i64 224, !15, i64 296}
!105 = !{!104, !19, i64 24}
!106 = !{!29, !29, i64 0}
!107 = !{!95, !95, i64 0}
!108 = !{!18, !18, i64 0}
!109 = !{!87, !80, i64 192}
!110 = !{!"p1 _ZTS15redisCommandArg", !19, i64 0}
!111 = !{!"p1 _ZTS13hdr_histogram", !19, i64 0}
!112 = !{!"", !29, i64 0, !18, i64 8, !16, i64 16, !15, i64 24, !16, i64 40, !15, i64 44}
!113 = !{!"p1 _ZTS18RedisModuleCommand", !19, i64 0}
!114 = !{!"redisCommand", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !16, i64 32, !29, i64 40, !29, i64 48, !16, i64 56, !19, i64 64, !16, i64 72, !28, i64 80, !16, i64 88, !19, i64 96, !16, i64 104, !18, i64 112, !18, i64 120, !19, i64 128, !16, i64 136, !19, i64 144, !16, i64 152, !80, i64 160, !110, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !16, i64 208, !29, i64 216, !111, i64 224, !112, i64 232, !38, i64 288, !80, i64 296, !113, i64 304}
!115 = !{!114, !19, i64 96}
!116 = !{!87, !76, i64 96}
!117 = !{!20, !20, i64 0}
!118 = !{!"redisObject", !16, i64 0, !16, i64 0, !16, i64 1, !16, i64 3, !16, i64 4, !16, i64 5, !19, i64 8}
!119 = !{!118, !19, i64 8}
!120 = !{!87, !81, i64 304}
!121 = !{!64, !26, i64 1488}
!122 = !{!87, !42, i64 32}
!123 = !{!"p1 _ZTS7_estore", !19, i64 0}
!124 = !{!"redisDb", !59, i64 0, !59, i64 8, !123, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !16, i64 72, !39, i64 80, !18, i64 88}
!125 = !{!124, !16, i64 72}
!126 = !{!87, !16, i64 88}
!127 = !{!"sharedObjectsStruct", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !15, i64 64, !15, i64 96, !15, i64 128, !15, i64 160, !20, i64 192, !20, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !20, i64 296, !20, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !20, i64 376, !20, i64 384, !20, i64 392, !20, i64 400, !20, i64 408, !20, i64 416, !20, i64 424, !20, i64 432, !20, i64 440, !20, i64 448, !20, i64 456, !20, i64 464, !20, i64 472, !20, i64 480, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !20, i64 536, !20, i64 544, !20, i64 552, !20, i64 560, !20, i64 568, !20, i64 576, !20, i64 584, !20, i64 592, !20, i64 600, !20, i64 608, !20, i64 616, !20, i64 624, !20, i64 632, !20, i64 640, !20, i64 648, !20, i64 656, !20, i64 664, !20, i64 672, !20, i64 680, !20, i64 688, !20, i64 696, !20, i64 704, !20, i64 712, !20, i64 720, !20, i64 728, !20, i64 736, !20, i64 744, !20, i64 752, !20, i64 760, !20, i64 768, !20, i64 776, !20, i64 784, !20, i64 792, !20, i64 800, !20, i64 808, !15, i64 816, !15, i64 896, !15, i64 80896, !15, i64 81152, !15, i64 81408, !15, i64 81664, !29, i64 81920, !29, i64 81928}
!128 = !{!127, !20, i64 240}
!129 = !{!22, !18, i64 0}
!130 = !{!66, !18, i64 40}
!131 = !{!66, !21, i64 0}
!132 = !{!84, !19, i64 16}
!133 = !{!64, !39, i64 2624}
!134 = !{!66, !21, i64 8}
!135 = !{!22, !21, i64 16}
!136 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!137 = !{!39, !39, i64 0}
!138 = !{!"scriptRunCtx", !29, i64 0, !37, i64 8, !37, i64 16, !16, i64 24, !16, i64 28, !18, i64 32, !16, i64 40, !16, i64 44}
!139 = !{!30, !16, i64 300}
!140 = !{!30, !16, i64 296}
!141 = !{!30, !18, i64 336}
!142 = !{!30, !16, i64 344}
!143 = !{!"connection", !45, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !95, i64 20, !95, i64 22, !95, i64 24, !19, i64 32, !43, i64 40, !19, i64 48, !19, i64 56, !19, i64 64}
!144 = !{!143, !45, i64 0}
!145 = !{!"ConnectionType", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240}
!146 = !{!30, !16, i64 12}
!147 = !{!"lua_Debug", !16, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !15, i64 56, !16, i64 116}
!148 = !{!147, !16, i64 40}
!149 = distinct !{!149, !34}
!150 = !{!64, !16, i64 8348}
!151 = distinct !{!151, !34}
!152 = distinct !{!152, !34}
!153 = distinct !{!153, !34}
!154 = !{!"scriptFlag", !18, i64 0, !29, i64 8}
!155 = !{!154, !18, i64 0}
!156 = !{!154, !29, i64 8}
!157 = !{!"branch_weights", i32 1, i32 1048575}
!158 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!159 = !{!138, !16, i64 24}
!160 = !{ptr @evalCommand}
!161 = !{ptr @evalCommand, ptr @evalGenericCommandWithDebugging}
!162 = !{ptr @evalGenericCommandWithDebugging}
!163 = distinct !{!163, !34}
!164 = !{!64, !16, i64 8376}
!165 = !{!127, !20, i64 0}
!166 = !{!87, !25, i64 16}
!167 = distinct !{!167, !34}
!168 = distinct !{null}
!169 = !{!145, !19, i64 128}
!170 = distinct !{!170, !34}
!171 = !{!"", !15, i64 0}
!172 = !{!"sigaction", !15, i64 0, !171, i64 8, !16, i64 136, !19, i64 144}
!173 = !{!172, !16, i64 136}
!174 = distinct !{!174, !34}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34}
!177 = distinct !{!177, !34}
!178 = distinct !{!178, !34}
!179 = distinct !{!179, !34}
!180 = distinct !{!180, !34}
!181 = distinct !{!181, !34}
!182 = distinct !{!182, !34}
!183 = distinct !{!183, !34}
!184 = distinct !{!184, !34}
!185 = distinct !{!185, !34}
!186 = distinct !{!186, !34}
!187 = !{!147, !29, i64 8}
!188 = distinct !{null}
!189 = distinct !{!189, !34}
!190 = !{!145, !19, i64 144}
!191 = distinct !{null, null}
!192 = !{!147, !16, i64 0}
!193 = !{!138, !18, i64 32}
!194 = !{!19, !19, i64 0}
!195 = !{!64, !39, i64 8336}
end_hunk_4
