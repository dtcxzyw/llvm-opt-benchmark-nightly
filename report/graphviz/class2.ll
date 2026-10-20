Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/class2?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@merge_chain:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %2, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 210 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 212 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.0.us = phi ptr [ %i.br, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.us, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 224 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !43
  %i.ae = add i16 %i.ad, %i.z
  store i16 %i.ae, ptr %i.ac, align 8, !tbaa !43
  %i.af = load i16, ptr %i.w, align 2, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 210 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !44
  %i.ai = add i16 %i.ah, %i.af
  store i16 %i.ai, ptr %i.ag, align 2, !tbaa !44
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 212 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !45
  %i.an = load i32, ptr %.0.us, align 8
  %i.ao = and i32 %i.an, 3
  %i.ap = icmp eq i32 %i.ao, 2
  %i.aq = getelementptr inbounds i8, ptr %.0.us, i64 -64 ; 2 uses
  %i.ar = select i1 %i.ap, ptr %.0.us, ptr %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 360
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.ay = icmp eq i32 %i.ax, %.
  br i1 %i.ay, label %.split38.us, label %bb.b

bb.b:                                             ; preds = %.split.us
  %.val.us = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.az = getelementptr i8, ptr %.val.us, i64 352
  %.val.val.us = load i32, ptr %i.az, align 8, !tbaa !56
  %i.ba = sdiv i32 %.val.val.us, 2
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 2 uses
  %i.bd = load <2 x double>, ptr %i.bc, align 8, !tbaa !57
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  store <2 x double> %i.bg, ptr %i.bc, align 8, !tbaa !57
  %i.bh = load i32, ptr %.0.us, align 8
  %i.bi = and i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.bi, 2
  %i.bk = select i1 %i.bj, ptr %.0.us, ptr %i.aq
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 2 uses
  %.not.us = icmp eq ptr %i.br, null
  br i1 %.not.us, label %.split38.us, label %.split.us, !llvm.loop !0

.split:                                           ; preds = %bb.a, %bb.c
  %.0 = phi ptr [ %i.dg, %bb.c ], [ %2, %bb.a ]   ; 6 uses
  %i.bs = load i16, ptr %i.w, align 2, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 210 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !44
  %i.bx = add i16 %i.bw, %i.bs
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !44
  %i.by = load i32, ptr %i.x, align 4, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 212 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45
  %i.cb = add nsw i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !45
  %i.cc = load i32, ptr %.0, align 8
  %i.cd = and i32 %i.cc, 3
  %i.ce = icmp eq i32 %i.cd, 2
  %i.cf = getelementptr inbounds i8, ptr %.0, i64 -64 ; 2 uses
  %i.cg = select i1 %i.ce, ptr %.0, ptr %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !19 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 360
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !35
  %i.cn = icmp eq i32 %i.cm, %.
  br i1 %i.cn, label %.split38.us, label %bb.c

bb.c:                                             ; preds = %.split
  %.val = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.co = getelementptr i8, ptr %.val, i64 352
  %.val.val = load i32, ptr %i.co, align 8, !tbaa !56
  %i.cp = sdiv i32 %.val.val, 2
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 104 ; 2 uses
  %i.cs = load <2 x double>, ptr %i.cr, align 8, !tbaa !57
  %i.ct = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fadd <2 x double> %i.cs, %i.cu
  store <2 x double> %i.cv, ptr %i.cr, align 8, !tbaa !57
  %i.cw = load i32, ptr %.0, align 8
  %i.cx = and i32 %i.cw, 3
  %i.cy = icmp eq i32 %i.cx, 2
  %i.cz = select i1 %i.cy, ptr %.0, ptr %i.cf
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 272
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %.split38.us, label %.split, !llvm.loop !0

.split38.us:                                      ; preds = %bb.c, %.split, %.split.us, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @mergeable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 3
  %i.f = select i1 %i.e, i64 56, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load i32, ptr %1, align 8
  %i.j = and i32 %i.i, 3                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 3
  %i.l = select i1 %i.k, i64 56, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = icmp eq ptr %i.h, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.d, 2
  %i.q = select i1 %i.p, i64 56, i64 -8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = icmp eq i32 %i.j, 2
  %i.u = select i1 %i.t, i64 56, i64 -8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq ptr %i.s, %i.w
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = icmp eq ptr %i.ab, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @ports_eq(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  %i.ai = icmp ne i32 %i.ah, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.aj = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ai, %bb.e ], [ false, %bb.a ]
  ret i1 %i.aj
}

declare i32 @ports_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @class2(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr null, ptr %i.c, align 8, !tbaa !69
  tail call void @mark_clusters(ptr noundef %0) #9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %.not239 = icmp slt i32 %i.f, 1
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.l, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void @build_skeleton(ptr noundef nonnull %0, ptr noundef %i.k) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %1 = sext i32 %i.n to i64
  %.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = tail call ptr @agfstnode(ptr noundef nonnull %0) #9 ; 2 uses
  %.not211246 = icmp eq ptr %i.o, null
  br i1 %.not211246, label %._crit_edge250, label %.lr.ph249

.lr.ph249:                                        ; preds = %._crit_edge, %._crit_edge245
  %.0199247 = phi ptr [ %i.an, %._crit_edge245 ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.p = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.0199247) #9 ; 2 uses
  %.not224241 = icmp eq ptr %i.p, null
  br i1 %.not224241, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph249, %bb.e
  %.0197242 = phi ptr [ %i.am, %bb.e ], [ %i.p, %.lr.ph249 ] ; 5 uses
  %i.q = load i32, ptr %.0197242, align 8
  %i.r = and i32 %i.q, 3                          ; 2 uses
  %i.s = icmp eq i32 %i.r, 2
  %i.t = select i1 %i.s, i64 56, i64 -8
  %i.u = getelementptr inbounds i8, ptr %.0197242, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 234 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !73    ; 2 uses
  %i.aa = icmp slt i8 %i.z, 3
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph244
  %i.ab = add nsw i8 %i.z, 1
  store i8 %i.ab, ptr %i.y, align 2, !tbaa !73
  %.pre = load i32, ptr %.0197242, align 8
  %.pre276 = and i32 %.pre, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph244
  %.pre-phi277 = phi i32 [ %.pre276, %bb.b ], [ %i.r, %.lr.ph244 ]
  %i.ac = icmp eq i32 %.pre-phi277, 3
  %i.ad = select i1 %i.ac, i64 56, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %.0197242, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 234 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !73  ; 2 uses
  %i.ak = icmp slt i8 %i.aj, 3
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = add nsw i8 %i.aj, 1
  store i8 %i.al, ptr %i.ai, align 2, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.0197242) #9 ; 2 uses
  %.not224 = icmp eq ptr %i.am, null
  br i1 %.not224, label %._crit_edge245, label %.lr.ph244, !llvm.loop !63

._crit_edge245:                                   ; preds = %bb.e, %.lr.ph249
  %i.an = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.0199247) #9 ; 2 uses
  %.not211 = icmp eq ptr %i.an, null
  br i1 %.not211, label %._crit_edge250, label %.lr.ph249, !llvm.loop !64

._crit_edge250:                                   ; preds = %._crit_edge245, %._crit_edge
  %i.ao = tail call ptr @agfstnode(ptr noundef nonnull %0) #9 ; 2 uses
  %.not212262 = icmp eq ptr %i.ao, null
  br i1 %.not212262, label %._crit_edge266, label %.lr.ph265

.lr.ph265:                                        ; preds = %._crit_edge250, %._crit_edge261
  %.1200263 = phi ptr [ %i.vw, %._crit_edge261 ], [ %i.ao, %._crit_edge250 ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1200263, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph265
  %i.au = tail call ptr @UF_find(ptr noundef nonnull %.1200263) #9
  %i.av = icmp eq ptr %.1200263, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @fast_node(ptr noundef nonnull %0, ptr noundef nonnull %.1200263) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph265
  %i.aw = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.1200263) #9 ; 2 uses
  %.not214256 = icmp eq ptr %i.aw, null
  br i1 %.not214256, label %._crit_edge261, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.h, %interclrep.exit
  %.0196258 = phi ptr [ %.1, %interclrep.exit ], [ null, %bb.h ] ; 25 uses
  %.1198257 = phi ptr [ %i.vv, %interclrep.exit ], [ %i.aw, %bb.h ] ; 65 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1198257, i64 16 ; 9 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %.not215 = icmp eq ptr %i.ba, null
  br i1 %.not215, label %bb.i, label %interclrep.exit

bb.i:                                             ; preds = %.lr.ph260
  %i.bb = load i32, ptr %.1198257, align 8
  %i.bc = and i32 %i.bb, 3                        ; 12 uses
  %i.bd = icmp eq i32 %i.bc, 3
  %i.be = select i1 %i.bd, i64 56, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %.1198257, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 233
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !75
  %i.bl = icmp eq i8 %i.bk, 7
  br i1 %i.bl, label %is_cluster_edge.exit.thread, label %is_cluster_edge.exit

is_cluster_edge.exit:                             ; preds = %bb.i
  %i.bm = icmp eq i32 %i.bc, 2
  %i.bn = select i1 %i.bm, i64 56, i64 -8
  %i.bo = getelementptr inbounds i8, ptr %.1198257, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !19 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 233
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !75
  %i.bu = icmp eq i8 %i.bt, 7
  br i1 %i.bu, label %is_cluster_edge.exit.thread, label %bb.ac

is_cluster_edge.exit.thread:                      ; preds = %bb.i, %is_cluster_edge.exit
  %.not235 = icmp eq ptr %.0196258, null
  br i1 %.not235, label %mergeable.exit.thread, label %bb.j

bb.j:                                             ; preds = %is_cluster_edge.exit.thread
  %i.bv = load i32, ptr %.0196258, align 8
  %i.bw = and i32 %i.bv, 3                        ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 3
  %i.by = select i1 %i.bx, i64 56, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %.0196258, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  %i.cb = icmp eq ptr %i.ca, %i.bg
  br i1 %i.cb, label %bb.k, label %mergeable.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp eq i32 %i.bw, 2
  %i.cd = select i1 %i.cc, i64 56, i64 -8
  %i.ce = getelementptr inbounds i8, ptr %.0196258, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cg = icmp eq i32 %i.bc, 2
  %i.ch = select i1 %i.cg, i64 56, i64 -8
  %i.ci = getelementptr inbounds i8, ptr %.1198257, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = icmp eq ptr %i.cf, %i.cj
  br i1 %i.ck, label %bb.l, label %mergeable.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196258, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !61
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !61
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %mergeable.exit, label %mergeable.exit.thread

mergeable.exit:                                   ; preds = %bb.l
  %i.cs = tail call i32 @ports_eq(ptr noundef nonnull %.0196258, ptr noundef nonnull %.1198257) #9
  %.not236 = icmp eq i32 %i.cs, 0
  br i1 %.not236, label %mergeable.exit.mergeable.exit.thread_crit_edge, label %bb.m

mergeable.exit.mergeable.exit.thread_crit_edge:   ; preds = %mergeable.exit
  %.pre272 = load i32, ptr %.1198257, align 8
  %.pre273 = and i32 %.pre272, 3
  br label %mergeable.exit.thread

bb.m:                                             ; preds = %mergeable.exit
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 232
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 3 uses
  %.not223 = icmp eq ptr %i.cv, null
  %i.cw = load i32, ptr %.1198257, align 8
  %i.cx = and i32 %i.cw, 3                        ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 3
  %i.cz = select i1 %i.cy, i64 56, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %.1198257, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 360
  %i.df = load i32, ptr %i.de, align 8, !tbaa !35 ; 2 uses
  %i.dg = icmp eq i32 %i.cx, 2
  %i.dh = select i1 %i.dg, i64 56, i64 -8
  %i.di = getelementptr inbounds i8, ptr %.1198257, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 360
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !35 ; 2 uses
  br i1 %.not223, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %..i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 %i.dn)
  %i.do = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 3 uses
end_hunk_0
begin_hunk_1_@class2:bb.a
  %i.sl = load i8, ptr @Concentrate, align 1, !tbaa !79, !range !80, !noundef !81
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.sn = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 152
  store i8 6, ptr %i.so, align 8, !tbaa !78
  %i.sp = load ptr, ptr %i.rq, align 8, !tbaa !19
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 209
  store i8 1, ptr %i.sq, align 1, !tbaa !82
  br label %interclrep.exit

bb.bg:                                            ; preds = %bb.be
  tail call void @other_edge(ptr noundef nonnull %.1198257) #9
  %i.sr = load ptr, ptr %i.rq, align 8, !tbaa !19
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 232
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !42 ; 2 uses
  %i.su = load i32, ptr %.1198257, align 8
  %i.sv = and i32 %i.su, 3                        ; 2 uses
  %i.sw = icmp eq i32 %i.sv, 3
  %i.sx = select i1 %i.sw, i64 56, i64 120
  %i.sy = getelementptr inbounds nuw i8, ptr %.1198257, i64 %i.sx
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !19
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 360
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !35
  %i.te = icmp eq i32 %i.sv, 2
  %i.tf = select i1 %i.te, i64 56, i64 -8
  %i.tg = getelementptr inbounds i8, ptr %.1198257, i64 %i.tf
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !19
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 360
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !35
  %..i228 = tail call i32 @llvm.smax.i32(i32 %i.td, i32 %i.tl)
  %i.tm = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 232
  store ptr %i.st, ptr %i.tn, align 8, !tbaa !42
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 210
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 212
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 224
  br label %.split.us.i229

.split.us.i229:                                   ; preds = %bb.bh, %bb.bg
  %.0.us.i230 = phi ptr [ %i.vj, %bb.bh ], [ %i.st, %bb.bg ] ; 6 uses
  %i.tr = load i16, ptr %i.tq, align 8, !tbaa !43
  %i.ts = getelementptr inbounds nuw i8, ptr %.0.us.i230, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !19 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 224 ; 2 uses
  %i.tv = load i16, ptr %i.tu, align 8, !tbaa !43
  %i.tw = add i16 %i.tv, %i.tr
  store i16 %i.tw, ptr %i.tu, align 8, !tbaa !43
  %i.tx = load i16, ptr %i.to, align 2, !tbaa !44
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 210 ; 2 uses
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !44
  %i.ua = add i16 %i.tz, %i.tx
  store i16 %i.ua, ptr %i.ty, align 2, !tbaa !44
  %i.ub = load i32, ptr %i.tp, align 4, !tbaa !45
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tt, i64 212 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !45
  %i.ue = add nsw i32 %i.ud, %i.ub
  store i32 %i.ue, ptr %i.uc, align 4, !tbaa !45
  %i.uf = load i32, ptr %.0.us.i230, align 8
  %i.ug = and i32 %i.uf, 3
  %i.uh = icmp eq i32 %i.ug, 2
  %i.ui = getelementptr inbounds i8, ptr %.0.us.i230, i64 -64 ; 2 uses
  %i.uj = select i1 %i.uh, ptr %.0.us.i230, ptr %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !18
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !19 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 360
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !35
  %i.uq = icmp eq i32 %i.up, %..i228
  br i1 %i.uq, label %interclrep.exit, label %bb.bh

bb.bh:                                            ; preds = %.split.us.i229
  %.val.us.i231 = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ur = getelementptr i8, ptr %.val.us.i231, i64 352
  %.val.val.us.i232 = load i32, ptr %i.ur, align 8, !tbaa !56
  %i.us = sdiv i32 %.val.val.us.i232, 2
  %i.ut = sitofp i32 %i.us to double
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 104 ; 2 uses
  %i.uv = load <2 x double>, ptr %i.uu, align 8, !tbaa !57
  %i.uw = insertelement <2 x double> poison, double %i.ut, i64 0
  %i.ux = shufflevector <2 x double> %i.uw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uy = fadd <2 x double> %i.uv, %i.ux
  store <2 x double> %i.uy, ptr %i.uu, align 8, !tbaa !57
  %i.uz = load i32, ptr %.0.us.i230, align 8
  %i.va = and i32 %i.uz, 3
  %i.vb = icmp eq i32 %i.va, 2
  %i.vc = select i1 %i.vb, ptr %.0.us.i230, ptr %i.ui
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 56
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !18
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !19
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 272
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !58
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !59 ; 2 uses
  %.not.us.i233 = icmp eq ptr %i.vj, null
  br i1 %.not.us.i233, label %interclrep.exit, label %.split.us.i229, !llvm.loop !0

bb.bi:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %.lr.ph255, %bb.ax, %bb.ay
  %i.vk = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.0252) #9 ; 2 uses
  %.not220 = icmp eq ptr %i.vk, null
  br i1 %.not220, label %.critedge, label %.lr.ph255, !llvm.loop !66

.critedge:                                        ; preds = %bb.bi, %bb.aw
  %i.vl = load i32, ptr %.1198257, align 8
  %i.vm = and i32 %i.vl, 3                        ; 2 uses
  %i.vn = icmp eq i32 %i.vm, 2
  %i.vo = select i1 %i.vn, ptr %.1198257, ptr %i.pr
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 56
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !18
  %i.vr = icmp eq i32 %i.vm, 3
  %i.vs = select i1 %i.vr, ptr %.1198257, ptr %i.pm
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 56
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !18
  tail call fastcc void @make_chain(ptr noundef nonnull %0, ptr noundef %i.vq, ptr noundef %i.vu, ptr noundef %.1198257)
  br label %interclrep.exit

interclrep.exit:                                  ; preds = %.split.us.i229, %bb.bh, %bb.x, %.split.us.i.i, %bb.ab, %bb.aa, %bb.bf, %bb.z, %bb.y, %leader_of.exit42.i, %.lr.ph260, %bb.aq, %bb.ar, %bb.al, %merge_chain.exit227, %merge_chain.exit, %bb.q, %bb.p, %.critedge, %bb.av, %bb.at, %bb.ap, %bb.ag
  %.1 = phi ptr [ %.1198257, %.critedge ], [ %.0196258, %merge_chain.exit ], [ %.0196258, %bb.q ], [ %.0196258, %bb.p ], [ %.1198257, %.lr.ph260 ], [ %.0196258, %bb.ag ], [ %.0196258, %bb.al ], [ %.0196258, %merge_chain.exit227 ], [ %.1198257, %bb.ap ], [ %.0196258, %bb.aq ], [ %.0196258, %bb.ar ], [ %.1198257, %bb.at ], [ %.1198257, %bb.av ], [ %.0196258, %bb.bf ], [ %.1198257, %leader_of.exit42.i ], [ %.1198257, %bb.ab ], [ %.1198257, %bb.x ], [ %.1198257, %bb.y ], [ %.1198257, %bb.z ], [ %.1198257, %bb.aa ], [ %.1198257, %.split.us.i.i ], [ %.0196258, %bb.bh ], [ %.0196258, %.split.us.i229 ]
  %i.vv = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.1198257) #9 ; 2 uses
  %.not214 = icmp eq ptr %i.vv, null
  br i1 %.not214, label %._crit_edge261, label %.lr.ph260, !llvm.loop !67

._crit_edge261:                                   ; preds = %interclrep.exit, %bb.h
  %i.vw = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.1200263) #9 ; 2 uses
  %.not212 = icmp eq ptr %i.vw, null
  br i1 %.not212, label %._crit_edge266, label %.lr.ph265, !llvm.loop !68

._crit_edge266:                                   ; preds = %._crit_edge261, %._crit_edge250
  %i.vx = tail call ptr @dot_root(ptr noundef nonnull %0) #9
  %.not213 = icmp eq ptr %0, %i.vx
  br i1 %.not213, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge266
  %i.vy = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 304
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.wa) #9
  %i.wb = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #10 ; 3 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %bb.bk, label %gv_alloc.exit

bb.bk:                                            ; preds = %bb.bj
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !85
  %i.we = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wd, ptr noundef nonnull @.str.1, i64 noundef 8) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

gv_alloc.exit:                                    ; preds = %bb.bj
  %i.wf = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 304
  store ptr %i.wb, ptr %i.wg, align 8, !tbaa !83
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 256
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !69
  store ptr %i.wi, ptr %i.wb, align 8, !tbaa !77
  br label %bb.bl

bb.bl:                                            ; preds = %gv_alloc.exit, %._crit_edge266
  ret void
}

declare void @mark_clusters(ptr noundef) local_unnamed_addr #2

declare void @build_skeleton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UF_find(ptr noundef) local_unnamed_addr #2

declare void @fast_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @other_edge(ptr noundef) local_unnamed_addr #2

declare void @merge_oneway(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @flat_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @make_chain(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %.not = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %.pre, i64 360
  %.pre33 = load i32, ptr %.phi.trans.insert32, align 8, !tbaa !35 ; 3 uses
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8, !tbaa !19
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %.pre35, i64 360
  %.pre37 = load i32, ptr %.phi.trans.insert36, align 8, !tbaa !35 ; 3 uses
  br i1 %.not, label %._crit_edge31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %.pre37, %.pre33
  %i.f = sdiv i32 %i.e, 2
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %bb.a, %bb.b
  %.023 = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not26.not28 = icmp slt i32 %.pre33, %.pre37
  br i1 %.not26.not28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge31
  %i.h = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.i = phi i32 [ %.pre37, %.lr.ph ], [ %i.bf, %bb.g ]
  %.02430.in = phi i32 [ %.pre33, %.lr.ph ], [ %.02430, %bb.g ]
  %.02229 = phi ptr [ %1, %.lr.ph ], [ %.1, %bb.g ]
  %.02430 = add nsw i32 %.02430.in, 1             ; 5 uses
  %i.j = icmp slt i32 %.02430, %i.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %.02430, %.023
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.0.0.copyload.i = load double, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !57 ; 2 uses
  %i.p = tail call ptr @virtual_node(ptr noundef %0) #9 ; 4 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store ptr %i.s, ptr %i.v, align 8, !tbaa !87
  %i.w = tail call ptr @agroot(ptr noundef %i.p) #9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 352
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !56
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store double %i.ab, ptr %i.ad, align 8, !tbaa !88
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 155
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !89
  %.not.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i, label %.sink.split.i, label %label_vnode.exit

.sink.split.i:                                    ; preds = %bb.e
  %i.ah = tail call ptr @agroot(ptr noundef %0) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 132
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = and i32 %i.al, 1
  %.not15.i = icmp eq i32 %i.am, 0                ; 2 uses
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %.sroa.5.0.copyload..sroa.0.0.copyload.i = select i1 %.not15.i, double %.sroa.5.0.copyload.i, double %.sroa.0.0.copyload.i
  %.sroa.0.0.copyload..sroa.5.0.copyload.i = select i1 %.not15.i, double %.sroa.0.0.copyload.i, double %.sroa.5.0.copyload.i
  store double %.sroa.5.0.copyload..sroa.0.0.copyload.i, ptr %i.ao, align 8, !tbaa !91
  store double %.sroa.0.0.copyload..sroa.5.0.copyload.i, ptr %i.ap, align 8, !tbaa !92
  br label %label_vnode.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = tail call ptr @virtual_node(ptr noundef %0) #9 ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val4.i = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.as = getelementptr i8, ptr %.val.i, i64 352
  %.val.val.i = load i32, ptr %i.as, align 8, !tbaa !56
  %i.at = sdiv i32 %.val.val.i, 2
  %i.au = sitofp i32 %i.at to double
  %i.av = getelementptr inbounds nuw i8, ptr %.val4.i, i64 104 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !57
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fadd <2 x double> %i.aw, %i.ay
  store <2 x double> %i.az, ptr %i.av, align 8, !tbaa !57
  br label %label_vnode.exit

label_vnode.exit:                                 ; preds = %.sink.split.i, %bb.e, %bb.f
  %i.ba = phi ptr [ %.val4.i, %bb.f ], [ %i.ac, %bb.e ], [ %i.an, %.sink.split.i ]
  %.0 = phi ptr [ %i.aq, %bb.f ], [ %i.p, %bb.e ], [ %i.p, %.sink.split.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  store i32 %.02430, ptr %i.bb, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %label_vnode.exit
  %.1 = phi ptr [ %.0, %label_vnode.exit ], [ %2, %bb.c ] ; 2 uses
  %i.bc = tail call ptr @virtual_edge(ptr noundef nonnull %.02229, ptr noundef nonnull %.1, ptr noundef nonnull %3) #9
  tail call void @virtual_weight(ptr noundef %i.bc) #9
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 360
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %.not26.not = icmp slt i32 %.02430, %i.bf
  br i1 %.not26.not, label %bb.c, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.g, %._crit_edge31
  ret void
}

declare ptr @dot_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @find_fast_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @virtual_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @virtual_weight(ptr noundef) local_unnamed_addr #2

declare ptr @virtual_node(ptr noundef) local_unnamed_addr #2

declare ptr @agroot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn }
attributes #13 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !60}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !9, i64 8}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7Agrec_s", !11, i64 0}
!13 = !{!"Agobj_s", !10, i64 0, !12, i64 16}
!14 = !{!"p1 _ZTS9dtlink_s_", !11, i64 0}
!15 = !{!"dtlink_s_", !14, i64 0, !5, i64 8}
!16 = !{!"p1 _ZTS8Agnode_s", !11, i64 0}
!17 = !{!"Agedge_s", !13, i64 0, !15, i64 24, !15, i64 40, !16, i64 56}
!18 = !{!17, !16, i64 56}
!19 = !{!13, !12, i64 16}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"Agrec_s", !20, i64 0, !12, i64 8}
!22 = !{!"p1 _ZTS10shape_desc", !11, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!"pointf_s", !23, i64 0, !23, i64 8}
!25 = !{!"", !24, i64 0, !24, i64 16}
!26 = !{!"p1 _ZTS11textlabel_t", !11, i64 0}
!27 = !{!"_Bool", !5, i64 0}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!"any p2 pointer", !11, i64 0}
!30 = !{!"p2 _ZTS8Agedge_s", !29, i64 0}
!31 = !{!"elist", !30, i64 0, !9, i64 8}
!32 = !{!"p1 _ZTS8Agraph_s", !11, i64 0}
!33 = !{!"p1 _ZTS8Agedge_s", !11, i64 0}
!34 = !{!"Agnodeinfo_t", !21, i64 0, !22, i64 16, !11, i64 24, !24, i64 32, !23, i64 48, !23, i64 56, !25, i64 64, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !26, i64 136, !26, i64 144, !11, i64 152, !5, i64 160, !5, i64 161, !27, i64 162, !5, i64 163, !6, i64 164, !6, i64 168, !6, i64 172, !28, i64 176, !23, i64 184, !5, i64 192, !27, i64 193, !16, i64 200, !16, i64 208, !5, i64 216, !9, i64 224, !5, i64 232, !5, i64 233, !5, i64 234, !16, i64 240, !16, i64 248, !31, i64 256, !31, i64 272, !31, i64 288, !31, i64 304, !31, i64 320, !32, i64 336, !6, i64 344, !16, i64 352, !6, i64 360, !6, i64 364, !23, i64 368, !31, i64 376, !31, i64 392, !31, i64 408, !31, i64 424, !33, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !5, i64 464}
!35 = !{!34, !6, i64 360}
!36 = !{!"p1 _ZTS7splines", !11, i64 0}
!37 = !{!"port", !24, i64 0, !23, i64 16, !11, i64 24, !27, i64 32, !27, i64 33, !27, i64 34, !27, i64 35, !5, i64 36, !5, i64 37, !20, i64 40}
!38 = !{!"p1 _ZTS8pointf_s", !11, i64 0}
!39 = !{!"Ppoly_t", !38, i64 0, !9, i64 8}
!40 = !{!"short", !5, i64 0}
!41 = !{!"Agedgeinfo_t", !21, i64 0, !36, i64 16, !37, i64 24, !37, i64 72, !26, i64 120, !26, i64 128, !26, i64 136, !26, i64 144, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !5, i64 156, !33, i64 160, !11, i64 168, !23, i64 176, !23, i64 184, !39, i64 192, !5, i64 208, !27, i64 209, !40, i64 210, !6, i64 212, !6, i64 216, !6, i64 220, !40, i64 224, !6, i64 228, !33, i64 232}
!42 = !{!41, !33, i64 232}
!43 = !{!41, !40, i64 224}
!44 = !{!41, !40, i64 210}
!45 = !{!41, !6, i64 212}
!46 = !{!"p1 _ZTS8layout_t", !11, i64 0}
!47 = !{!"p1 _ZTS5GVC_s", !11, i64 0}
!48 = !{!"p2 _ZTS8Agnode_s", !29, i64 0}
!49 = !{!"p2 double", !29, i64 0}
!50 = !{!"any p3 pointer", !29, i64 0}
!51 = !{!"p3 double", !50, i64 0}
!52 = !{!"p2 _ZTS8Agraph_s", !29, i64 0}
!53 = !{!"p1 _ZTS6rank_t", !11, i64 0}
!54 = !{!"nlist_t", !48, i64 0, !9, i64 8}
!55 = !{!"Agraphinfo_t", !21, i64 0, !46, i64 16, !26, i64 24, !25, i64 32, !5, i64 64, !5, i64 128, !5, i64 129, !27, i64 130, !5, i64 131, !6, i64 132, !23, i64 136, !23, i64 144, !40, i64 152, !11, i64 160, !47, i64 168, !11, i64 176, !48, i64 184, !6, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !51, i64 224, !40, i64 232, !40, i64 234, !6, i64 236, !52, i64 240, !32, i64 248, !16, i64 256, !53, i64 264, !32, i64 272, !6, i64 280, !16, i64 288, !16, i64 296, !54, i64 304, !16, i64 320, !16, i64 328, !6, i64 336, !6, i64 340, !27, i64 344, !5, i64 345, !6, i64 348, !6, i64 352, !6, i64 356, !16, i64 360, !16, i64 368, !16, i64 376, !48, i64 384, !27, i64 392, !5, i64 393, !5, i64 394, !5, i64 395, !27, i64 396}
!56 = !{!55, !6, i64 352}
!57 = !{!23, !23, i64 0}
!58 = !{!34, !30, i64 272}
!59 = !{!33, !33, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!41, !26, i64 120}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = distinct !{!68, !60}
!69 = !{!55, !16, i64 256}
!70 = !{!55, !6, i64 236}
!71 = !{!55, !52, i64 240}
!72 = !{!32, !32, i64 0}
!73 = !{!34, !5, i64 234}
!74 = !{!34, !32, i64 336}
!75 = !{!34, !5, i64 233}
!76 = !{!55, !48, i64 384}
!77 = !{!16, !16, i64 0}
!78 = !{!41, !5, i64 152}
!79 = !{!27, !27, i64 0}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!41, !27, i64 209}
!83 = !{!55, !48, i64 304}
!84 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = distinct !{!86, !60}
!87 = !{!34, !26, i64 136}
!88 = !{!34, !23, i64 104}
!89 = !{!41, !5, i64 155}
!90 = !{!55, !6, i64 132}
!91 = !{!34, !23, i64 96}
!92 = !{!34, !23, i64 112}
end_hunk_1
