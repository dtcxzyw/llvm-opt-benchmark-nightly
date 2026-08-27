Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManExplore:bb.a
bb.bm:                                            ; preds = %Abc_Clock.exit253
  %i.wd = load ptr, ptr %0, align 8, !tbaa !72
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 60
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !247
  %.not182 = icmp eq i32 %i.wf, 0
  br i1 %.not182, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %1) ; 0 uses
  %i.wh = load ptr, ptr @stdout, align 8, !tbaa !226
  %i.wi = load ptr, ptr %i.ri, align 8, !tbaa !93
  %i.wj = getelementptr i8, ptr %i.wi, i64 4
  %.val = load i32, ptr %i.wj, align 4, !tbaa !43
  %i.wk = shl nuw i32 1, %.val
  call void @Extra_PrintBinary(ptr noundef %i.wh, ptr noundef nonnull %2, i32 noundef %i.wk) #33
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bd, %._crit_edge293
  %.3 = phi i32 [ %.2161295, %bb.bd ], [ %i.wc, %._crit_edge293 ] ; 2 uses
  %i.wl = add nuw nsw i32 %.0170294, 1
  %i.wm = icmp samesign ult i32 %.0170294, 31
  %i.wn = icmp slt i32 %.3, 64
  %i.wo = select i1 %i.wm, i1 %i.wn, i1 false
  br i1 %i.wo, label %bb.ao, label %.loopexit, !llvm.loop !265

.loopexit:                                        ; preds = %bb.bo, %bb.an, %bb.bn, %bb.bm, %Abc_Clock.exit244
  %.0171 = phi i32 [ 0, %Abc_Clock.exit244 ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 0, %bb.an ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0171
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Sbd_TransposeMatrix64(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #12 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.d = sext i32 %.02830 to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 256      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %.masked = and i64 %i.c, 4294967295
  %i.i = xor i64 %i.h, %.masked                   ; 2 uses
  %i.j = xor i64 %i.i, %i.c
  store i64 %i.j, ptr %i.b, align 8, !tbaa !100
  %i.k = shl nuw i64 %i.i, 32
  %i.l = xor i64 %i.k, %i.g
  store i64 %i.l, ptr %i.f, align 8, !tbaa !100
  %i.m = add nsw i32 %.02830, 33
  %i.n = and i32 %i.m, -33                        ; 2 uses
  %i.o = icmp slt i32 %i.n, 64
  br i1 %i.o, label %bb.a, label %.preheader.1, !llvm.loop !266

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.ad, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.p = sext i32 %.02830.1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100  ; 2 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 128      ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %i.w = lshr i64 %i.v, 16
  %i.x = xor i64 %i.w, %i.r
  %i.y = and i64 %i.x, 281470681808895            ; 2 uses
  %i.z = xor i64 %i.y, %i.r
  store i64 %i.z, ptr %i.q, align 8, !tbaa !100
  %i.aa = shl nuw i64 %i.y, 16
  %i.ab = xor i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !100
  %i.ac = add nsw i32 %.02830.1, 17
  %i.ad = and i32 %i.ac, -17                      ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 64
  br i1 %i.ae, label %.preheader.1, label %.preheader.2, !llvm.loop !266

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.at, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.af = sext i32 %.02830.2 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !100 ; 2 uses
  %i.ai = sext i32 %.02830.2 to i64
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 64     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %i.am = lshr i64 %i.al, 8
  %i.an = xor i64 %i.am, %i.ah
  %i.ao = and i64 %i.an, 71777214294589695        ; 2 uses
  %i.ap = xor i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !100
  %i.aq = shl nuw i64 %i.ao, 8
  %i.ar = xor i64 %i.aq, %i.al
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !100
  %i.as = add nsw i32 %.02830.2, 9
  %i.at = and i32 %i.as, -9                       ; 2 uses
  %i.au = icmp slt i32 %i.at, 64
  br i1 %i.au, label %.preheader.2, label %.preheader.3, !llvm.loop !266

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bj, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.av = sext i32 %.02830.3 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %i.ay = sext i32 %.02830.3 to i64
  %i.az = getelementptr [8 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !100 ; 2 uses
  %i.bc = lshr i64 %i.bb, 4
  %i.bd = xor i64 %i.bc, %i.ax
  %i.be = and i64 %i.bd, 1085102592571150095      ; 2 uses
  %i.bf = xor i64 %i.be, %i.ax
  store i64 %i.bf, ptr %i.aw, align 8, !tbaa !100
  %i.bg = shl nuw i64 %i.be, 4
  %i.bh = xor i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !100
  %i.bi = add nsw i32 %.02830.3, 5
  %i.bj = and i32 %i.bi, -5                       ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 64
  br i1 %i.bk, label %.preheader.3, label %.preheader.4, !llvm.loop !266

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.bz, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bl = sext i32 %.02830.4 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.bo = sext i32 %.02830.4 to i64
  %i.bp = getelementptr [8 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !100 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = xor i64 %i.bs, %i.bn
  %i.bu = and i64 %i.bt, 3689348814741910323      ; 2 uses
  %i.bv = xor i64 %i.bu, %i.bn
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !100
  %i.bw = shl nuw i64 %i.bu, 2
  %i.bx = xor i64 %i.bw, %i.br
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !100
  %i.by = add nsw i32 %.02830.4, 3
  %i.bz = and i32 %i.by, -3                       ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 64
  br i1 %i.ca, label %.preheader.4, label %.preheader.5, !llvm.loop !266

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !100 ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = and i64 %i.ch, 6148914691236517205      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !100
  %i.ck = shl nuw i64 %i.ci, 1
  %i.cl = xor i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !100
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !100 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !100 ; 2 uses
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, %i.cn
  %i.ct = and i64 %i.cs, 6148914691236517205      ; 2 uses
  %i.cu = xor i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !100
  %i.cv = shl nuw i64 %i.ct, 1
  %i.cw = xor i64 %i.cv, %i.cq
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !100
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !266

bb.b:                                             ; preds = %.preheader.5
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Sbd_ManFindCands(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = sdiv i32 %2, 4                           ; 2 uses
  %i.d = sdiv i32 %2, 3
  %i.e = add nsw i32 %i.d, 2                      ; 4 uses
  %i.f = sdiv i32 %2, 2
  %i.g = add nsw i32 %i.f, 3                      ; 4 uses
  %i.h = sext i32 %2 to i64                       ; 6 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !100  ; 8 uses
  %i.k = icmp slt i32 %2, 8
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 4, !tbaa !267
  %.not = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 6 uses
  store i32 0, ptr %i.q, align 4, !tbaa !43
  br i1 %.not, label %.lr.ph.preheader, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !43
  %i.u = icmp sgt i32 %2, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %Sbd_ManFindCandsSimple.exit

.lr.ph.preheader.i:                               ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.t, %bb.c ], [ %i.q, %bb.b ] ; 6 uses
  %i.w = phi ptr [ %i.s, %bb.c ], [ %i.p, %bb.b ] ; 14 uses
  %i.x = phi ptr [ %i.r, %bb.c ], [ %i.o, %bb.b ] ; 6 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 7 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !100
  %i.aa = icmp eq i64 %i.z, %i.j
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !45
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 3 uses
  br i1 %i.ad, label %bb.e, label %Vec_IntPush.exit.i

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.af, i64 noundef 64) #34
  %.pre255.pre.i = load i32, ptr %i.v, align 4, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.g, %bb.f
  %.pre255.i = phi i32 [ %.pre255.pre.i, %bb.f ], [ 0, %bb.g ]
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !44
  store i32 16, ptr %i.w, align 8, !tbaa !45
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.d
  %i.aj = phi i32 [ %.pre255.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ak = phi ptr [ %i.ai, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.af, %bb.d ]
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.v, align 4, !tbaa !43
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %i.ab, ptr %i.an, align 4, !tbaa !8
  br label %Sbd_ManFindCandsSimple.exit

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph153.i, label %.lr.ph.i, !llvm.loop !268

.loopexit137.i:                                   ; preds = %bb.w, %.lr.ph153.i
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count.i
  br i1 %exitcond190.not.i, label %.lr.ph159.i, label %.lr.ph153.i, !llvm.loop !269

.lr.ph153.i:                                      ; preds = %bb.h, %.loopexit137.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %.loopexit137.i ], [ 0, %bb.h ] ; 3 uses
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.loopexit137.i ], [ 1, %bb.h ] ; 2 uses
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 3 uses
  %i.ao = icmp slt i64 %indvars.iv.next187.i, %i.h
  br i1 %i.ao, label %.lr.ph151.i, label %.loopexit137.i

.lr.ph151.i:                                      ; preds = %.lr.ph153.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv186.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !100
  br label %bb.i

bb.i:                                             ; preds = %bb.w, %.lr.ph151.i
  %indvars.iv181.i = phi i64 [ %indvars.iv179.i, %.lr.ph151.i ], [ %indvars.iv.next182.i, %bb.w ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv181.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.at = or i64 %i.as, %i.aq
  %i.au = icmp eq i64 %i.at, %i.j
  br i1 %i.au, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.av = trunc nuw nsw i64 %indvars.iv186.i to i32
  %i.aw = trunc nuw nsw i64 %indvars.iv181.i to i32
  %i.ax = load i32, ptr %i.w, align 8, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44 ; 3 uses
  br i1 %i.ay, label %bb.k, label %Vec_IntPush.exit98.i

bb.k:                                             ; preds = %bb.j
  %.not9.i.i96.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i96.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef 64) #34
  %.pre250.pre.i = load i32, ptr %i.v, align 4, !tbaa !43
  %.pre251.pre.i = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %Vec_IntGrow.exit11.sink.split.i94.i

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i94.i

Vec_IntGrow.exit11.sink.split.i94.i:              ; preds = %bb.m, %bb.l
  %.pre251.i = phi ptr [ %.pre251.pre.i, %bb.l ], [ %i.w, %bb.m ]
  %.pre250.i = phi i32 [ %.pre250.pre.i, %bb.l ], [ 0, %bb.m ]
  %i.bd = phi ptr [ %i.bb, %bb.l ], [ %i.bc, %bb.m ] ; 2 uses
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !44
  store i32 16, ptr %i.w, align 8, !tbaa !45
  br label %Vec_IntPush.exit98.i

Vec_IntPush.exit98.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i94.i, %bb.j
  %i.be = phi ptr [ %.pre251.i, %Vec_IntGrow.exit11.sink.split.i94.i ], [ %i.w, %bb.j ] ; 6 uses
  %i.bf = phi i32 [ %.pre250.i, %Vec_IntGrow.exit11.sink.split.i94.i ], [ 0, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %i.bd, %Vec_IntGrow.exit11.sink.split.i94.i ], [ %i.ba, %bb.j ]
  %i.bh = add nsw i32 %i.bf, 1
  store i32 %i.bh, ptr %i.v, align 4, !tbaa !43
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 %i.av, ptr %i.bj, align 4, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43 ; 7 uses
  %i.bm = load i32, ptr %i.be, align 8, !tbaa !45
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %Vec_IntPush.exit106.i

bb.n:                                             ; preds = %Vec_IntPush.exit98.i
  %i.bo = icmp slt i32 %i.bl, 16
  br i1 %i.bo, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i104.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i.i104.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i105.i

bb.q:                                             ; preds = %bb.o
  %i.bs = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i105.i

Vec_IntGrow.exit.i105.i:                          ; preds = %bb.q, %bb.p
  %i.bt = phi ptr [ %i.br, %bb.p ], [ %i.bs, %bb.q ]
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i102.i

bb.r:                                             ; preds = %bb.n
  %i.bu = icmp samesign ult i32 %i.bl, 1073741823
  %i.bv = shl nuw nsw i32 %i.bl, 1
  %spec.select.i99.i = select i1 %i.bu, i32 %i.bv, i32 2147483647 ; 3 uses
  %.not.i9.i100.i = icmp samesign ult i32 %i.bl, %spec.select.i99.i
  br i1 %.not.i9.i100.i, label %bb.s, label %Vec_IntPush.exit106.i

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i101.i = icmp eq ptr %i.bx, null
  %i.by = zext nneg i32 %spec.select.i99.i to i64
  %i.bz = shl nuw nsw i64 %i.by, 2                ; 2 uses
  br i1 %.not9.i10.i101.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %i.bz) #34
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.bz) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cc = phi ptr [ %i.ca, %bb.t ], [ %i.cb, %bb.u ]
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i102.i

Vec_IntGrow.exit11.sink.split.i102.i:             ; preds = %bb.v, %Vec_IntGrow.exit.i105.i
  %spec.select.sink.i103.i = phi i32 [ %spec.select.i99.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i105.i ]
  store i32 %spec.select.sink.i103.i, ptr %i.be, align 8, !tbaa !45
  %.pre252.i = load i32, ptr %i.bk, align 4, !tbaa !43
  br label %Vec_IntPush.exit106.i

Vec_IntPush.exit106.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i102.i, %bb.r, %Vec_IntPush.exit98.i
  %i.cd = phi i32 [ %i.bl, %Vec_IntPush.exit98.i ], [ %i.bl, %bb.r ], [ %.pre252.i, %Vec_IntGrow.exit11.sink.split.i102.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !44
  %i.cg = add nsw i32 %i.cd, 1
  store i32 %i.cg, ptr %i.bk, align 4, !tbaa !43
  %i.ch = sext i32 %i.cd to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 %i.aw, ptr %i.ci, align 4, !tbaa !8
  br label %Sbd_ManFindCandsSimple.exit

bb.w:                                             ; preds = %bb.i
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count.i
  br i1 %exitcond185.not.i, label %.loopexit137.i, label %bb.i, !llvm.loop !270

.loopexit135.i:                                   ; preds = %.loopexit134.i, %.lr.ph159.i
  %indvars.iv.next192.i = add nuw nsw i64 %indvars.iv191.i, 1
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count.i
  br i1 %exitcond210.not.i, label %.lr.ph167.i, label %.lr.ph159.i, !llvm.loop !271

.lr.ph159.i:                                      ; preds = %.loopexit137.i, %.loopexit135.i
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %.loopexit135.i ], [ 0, %.loopexit137.i ] ; 3 uses
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %.loopexit135.i ], [ 1, %.loopexit137.i ] ; 2 uses
  %indvars.iv191.i = phi i64 [ %indvars.iv.next192.i, %.loopexit135.i ], [ 2, %.loopexit137.i ] ; 2 uses
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 3 uses
  %i.cj = icmp slt i64 %indvars.iv.next207.i, %i.h
  br i1 %i.cj, label %.lr.ph157.i, label %.loopexit135.i

.lr.ph157.i:                                      ; preds = %.lr.ph159.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv206.i
  br label %bb.x

.loopexit134.i:                                   ; preds = %bb.av, %bb.x
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count.i
  br i1 %exitcond205.not.i, label %.loopexit135.i, label %bb.x, !llvm.loop !272

bb.x:                                             ; preds = %.loopexit134.i, %.lr.ph157.i
  %indvars.iv201.i = phi i64 [ %indvars.iv199.i, %.lr.ph157.i ], [ %indvars.iv.next202.i, %.loopexit134.i ] ; 3 uses
  %indvars.iv193.i = phi i64 [ %indvars.iv191.i, %.lr.ph157.i ], [ %indvars.iv.next194.i, %.loopexit134.i ] ; 2 uses
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 3 uses
  %3 = trunc nuw i64 %indvars.iv.next202.i to i32
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %.lr.ph155.i, label %.loopexit134.i

.lr.ph155.i:                                      ; preds = %bb.x
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv201.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !100
  %i.co = or i64 %i.cn, %i.cl
  br label %bb.y

bb.y:                                             ; preds = %bb.av, %.lr.ph155.i
  %indvars.iv195.i = phi i64 [ %indvars.iv193.i, %.lr.ph155.i ], [ %indvars.iv.next196.i, %bb.av ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv195.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !100
  %i.cr = or i64 %i.co, %i.cq
  %i.cs = icmp eq i64 %i.cr, %i.j
  br i1 %i.cs, label %bb.z, label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.ct = trunc nuw nsw i64 %indvars.iv206.i to i32
  %i.cu = trunc nuw nsw i64 %indvars.iv201.i to i32
  %i.cv = trunc nuw i64 %indvars.iv195.i to i32
  %i.cw = load i32, ptr %i.w, align 8, !tbaa !45
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !44 ; 3 uses
  br i1 %i.cx, label %bb.aa, label %Vec_IntPush.exit114.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i112.i = icmp eq ptr %i.cz, null
  br i1 %.not9.i.i112.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef 64) #34
  %.pre243.pre.i = load i32, ptr %i.v, align 4, !tbaa !43
  %.pre244.pre.i = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %Vec_IntGrow.exit11.sink.split.i110.i

bb.ac:                                            ; preds = %bb.aa
  %i.db = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i110.i

Vec_IntGrow.exit11.sink.split.i110.i:             ; preds = %bb.ac, %bb.ab
  %.pre244.i = phi ptr [ %.pre244.pre.i, %bb.ab ], [ %i.w, %bb.ac ]
  %.pre243.i = phi i32 [ %.pre243.pre.i, %bb.ab ], [ 0, %bb.ac ]
  %i.dc = phi ptr [ %i.da, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !44
  store i32 16, ptr %i.w, align 8, !tbaa !45
  br label %Vec_IntPush.exit114.i

Vec_IntPush.exit114.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i110.i, %bb.z
  %i.dd = phi ptr [ %.pre244.i, %Vec_IntGrow.exit11.sink.split.i110.i ], [ %i.w, %bb.z ] ; 8 uses
  %i.de = phi i32 [ %.pre243.i, %Vec_IntGrow.exit11.sink.split.i110.i ], [ 0, %bb.z ] ; 2 uses
  %i.df = phi ptr [ %i.dc, %Vec_IntGrow.exit11.sink.split.i110.i ], [ %i.cz, %bb.z ]
  %i.dg = add nsw i32 %i.de, 1
  store i32 %i.dg, ptr %i.v, align 4, !tbaa !43
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dh
  store i32 %i.ct, ptr %i.di, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !43 ; 7 uses
  %i.dl = load i32, ptr %i.dd, align 8, !tbaa !45
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ad, label %Vec_IntPush.exit122.i

bb.ad:                                            ; preds = %Vec_IntPush.exit114.i
  %i.dn = icmp slt i32 %i.dk, 16
  br i1 %i.dn, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i120.i = icmp eq ptr %i.dp, null
  br i1 %.not9.i.i120.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i121.i

bb.ag:                                            ; preds = %bb.ae
  %i.dr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i121.i

Vec_IntGrow.exit.i121.i:                          ; preds = %bb.ag, %bb.af
  %i.ds = phi ptr [ %i.dq, %bb.af ], [ %i.dr, %bb.ag ]
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i118.i

bb.ah:                                            ; preds = %bb.ad
  %i.dt = icmp samesign ult i32 %i.dk, 1073741823
  %i.du = shl nuw nsw i32 %i.dk, 1
  %spec.select.i115.i = select i1 %i.dt, i32 %i.du, i32 2147483647 ; 3 uses
  %.not.i9.i116.i = icmp samesign ult i32 %i.dk, %spec.select.i115.i
  br i1 %.not.i9.i116.i, label %bb.ai, label %Vec_IntPush.exit122.i

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i117.i = icmp eq ptr %i.dw, null
  %i.dx = zext nneg i32 %spec.select.i115.i to i64
  %i.dy = shl nuw nsw i64 %i.dx, 2                ; 2 uses
  br i1 %.not9.i10.i117.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = tail call ptr @realloc(ptr noundef nonnull %i.dw, i64 noundef %i.dy) #34
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ea = tail call noalias ptr @malloc(i64 noundef %i.dy) #31
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eb = phi ptr [ %i.dz, %bb.aj ], [ %i.ea, %bb.ak ]
  store ptr %i.eb, ptr %i.dv, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i118.i

Vec_IntGrow.exit11.sink.split.i118.i:             ; preds = %bb.al, %Vec_IntGrow.exit.i121.i
  %spec.select.sink.i119.i = phi i32 [ %spec.select.i115.i, %bb.al ], [ 16, %Vec_IntGrow.exit.i121.i ]
  store i32 %spec.select.sink.i119.i, ptr %i.dd, align 8, !tbaa !45
  %.pre245.i = load i32, ptr %i.dj, align 4, !tbaa !43
  %.pre246.i = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %Vec_IntPush.exit122.i

Vec_IntPush.exit122.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i118.i, %bb.ah, %Vec_IntPush.exit114.i
  %i.ec = phi ptr [ %i.dd, %Vec_IntPush.exit114.i ], [ %i.dd, %bb.ah ], [ %.pre246.i, %Vec_IntGrow.exit11.sink.split.i118.i ] ; 6 uses
  %i.ed = phi i32 [ %i.dk, %Vec_IntPush.exit114.i ], [ %i.dk, %bb.ah ], [ %.pre245.i, %Vec_IntGrow.exit11.sink.split.i118.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !44
  %i.eg = add nsw i32 %i.ed, 1
  store i32 %i.eg, ptr %i.dj, align 4, !tbaa !43
  %i.eh = sext i32 %i.ed to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  store i32 %i.cu, ptr %i.ei, align 4, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !43 ; 7 uses
  %i.el = load i32, ptr %i.ec, align 8, !tbaa !45
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.am, label %Vec_IntPush.exit130.i

bb.am:                                            ; preds = %Vec_IntPush.exit122.i
  %i.en = icmp slt i32 %i.ek, 16
  br i1 %i.en, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i128.i = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i128.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i129.i

bb.ap:                                            ; preds = %bb.an
  %i.er = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i129.i

Vec_IntGrow.exit.i129.i:                          ; preds = %bb.ap, %bb.ao
  %i.es = phi ptr [ %i.eq, %bb.ao ], [ %i.er, %bb.ap ]
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i126.i

bb.aq:                                            ; preds = %bb.am
  %i.et = icmp samesign ult i32 %i.ek, 1073741823
  %i.eu = shl nuw nsw i32 %i.ek, 1
  %spec.select.i123.i = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 3 uses
  %.not.i9.i124.i = icmp samesign ult i32 %i.ek, %spec.select.i123.i
  br i1 %.not.i9.i124.i, label %bb.ar, label %Vec_IntPush.exit130.i

bb.ar:                                            ; preds = %bb.aq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i125.i = icmp eq ptr %i.ew, null
  %i.ex = zext nneg i32 %spec.select.i123.i to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2                ; 2 uses
  br i1 %.not9.i10.i125.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call ptr @realloc(ptr noundef nonnull %i.ew, i64 noundef %i.ey) #34
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ey) #31
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fb = phi ptr [ %i.ez, %bb.as ], [ %i.fa, %bb.at ]
  store ptr %i.fb, ptr %i.ev, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i126.i

Vec_IntGrow.exit11.sink.split.i126.i:             ; preds = %bb.au, %Vec_IntGrow.exit.i129.i
  %spec.select.sink.i127.i = phi i32 [ %spec.select.i123.i, %bb.au ], [ 16, %Vec_IntGrow.exit.i129.i ]
  store i32 %spec.select.sink.i127.i, ptr %i.ec, align 8, !tbaa !45
  %.pre247.i = load i32, ptr %i.ej, align 4, !tbaa !43
  br label %Vec_IntPush.exit130.i

Vec_IntPush.exit130.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i126.i, %bb.aq, %Vec_IntPush.exit122.i
  %i.fc = phi i32 [ %i.ek, %Vec_IntPush.exit122.i ], [ %i.ek, %bb.aq ], [ %.pre247.i, %Vec_IntGrow.exit11.sink.split.i126.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !44
  %i.ff = add nsw i32 %i.fc, 1
  store i32 %i.ff, ptr %i.ej, align 4, !tbaa !43
  %i.fg = sext i32 %i.fc to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  store i32 %i.cv, ptr %i.fh, align 4, !tbaa !8
  br label %Sbd_ManFindCandsSimple.exit

bb.av:                                            ; preds = %bb.y
  %indvars.iv.next196.i = add nuw i64 %indvars.iv195.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next196.i to i32
  %exitcond288 = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond288, label %.loopexit134.i, label %bb.y, !llvm.loop !273

.loopexit132.i:                                   ; preds = %.loopexit131.i, %.lr.ph167.i
  %indvars.iv.next212.i = add nuw i32 %indvars.iv211.i, 1
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i.a, 1
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i.a, 1
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count.i
  br i1 %exitcond242.not.i, label %Sbd_ManFindCandsSimple.exit, label %.lr.ph167.i, !llvm.loop !274

.lr.ph167.i:                                      ; preds = %.loopexit135.i, %.loopexit132.i
  %indvars.iv238.i.a = phi i64 [ %indvars.iv.next239.i, %.loopexit132.i ], [ 0, %.loopexit135.i ] ; 3 uses
  %indvars.iv231.i.a = phi i64 [ %indvars.iv.next232.i, %.loopexit132.i ], [ 1, %.loopexit135.i ] ; 2 uses
  %indvars.iv222.i.a = phi i64 [ %indvars.iv.next223.i, %.loopexit132.i ], [ 2, %.loopexit135.i ] ; 2 uses
  %indvars.iv211.i = phi i32 [ %indvars.iv.next212.i, %.loopexit132.i ], [ 3, %.loopexit135.i ] ; 2 uses
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i.a, 1 ; 3 uses
  %i.fi = icmp slt i64 %indvars.iv.next239.i, %i.h
  br i1 %i.fi, label %.lr.ph165.i, label %.loopexit132.i

.lr.ph165.i:                                      ; preds = %.lr.ph167.i
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv238.i.a
  br label %bb.aw

.loopexit131.i:                                   ; preds = %.loopexit.i, %bb.aw
  %indvars.iv.next214.i = add i32 %indvars.iv213.i, 1
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv224.i.a, 1
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count.i
  br i1 %exitcond237.not.i, label %.loopexit132.i, label %bb.aw, !llvm.loop !275

bb.aw:                                            ; preds = %.loopexit131.i, %.lr.ph165.i
  %indvars.iv233.i.a = phi i64 [ %indvars.iv231.i.a, %.lr.ph165.i ], [ %indvars.iv.next234.i, %.loopexit131.i ] ; 3 uses
  %indvars.iv224.i.a = phi i64 [ %indvars.iv222.i.a, %.lr.ph165.i ], [ %indvars.iv.next225.i, %.loopexit131.i ] ; 2 uses
  %indvars.iv213.i = phi i32 [ %indvars.iv211.i, %.lr.ph165.i ], [ %indvars.iv.next214.i, %.loopexit131.i ] ; 2 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i.a, 1 ; 3 uses
  %5 = trunc nuw i64 %indvars.iv.next234.i to i32
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %.lr.ph163.i, label %.loopexit131.i

.lr.ph163.i:                                      ; preds = %bb.aw
  %7 = sext i32 %indvars.iv213.i to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv233.i.a
  br label %bb.ax

.loopexit.i:                                      ; preds = %bb.ba, %bb.ax
  %indvars.iv.next216.i = add nsw i64 %indvars.iv215.i, 1
  %exitcond292 = icmp eq i32 %2, %i.fl
  br i1 %exitcond292, label %.loopexit131.i, label %bb.ax, !llvm.loop !276

bb.ax:                                            ; preds = %.loopexit.i, %.lr.ph163.i
  %indvars.iv226.i = phi i64 [ %indvars.iv224.i.a, %.lr.ph163.i ], [ %indvars.iv.next227.i, %.loopexit.i ] ; 3 uses
  %indvars.iv215.i = phi i64 [ %7, %.lr.ph163.i ], [ %indvars.iv.next216.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.fl = trunc i64 %indvars.iv.next227.i to i32  ; 2 uses
  %i.fm = icmp sgt i32 %2, %i.fl
  br i1 %i.fm, label %.lr.ph161.i, label %.loopexit.i

.lr.ph161.i:                                      ; preds = %bb.ax
  %i.fn = load i64, ptr %i.fj, align 8, !tbaa !100
  %i.fo = load i64, ptr %i.fk, align 8, !tbaa !100
  %i.fp = or i64 %i.fo, %i.fn
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv226.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !100
  %i.fs = or i64 %i.fp, %i.fr
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %.lr.ph161.i
  %indvars.iv217.i = phi i64 [ %indvars.iv215.i, %.lr.ph161.i ], [ %indvars.iv.next218.i, %bb.ba ] ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv217.i
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !100
  %i.fv = or i64 %i.fs, %i.fu
  %i.fw = icmp eq i64 %i.fv, %i.j
  br i1 %i.fw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fx = trunc nuw nsw i64 %indvars.iv238.i.a to i32
  %i.fy = trunc nuw nsw i64 %indvars.iv233.i.a to i32
  %i.fz = trunc nuw i64 %indvars.iv226.i to i32
  %i.ga = trunc nsw i64 %indvars.iv217.i to i32
  tail call fastcc void @Vec_IntPush(ptr noundef %i.w, i32 noundef %i.fx)
  %i.gb = load ptr, ptr %i.x, align 8, !tbaa !93
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gb, i32 noundef %i.fy)
  %i.gc = load ptr, ptr %i.x, align 8, !tbaa !93
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gc, i32 noundef %i.fz)
  %i.gd = load ptr, ptr %i.x, align 8, !tbaa !93
  tail call fastcc void @Vec_IntPush(ptr noundef %i.gd, i32 noundef %i.ga)
  br label %Sbd_ManFindCandsSimple.exit

bb.ba:                                            ; preds = %bb.ay
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %lftr.wideiv289 = trunc i64 %indvars.iv.next218.i to i32
  %exitcond290 = icmp eq i32 %2, %lftr.wideiv289
  br i1 %exitcond290, label %.loopexit.i, label %bb.ay, !llvm.loop !277

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  br label %.lr.ph

.lr.ph159.preheader:                              ; preds = %bb.bf
  %wide.trip.count219 = zext nneg i32 %2 to i64
  %wide.trip.count214 = zext nneg i32 %2 to i64
  br label %.lr.ph159

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bf ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !100
  %i.gg = icmp eq i64 %i.gf, %i.j
  br i1 %i.gg, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph
  %i.gh = trunc nuw nsw i64 %indvars.iv to i32
  %i.gi = load i32, ptr %i.p, align 8, !tbaa !45
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !44 ; 3 uses
  br i1 %i.gj, label %bb.bc, label %Vec_IntPush.exit

bb.bc:                                            ; preds = %bb.bb
  %.not9.i.i = icmp eq ptr %i.gl, null
  br i1 %.not9.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gl, i64 noundef 64) #34
  %.pre298.pre = load i32, ptr %i.q, align 4, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

bb.be:                                            ; preds = %bb.bc
  %i.gn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.bd, %bb.be
  %.pre298 = phi i32 [ %.pre298.pre, %bb.bd ], [ 0, %bb.be ]
  %i.go = phi ptr [ %i.gm, %bb.bd ], [ %i.gn, %bb.be ] ; 2 uses
  store ptr %i.go, ptr %i.gk, align 8, !tbaa !44
  store i32 16, ptr %i.p, align 8, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.bb, %Vec_IntGrow.exit11.sink.split.i
  %i.gp = phi i32 [ %.pre298, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.bb ] ; 2 uses
  %i.gq = phi ptr [ %i.go, %Vec_IntGrow.exit11.sink.split.i ], [ %i.gl, %bb.bb ]
  %i.gr = add nsw i32 %i.gp, 1
  store i32 %i.gr, ptr %i.q, align 4, !tbaa !43
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gs
  store i32 %i.gh, ptr %i.gt, align 4, !tbaa !8
  br label %Sbd_ManFindCandsSimple.exit

bb.bf:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph159.preheader, label %.lr.ph, !llvm.loop !278

.loopexit134:                                     ; preds = %bb.bu, %.lr.ph159
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %.lr.ph161.preheader, label %.lr.ph159, !llvm.loop !279

.lr.ph161.preheader:                              ; preds = %.loopexit134
  %wide.trip.count225 = zext nneg i32 %2 to i64
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph161.preheader
  %index = phi i64 [ 0, %.lr.ph161.preheader ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !tbaa !100
  %wide.load368 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !100
  %i.gw = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.gx = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load368)
  %i.gy = trunc nuw nsw <2 x i64> %i.gw to <2 x i32>
  %i.gz = trunc nuw nsw <2 x i64> %i.gx to <2 x i32>
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store <2 x i32> %i.gy, ptr %i.ha, align 16, !tbaa !8
  store <2 x i32> %i.gz, ptr %i.hb, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph163.preheader, label %.lr.ph161

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %.loopexit134
  %indvars.iv216 = phi i64 [ 0, %.lr.ph159.preheader ], [ %indvars.iv.next217, %.loopexit134 ] ; 3 uses
  %indvars.iv209 = phi i64 [ 1, %.lr.ph159.preheader ], [ %indvars.iv.next210, %.loopexit134 ] ; 2 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 3 uses
  %i.hd = icmp slt i64 %indvars.iv.next217, %i.h
  br i1 %i.hd, label %.lr.ph157, label %.loopexit134

.lr.ph157:                                        ; preds = %.lr.ph159
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv216
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !100
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph157, %bb.bu
  %indvars.iv211 = phi i64 [ %indvars.iv209, %.lr.ph157 ], [ %indvars.iv.next212, %bb.bu ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv211
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !100
  %i.hi = or i64 %i.hh, %i.hf
  %i.hj = icmp eq i64 %i.hi, %i.j
  br i1 %i.hj, label %bb.bh, label %bb.bu

bb.bh:                                            ; preds = %bb.bg
  %i.hk = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.hl = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.hm = load i32, ptr %i.p, align 8, !tbaa !45
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !44 ; 3 uses
  br i1 %i.hn, label %bb.bi, label %Vec_IntPush.exit118

bb.bi:                                            ; preds = %bb.bh
  %.not9.i.i116 = icmp eq ptr %i.hp, null
  br i1 %.not9.i.i116, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hp, i64 noundef 64) #34
  %.pre293.pre = load i32, ptr %i.q, align 4, !tbaa !43
  %.pre294.pre = load ptr, ptr %i.o, align 8, !tbaa !93
  br label %Vec_IntGrow.exit11.sink.split.i114

bb.bk:                                            ; preds = %bb.bi
  %i.hr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i114

Vec_IntGrow.exit11.sink.split.i114:               ; preds = %bb.bj, %bb.bk
  %.pre294 = phi ptr [ %.pre294.pre, %bb.bj ], [ %i.p, %bb.bk ]
  %.pre293 = phi i32 [ %.pre293.pre, %bb.bj ], [ 0, %bb.bk ]
  %i.hs = phi ptr [ %i.hq, %bb.bj ], [ %i.hr, %bb.bk ] ; 2 uses
  store ptr %i.hs, ptr %i.ho, align 8, !tbaa !44
  store i32 16, ptr %i.p, align 8, !tbaa !45
  br label %Vec_IntPush.exit118

Vec_IntPush.exit118:                              ; preds = %bb.bh, %Vec_IntGrow.exit11.sink.split.i114
  %i.ht = phi ptr [ %.pre294, %Vec_IntGrow.exit11.sink.split.i114 ], [ %i.p, %bb.bh ] ; 6 uses
  %i.hu = phi i32 [ %.pre293, %Vec_IntGrow.exit11.sink.split.i114 ], [ 0, %bb.bh ] ; 2 uses
  %i.hv = phi ptr [ %i.hs, %Vec_IntGrow.exit11.sink.split.i114 ], [ %i.hp, %bb.bh ]
  %i.hw = add nsw i32 %i.hu, 1
  store i32 %i.hw, ptr %i.q, align 4, !tbaa !43
  %i.hx = sext i32 %i.hu to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hx
  store i32 %i.hk, ptr %i.hy, align 4, !tbaa !8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 3 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !43 ; 7 uses
  %i.ib = load i32, ptr %i.ht, align 8, !tbaa !45
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.bl, label %Vec_IntPush.exit126

bb.bl:                                            ; preds = %Vec_IntPush.exit118
  %i.id = icmp slt i32 %i.ia, 16
  br i1 %i.id, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i124 = icmp eq ptr %i.if, null
  br i1 %.not9.i.i124, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ig = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.if, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i125

bb.bo:                                            ; preds = %bb.bm
  %i.ih = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i125

Vec_IntGrow.exit.i125:                            ; preds = %bb.bo, %bb.bn
  %i.ii = phi ptr [ %i.ig, %bb.bn ], [ %i.ih, %bb.bo ]
  store ptr %i.ii, ptr %i.ie, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i122

bb.bp:                                            ; preds = %bb.bl
  %i.ij = icmp samesign ult i32 %i.ia, 1073741823
  %i.ik = shl nuw nsw i32 %i.ia, 1
  %spec.select.i119 = select i1 %i.ij, i32 %i.ik, i32 2147483647 ; 3 uses
  %.not.i9.i120 = icmp samesign ult i32 %i.ia, %spec.select.i119
  br i1 %.not.i9.i120, label %bb.bq, label %Vec_IntPush.exit126

bb.bq:                                            ; preds = %bb.bp
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i121 = icmp eq ptr %i.im, null
  %i.in = zext nneg i32 %spec.select.i119 to i64
  %i.io = shl nuw nsw i64 %i.in, 2                ; 2 uses
  br i1 %.not9.i10.i121, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
end_hunk_0
