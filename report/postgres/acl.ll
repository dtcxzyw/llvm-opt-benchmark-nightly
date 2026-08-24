Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/acl?download=true
inline.NumInlined: 621
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@aclmerge:bb.a

bb.t:                                             ; preds = %bb.s
  %i.cg = sext i32 %i.cf to i64
  br label %aclcopy.exit33

bb.u:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = shl nsw i64 %i.cj, 3
  %i.cl = add nsw i64 %i.ck, 16
  br label %aclcopy.exit33

aclcopy.exit33:                                   ; preds = %bb.t, %bb.u
  %i.cm = phi i64 [ %i.cg, %bb.t ], [ %i.cl, %bb.u ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.cp = load i32, ptr %i.b, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull readonly align 8 %i.co, i64 %i.cr, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %.not = icmp eq i32 %i.ct, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %aclcopy.exit33
  %i.cu = sext i32 %i.ct to i64
  br label %bb.x

bb.w:                                             ; preds = %aclcopy.exit33
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 3
  %i.cz = add nsw i64 %i.cy, 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = phi i64 [ %i.cu, %bb.v ], [ %i.cz, %bb.w ]
  %i.db = load i32, ptr %i.al, align 4            ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02436 = phi i32 [ %i.df, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02535 = phi ptr [ %i.dg, %.lr.ph ], [ %i.dd, %.lr.ph.preheader ] ; 2 uses
  %.02634 = phi ptr [ %i.de, %.lr.ph ], [ %i.bw, %.lr.ph.preheader ] ; 2 uses
  %i.de = tail call ptr @aclupdate(ptr noundef %.02634, ptr noundef nonnull %.02535, i32 noundef 1, i32 noundef %2, i32 noundef 0) ; 2 uses
  tail call void @pfree(ptr noundef %.02634) #12
  %i.df = add nuw nsw i32 %.02436, 1              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02535, i64 16
  %exitcond.not = icmp eq i32 %i.df, %i.db
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph, %bb.x, %bb.c, %bb.d, %aclcopy.exit31, %aclcopy.exit
  %.0 = phi ptr [ null, %bb.c ], [ %i.o, %aclcopy.exit ], [ %i.au, %aclcopy.exit31 ], [ null, %bb.d ], [ %i.bw, %bb.x ], [ %i.de, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @aclupdate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.AclItem, align 8            ; 7 uses
  tail call fastcc void @check_acl(ptr noundef %0)
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %check_circularity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not94 = icmp ult i64 %i.b, 4294967296
  br i1 %.not94, label %check_circularity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @check_acl(ptr noundef %0), !inline_history !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %3
  br i1 %i.e, label %check_circularity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %allocacl.exit102

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, i32 noundef %i.g) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__func__.allocacl) #12
  unreachable

allocacl.exit102:                                 ; preds = %bb.d
  %i.k = zext nneg i32 %i.g to i64
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = add nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.n = tail call ptr @palloc0(i64 noundef %i.m) #12 ; 8 uses
  %i.o = trunc i64 %i.m to i32
  %i.p = shl i32 %i.o, 2
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 1033, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i32 1, ptr %i.u, align 4
  store i32 %i.g, ptr %i.t, align 4
  %.val.i = load i32, ptr %0, align 4
  %i.v = lshr i32 %.val.i, 2
  %i.w = zext nneg i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr nonnull align 4 %0, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %allocacl.exit102
  %.0.i = phi ptr [ %i.n, %allocacl.exit102 ], [ %i.aq, %bb.l ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.aa to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i64 [ %i.ab, %bb.g ], [ %i.ag, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ah
  %i.aj = icmp sgt i32 %i.y, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ak = load i32, ptr %1, align 8
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, %i.ak
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %.not37.i = icmp ult i64 %i.ap, 4294967296
  br i1 %.not37.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call ptr @aclupdate(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.al, i32 noundef 2, i32 noundef %3, i32 noundef 1), !inline_history !6
  tail call void @pfree(ptr noundef nonnull %.0.i) #12, !inline_history !6
  br label %bb.f

bb.m:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.i, %bb.m
  %i.ar = load i32, ptr %i.c, align 4
  %i.as = load i64, ptr %i.a, align 8
  %i.at = and i64 %i.as, -4294967296
  %i.au = tail call i64 @aclmask(ptr noundef nonnull %.0.i, i32 noundef %i.ar, i32 noundef %3, i64 noundef %i.at, i32 noundef 0), !inline_history !6
  %i.av = load i64, ptr %i.a, align 8
  %i.aw = xor i64 %i.au, -1
  %i.ax = and i64 %i.av, %i.aw
  %.not36.i = icmp ult i64 %i.ax, 4294967296
  br i1 %.not36.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13, !inline_history !6 ; 0 uses
  %i.az = tail call i32 @errcode(i32 noundef 16910080) #12, !inline_history !6 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.54) #12, !inline_history !6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1311, ptr noundef nonnull @__func__.check_circularity) #12, !inline_history !6
  unreachable

bb.o:                                             ; preds = %._crit_edge
  tail call void @pfree(ptr noundef nonnull %.0.i) #12, !inline_history !6
  br label %check_circularity.exit

check_circularity.exit:                           ; preds = %bb.o, %bb.c, %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i32, ptr %i.bb, align 4            ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not95 = icmp eq i32 %i.be, 0
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %check_circularity.exit
  %i.bf = sext i32 %i.be to i64
  br label %bb.r

bb.q:                                             ; preds = %check_circularity.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = add nsw i64 %i.bj, 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = phi i64 [ %i.bf, %bb.p ], [ %i.bk, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl ; 2 uses
  %i.bn = icmp sgt i32 %i.bc, 0
  br i1 %i.bn, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %bb.r
  %i.bo = load i32, ptr %1, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.trip.count136 = zext nneg i32 %i.bc to i64 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph112, %aclitem_match.exit.thread
  %indvars.iv133 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next134, %aclitem_match.exit.thread ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %indvars.iv133 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.bo, %i.br
  br i1 %i.bs, label %aclitem_match.exit, label %aclitem_match.exit.thread

aclitem_match.exit:                               ; preds = %bb.s
  %i.bt = load i32, ptr %i.bp, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp eq i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.t, label %aclitem_match.exit.thread

bb.t:                                             ; preds = %aclitem_match.exit
  %i.bx = trunc nuw nsw i64 %indvars.iv133 to i32
  %i.by = shl nuw nsw i64 %wide.trip.count136, 4
  %i.bz = add nuw nsw i64 %i.by, 24               ; 2 uses
  %i.ca = tail call ptr @palloc0(i64 noundef %i.bz) #12 ; 9 uses
  %i.cb = trunc i64 %i.bz to i32
  %i.cc = shl i32 %i.cb, 2
  store i32 %i.cc, ptr %i.ca, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 1, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 1033, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i32 1, ptr %i.ch, align 4
  store i32 %i.bc, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.val = load i32, ptr %0, align 4
  %i.cj = lshr i32 %.val, 2
  %i.ck = zext nneg i32 %i.cj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr nonnull align 4 %0, i64 %i.ck, i1 false)
  br label %.loopexit

aclitem_match.exit.thread:                        ; preds = %bb.s, %aclitem_match.exit
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit.thread, label %bb.s, !llvm.loop !8

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.083105 = phi i32 [ %i.bx, %bb.t ], [ 0, %bb.r ] ; 3 uses
  %.085 = phi ptr [ %i.ca, %bb.t ], [ null, %bb.r ]
  %.084 = phi ptr [ %i.ci, %bb.t ], [ null, %bb.r ]
  %i.cl = icmp eq i32 %.083105, %i.bc
  br i1 %i.cl, label %.loopexit.thread, label %bb.w

.loopexit.thread:                                 ; preds = %aclitem_match.exit.thread, %.loopexit
  %.083105172 = phi i32 [ %.083105, %.loopexit ], [ %i.bc, %aclitem_match.exit.thread ]
  %i.cm = add i32 %i.bc, 1                        ; 5 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit.thread
  %i.co = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.cp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, i32 noundef %i.cm) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__func__.allocacl) #12
  unreachable

bb.v:                                             ; preds = %.loopexit.thread
  %i.cq = zext nneg i32 %i.cm to i64
  %i.cr = shl nuw nsw i64 %i.cq, 4
  %i.cs = add nuw nsw i64 %i.cr, 24               ; 2 uses
  %i.ct = tail call ptr @palloc0(i64 noundef %i.cs) #12 ; 8 uses
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = shl i32 %i.cu, 2
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 1, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 1033, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 1, ptr %i.da, align 4
  store i32 %i.cm, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 3 uses
  %6 = sext i32 %i.bc to i64
  %i.dc = shl nsw i64 %6, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.bm, i64 %i.dc, i1 false)
  %i.dd = load i32, ptr %1, align 8
  %7 = zext nneg i32 %i.bc to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %7 ; 3 uses
  store i32 %i.dd, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 0, ptr %i.di, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %.083105171 = phi i32 [ %.083105172, %bb.v ], [ %.083105, %.loopexit ] ; 2 uses
  %.186 = phi ptr [ %i.ct, %bb.v ], [ %.085, %.loopexit ] ; 14 uses
  %.1 = phi ptr [ %i.db, %bb.v ], [ %.084, %.loopexit ]
  %.0 = phi i32 [ %i.cm, %bb.v ], [ %i.bc, %.loopexit ] ; 2 uses
  %i.dj = zext nneg i32 %.083105171 to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %i.dj ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8            ; 4 uses
  switch i32 %2, label %bb.aa [
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = or i64 %i.do, %i.dm
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = xor i64 %i.dr, -1
  %i.dt = and i64 %i.dm, %i.ds
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load i64, ptr %i.du, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.y, %bb.z
  %.sink = phi i64 [ %i.dv, %bb.z ], [ %i.dt, %bb.y ], [ %i.dp, %bb.x ] ; 2 uses
  store i64 %.sink, ptr %i.dl, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.w
  %i.dw = phi i64 [ %i.dm, %bb.w ], [ %.sink, %.sink.split ] ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dz = xor i32 %.083105171, -1
  %i.ea = add i32 %.0, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 8 %i.dy, i64 %i.ec, i1 false)
  %i.ed = add i32 %.0, -1                         ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.186, i64 16
  store i32 %i.ed, ptr %i.ee, align 4
  %i.ef = shl i32 %i.ed, 6
  %i.eg = add i32 %i.ef, 96
  store i32 %i.eg, ptr %.186, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = xor i64 %i.dw, -1
  %i.ei = and i64 %i.dm, %i.eh                    ; 2 uses
  %i.ej = lshr i64 %i.ei, 32                      ; 2 uses
  %.not98 = icmp eq i64 %i.ej, 0
  br i1 %.not98, label %recursive_revoke.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load i32, ptr %1, align 8               ; 5 uses
  tail call fastcc void @check_acl(ptr noundef %.186), !inline_history !9
  %i.el = icmp eq i32 %i.ek, %3
  br i1 %i.el, label %recursive_revoke.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = and i64 %i.ei, -4294967296
  %i.en = tail call i64 @aclmask(ptr noundef %.186, i32 noundef %i.ek, i32 noundef %3, i64 noundef %i.em, i32 noundef 0), !inline_history !9
  %i.eo = lshr i64 %i.en, 32
  %i.ep = xor i64 %i.eo, -1
  %i.eq = and i64 %i.ej, %i.ep                    ; 4 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %recursive_revoke.exit, label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.es = icmp eq i32 %4, 0
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eu = mul nuw i64 %i.eq, 4294967297
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %i.es, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.ew = getelementptr inbounds nuw i8, ptr %.186, i64 16
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.186, i64 8
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %.not.i100.us = icmp eq i32 %i.ez, 0
  br i1 %.not.i100.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.preheader.split.us
  %i.fa = sext i32 %i.ez to i64
  br label %bb.ah

bb.ag:                                            ; preds = %.preheader.split.us
  %i.fb = getelementptr inbounds nuw i8, ptr %.186, i64 4
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 3
  %i.ff = add nsw i64 %i.fe, 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fg = phi i64 [ %i.fa, %bb.af ], [ %i.ff, %bb.ag ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.186, i64 %i.fg
  %i.fi = icmp sgt i32 %i.ex, 0
  br i1 %i.fi, label %.lr.ph116.us.preheader, label %recursive_revoke.exit

.lr.ph116.us.preheader:                           ; preds = %bb.ah
  %wide.trip.count146 = zext nneg i32 %i.ex to i64
  br label %.lr.ph116.us

.lr.ph116.us:                                     ; preds = %.lr.ph116.us.preheader, %bb.aj
  %indvars.iv143 = phi i64 [ 0, %.lr.ph116.us.preheader ], [ %indvars.iv.next144, %bb.aj ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv143 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp eq i32 %i.fl, %i.ek
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph116.us
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = and i64 %i.fo, %i.eq
  %.not44.i.us = icmp eq i64 %i.fp, 0
  br i1 %.not44.i.us, label %bb.aj, label %.split.us

bb.aj:                                            ; preds = %bb.ai, %.lr.ph116.us
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %recursive_revoke.exit, label %.lr.ph116.us, !llvm.loop !10

.split.us:                                        ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.fq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13, !inline_history !9 ; 0 uses
  %i.fr = tail call i32 @errcode(i32 noundef 16909442) #12, !inline_history !9 ; 0 uses
  %i.fs = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.55) #12, !inline_history !9 ; 0 uses
  %i.ft = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.56) #12, !inline_history !9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1373, ptr noundef nonnull @__func__.recursive_revoke) #12, !inline_history !9
  unreachable

.preheader.split:                                 ; preds = %.preheader, %bb.ao
  %.039.i = phi ptr [ %i.gp, %bb.ao ], [ %.186, %.preheader ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.039.i, i64 8
  %i.fx = load i32, ptr %i.fw, align 4            ; 2 uses
  %.not.i100 = icmp eq i32 %i.fx, 0
  br i1 %.not.i100, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader.split
  %i.fy = sext i32 %i.fx to i64
  br label %bb.am

bb.al:                                            ; preds = %.preheader.split
  %i.fz = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 3
  %i.gd = add nsw i64 %i.gc, 16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ge = phi i64 [ %i.fy, %bb.ak ], [ %i.gd, %bb.al ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.039.i, i64 %i.ge
  %i.gg = icmp sgt i32 %i.fv, 0
  br i1 %i.gg, label %.lr.ph116.preheader, label %recursive_revoke.exit

.lr.ph116.preheader:                              ; preds = %bb.am
  %wide.trip.count141 = zext nneg i32 %i.fv to i64
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.ap
  %indvars.iv138 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next139, %bb.ap ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv138 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = icmp eq i32 %i.gj, %i.ek
  br i1 %i.gk, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph116
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = and i64 %i.gm, %i.eq
  %.not44.i = icmp eq i64 %i.gn, 0
  br i1 %.not44.i, label %bb.ap, label %bb.ao
end_hunk_0
