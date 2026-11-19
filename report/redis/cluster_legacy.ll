Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clusterGenNodeDescription:bb.a
  %i.br = tail call ptr @sdscatlen(ptr noundef %.4, ptr noundef nonnull @.str.165, i64 noundef 1) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !429
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = tail call ptr @representClusterNodeFlags(ptr noundef %i.br, i16 noundef zeroext %i.bu)
  %i.bw = tail call ptr @sdscatlen(ptr noundef %i.bv, ptr noundef nonnull @.str.165, i64 noundef 1) #30 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2184 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !413 ; 2 uses
  %.not103 = icmp eq ptr %i.by, null
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = tail call ptr @sdscatlen(ptr noundef %i.bw, ptr noundef nonnull %i.bz, i64 noundef 40) #30
  br label %bb.x

bb.w:                                             ; preds = %.loopexit124
  %i.cb = tail call ptr @sdscatlen(ptr noundef %i.bw, ptr noundef nonnull @.str.166, i64 noundef 1) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5 = phi ptr [ %i.ca, %bb.v ], [ %i.cb, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !433 ; 2 uses
  %i.ce = load i32, ptr %i.bs, align 8, !tbaa !429 ; 2 uses
  %i.cf = and i32 %i.ce, 2
  %.not104 = icmp eq i32 %i.cf, 0
  br i1 %.not104, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !413 ; 2 uses
  %.not105 = icmp eq ptr %i.cg, null
  br i1 %.not105, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !433
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0 = phi i64 [ %i.ci, %bb.z ], [ %i.cd, %bb.y ], [ %i.cd, %bb.x ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !431
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !432
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !487
  %.not106 = icmp eq ptr %i.co, null
  %i.cp = and i32 %i.ce, 16
  %.not107 = icmp eq i32 %i.cp, 0
  %i.cq = and i1 %.not107, %.not106
  %i.cr = select i1 %i.cq, ptr @.str.169, ptr @.str.168
  %i.cs = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.5, ptr noundef nonnull @.str.167, i64 noundef %i.ck, i64 noundef %i.cm, i64 noundef %.0, ptr noundef nonnull %i.cr) #30 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2152
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !442 ; 2 uses
  %.not108 = icmp eq ptr %i.cu, null
  br i1 %.not108, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !443 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i, label %representSlotInfo.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %bb.ab ] ; 2 uses
  %.01418.i = phi ptr [ %.1.i, %bb.ae ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !409 ; 2 uses
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !409 ; 2 uses
  %i.dd = icmp eq i16 %i.cz, %i.dc
  br i1 %i.dd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.de = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418.i, ptr noundef nonnull @.str.160, i64 noundef %i.da) #30
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i
  %i.df = zext i16 %i.dc to i64
  %i.dg = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418.i, ptr noundef nonnull @.str.161, i64 noundef %i.da, i64 noundef %i.df) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i = phi ptr [ %i.de, %bb.ac ], [ %i.dg, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dh = trunc nuw i64 %indvars.iv.next.i to i32
  %i.di = icmp sgt i32 %i.cw, %i.dh
  br i1 %i.di, label %.lr.ph.i, label %representSlotInfo.exit, !llvm.loop !16

bb.af:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 2164
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !474
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader122, label %representSlotInfo.exit

.preheader122:                                    ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader122, %bb.al
  %.6129 = phi ptr [ %i.cs, %.preheader122 ], [ %.8, %bb.al ] ; 4 uses
  %.090128 = phi i32 [ -1, %.preheader122 ], [ %.292, %bb.al ] ; 2 uses
  %.093127 = phi i32 [ 0, %.preheader122 ], [ %i.ed, %bb.al ] ; 7 uses
  %i.dn = sdiv i32 %.093127, 8
  %i.do = sext i32 %i.dn to i64
  %i.dp = and i32 %.093127, 7
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !407
  %i.ds = zext i8 %i.dr to i32
  %i.dt = lshr i32 %i.ds, %i.dp                   ; 2 uses
  %i.du = trunc i32 %i.dt to i1                   ; 2 uses
  %i.dv = icmp eq i32 %.090128, -1
  %or.cond9 = and i1 %i.dv, %i.du
  %spec.select = select i1 %or.cond9, i32 %.093127, i32 %.090128 ; 5 uses
  %.not109 = icmp eq i32 %spec.select, -1
  br i1 %.not109, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = and i32 %i.dt, 1
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = icmp eq i32 %.093127, 16383             ; 2 uses
  %or.cond5 = or i1 %i.dy, %i.dx
  br i1 %or.cond5, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %or.cond7 = and i1 %i.dy, %i.du
  %spec.select114 = select i1 %or.cond7, i32 16384, i32 %.093127 ; 3 uses
  %i.dz = add nsw i32 %spec.select114, -1         ; 2 uses
  %i.ea = icmp eq i32 %spec.select, %i.dz
  br i1 %i.ea, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eb = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.6129, ptr noundef nonnull @.str.160, i32 noundef %spec.select) #30
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ec = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.6129, ptr noundef nonnull @.str.161, i32 noundef %spec.select, i32 noundef %i.dz) #30
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.ag
  %.295 = phi i32 [ %.093127, %bb.ag ], [ %.093127, %bb.ah ], [ %spec.select114, %bb.ak ], [ %spec.select114, %bb.aj ] ; 2 uses
  %.292 = phi i32 [ -1, %bb.ag ], [ %spec.select, %bb.ah ], [ -1, %bb.ak ], [ -1, %bb.aj ]
  %.8 = phi ptr [ %.6129, %bb.ag ], [ %.6129, %bb.ah ], [ %i.ec, %bb.ak ], [ %i.eb, %bb.aj ] ; 2 uses
  %i.ed = add nsw i32 %.295, 1
  %i.ee = icmp slt i32 %.295, 16383
  br i1 %i.ee, label %bb.ag, label %representSlotInfo.exit, !llvm.loop !788

representSlotInfo.exit:                           ; preds = %bb.ae, %bb.al, %bb.ab, %bb.af
  %.9 = phi ptr [ %i.cs, %bb.af ], [ %.8, %bb.al ], [ %i.cs, %bb.ab ], [ %.1.i, %bb.ae ] ; 2 uses
  %i.ef = load i32, ptr %i.bs, align 8, !tbaa !429
  %i.eg = and i32 %i.ef, 16
  %.not110 = icmp eq i32 %i.eg, 0
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %representSlotInfo.exit, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %representSlotInfo.exit ] ; 4 uses
  %.10131 = phi ptr [ %.11, %bb.an ], [ %.9, %representSlotInfo.exit ] ; 2 uses
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !404 ; 2 uses
  %.not111 = icmp eq ptr %i.ek, null
  br i1 %.not111, label %bb.am, label %.sink.split

bb.am:                                            ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 131120
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !404 ; 2 uses
  %.not112 = icmp eq ptr %i.en, null
  br i1 %.not112, label %bb.an, label %.sink.split

.sink.split:                                      ; preds = %bb.am, %.preheader
  %.sink = phi ptr [ %i.ek, %.preheader ], [ %i.en, %bb.am ]
  %.str.170.sink = phi ptr [ @.str.170, %.preheader ], [ @.str.171, %bb.am ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.ep = trunc nuw nsw i64 %indvars.iv to i32
  %i.eq = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.10131, ptr noundef nonnull %.str.170.sink, i32 noundef %i.ep, ptr noundef nonnull %i.eo) #30
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.am
  %.11 = phi ptr [ %.10131, %bb.am ], [ %i.eq, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !789

.loopexit:                                        ; preds = %bb.an, %representSlotInfo.exit
  %.12 = phi ptr [ %.9, %representSlotInfo.exit ], [ %.11, %bb.an ]
  ret ptr %.12
}

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterGenNodesSlotsInfo(i32 noundef %0) local_unnamed_addr #3 !guid !794 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.025 = phi ptr [ null, %bb.a ], [ %.126, %bb.m ] ; 8 uses
  %.024 = phi i32 [ -1, %bb.a ], [ %.1, %bb.m ]   ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %4, %bb.m ]       ; 6 uses
  %1 = icmp eq ptr %.025, null
  %i.a = icmp eq i32 %.0, 16384                   ; 3 uses
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.n, label %.sink.split

bb.d:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 262192
  %2 = zext nneg i32 %.0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %2
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !404
  %.not = icmp eq ptr %.025, %i.e
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.025, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !429
  %i.h = and i32 %i.g, %0
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.025, i64 2152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !442  ; 2 uses
  %.not29 = icmp eq ptr %i.j, null
  br i1 %.not29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.025, i64 2164
  %i.l = load i32, ptr %i.k, align 4, !tbaa !474
  %i.m = shl nsw i32 %i.l, 1
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = tail call noalias ptr @zmalloc(i64 noundef %i.o) #35 ; 2 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !442
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.p, %bb.h ], [ %i.j, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.025, i64 2160 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !443  ; 3 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.025, i64 2164
  %i.v = load i32, ptr %i.u, align 4, !tbaa !474
  %i.w = shl nsw i32 %i.v, 1
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %bb.k, label %bb.j, !prof !418

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.18, i32 noundef 5491) #30
  tail call void @abort() #32
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = trunc i32 %.024 to i16
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.z
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !409
  %i.ab = trunc nuw nsw i32 %.0 to i16
  %i.ac = add nsw i16 %i.ab, -1
  %i.ad = add nsw i32 %i.s, 2
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !443
  %i.ae = sext i32 %i.t to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ae
  store i16 %i.ac, ptr %i.af, align 2, !tbaa !409
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  br i1 %i.a, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.c
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 262192
  %3 = zext nneg i32 %.0 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %3
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !404
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %.126 = phi ptr [ %.025, %bb.e ], [ %i.aj, %.sink.split ]
  %.1 = phi i32 [ %.024, %bb.e ], [ %.0, %.sink.split ]
  %4 = add nuw nsw i32 %.0, 1
  br label %bb.b, !llvm.loop !793

bb.n:                                             ; preds = %bb.l, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterFreeNodesSlotsInfo(ptr nofree noundef captures(none) initializes((2160, 2164)) %0) local_unnamed_addr #3 !guid !795 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442
  tail call void @zfree(ptr noundef %i.b) #30
  store ptr null, ptr %i.a, align 8, !tbaa !442
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2160
  store i32 0, ptr %i.c, align 8, !tbaa !443
  ret void
}

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyClusterLinkDescription(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 !guid !796 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 6) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.174) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !486
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, ptr @.str.176, ptr @.str.175
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.d) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !485  ; 2 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %bb.b, label %bb.c, !prof !434

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.18, i32 noundef 5559) #30
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call ptr @sdsnewlen(ptr noundef nonnull %i.g, i64 noundef 40) #30 ; 2 uses
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.178) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.h) #30
  tail call void @sdsfree(ptr noundef %i.h) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.179) #30
  %i.i = load i64, ptr %1, align 8, !tbaa !476
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !484  ; 3 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 64
  %.val = load ptr, ptr %i.l, align 8, !tbaa !797
  %.not34 = icmp eq ptr %.val, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 114, ptr %i.a, align 1, !tbaa !407
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.a, %bb.d ]  ; 3 uses
  %i.n = getelementptr i8, ptr %i.k, i64 56
  %.val33 = load ptr, ptr %i.n, align 8, !tbaa !798
  %.not35 = icmp eq ptr %.val33, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 119, ptr %.0, align 1, !tbaa !407
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.1 = phi ptr [ %i.o, %bb.g ], [ %.0, %bb.f ], [ %i.a, %bb.c ]
  store i8 0, ptr %.1, align 1, !tbaa !407
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.180) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.a) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.181) #30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !479
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.q) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.182) #30
  %i.r = load i64, ptr %i.p, align 8, !tbaa !479
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyClusterLinksDescription(ptr noundef %0) local_unnamed_addr #3 !guid !800 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = tail call ptr @addReplyDeferredLen(ptr noundef %0) #30
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !423
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.d) #30
  %i.e = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.n, %bb.e ], [ %i.e, %bb.a ]
  %.018 = phi i32 [ %.2, %bb.e ], [ 0, %bb.a ]    ; 2 uses
  %i.g = call ptr @dictGetVal(ptr noundef nonnull %i.f) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487  ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nsw i32 %.018, 1
  call void @addReplyClusterLinkDescription(ptr noundef %0, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.j, %bb.b ], [ %.018, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !488  ; 2 uses
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.1, 1
  call void @addReplyClusterLinkDescription(ptr noundef %0, ptr noundef nonnull %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ %i.m, %bb.d ], [ %.1, %bb.c ]   ; 2 uses
  %i.n = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !799

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.o = sext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  call void @dictResetIterator(ptr noundef nonnull %1) #30
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef %i.a, i64 noundef %.0.lcssa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @checkSlotAssignmentsOrReply(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !801 {
bb.a:
  %.not22 = icmp sgt i32 %3, %4
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not17 = icmp eq i32 %2, 0
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = add i32 %4, 1                            ; 2 uses
  br i1 %.not17, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %bb.c
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.c ], [ %i.a, %.lr.ph ] ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 262192
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv34
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !404
  %.not18.us = icmp eq ptr %i.f, null
  br i1 %.not18.us, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %.critedge.us
  %i.g = getelementptr inbounds i8, ptr %1, i64 %indvars.iv34 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !407   ; 2 uses
  %i.i = add i8 %i.h, 1
  store i8 %i.i, ptr %i.g, align 1, !tbaa !407
  %i.j = icmp eq i8 %i.h, 1
  br i1 %i.j, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %lftr.wideiv37 = trunc i64 %indvars.iv.next35 to i32
  %exitcond38.not = icmp eq i32 %i.b, %lftr.wideiv37
  br i1 %exitcond38.not, label %.loopexit, label %.critedge.us, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.a, %.lr.ph ] ; 5 uses
end_hunk_0
