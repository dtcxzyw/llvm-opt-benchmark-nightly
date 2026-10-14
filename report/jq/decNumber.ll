Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decNumberFMA:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cl, align 2, !tbaa !21
  store i8 32, ptr %i.cj, align 4, !tbaa !17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.cm, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !18
  store i32 1, ptr %7, align 4, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 0, ptr %i.co, align 2, !tbaa !21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.030 = phi ptr [ %7, %bb.aa ], [ %3, %bb.x ]
  %i.cp = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef nonnull %.030, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.not44 = icmp eq ptr %.029, null
  br i1 %.not44, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %.029) #19
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ac
  %.pr = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not45 = icmp eq i32 %.pr, 0
  br i1 %.not45, label %bb.ag, label %.thread.thread

.thread.thread:                                   ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %.thread
  %i.cq = phi i32 [ %.pr, %.thread ], [ 128, %bb.g ], [ 128, %bb.m ], [ 64, %bb.b ], [ 64, %bb.d ], [ 64, %bb.c ], [ 128, %bb.e ], [ 64, %bb.h ], [ 64, %bb.j ], [ 64, %bb.i ], [ 128, %bb.k ], [ 64, %bb.n ], [ 64, %bb.p ], [ 64, %bb.o ], [ 128, %bb.q ], [ 128, %bb.s ] ; 5 uses
  %i.cr = and i32 %i.cq, 221
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread.thread
  %i.cs = and i32 %i.cq, 1073741824
  %.not6.i = icmp eq i32 %i.cs, 0
  br i1 %.not6.i, label %.thread72, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = and i32 %i.cq, -1073741825
  br label %decStatus.exit

.thread72:                                        ; preds = %bb.w, %bb.ae
  %i.cu = phi i32 [ %i.cq, %bb.ae ], [ 16, %bb.w ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cw, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cx, align 2, !tbaa !21
  store i8 32, ptr %i.cv, align 4, !tbaa !17
  br label %decStatus.exit

decStatus.exit:                                   ; preds = %.thread.thread, %bb.af, %.thread72
  %.0.i = phi i32 [ %i.ct, %bb.af ], [ %i.cu, %.thread72 ], [ %i.cq, %.thread.thread ]
  %i.cy = call ptr @decContextSetStatus(ptr noundef nonnull %4, i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %decStatus.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @decMultiplyOp(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [49 x i16], align 16              ; 3 uses
  %i.c = alloca [10 x i32], align 16              ; 3 uses
  %i.d = alloca [10 x i32], align 16              ; 3 uses
  %i.e = alloca [20 x i64], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !17    ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !17    ; 3 uses
  %i.k = xor i8 %i.j, %i.g
  %i.l = and i8 %i.k, -128                        ; 3 uses
  %i.m = or i8 %i.j, %i.g                         ; 2 uses
  %i.n = and i8 %i.m, 112
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i8 %i.m, 48
  %.not295 = icmp eq i8 %i.o, 0
  br i1 %.not295, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.h, 64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  %i.w = icmp eq i32 %i.v, 1
  %i.x = and i32 %i.h, 48
  %i.y = icmp eq i32 %i.x, 0
  %or.cond297 = and i1 %i.y, %i.w
  br i1 %or.cond297, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.z = zext i8 %i.j to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 64
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !21
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %2, align 4, !tbaa !19
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = and i32 %i.z, 48
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond299 = and i1 %i.ai, %i.ag
  br i1 %or.cond299, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !23
  %i.ak = or i32 %i.aj, 128
  store i32 %i.ak, ptr %4, align 4, !tbaa !23
  br label %bb.bc

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.an, align 2, !tbaa !21
  %i.ao = or disjoint i8 %i.l, 64
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !17
  br label %bb.bc

bb.l:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %i.aq = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq               ; 2 uses
  %spec.select = select i1 %i.ar, ptr %1, ptr %2  ; 3 uses
  %spec.select300 = select i1 %i.ar, ptr %2, ptr %1 ; 3 uses
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 6 uses
  %i.at = icmp sgt i32 %i.as, 6
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.aq) ; 9 uses
  br i1 %i.at, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i32 %i.au, 8
  %i.aw = sdiv i32 %i.av, 9                       ; 2 uses
  %i.ax = add nuw i32 %i.as, 8
  %i.ay = udiv i32 %i.ax, 9                       ; 2 uses
  %i.az = add nsw i32 %i.aw, %i.ay                ; 4 uses
  %i.ba = icmp sgt i32 %i.au, 90
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = shl nuw nsw i32 %i.aw, 2
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #20 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0250 = phi ptr [ %i.bd, %bb.n ], [ %i.c, %bb.m ] ; 8 uses
  %.0247 = phi ptr [ %i.bd, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.0250447 = ptrtoaddr ptr %.0250 to i64         ; 2 uses
  %i.be = icmp samesign ugt i32 %i.as, 90
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = shl nuw nsw i32 %i.ay, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bg) #20 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0246 = phi ptr [ %i.bh, %bb.p ], [ %i.d, %bb.o ] ; 5 uses
  %.0243 = phi ptr [ %i.bh, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.bi = sext i32 %i.az to i64
  %i.bj = shl i32 %i.az, 3                        ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 160
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bl) #20 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0253 = phi ptr [ %i.bm, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.0242 = phi ptr [ %i.bm, %bb.r ], [ %i.e, %bb.q ] ; 11 uses
  %.0242394 = ptrtoaddr ptr %.0242 to i64         ; 3 uses
  %i.bn = icmp eq ptr %.0250, null
  %i.bo = icmp eq ptr %.0246, null
  %or.cond = or i1 %i.bn, %i.bo
  %i.bp = icmp eq ptr %.0242, null
  %or.cond3 = or i1 %or.cond, %i.bp
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %4, align 4, !tbaa !23
  %i.br = or i32 %i.bq, 16
  store i32 %i.br, ptr %4, align 4, !tbaa !23
  br label %bb.aw

bb.u:                                             ; preds = %bb.s
  %i.bs = icmp sgt i32 %i.au, 0
  br i1 %i.bs, label %.lr.ph332.preheader, label %.lr.ph342.preheader

.lr.ph332.preheader:                              ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %spec.select300, i64 10
  %i.bu = load i32, ptr @DECPOWERS, align 16, !tbaa !23
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 24), align 8
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.x
  %.0227331 = phi ptr [ %.lcssa461.a, %bb.x ], [ %i.bt, %.lr.ph332.preheader ] ; 4 uses
  %.0231330 = phi i32 [ %.lcssa460, %bb.x ], [ %i.au, %.lr.ph332.preheader ] ; 6 uses
  %.0240329 = phi ptr [ %i.cr, %bb.x ], [ %.0250, %.lr.ph332.preheader ] ; 2 uses
  %i.bx = load i16, ptr %.0227331, align 2, !tbaa !21
  %i.by = zext i16 %i.bx to i32
  %i.bz = mul i32 %i.bu, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0227331, i64 2 ; 2 uses
  %i.cb = add nsw i32 %.0231330, -3
  %i.cc = icmp samesign ugt i32 %.0231330, 3
  br i1 %i.cc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph332
  %i.cd = load i16, ptr %i.ca, align 2, !tbaa !21
  %i.ce = zext i16 %i.cd to i32
  %i.cf = mul i32 %i.bv, %i.ce
  %i.cg = add i32 %i.bz, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0227331, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.0231330, -6
  %i.cj = icmp sgt i32 %.0231330, 6
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i16, ptr %i.ch, align 2, !tbaa !21
  %i.cl = zext i16 %i.ck to i32
  %i.cm = mul i32 %i.bw, %i.cl
  %i.cn = add i32 %i.cg, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.0227331, i64 6
  %i.cp = add nsw i32 %.0231330, -9
  %i.cq = icmp sgt i32 %.0231330, 9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph332
  %.lcssa462.a = phi i32 [ %i.bz, %.lr.ph332 ], [ %i.cg, %bb.v ], [ %i.cn, %bb.w ]
  %.lcssa461.a = phi ptr [ %i.ca, %.lr.ph332 ], [ %i.ch, %bb.v ], [ %i.co, %bb.w ]
  %.lcssa460 = phi i32 [ %i.cb, %.lr.ph332 ], [ %i.ci, %bb.v ], [ %i.cp, %bb.w ]
  %.lcssa459 = phi i1 [ false, %.lr.ph332 ], [ false, %bb.v ], [ %i.cq, %bb.w ]
  store i32 %.lcssa462.a, ptr %.0240329, align 4, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.0240329, i64 4 ; 2 uses
  br i1 %.lcssa459, label %.lr.ph332, label %.lr.ph342.preheader, !llvm.loop !74

.lr.ph342.preheader:                              ; preds = %bb.x, %bb.u
  %.0240.lcssa = phi ptr [ %.0250, %bb.u ], [ %i.cr, %bb.x ] ; 2 uses
  %.0240.lcssa448 = ptrtoaddr ptr %.0240.lcssa to i64
  %i.cs = getelementptr inbounds i8, ptr %.0240.lcssa, i64 -4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select, i64 10
  %i.cu = load i32, ptr @DECPOWERS, align 16, !tbaa !23
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 24), align 8
  br label %.lr.ph342

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %bb.z
  %.2229340 = phi ptr [ %i.do, %bb.z ], [ %i.ct, %.lr.ph342.preheader ] ; 4 uses
  %.2233339 = phi i32 [ %i.dp, %bb.z ], [ %i.as, %.lr.ph342.preheader ] ; 6 uses
  %.0238338 = phi ptr [ %i.dr, %bb.z ], [ %.0246, %.lr.ph342.preheader ] ; 7 uses
  %i.cx = load i16, ptr %.2229340, align 2, !tbaa !21
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul i32 %i.cu, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2229340, i64 2 ; 2 uses
  %i.db = add nsw i32 %.2233339, -3
  %i.dc = icmp sgt i32 %.2233339, 3
  br i1 %i.dc, label %bb.y, label %._crit_edge343.critedge

bb.y:                                             ; preds = %.lr.ph342
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !21
  %i.de = zext i16 %i.dd to i32
  %i.df = mul i32 %i.cv, %i.de
  %i.dg = add i32 %i.cz, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.2229340, i64 4 ; 2 uses
  %i.di = add nsw i32 %.2233339, -6
  %i.dj = icmp sgt i32 %.2233339, 6
  br i1 %i.dj, label %bb.z, label %._crit_edge343.critedge

bb.z:                                             ; preds = %bb.y
  %i.dk = load i16, ptr %i.dh, align 2, !tbaa !21
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul i32 %i.cw, %i.dl
  %i.dn = add i32 %i.dg, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.2229340, i64 6
  %i.dp = add nsw i32 %.2233339, -9
  %i.dq = icmp sgt i32 %.2233339, 9
  store i32 %i.dn, ptr %.0238338, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %.0238338, i64 4
  br i1 %i.dq, label %.lr.ph342, label %._crit_edge343, !llvm.loop !75

._crit_edge343.critedge:                          ; preds = %bb.y, %.lr.ph342
  %.lcssa458.ph.a = phi i32 [ %i.dg, %bb.y ], [ %i.cz, %.lr.ph342 ]
  %.lcssa457.ph = phi ptr [ %i.dh, %bb.y ], [ %i.da, %.lr.ph342 ] ; 0 uses
  %.lcssa456.ph = phi i32 [ %i.di, %bb.y ], [ %i.db, %.lr.ph342 ] ; 0 uses
  store i32 %.lcssa458.ph.a, ptr %.0238338, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.0238338, i64 4 ; 0 uses
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %._crit_edge343.critedge, %bb.z
  %.idx371 = shl nsw i64 %i.bi, 3                 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.0242, i64 %.idx371 ; 2 uses
  %i.du = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.du, label %.lr.ph347.preheader, label %.preheader317

.lr.ph347.preheader:                              ; preds = %._crit_edge343
  %i.dv = add i64 %.idx371, %.0242394
  %i.dw = add i64 %.0242394, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dw)
  %i.dx = xor i64 %.0242394, -1
  %i.dy = add i64 %umax, %i.dx
  %i.dz = and i64 %i.dy, -8
  %i.ea = add i64 %i.dz, 8
  call void @llvm.memset.p0.i64(ptr align 8 %.0242, i8 0, i64 %i.ea, i1 false), !tbaa !83
  br label %.preheader317

.preheader317:                                    ; preds = %.lr.ph347.preheader, %._crit_edge343
  %.not286357 = icmp ugt ptr %.0246, %.0238338
  br i1 %.not286357, label %.preheader, label %.lr.ph360

.lr.ph360:                                        ; preds = %.preheader317
  %i.eb = ptrtoint ptr %.0246 to i64
  %.not287349 = icmp ugt ptr %.0250, %i.cs
  %i.ec = icmp slt i32 %i.az, 1
  %i.ed = add i64 %.0240.lcssa448, -3
  %i.ee = add i64 %.0250447, 4
  %i.ef = call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.ee)
  %i.eg = xor i64 %.0250447, -1
  %i.eh = add i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 12
  %n.vec = and i64 %i.ej, 9223372036854775804     ; 4 uses
  %i.ek = shl i64 %n.vec, 3
  %i.el = shl i64 %n.vec, 2
  %i.em = getelementptr i8, ptr %.0250, i64 %i.el
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br label %bb.aa

.preheader:                                       ; preds = %.loopexit, %.preheader317
  br i1 %i.du, label %.lr.ph366, label %._crit_edge367

bb.aa:                                            ; preds = %.lr.ph360, %.loopexit
  %.0236359 = phi i32 [ 18, %.lr.ph360 ], [ %.1237, %.loopexit ] ; 2 uses
  %.1239358 = phi ptr [ %.0246, %.lr.ph360 ], [ %i.gg, %.loopexit ] ; 4 uses
  br i1 %.not287349, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.aa
  %i.en = ptrtoint ptr %.1239358 to i64
  %i.eo = sub i64 %i.en, %i.eb
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %.1239358, align 4, !tbaa !23
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph353
  %i.et = getelementptr i8, ptr %i.eq, i64 %i.ek
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ev = shl i64 %index, 2
  %next.gep447 = getelementptr i8, ptr %.0250, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep447, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep447, align 4, !tbaa !23
  %wide.load448 = load <2 x i32>, ptr %i.ew, align 4, !tbaa !23
  %i.ex = zext <2 x i32> %wide.load to <2 x i64>
  %i.ey = zext <2 x i32> %wide.load448 to <2 x i64>
  %i.ez = mul nuw <2 x i64> %broadcast.splat, %i.ex
  %i.fa = mul nuw <2 x i64> %broadcast.splat, %i.ey
  %i.fb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load449 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !83
  %wide.load450 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !83
  %i.fc = add <2 x i64> %i.ez, %wide.load449
  %i.fd = add <2 x i64> %i.fa, %wide.load450
  store <2 x i64> %i.fc, ptr %next.gep, align 8, !tbaa !83
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge354, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph353, %middle.block
  %.1223351.ph = phi ptr [ %i.eq, %.lr.ph353 ], [ %i.et, %middle.block ]
  %.1241350.ph = phi ptr [ %.0250, %.lr.ph353 ], [ %i.em, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1223351 = phi ptr [ %i.fl, %scalar.ph ], [ %.1223351.ph, %scalar.ph.preheader ] ; 3 uses
  %.1241350 = phi ptr [ %i.fk, %scalar.ph ], [ %.1241350.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ff = load i32, ptr %.1241350, align 4, !tbaa !23
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw i64 %i.es, %i.fg
  %i.fi = load i64, ptr %.1223351, align 8, !tbaa !83
  %i.fj = add i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %.1223351, align 8, !tbaa !83
  %i.fk = getelementptr inbounds nuw i8, ptr %.1241350, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1223351, i64 8
  %.not287 = icmp ugt ptr %i.fk, %i.cs
  br i1 %.not287, label %._crit_edge354, label %scalar.ph, !llvm.loop !77

._crit_edge354:                                   ; preds = %scalar.ph, %middle.block, %bb.aa
  %i.fm = icmp sgt i32 %.0236359, 1
  %i.fn = add nsw i32 %.0236359, -1
  %.not288 = icmp ne ptr %.1239358, %.0238338
  %or.cond301.not373 = and i1 %i.fm, %.not288     ; 2 uses
  %brmerge = or i1 %or.cond301.not373, %i.ec
  %.mux = select i1 %or.cond301.not373, i32 %i.fn, i32 18
  br i1 %brmerge, label %.loopexit, label %.lr.ph356

.lr.ph356:                                        ; preds = %._crit_edge354, %bb.ae
  %.2224355 = phi ptr [ %i.ge, %bb.ae ], [ %.0242, %._crit_edge354 ] ; 5 uses
  %i.fo = load i64, ptr %.2224355, align 8, !tbaa !83 ; 6 uses
  %i.fp = icmp ult i64 %i.fo, 1000000000
  br i1 %i.fp, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph356
  %i.fq = udiv i64 %i.fo, 1000000000              ; 2 uses
  %i.fr = icmp ult i64 %i.fo, 1000000000000000000
  br i1 %i.fr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = udiv i64 %i.fo, 1000000000000000000     ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.2224355, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !83
  %i.fv = add i64 %i.fu, %i.fs
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !83
  %.neg289 = mul i64 %i.fs, -1000000000000000000
  %i.fw = add i64 %.neg289, %i.fo
  %.neg290 = mul nuw nsw i64 %i.fs, 3294967296
  %i.fx = add nuw nsw i64 %.neg290, %i.fq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fy = phi i64 [ %i.fw, %bb.ac ], [ %i.fo, %bb.ab ]
  %.0235.in = phi i64 [ %i.fx, %bb.ac ], [ %i.fq, %bb.ab ]
  %i.fz = and i64 %.0235.in, 4294967295           ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.2224355, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gc = add i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !83
  %.neg291 = mul nsw i64 %i.fz, -1000000000
  %i.gd = add i64 %i.fy, %.neg291
  store i64 %i.gd, ptr %.2224355, align 8, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph356, %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %.2224355, i64 8 ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.dt
  br i1 %i.gf, label %.lr.ph356, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %bb.ae, %._crit_edge354
  %.1237 = phi i32 [ %.mux, %._crit_edge354 ], [ 18, %bb.ae ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.1239358, i64 4 ; 2 uses
  %.not286 = icmp ugt ptr %i.gg, %.0238338
  br i1 %.not286, label %.preheader, label %bb.aa, !llvm.loop !79

.lr.ph366:                                        ; preds = %.preheader, %.lr.ph366
  %.3365 = phi ptr [ %i.gt, %.lr.ph366 ], [ %.0242, %.preheader ] ; 2 uses
  %.0225364 = phi ptr [ %i.gs, %.lr.ph366 ], [ %.0242, %.preheader ] ; 4 uses
  %i.gh = load i64, ptr %.3365, align 8, !tbaa !83
  %i.gi = trunc i64 %i.gh to i32                  ; 3 uses
  %i.gj = udiv i32 %i.gi, 1000                    ; 2 uses
  %.neg = mul i32 %i.gj, 64536
  %i.gk = add i32 %.neg, %i.gi
  %i.gl = trunc i32 %i.gk to i16
  store i16 %i.gl, ptr %.0225364, align 2, !tbaa !21
  %i.gm = getelementptr inbounds nuw i8, ptr %.0225364, i64 2
  %i.gn = udiv i32 %i.gi, 1000000                 ; 2 uses
  %.neg.1 = mul nuw nsw i32 %i.gn, 64536
  %i.go = add nuw nsw i32 %.neg.1, %i.gj
  %i.gp = trunc i32 %i.go to i16
  store i16 %i.gp, ptr %i.gm, align 2, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.0225364, i64 4
  %i.gr = trunc nuw nsw i32 %i.gn to i16
  store i16 %i.gr, ptr %i.gq, align 2, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %.0225364, i64 6 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.3365, i64 8 ; 2 uses
  %i.gu = icmp ult ptr %i.gt, %i.dt
  br i1 %i.gu, label %.lr.ph366, label %._crit_edge367, !llvm.loop !80

._crit_edge367:                                   ; preds = %.lr.ph366, %.preheader
  %.0225.lcssa = phi ptr [ %.0242, %.preheader ], [ %i.gs, %.lr.ph366 ]
  %i.gv = ptrtoint ptr %.0225.lcssa to i64
  %i.gw = ptrtoint ptr %.0242 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 1
  %i.gz = trunc i64 %i.gy to i32
  br label %.loopexit318

bb.af:                                            ; preds = %bb.l
  %i.ha = icmp slt i32 %i.au, 50                  ; 2 uses
  br i1 %i.ha, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hb = sext i32 %i.au to i64
  %i.hc = getelementptr inbounds i8, ptr @d2utable, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !24
  %i.he = zext i8 %i.hd to i32
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hf = add nuw nsw i32 %i.au, 2
  %i.hg = udiv i32 %i.hf, 3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = phi i32 [ %i.he, %bb.ag ], [ %i.hg, %bb.ah ]
  %i.hi = sext i32 %i.as to i64
  %i.hj = getelementptr inbounds i8, ptr @d2utable, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24  ; 2 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hh, %i.hl            ; 2 uses
  %i.hn = icmp samesign ugt i32 %i.hm, 49
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ho = shl nuw nsw i32 %i.hm, 1
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.hp) #20 ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
end_hunk_0
