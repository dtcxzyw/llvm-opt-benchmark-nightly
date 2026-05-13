inline.NumInlined: 24
inline.NumDeleted: 3
begin_hunk_0_@CompressSpareMBMap:bb.a
bb.z:                                             ; preds = %bb.y
  %i.bg = icmp slt i32 %.1119131, %.1110134
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bh = add nsw i32 %.1119131, 1
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.bi = load ptr, ptr @img, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93
  %i.bl = sdiv i32 %i.bk, 16
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = icmp eq i32 %.1119131, %i.bm
  br i1 %i.bn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bo = add nsw i32 %.1113133, 1                ; 2 uses
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bp = icmp eq i32 %.1119131, %.1110134
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = add nsw i32 %.1110134, 1                ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.h, %bb.j, %bb.i, %bb.f, %bb.v, %bb.x, %bb.w, %bb.t, %bb.aa, %bb.ad, %bb.ae, %bb.ac, %bb.y, %bb.m, %bb.p, %bb.q, %bb.o
  %.2123 = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.h ], [ %i.ak, %bb.j ], [ %.1122130, %bb.i ], [ %i.an, %bb.m ], [ %.1122130, %bb.o ], [ %i.aw, %bb.q ], [ %.1122130, %bb.p ], [ %.1122130, %bb.t ], [ %i.bc, %bb.v ], [ %.1122130, %bb.x ], [ %.1122130, %bb.w ], [ %.1122130, %bb.aa ], [ %i.bo, %bb.ac ], [ %.1122130, %bb.ae ], [ %.1122130, %bb.ad ], [ %.1122130, %bb.y ] ; 2 uses
  %.2120 = phi i32 [ %.1119131, %bb.f ], [ %i.ai, %bb.h ], [ %.1119131, %bb.j ], [ %.1119131, %bb.i ], [ %.1119131, %bb.m ], [ %i.au, %bb.o ], [ %.1119131, %bb.q ], [ %.1119131, %bb.p ], [ %i.ba, %bb.t ], [ 0, %bb.v ], [ %i.be, %bb.x ], [ %.1119131, %bb.w ], [ %i.bh, %bb.aa ], [ %.1119131, %bb.ac ], [ %i.bq, %bb.ae ], [ %.1119131, %bb.ad ], [ %.1119131, %bb.y ] ; 2 uses
  %.2117 = phi i32 [ %.1116132, %bb.f ], [ %.1116132, %bb.h ], [ %i.ak, %bb.j ], [ %.1116132, %bb.i ], [ %.1116132, %bb.m ], [ %.1116132, %bb.o ], [ %.1116132, %bb.q ], [ %.1116132, %bb.p ], [ %.1116132, %bb.t ], [ %i.bc, %bb.v ], [ %.1116132, %bb.x ], [ %.1116132, %bb.w ], [ %.1116132, %bb.aa ], [ %.1116132, %bb.ac ], [ %.1116132, %bb.ae ], [ %.1116132, %bb.ad ], [ %.1116132, %bb.y ] ; 2 uses
  %.2114 = phi i32 [ %.1113133, %bb.f ], [ %.1113133, %bb.h ], [ %.1113133, %bb.j ], [ %.1113133, %bb.i ], [ %.1113133, %bb.m ], [ %.1113133, %bb.o ], [ %i.aw, %bb.q ], [ %.1113133, %bb.p ], [ %.1113133, %bb.t ], [ %.1113133, %bb.v ], [ %.1113133, %bb.x ], [ %.1113133, %bb.w ], [ %.1113133, %bb.aa ], [ %i.bo, %bb.ac ], [ %.1113133, %bb.ae ], [ %.1113133, %bb.ad ], [ %.1113133, %bb.y ] ; 2 uses
  %.2111 = phi i32 [ %.1110134, %bb.f ], [ %i.ai, %bb.h ], [ %.1110134, %bb.j ], [ %.1110134, %bb.i ], [ %.1110134, %bb.m ], [ %.1110134, %bb.o ], [ %.1110134, %bb.q ], [ %.1110134, %bb.p ], [ %.1110134, %bb.t ], [ %.1110134, %bb.v ], [ %.1110134, %bb.x ], [ %.1110134, %bb.w ], [ %.1110134, %bb.aa ], [ %.1110134, %bb.ac ], [ %i.bq, %bb.ae ], [ %.1110134, %bb.ad ], [ %.1110134, %bb.y ] ; 2 uses
  %.2108 = phi i32 [ %.1107135, %bb.f ], [ %.1107135, %bb.h ], [ %.1107135, %bb.j ], [ %.1107135, %bb.i ], [ %.1107135, %bb.m ], [ %i.au, %bb.o ], [ %.1107135, %bb.q ], [ %.1107135, %bb.p ], [ %.1107135, %bb.t ], [ %.1107135, %bb.v ], [ %i.be, %bb.x ], [ %.1107135, %bb.w ], [ %.1107135, %bb.aa ], [ %.1107135, %bb.ac ], [ %.1107135, %bb.ae ], [ %.1107135, %bb.ad ], [ %.1107135, %bb.y ] ; 2 uses
  %.2105 = phi i32 [ -1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ -1, %bb.i ], [ 1, %bb.m ], [ -1, %bb.o ], [ 0, %bb.q ], [ 1, %bb.p ], [ 0, %bb.t ], [ 0, %bb.v ], [ -1, %bb.x ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 1, %bb.ae ], [ 0, %bb.ad ], [ %.1104136, %bb.y ] ; 2 uses
  %.2102 = phi i32 [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.o ], [ -1, %bb.q ], [ 0, %bb.p ], [ -1, %bb.t ], [ 1, %bb.v ], [ 0, %bb.x ], [ -1, %bb.w ], [ 1, %bb.aa ], [ -1, %bb.ac ], [ 0, %bb.ae ], [ 1, %bb.ad ], [ %.1101137, %bb.y ] ; 2 uses
  %i.br = add nuw nsw i32 %.098138, 1             ; 2 uses
  %i.bs = load ptr, ptr @img, align 8, !tbaa !25  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !94
  %i.bv = sdiv i32 %i.bu, 16
  %i.bw = icmp slt i32 %i.br, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.af, %.preheader128
  %i.bx = phi ptr [ %i.p, %.preheader128 ], [ %i.bs, %bb.af ] ; 2 uses
  %.1125.lcssa = phi i32 [ %.0124149, %.preheader128 ], [ %.2126, %bb.af ] ; 3 uses
  %.1122.lcssa = phi i32 [ %.0121150, %.preheader128 ], [ %.2123, %bb.af ]
  %.1119.lcssa = phi i32 [ %.0118151, %.preheader128 ], [ %.2120, %bb.af ]
  %.1116.lcssa = phi i32 [ %.0115152, %.preheader128 ], [ %.2117, %bb.af ]
  %.1113.lcssa = phi i32 [ %.0112153, %.preheader128 ], [ %.2114, %bb.af ]
  %.1110.lcssa = phi i32 [ %.0109154, %.preheader128 ], [ %.2111, %bb.af ]
  %.1107.lcssa = phi i32 [ %.0106155, %.preheader128 ], [ %.2108, %bb.af ]
  %.1104.lcssa = phi i32 [ %.0103156, %.preheader128 ], [ %.2105, %bb.af ]
  %.1101.lcssa = phi i32 [ %.0100157, %.preheader128 ], [ %.2102, %bb.af ]
  %.197.lcssa = phi i32 [ %.096158, %.preheader128 ], [ %.2, %bb.af ] ; 3 uses
  %i.by = add nuw nsw i32 %.0159, 1               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 68
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !93
  %i.cb = sdiv i32 %i.ca, 16
  %i.cc = icmp slt i32 %i.by, %i.cb
  br i1 %i.cc, label %.preheader128, label %._crit_edge160, !llvm.loop !97

._crit_edge160:                                   ; preds = %._crit_edge
  %.not = icmp eq i32 %.1125.lcssa, 0
  br i1 %.not, label %._crit_edge160.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge160
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.1125.lcssa, ptr %i.cd, align 4, !tbaa !92
  %i.ce = call i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %2, ptr noundef %1) #18
  %i.cf = add nsw i32 %i.ce, %.197.lcssa
  br label %._crit_edge160.thread

._crit_edge160.thread:                            ; preds = %bb.a, %bb.ag, %._crit_edge160
  %.3 = phi i32 [ %i.cf, %bb.ag ], [ %.197.lcssa, %._crit_edge160 ], [ 0, %bb.a ]
  %i.cg = icmp slt i32 %.3, %i.h                  ; 2 uses
  br i1 %i.cg, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge160.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 8, ptr %i.ci, align 4, !tbaa !21
  store i32 0, ptr %1, align 8, !tbaa !22
  %i.cj = load ptr, ptr @img, align 8, !tbaa !25  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !93
  %i.cm = icmp sgt i32 %i.cl, 15
  br i1 %i.cm, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge165
  %i.co = phi ptr [ %i.cj, %.preheader.lr.ph ], [ %i.dt, %._crit_edge165 ] ; 4 uses
  %i.cp = phi i8 [ 0, %.preheader.lr.ph ], [ %i.du, %._crit_edge165 ] ; 2 uses
  %indvars.iv168 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next169, %._crit_edge165 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !94
  %i.cs = icmp sgt i32 %i.cr, 15
  br i1 %i.cs, label %.lr.ph164, label %._crit_edge165

.lr.ph164:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv168
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph164, %bb.am
  %i.cu = phi ptr [ %i.co, %.lr.ph164 ], [ %i.dl, %bb.am ]
  %i.cv = phi ptr [ %i.co, %.lr.ph164 ], [ %i.dm, %bb.am ]
  %i.cw = phi i8 [ %i.cp, %.lr.ph164 ], [ %i.dn, %bb.am ]
  %indvars.iv = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %i.cx = shl i8 %i.cw, 1                         ; 3 uses
  store i8 %i.cx, ptr %i.ch, align 8, !tbaa !23
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !80
  %.not127 = icmp eq i8 %i.da, 0
  br i1 %.not127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = or disjoint i8 %i.cx, 1                 ; 2 uses
  store i8 %i.db, ptr %i.ch, align 8, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dc = phi i8 [ %i.db, %bb.aj ], [ %i.cx, %bb.ai ] ; 2 uses
  %i.dd = load i32, ptr %i.ci, align 4, !tbaa !21
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.ci, align 4, !tbaa !21
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 8, ptr %i.ci, align 4, !tbaa !21
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !19
  %i.dh = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %1, align 8, !tbaa !22
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj
  store i8 %i.dc, ptr %i.dk, align 1, !tbaa !80
  store i8 0, ptr %i.ch, align 8, !tbaa !23
  %.pre = load ptr, ptr @img, align 8, !tbaa !25  ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.dl = phi ptr [ %i.cu, %bb.ak ], [ %.pre, %bb.al ] ; 2 uses
  %i.dm = phi ptr [ %i.cv, %bb.ak ], [ %.pre, %bb.al ] ; 2 uses
  %i.dn = phi i8 [ %i.dc, %bb.ak ], [ 0, %bb.al ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !94
  %i.dq = sdiv i32 %i.dp, 16
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.ai, label %._crit_edge165, !llvm.loop !98

._crit_edge165:                                   ; preds = %bb.am, %.preheader
  %i.dt = phi ptr [ %i.co, %.preheader ], [ %i.dl, %bb.am ] ; 2 uses
  %i.du = phi i8 [ %i.cp, %.preheader ], [ %i.dn, %bb.am ]
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 68
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !93
  %i.dx = sdiv i32 %i.dw, 16
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next169, %i.dy
  br i1 %i.dz, label %.preheader, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %._crit_edge165, %bb.ah, %._crit_edge160.thread
  %i.ea = zext i1 %i.cg to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.ea
}

; Function Attrs: nounwind uwtable
define dso_local void @FinalizeSpareMBMap() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.syntaxelement, align 8      ; 7 uses
  %i.a = load ptr, ptr @img, align 8, !tbaa !25
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = srem i32 %i.b, 256
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store i32 0, ptr %0, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ue_linfo, ptr %i.d, align 8, !tbaa !91
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15 ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #17 ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #17 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 8, ptr %i.k, align 4, !tbaa !21
  store i32 0, ptr %i.f, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %i.h, i8 0, i64 65496, i1 false)
  %i.m = load i32, ptr @seiSparePicturePayload, align 8, !tbaa !71
  %i.n = sub nsw i32 %i.c, %i.m                   ; 2 uses
  %i.o = lshr i32 %i.n, 23
  %i.p = and i32 %i.o, 256
  %spec.select = add nsw i32 %i.p, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %spec.select, ptr %i.q, align 4, !tbaa !92
  %i.r = call i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #18 ; 0 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @seiSparePicturePayload, i64 4), align 4, !tbaa !70
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !92
  %i.u = call i32 @writeSyntaxElement2Buf_UVLC(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #18 ; 0 uses
  call void @AppendTmpbits2Buf(ptr noundef nonnull %i.f, ptr noundef %i.e)
  %i.v = load i32, ptr %i.k, align 4, !tbaa !21   ; 2 uses
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.l, align 8, !tbaa !23
  %i.x = shl i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 1                   ; 2 uses
  %i.z = add nsw i32 %i.v, -1                     ; 2 uses
  %.not32 = icmp eq i32 %i.z, 0
  %i.aa = zext i8 %i.y to i32
  %i.ab = shl i32 %i.aa, %i.z
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = select i1 %.not32, i8 %i.y, i8 %i.ac
  store i32 8, ptr %i.k, align 4, !tbaa !21
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.af = load i32, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !22
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  store i8 %i.ad, ptr %i.ai, align 1, !tbaa !80
  store i8 0, ptr %i.l, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !22
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @seiSparePicturePayload, i64 8), align 8, !tbaa !100
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @seiSparePicturePayload, i64 16), align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  call void @free(ptr noundef %i.al) #18
  call void @free(ptr noundef %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @InitSubseqInfo(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr @seiHasSubseqInfo, align 4, !tbaa !4
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @seiSubseqInfo, i64 %i.a ; 6 uses
  store i32 %0, ptr %i.b, align 16, !tbaa !101
  %i.c = load i16, ptr @InitSubseqInfo.id, align 2, !tbaa !102 ; 2 uses
  %i.d = add i16 %i.c, 1
  store i16 %i.d, ptr @InitSubseqInfo.id, align 2, !tbaa !102
  %i.e = zext i16 %i.c to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 -1, ptr %i.h, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.i, align 16, !tbaa !105
  %i.j = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #17 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !106
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.n = tail call noalias dereferenceable_or_null(65496) ptr @malloc(i64 noundef 65496) #17 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  %.pre14 = load ptr, ptr %i.k, align 8, !tbaa !106 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre14, i64 32
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre15, %bb.d ], [ %i.n, %bb.c ]
  %i.r = phi ptr [ %.pre14, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 8, ptr %i.s, align 4, !tbaa !21
  store i32 0, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 0, ptr %i.t, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65496) %i.q, i8 0, i64 65496, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UpdateSubseqInfo(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !25   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [32 x i8], ptr @seiSubseqInfo, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104
  %i.h = add i32 %i.g, 1
  %i.i = and i32 %i.h, 255
  store i32 %i.i, ptr %i.f, align 4, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %0, label %bb.m [
    i32 0, label %bb.d
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8, !tbaa !79
  %i.k = load ptr, ptr @input, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !107
  %i.n = add nsw i32 %i.m, -1
  %i.o = icmp eq i32 %i.j, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @seiSubseqInfo, i64 8), align 8, !tbaa !103
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @seiSubseqInfo, i64 8), align 8, !tbaa !103
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.a, align 8, !tbaa !79
  %i.q = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.r = sub nsw i32 %i.p, %i.q                   ; 2 uses
  %i.s = load ptr, ptr @input, align 8, !tbaa !25 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4736
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  %i.w = srem i32 %i.r, %i.v                      ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2096
  %i.z = load i32, ptr %i.y, align 8, !tbaa !108
  %.not9 = icmp ne i32 %i.z, 0
  %i.aa = icmp sgt i32 %i.r, 0
  %or.cond = and i1 %i.aa, %.not9
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = icmp eq i32 %i.w, %i.u
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 2096
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !108
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.j
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @seiSubseqInfo, i64 40), align 8, !tbaa !103
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @seiSubseqInfo, i64 40), align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FinalizeSubseqInfo(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.syntaxelement, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @seiSubseqInfo, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 10 uses
end_hunk_0
