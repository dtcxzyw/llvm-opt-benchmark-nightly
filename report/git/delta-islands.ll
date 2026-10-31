Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/delta-islands?download=true
inline.NumInlined: 79
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@resolve_tree_islands:bb.a
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.04484 = phi i32 [ 0, %.lr.ph ], [ %.145, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 88
  %.val = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val, 31138512896
  %i.o = icmp eq i64 %i.n, 9663676416
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %.04484 to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.p ; 2 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !83
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %.not.i54 = icmp eq ptr %i.r, null
  br i1 %.not.i54, label %oe_tree_depth.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i64 %indvars.iv, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  br label %oe_tree_depth.exit

oe_tree_depth.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.0.i, ptr %i.v, align 8, !tbaa !43
  %i.w = add nsw i32 %.04484, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %oe_tree_depth.exit
  %.145 = phi i32 [ %i.w, %oe_tree_depth.exit ], [ %.04484, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.e
  %i.x = sext i32 %.145 to i64                    ; 3 uses
  %i.y = icmp ugt i32 %.145, 1
  br i1 %i.y, label %bb.f, label %sane_qsort.exit

bb.f:                                             ; preds = %._crit_edge
  tail call void @qsort(ptr noundef %i.g, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i64 noundef 16, ptr noundef nonnull @tree_depth_compare) #15
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %st_mult.exit, %._crit_edge, %bb.f
  %i.z = phi i64 [ %i.x, %bb.f ], [ %i.x, %._crit_edge ], [ 0, %st_mult.exit ]
  %.044.lcssa125 = phi i32 [ %.145, %bb.f ], [ %.145, %._crit_edge ], [ 0, %st_mult.exit ] ; 2 uses
  %.not49 = icmp eq i32 %1, 0
  br i1 %.not49, label %bb.i, label %bb.g

bb.g:                                             ; preds = %sane_qsort.exit
  %i.aa = load i32, ptr @git_gettext_enabled, align 4, !tbaa !25
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.g, %bb.h
  %.0.i55 = phi ptr [ %i.ab, %bb.h ], [ @.str, %bb.g ]
  %i.ac = tail call ptr @start_progress(ptr noundef %0, ptr noundef %.0.i55, i64 noundef %i.z) #15 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %_.exit, %sane_qsort.exit
  %i.ad = phi ptr [ %i.ac, %_.exit ], [ null, %sane_qsort.exit ]
  %i.ae = icmp sgt i32 %.044.lcssa125, 0
  br i1 %i.ae, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 52
  %wide.trip.count111 = zext nneg i32 %.044.lcssa125 to i64
  %.pre113 = load ptr, ptr @island_marks, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph92, %bb.ag
  %i.ag = phi ptr [ %.pre113, %.lr.ph92 ], [ %i.ij, %bb.ag ] ; 6 uses
  %indvars.iv108 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next109, %bb.ag ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv108
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %i.ai, i64 36, i1 false)
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !23 ; 4 uses
  %.not.i56 = icmp eq i32 %i.aj, 0
  br i1 %.not.i56, label %kh_get_oid_map.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  %.val.i = load i32, ptr %6, align 8
  %i.al = and i32 %.val.i, %i.ak                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.i, %bb.k
  %.026.i = phi i32 [ %i.al, %bb.k ], [ %i.bo, %.critedge2.i ] ; 5 uses
  %.0.i57 = phi i32 [ 0, %bb.k ], [ %i.bm, %.critedge2.i ]
  %i.ap = lshr i32 %.026.i, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25 ; 2 uses
  %i.at = shl i32 %.026.i, 1
  %i.au = and i32 %i.at, 30                       ; 2 uses
  %i.av = lshr i32 %i.as, %i.au                   ; 2 uses
  %i.aw = and i32 %i.av, 2
  %.not30.i = icmp eq i32 %i.aw, 0
  br i1 %.not30.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ax = and i32 %i.av, 1
  %.not31.i = icmp eq i32 %i.ax, 0
  br i1 %.not31.i, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.az = zext i32 %.026.i to i64
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %i.ba, i64 36, i1 false), !tbaa.struct !28
  %i.bb = load i128, ptr %5, align 8
  %i.bc = load i128, ptr %6, align 8
  %i.bd = xor i128 %i.bb, %i.bc
  %i.be = getelementptr i8, ptr %5, i64 16
  %i.bf = getelementptr i8, ptr %6, i64 16
  %i.bg = load i128, ptr %i.be, align 8
  %i.bh = load i128, ptr %i.bf, align 8
  %i.bi = xor i128 %i.bg, %i.bh
  %i.bj = or i128 %i.bd, %i.bi
  %i.bk = icmp ne i128 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i.not.i = icmp eq i32 %i.bl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %.not.i.i.not.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.n, %bb.m
  %i.bm = add i32 %.0.i57, 1                      ; 2 uses
  %i.bn = add i32 %i.bm, %.026.i
  %i.bo = and i32 %i.bn, %i.ak                    ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.al
  br i1 %i.bp, label %kh_get_oid_map.exit.thread, label %bb.l, !llvm.loop !0

kh_get_oid_map.exit.thread:                       ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ag

.critedge.i:                                      ; preds = %bb.n, %bb.l
  %i.bq = shl nuw i32 3, %i.au
  %i.br = and i32 %i.bq, %i.as
  %.not33.i = icmp eq i32 %i.br, 0
  %spec.select.i = select i1 %.not33.i, i32 %.026.i, i32 %i.aj
  br label %kh_get_oid_map.exit

kh_get_oid_map.exit:                              ; preds = %bb.j, %.critedge.i
  %.1.i = phi i32 [ %spec.select.i, %.critedge.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not50 = icmp ult i32 %.1.i, %i.aj
  br i1 %.not50, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %kh_get_oid_map.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = zext i32 %.1.i to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 5 uses
  %i.bx = call ptr @lookup_tree(ptr noundef %0, ptr noundef nonnull %i.ai) #15 ; 6 uses
  %.not51 = icmp eq ptr %i.bx, null
  br i1 %.not51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call i32 @repo_parse_tree_gently(ptr noundef %0, ptr noundef nonnull %i.bx, i32 noundef 0) #15
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = call fastcc ptr @_(ptr noundef nonnull @.str.1)
  %i.cb = call ptr @oid_to_hex(ptr noundef nonnull %i.ai) #15
  call void (ptr, ...) @die(ptr noundef %i.ca, ptr noundef %i.cb) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !87
  call void @init_tree_desc(ptr noundef nonnull %7, ptr noundef nonnull %i.cc, ptr noundef %i.ce, i64 noundef %i.cg) #15
  %i.ch = call i32 @tree_entry(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %.not5286 = icmp eq i32 %i.ch, 0
  br i1 %.not5286, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.r
  %9 = getelementptr i8, ptr %i.bw, i64 4         ; 7 uses
  %scevgep151 = getelementptr i8, ptr %i.bw, i64 4
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph88, %set_island_marks.exit
  %i.ci = load i32, ptr %i.af, align 4, !tbaa !89
  %i.cj = and i32 %i.ci, 61440
  %i.ck = icmp eq i32 %i.cj, 57344
  br i1 %i.ck, label %set_island_marks.exit, label %bb.t, !llvm.loop !73

bb.t:                                             ; preds = %bb.s
  %i.cl = call ptr @lookup_object(ptr noundef %0, ptr noundef nonnull %8) #15 ; 2 uses
  %.not53 = icmp eq ptr %i.cl, null
  br i1 %.not53, label %set_island_marks.exit, label %bb.u, !llvm.loop !73

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 12 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.cn, i64 36, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !47
  %.not.i60 = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i60, label %bb.v, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.u
  %i.cs = load i32, ptr %i.cm, align 8, !tbaa !23 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = shl i32 %i.cu, 1
  %i.cw = icmp ugt i32 %i.cs, %i.cv
  %..i = select i1 %i.cw, i32 -1, i32 1
  %i.cx = add i32 %..i, %i.cs
  call fastcc void @kh_resize_oid_map(ptr noundef nonnull %i.cm, i32 noundef %i.cx)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %bb.u
  %i.cy = load i32, ptr %i.cm, align 8, !tbaa !23 ; 5 uses
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  %.val.i61 = load i32, ptr %4, align 8
  %i.da = and i32 %.val.i61, %i.cz                ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !24 ; 3 uses
  %i.dd = lshr i32 %i.da, 4
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dh = shl i32 %i.da, 1
  %i.di = and i32 %i.dh, 30
  %i.dj = shl nuw i32 2, %i.di
  %i.dk = and i32 %i.dj, %i.dg
  %.not78.i = icmp eq i32 %i.dk, 0
  br i1 %.not78.i, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  br label %bb.w

bb.w:                                             ; preds = %.critedge2.i63, %.preheader.i
  %.069.i = phi i32 [ %i.en, %.critedge2.i63 ], [ %i.da, %.preheader.i ] ; 6 uses
  %.068.i = phi i32 [ %spec.select.i64, %.critedge2.i63 ], [ %i.cy, %.preheader.i ] ; 2 uses
  %.0.i62 = phi i32 [ %i.el, %.critedge2.i63 ], [ 0, %.preheader.i ]
  %i.dm = lshr i32 %.069.i, 4
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !25 ; 3 uses
  %i.dq = shl i32 %.069.i, 1
  %i.dr = and i32 %i.dq, 30                       ; 3 uses
  %i.ds = lshr i32 %i.dp, %i.dr                   ; 2 uses
  %i.dt = and i32 %i.ds, 2
  %.not79.i = icmp eq i32 %i.dt, 0
  br i1 %.not79.i, label %bb.x, label %.critedge.thread.loopexit.i

bb.x:                                             ; preds = %bb.w
  %i.du = and i32 %i.ds, 1
  %.not80.i = icmp eq i32 %i.du, 0
  br i1 %.not80.i, label %bb.y, label %.critedge2.i63

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !26
  %i.dw = zext i32 %.069.i to i64
  %i.dx = getelementptr inbounds nuw [36 x i8], ptr %i.dv, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.dx, i64 36, i1 false), !tbaa.struct !28
  %i.dy = load i128, ptr %3, align 8
  %i.dz = load i128, ptr %4, align 8
  %i.ea = xor i128 %i.dy, %i.dz
  %i.eb = getelementptr i8, ptr %3, i64 16
  %i.ec = getelementptr i8, ptr %4, i64 16
  %i.ed = load i128, ptr %i.eb, align 8
  %i.ee = load i128, ptr %i.ec, align 8
  %i.ef = xor i128 %i.ed, %i.ee
  %i.eg = or i128 %i.ea, %i.ef
  %i.eh = icmp ne i128 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %.not.i.i.not.i67 = icmp eq i32 %i.ei, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.not.i.i.not.i67, label %.critedge.thread.loopexit.i, label %.critedge2.i63

.critedge2.i63:                                   ; preds = %bb.y, %bb.x
  %i.ej = shl nuw nsw i32 1, %i.dr
  %i.ek = and i32 %i.dp, %i.ej
  %.not82.i = icmp eq i32 %i.ek, 0
  %spec.select.i64 = select i1 %.not82.i, i32 %.068.i, i32 %.069.i ; 3 uses
  %i.el = add i32 %.0.i62, 1                      ; 2 uses
  %i.em = add i32 %i.el, %.069.i
  %i.en = and i32 %i.em, %i.cz                    ; 2 uses
  %i.eo = icmp eq i32 %i.en, %i.da
  br i1 %i.eo, label %.critedge.i65, label %bb.w, !llvm.loop !2

.critedge.i65:                                    ; preds = %.critedge2.i63
  %i.ep = icmp eq i32 %spec.select.i64, %i.cy
  br i1 %i.ep, label %.critedge.thread.i, label %bb.z

.critedge.thread.loopexit.i:                      ; preds = %bb.y, %bb.w
  %.pre.i = shl nuw i32 2, %i.dr
  %.pre101.i = and i32 %.pre.i, %i.dp
  %i.eq = icmp eq i32 %.pre101.i, 0
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i65
  %.pre-phi102.i = phi i1 [ %i.eq, %.critedge.thread.loopexit.i ], [ true, %.critedge.i65 ]
  %.292.i = phi i32 [ %.068.i, %.critedge.thread.loopexit.i ], [ %i.cy, %.critedge.i65 ] ; 2 uses
  %.17091.i = phi i32 [ %.069.i, %.critedge.thread.loopexit.i ], [ %i.da, %.critedge.i65 ]
  %.not84.i = icmp eq i32 %.292.i, %i.cy
  %or.cond.i = select i1 %.pre-phi102.i, i1 true, i1 %.not84.i
  %spec.select87.i = select i1 %or.cond.i, i32 %.17091.i, i32 %.292.i
  br label %bb.z

bb.z:                                             ; preds = %.critedge.thread.i, %.critedge.i65, %bb.v
  %.172.i = phi i32 [ %spec.select.i64, %.critedge.i65 ], [ %i.da, %bb.v ], [ %spec.select87.i, %.critedge.thread.i ] ; 5 uses
  %i.er = lshr i32 %.172.i, 4
  %i.es = zext nneg i32 %i.er to i64              ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !25
  %i.ev = shl i32 %.172.i, 1
  %i.ew = and i32 %i.ev, 30                       ; 3 uses
  %i.ex = lshr i32 %i.eu, %i.ew                   ; 2 uses
  %i.ey = and i32 %i.ex, 2
  %.not85.i = icmp eq i32 %i.ey, 0
  br i1 %.not85.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !26
  %i.fb = zext i32 %.172.i to i64                 ; 2 uses
  %i.fc = getelementptr inbounds nuw [36 x i8], ptr %i.fa, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fc, ptr noundef nonnull readonly align 8 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !28
  %i.fd = shl nuw i32 3, %i.ew
  %i.fe = xor i32 %i.fd, -1
  %i.ff = load ptr, ptr %i.db, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.es ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !25
  %i.fi = and i32 %i.fh, %i.fe
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !25
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.fk = load <2 x i32>, ptr %i.fj, align 4, !tbaa !25
  %i.fl = add <2 x i32> %i.fk, splat (i32 1)
  store <2 x i32> %i.fl, ptr %i.fj, align 4, !tbaa !25
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.fm = and i32 %i.ex, 1
  %.not86.i = icmp eq i32 %i.fm, 0
  br i1 %.not86.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !26
  %i.fp = zext i32 %.172.i to i64                 ; 2 uses
  %i.fq = getelementptr inbounds nuw [36 x i8], ptr %i.fo, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !28
  %i.fr = shl nuw i32 3, %i.ew
  %i.fs = xor i32 %i.fr, -1
  %i.ft = load ptr, ptr %i.db, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.es ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !25
  %i.fw = and i32 %i.fv, %i.fs
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !25
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !48
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !48
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.pre-phi = phi i64 [ %i.fp, %bb.ac ], [ %i.fb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ga = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.bw, align 4, !tbaa !25
  %i.gc = load ptr, ptr @island_marks, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !30
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.pre-phi
  store ptr %i.bw, ptr %i.gf, align 8, !tbaa !31
  br label %set_island_marks.exit

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gg = load ptr, ptr @island_marks, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30
  %i.gj = zext i32 %.172.i to i64                 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !31 ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !25 ; 2 uses
  %i.gn = icmp ugt i32 %i.gm, 1
  br i1 %i.gn, label %island_bitmap_new.exit.i, label %bb.af

island_bitmap_new.exit.i:                         ; preds = %bb.ae
  %i.go = add i32 %i.gm, -1
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !25
  %i.gp = load i32, ptr @island_bitmap_size, align 4, !tbaa !25
  %i.gq = shl nuw nsw i32 %i.gp, 2
  %narrow.i.i = add nuw i32 %i.gq, 4
  %i.gr = zext i32 %narrow.i.i to i64             ; 2 uses
  %i.gs = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.gr) #15 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gs, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.gl, i64 %i.gr, i1 false)
  store i32 1, ptr %i.gs, align 4, !tbaa !25
  %i.gt = load ptr, ptr @island_marks, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gj
  store ptr %i.gs, ptr %i.gw, align 8, !tbaa !31
  br label %bb.af

bb.af:                                            ; preds = %island_bitmap_new.exit.i, %bb.ae
  %.0.i59 = phi ptr [ %i.gs, %island_bitmap_new.exit.i ], [ %i.gl, %bb.ae ] ; 2 uses
  %i.gx = load i32, ptr @island_bitmap_size, align 4, !tbaa !25 ; 3 uses
  %.not.i11.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i11.i, label %set_island_marks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i59, i64 4 ; 7 uses
  %wide.trip.count.i.i = zext i32 %i.gx to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.gx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.0.i59, i64 4
  %10 = shl nuw nsw i64 %wide.trip.count.i.i, 2   ; 2 uses
  %scevgep150 = getelementptr i8, ptr %scevgep, i64 %10
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %10
  %bound0 = icmp ult ptr %i.gy, %scevgep152
  %bound1 = icmp ult ptr %9, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load = load <4 x i32>, ptr %i.gz, align 4, !tbaa !25, !alias.scope !90
  %wide.load153 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !25, !alias.scope !90
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load154 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !25, !alias.scope !91, !noalias !90
  %wide.load155 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !25, !alias.scope !91, !noalias !90
  %i.hd = or <4 x i32> %wide.load154, %wide.load
  %i.he = or <4 x i32> %wide.load155, %wide.load153
  store <4 x i32> %i.hd, ptr %i.hb, align 4, !tbaa !25, !alias.scope !91, !noalias !90
  store <4 x i32> %i.he, ptr %i.hc, align 4, !tbaa !25, !alias.scope !91, !noalias !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %set_island_marks.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i.i.prol
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !25
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !25
  %i.hk = or i32 %i.hj, %i.hh
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !25
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.hl = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.hm = icmp ugt i64 %i.hl, -4
  br i1 %i.hm, label %set_island_marks.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !25
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.i ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25
  %i.hr = or i32 %i.hq, %i.ho
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !25
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !25
  %i.hw = or i32 %i.hv, %i.ht
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !25
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next.i.i.1
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !25
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !25
  %i.ib = or i32 %i.ia, %i.hy
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !25
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next.i.i.2
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !25
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !25
  %i.ig = or i32 %i.if, %i.id
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !25
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %set_island_marks.exit, label %scalar.ph, !llvm.loop !79

set_island_marks.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.af, %bb.ad, %bb.t, %bb.s
  %i.ih = call i32 @tree_entry(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %.not52 = icmp eq i32 %i.ih, 0
  br i1 %.not52, label %._crit_edge89, label %bb.s

._crit_edge89:                                    ; preds = %set_island_marks.exit, %bb.r
  call void @free_tree_buffer(ptr noundef nonnull %i.bx) #15
  %i.ii = add nuw nsw i64 %indvars.iv108, 1
  call void @display_progress(ptr noundef %i.ad, i64 noundef %i.ii) #15
  %.pre = load ptr, ptr @island_marks, align 8, !tbaa !18
  br label %bb.ag

bb.ag:                                            ; preds = %kh_get_oid_map.exit.thread, %kh_get_oid_map.exit, %._crit_edge89
  %i.ij = phi ptr [ %i.ag, %kh_get_oid_map.exit.thread ], [ %i.ag, %kh_get_oid_map.exit ], [ %.pre, %._crit_edge89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge93, label %bb.j, !llvm.loop !80

._crit_edge93:                                    ; preds = %bb.ag, %bb.i
  %i.ik = load i32, ptr @git_gettext_enabled, align 4, !tbaa !25
  %.not4.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not4.i.i, label %stop_progress.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge93
  %i.il = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %._crit_edge93, %bb.ah
  %.0.i.i = phi ptr [ %i.il, %bb.ah ], [ @.str.5, %._crit_edge93 ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i) #15
  call void @free(ptr noundef %i.g) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %stop_progress.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @tree_depth_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = sub i32 %i.b, %i.d
  ret i32 %i.e
}

declare ptr @start_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !25
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.4, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare void @init_tree_desc(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_object(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_tree_buffer(ptr noundef) local_unnamed_addr #3

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @load_delta_islands(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.object_id, align 8          ; 5 uses
  %3 = alloca %struct.object_id, align 8          ; 9 uses
  %4 = alloca %struct.object_id, align 8          ; 5 uses
  %5 = alloca %struct.object_id, align 8          ; 9 uses
  %6 = alloca %struct.island_load_data, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.a = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  store ptr %i.a, ptr @island_marks, align 8, !tbaa !18
  call void @repo_config(ptr noundef %0, ptr noundef nonnull @island_config_callback, ptr noundef nonnull %6) #15
  %i.b = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  store ptr %i.b, ptr %6, align 8, !tbaa !55
  %i.c = call ptr @get_main_ref_store(ptr noundef %0) #15
  %i.d = call i32 @refs_for_each_ref(ptr noundef %i.c, ptr noundef nonnull @find_island_for_ref, ptr noundef nonnull %6) #15 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %free_config_regexes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.05.i
  call void @regfree(ptr noundef %i.i) #15
  %i.j = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !56
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %free_config_regexes.exit, !llvm.loop !92

free_config_regexes.exit:                         ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @free(ptr noundef %i.n) #15
  %i.o = load ptr, ptr %6, align 8, !tbaa !55     ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60   ; 4 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = call ptr @xmalloc(i64 noundef %i.s) #15  ; 6 uses
  %i.u = load i32, ptr %i.o, align 8, !tbaa !61   ; 5 uses
  %.not87.i = icmp eq i32 %i.u, 0                 ; 2 uses
  br i1 %.not87.i, label %.preheader68.i, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %free_config_regexes.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.y = zext i32 %i.u to i64
  br label %bb.c

.preheader68.i:                                   ; preds = %bb.e, %free_config_regexes.exit
  %i.z = icmp ugt i32 %i.q, 1
  br i1 %i.z, label %.preheader.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.e, %.lr.ph.i3
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %.04588.i = phi i32 [ 0, %.lr.ph.i3 ], [ %.1.i, %bb.e ] ; 3 uses
  %i.aa = trunc nuw i64 %indvars.iv.i to i32
  %i.ab = lshr i64 %indvars.iv.i, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = shl i32 %i.aa, 1
  %i.ag = and i32 %i.af, 30
  %i.ah = shl nuw i32 3, %i.ag
  %i.ai = and i32 %i.ah, %i.ae
  %.not55.i = icmp eq i32 %i.ai, 0
  br i1 %.not55.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = add i32 %.04588.i, 1
  %i.an = zext i32 %.04588.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !101
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %.04588.i, %bb.c ], [ %i.am, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i4 = icmp eq i64 %indvars.iv.next.i, %i.y
  br i1 %.not.i4, label %.preheader68.i, label %bb.c, !llvm.loop !93

.loopexit.i:                                      ; preds = %bb.j
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %i.ap = zext i32 %.149.i to i64
end_hunk_0
begin_hunk_1_@propagate_island_marks:bb.a
  %i.ah = add i32 %.0.i, 1                        ; 2 uses
  %i.ai = add i32 %i.ah, %.026.i
  %i.aj = and i32 %i.ai, %i.f                     ; 2 uses
  %i.ak = icmp eq i32 %i.aj, %i.g
  br i1 %i.ak, label %kh_get_oid_map.exit.thread, label %bb.c, !llvm.loop !0

kh_get_oid_map.exit.thread:                       ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.critedge.i:                                      ; preds = %bb.e, %bb.c
  %i.al = shl nuw i32 3, %i.p
  %i.am = and i32 %i.al, %i.n
  %.not33.i = icmp eq i32 %i.am, 0
  %spec.select.i = select i1 %.not33.i, i32 %.026.i, i32 %i.e
  br label %kh_get_oid_map.exit

kh_get_oid_map.exit:                              ; preds = %bb.a, %.critedge.i
  %.1.i = phi i32 [ %spec.select.i, %.critedge.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.an = icmp ult i32 %.1.i, %i.e
  br i1 %i.an, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %kh_get_oid_map.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = zext i32 %.1.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 10 uses
  %i.at = tail call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %1, i32 noundef 0) #15 ; 0 uses
  %i.au = tail call ptr @repo_get_commit_tree(ptr noundef %0, ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.av = load ptr, ptr @island_marks, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.aw, i64 36, i1 false), !tbaa.struct !28
  %i.ax = call fastcc i32 @kh_put_oid_map(ptr noundef %i.av, ptr noundef nonnull byval(%struct.object_id) align 8 %3, ptr noundef %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !25
  %.not.i13 = icmp eq i32 %i.ay, 0
  br i1 %.not.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.as, align 4, !tbaa !25
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.as, align 4, !tbaa !25
  %i.bb = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30
  %i.be = zext i32 %i.ax to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  store ptr %i.as, ptr %i.bf, align 8, !tbaa !31
  br label %set_island_marks.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bj = zext i32 %i.ax to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !25 ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 1
  br i1 %i.bn, label %island_bitmap_new.exit.i, label %bb.i

island_bitmap_new.exit.i:                         ; preds = %bb.h
  %i.bo = add i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !25
  %i.bp = load i32, ptr @island_bitmap_size, align 4, !tbaa !25
  %i.bq = shl nuw nsw i32 %i.bp, 2
  %narrow.i.i = add nuw i32 %i.bq, 4
  %i.br = zext i32 %narrow.i.i to i64             ; 2 uses
  %i.bs = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.br) #15 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.bl, i64 %i.br, i1 false)
  store i32 1, ptr %i.bs, align 4, !tbaa !25
  %i.bt = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %island_bitmap_new.exit.i, %bb.h
  %i.bx = phi ptr [ %i.bt, %island_bitmap_new.exit.i ], [ %i.bg, %bb.h ] ; 4 uses
  %.0.i14 = phi ptr [ %i.bs, %island_bitmap_new.exit.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.by = load i32, ptr @island_bitmap_size, align 4, !tbaa !25 ; 3 uses
  %.not.i11.i = icmp eq i32 %i.by, 0
  br i1 %.not.i11.i, label %set_island_marks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i14, i64 4 ; 7 uses
  %wide.trip.count.i.i = zext i32 %i.by to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.by, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.cb = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.cc = add nuw nsw i64 %i.cb, 4                ; 2 uses
  %i.cd = getelementptr i8, ptr %.0.i14, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.as, i64 %i.cc
  %bound0 = icmp ult ptr %i.ca, %i.ce
  %bound1 = icmp ult ptr %i.bz, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !25, !alias.scope !137
  %wide.load53 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !25, !alias.scope !137
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load54 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !25, !alias.scope !138, !noalias !137
  %wide.load55 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !25, !alias.scope !138, !noalias !137
  %i.cj = or <4 x i32> %wide.load54, %wide.load
  %i.ck = or <4 x i32> %wide.load55, %wide.load53
  store <4 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !25, !alias.scope !138, !noalias !137
  store <4 x i32> %i.ck, ptr %i.ci, align 4, !tbaa !25, !alias.scope !138, !noalias !137
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %set_island_marks.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.i.prol
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %i.cq = or i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !25
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !128

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.cr = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %set_island_marks.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !25
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.i ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !25
  %i.cx = or i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !25
  %i.dc = or i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !25
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.1
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dh = or i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !25
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.2
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !25
  %i.dm = or i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !25
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %set_island_marks.exit, label %scalar.ph, !llvm.loop !129

set_island_marks.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %bb.i
  %i.dn = phi ptr [ %i.bx, %bb.i ], [ %i.bb, %bb.g ], [ %i.bx, %middle.block ], [ %i.bx, %scalar.ph ], [ %i.bx, %scalar.ph.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.031 = load ptr, ptr %i.do, align 8, !tbaa !140 ; 2 uses
  %.not32 = icmp eq ptr %.031, null
  br i1 %.not32, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %set_island_marks.exit
  %6 = getelementptr i8, ptr %i.as, i64 4         ; 7 uses
  %scevgep58 = getelementptr i8, ptr %i.as, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %set_island_marks.exit25
  %i.dp = phi ptr [ %i.dn, %.lr.ph ], [ %i.gd, %set_island_marks.exit25 ]
  %.033 = phi ptr [ %.031, %.lr.ph ], [ %.0, %set_island_marks.exit25 ] ; 2 uses
  %i.dq = load ptr, ptr %.033, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.dr, i64 36, i1 false), !tbaa.struct !28
  %i.ds = call fastcc i32 @kh_put_oid_map(ptr noundef nonnull %i.dp, ptr noundef nonnull byval(%struct.object_id) align 8 %2, ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !25
  %.not.i15 = icmp eq i32 %i.dt, 0
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = load i32, ptr %i.as, align 4, !tbaa !25
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.as, align 4, !tbaa !25
  %i.dw = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.dz = zext i32 %i.ds to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dz
  store ptr %i.as, ptr %i.ea, align 8, !tbaa !31
  br label %set_island_marks.exit25

bb.l:                                             ; preds = %bb.j
  %i.eb = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.ee = zext i32 %i.ds to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !31 ; 4 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !25 ; 2 uses
  %i.ei = icmp ugt i32 %i.eh, 1
  br i1 %i.ei, label %island_bitmap_new.exit.i23, label %bb.m

island_bitmap_new.exit.i23:                       ; preds = %bb.l
  %i.ej = add i32 %i.eh, -1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !25
  %i.ek = load i32, ptr @island_bitmap_size, align 4, !tbaa !25
  %i.el = shl nuw nsw i32 %i.ek, 2
  %narrow.i.i24 = add nuw i32 %i.el, 4
  %i.em = zext i32 %narrow.i.i24 to i64           ; 2 uses
  %i.en = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.em) #15 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.en, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.eg, i64 %i.em, i1 false)
  store i32 1, ptr %i.en, align 4, !tbaa !25
  %i.eo = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ee
  store ptr %i.en, ptr %i.er, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %island_bitmap_new.exit.i23, %bb.l
  %i.es = phi ptr [ %i.eo, %island_bitmap_new.exit.i23 ], [ %i.eb, %bb.l ] ; 4 uses
  %.0.i16 = phi ptr [ %i.en, %island_bitmap_new.exit.i23 ], [ %i.eg, %bb.l ] ; 2 uses
  %i.et = load i32, ptr @island_bitmap_size, align 4, !tbaa !25 ; 3 uses
  %.not.i11.i17 = icmp eq i32 %i.et, 0
  br i1 %.not.i11.i17, label %set_island_marks.exit25, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.m
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i16, i64 4 ; 7 uses
  %wide.trip.count.i.i19 = zext i32 %i.et to i64  ; 6 uses
  %min.iters.check64 = icmp ult i32 %i.et, 8
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.i18
  %scevgep = getelementptr i8, ptr %.0.i16, i64 4
  %7 = shl nuw nsw i64 %wide.trip.count.i.i19, 2  ; 2 uses
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 %7
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %7
  %bound060 = icmp ult ptr %i.eu, %scevgep59
  %bound161 = icmp ult ptr %6, %scevgep57
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck56
  %n.vec66 = and i64 %wide.trip.count.i.i19, 4294967288 ; 3 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index68 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load69 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !25, !alias.scope !144
  %wide.load70 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !25, !alias.scope !144
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index68 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load71 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !25, !alias.scope !145, !noalias !144
  %wide.load72 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !25, !alias.scope !145, !noalias !144
  %i.ez = or <4 x i32> %wide.load71, %wide.load69
  %i.fa = or <4 x i32> %wide.load72, %wide.load70
  store <4 x i32> %i.ez, ptr %i.ex, align 4, !tbaa !25, !alias.scope !145, !noalias !144
  store <4 x i32> %i.fa, ptr %i.ey, align 4, !tbaa !25, !alias.scope !145, !noalias !144
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.fb = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.fb, label %middle.block74, label %vector.body67, !llvm.loop !133

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %n.vec66, %wide.trip.count.i.i19
  br i1 %cmp.n75, label %set_island_marks.exit25, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %vector.memcheck56, %.lr.ph.i.i18, %middle.block74
  %indvars.iv.i.i20.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %.lr.ph.i.i18 ], [ %n.vec66, %middle.block74 ] ; 3 uses
  %xtraiter81 = and i64 %wide.trip.count.i.i19, 3 ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol

scalar.ph63.prol:                                 ; preds = %scalar.ph63.preheader, %scalar.ph63.prol
  %indvars.iv.i.i20.prol = phi i64 [ %indvars.iv.next.i.i21.prol, %scalar.ph63.prol ], [ %indvars.iv.i.i20.ph, %scalar.ph63.preheader ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %scalar.ph63.prol ], [ 0, %scalar.ph63.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i20.prol
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i.i20.prol ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25
  %i.fg = or i32 %i.ff, %i.fd
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !25
  %indvars.iv.next.i.i21.prol = add nuw nsw i64 %indvars.iv.i.i20.prol, 1 ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol, !llvm.loop !134

scalar.ph63.prol.loopexit:                        ; preds = %scalar.ph63.prol, %scalar.ph63.preheader
  %indvars.iv.i.i20.unr = phi i64 [ %indvars.iv.i.i20.ph, %scalar.ph63.preheader ], [ %indvars.iv.next.i.i21.prol, %scalar.ph63.prol ]
  %i.fh = sub nsw i64 %indvars.iv.i.i20.ph, %wide.trip.count.i.i19
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %set_island_marks.exit25, label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63
  %indvars.iv.i.i20 = phi i64 [ %indvars.iv.next.i.i21.3, %scalar.ph63 ], [ %indvars.iv.i.i20.unr, %scalar.ph63.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i20
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !25
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i.i20 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !25
  %i.fn = or i32 %i.fm, %i.fk
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !25
  %indvars.iv.next.i.i21 = add nuw nsw i64 %indvars.iv.i.i20, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i21
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !25
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.i.i21 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !25
  %i.fs = or i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !25
  %indvars.iv.next.i.i21.1 = add nuw nsw i64 %indvars.iv.i.i20, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i21.1
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !25
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.i.i21.1 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !25
  %i.fx = or i32 %i.fw, %i.fu
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !25
  %indvars.iv.next.i.i21.2 = add nuw nsw i64 %indvars.iv.i.i20, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i21.2
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !25
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.i.i21.2 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !25
  %i.gc = or i32 %i.gb, %i.fz
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !25
  %indvars.iv.next.i.i21.3 = add nuw nsw i64 %indvars.iv.i.i20, 4 ; 2 uses
  %exitcond.not.i.i22.3 = icmp eq i64 %indvars.iv.next.i.i21.3, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i22.3, label %set_island_marks.exit25, label %scalar.ph63, !llvm.loop !135

set_island_marks.exit25:                          ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63, %middle.block74, %bb.k, %bb.m
  %i.gd = phi ptr [ %i.es, %bb.m ], [ %i.dw, %bb.k ], [ %i.es, %middle.block74 ], [ %i.es, %scalar.ph63 ], [ %i.es, %scalar.ph63.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %.0 = load ptr, ptr %i.ge, align 8, !tbaa !140  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !136

.loopexit:                                        ; preds = %set_island_marks.exit25, %set_island_marks.exit, %kh_get_oid_map.exit.thread, %kh_get_oid_map.exit
  ret void
}

declare ptr @repo_get_commit_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @free_island_marks() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %.not69 = icmp eq i32 %i.b, 0
  br i1 %.not69, label %kh_destroy_oid_map.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.e ] ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.f = lshr i32 %.010, 4
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = shl i32 %.010, 1
  %i.k = and i32 %i.j, 30
  %i.l = shl nuw i32 3, %i.k
  %i.m = and i32 %i.i, %i.l
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.o = zext i32 %.010 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !25
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.q) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.t = add i32 %.010, 1                         ; 2 uses
  %i.u = load i32, ptr %i.a, align 8, !tbaa !23
  %.not6 = icmp eq i32 %i.t, %i.u
  br i1 %.not6, label %kh_destroy_oid_map.exit, label %bb.b, !llvm.loop !146

kh_destroy_oid_map.exit:                          ; preds = %bb.e, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.w) #15
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.y) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.aa) #15
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.f

bb.f:                                             ; preds = %kh_destroy_oid_map.exit, %bb.a
  store ptr inttoptr (i64 -1 to ptr), ptr @island_marks, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 3) i32 @compute_pack_layers(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.object_id, align 8          ; 5 uses
  %2 = alloca %struct.object_id, align 8          ; 6 uses
  %i.a = load ptr, ptr @core_island_name, align 8, !tbaa !67
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr @island_marks, align 8     ; 2 uses
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.j = phi ptr [ %i.c, %.lr.ph ], [ %i.ci, %bb.k ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.l, i64 36, i1 false)
  %i.m = load i32, ptr %i.j, align 8, !tbaa !23   ; 4 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %kh_get_oid_map.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %.val.i = load i32, ptr %2, align 8
  %i.o = and i32 %.val.i, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %bb.c
  %.026.i = phi i32 [ %i.o, %bb.c ], [ %i.ar, %.critedge2.i ] ; 5 uses
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.ap, %.critedge2.i ]
  %i.s = lshr i32 %.026.i, 4
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25   ; 2 uses
  %i.w = shl i32 %.026.i, 1
  %i.x = and i32 %i.w, 30                         ; 2 uses
  %i.y = lshr i32 %i.v, %i.x                      ; 2 uses
  %i.z = and i32 %i.y, 2
  %.not30.i = icmp eq i32 %i.z, 0
  br i1 %.not30.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.aa = and i32 %i.y, 1
  %.not31.i = icmp eq i32 %i.aa, 0
  br i1 %.not31.i, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.ac = zext i32 %.026.i to i64
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %i.ad, i64 36, i1 false), !tbaa.struct !28
  %i.ae = load i128, ptr %1, align 8
  %i.af = load i128, ptr %2, align 8
  %i.ag = xor i128 %i.ae, %i.af
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = getelementptr i8, ptr %2, i64 16
  %i.aj = load i128, ptr %i.ah, align 8
  %i.ak = load i128, ptr %i.ai, align 8
  %i.al = xor i128 %i.aj, %i.ak
  %i.am = or i128 %i.ag, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not.i.i.not.i = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %.not.i.i.not.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.f, %bb.e
  %i.ap = add i32 %.0.i, 1                        ; 2 uses
  %i.aq = add i32 %i.ap, %.026.i
  %i.ar = and i32 %i.aq, %i.n                     ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.o
  br i1 %i.as, label %kh_get_oid_map.exit, label %bb.d, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.f, %bb.d
  %i.at = shl nuw i32 3, %i.x
  %i.au = and i32 %i.at, %i.v
  %.not33.i = icmp eq i32 %i.au, 0
  %spec.select.i = select i1 %.not33.i, i32 %.026.i, i32 %i.m
  br label %kh_get_oid_map.exit

kh_get_oid_map.exit:                              ; preds = %.critedge2.i, %bb.b, %.critedge.i
  %.1.i = phi i32 [ %spec.select.i, %.critedge.i ], [ 0, %bb.b ], [ %i.m, %.critedge2.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !148 ; 2 uses
  %.not.i16 = icmp eq ptr %i.av, null
  br i1 %.not.i16, label %bb.g, label %oe_set_layer.exit

bb.g:                                             ; preds = %kh_get_oid_map.exit
  %i.aw = load i32, ptr %i.i, align 4, !tbaa !149
end_hunk_1
