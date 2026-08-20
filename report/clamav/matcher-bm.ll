begin_hunk_0_@cli_bm_addpatt:bb.a
  %.0105135 = phi i16 [ 0, %.lr.ph ], [ %i.bg, %bb.p ] ; 5 uses
  %i.an = zext i16 %.0105135 to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !42
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !42
  %i.aw = zext i8 %i.av to i64
  %.idx = mul nuw nsw i64 %i.at, 296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %.idx157 = mul nuw nsw i64 %i.aq, 1688
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx157
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43
  %.not122 = icmp eq ptr %i.ba, null
  br i1 %.not122, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not123 = icmp eq i16 %.0105135, 0
  br i1 %.not123, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i16 %.0105135, ptr %i.bd, align 2, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.an ; 2 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !8
  %i.bf = sub i16 %i.ai, %.0105135
  store i16 %i.bf, ptr %i.b, align 8, !tbaa !14
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  %i.bg = add nuw i16 %.0105135, 1                ; 2 uses
  %i.bh = icmp ugt i16 %i.ak, %i.bg
  br i1 %i.bh, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.l, %bb.n, %bb.o
  %.0104 = phi ptr [ %i.be, %bb.o ], [ %i.a, %bb.n ], [ %i.a, %bb.l ], [ %i.a, %bb.p ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0104, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0104, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i8, ptr %.0104, align 1, !tbaa !42
  %i.bm = zext i8 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 211
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bp = zext i8 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bp, 37
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  %i.bs = load i8, ptr %i.bj, align 1, !tbaa !42
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.br, %i.bt            ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43 ; 5 uses
  %.not124137 = icmp eq ptr %i.ca, null
  br i1 %.not124137, label %._crit_edge.thread, label %.lr.ph140

.lr.ph140:                                        ; preds = %.loopexit
  %i.cb = load i8, ptr %.0104, align 1, !tbaa !42 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 62
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !47
  %.not125164 = icmp ult i8 %i.cb, %i.cd
  br i1 %.not125164, label %.lr.ph166, label %._crit_edge.thread

bb.q:                                             ; preds = %.lr.ph166
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ch, i64 62
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !47
  %.not125 = icmp ult i8 %i.cb, %i.cf
  br i1 %.not125, label %.lr.ph166, label %.._crit_edge_crit_edge168

.lr.ph166:                                        ; preds = %.lr.ph140, %bb.q
  %.0139165 = phi ptr [ %i.ch, %bb.q ], [ %i.ca, %.lr.ph140 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0139165, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !48 ; 4 uses
  %.not124 = icmp eq ptr %i.ch, null
  br i1 %.not124, label %.critedge, label %bb.q

.._crit_edge_crit_edge168:                        ; preds = %bb.q
  %i.ci = icmp eq ptr %i.ch, %i.ca
  br i1 %i.ci, label %._crit_edge.thread, label %.critedge

._crit_edge.thread:                               ; preds = %.lr.ph140, %.loopexit, %.._crit_edge_crit_edge168
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ca, ptr %i.cj, align 8, !tbaa !48
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !43 ; 2 uses
  %.not126 = icmp eq ptr %i.ck, null
  br i1 %.not126, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 60
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i16 %i.cm, ptr %i.cn, align 4, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.thread
  store ptr %1, ptr %i.bz, align 8, !tbaa !43
  br label %bb.t

.critedge:                                        ; preds = %.lr.ph166, %.._crit_edge_crit_edge168
  %i.co = getelementptr inbounds nuw i8, ptr %.0139165, i64 48 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !48
  store ptr %1, ptr %i.co, align 8, !tbaa !48
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.s
  %i.cr = phi ptr [ %.pre, %.critedge ], [ %1, %bb.s ]
  %i.cs = load ptr, ptr %1, align 8, !tbaa !8
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.ct, ptr %i.cu, align 2, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 60 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !49
  %i.cx = add i16 %i.cw, 1
  store i16 %i.cx, ptr %i.cv, align 4, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !39
  %.not127 = icmp eq i32 %i.cz, 0
  br i1 %.not127, label %._crit_edge148, label %bb.u

._crit_edge148:                                   ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre149 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !50
  %i.dg = add i32 %i.df, 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = tail call ptr @mpool_realloc2(ptr noundef %i.db, ptr noundef %i.dd, i64 noundef %i.di) #9 ; 3 uses
  store ptr %i.dj, ptr %i.dc, align 8, !tbaa !51
  %.not128 = icmp eq ptr %i.dj, null
  br i1 %.not128, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3) #9
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.dk = load i32, ptr %i.de, align 8, !tbaa !50 ; 4 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  store ptr %1, ptr %i.dm, align 8, !tbaa !43
  %i.dn = load i32, ptr %i.h, align 8, !tbaa !35
  %.not129 = icmp eq i32 %i.dn, 1
  br i1 %.not129, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.dk, ptr %i.i, align 8, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge148, %bb.w, %bb.x
  %i.do = phi i32 [ %.pre149, %._crit_edge148 ], [ %i.dk, %bb.w ], [ %i.dk, %bb.x ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dq = add i32 %i.do, 1
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !50
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.k, %bb.d, %bb.b
  %.0108 = phi i32 [ 4, %bb.b ], [ %i.k, %bb.d ], [ 0, %bb.y ], [ 20, %bb.v ], [ 4, %bb.k ]
  ret i32 %.0108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_caloff(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_add_static(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @mpool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mpool_realloc2(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 21) i32 @cli_bm_init(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__.cli_bm_init) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @mpool_calloc(ptr noundef nonnull %i.b, i64 noundef 63496, i64 noundef 1) #9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !46
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.f = tail call ptr @mpool_calloc(ptr noundef %i.e, i64 noundef 63496, i64 noundef 8) #9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !41
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !46
  tail call void @mpool_free(ptr noundef %i.h, ptr noundef %i.i) #9
  br label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ 0, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 1, ptr %i.k, align 1, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader

.loopexit:                                        ; preds = %bb.c, %bb.e
  ret i32 20
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @cli_bm_initoff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((8, 24)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !53
  store i32 0, ptr %i.c, align 8, !tbaa !55
  %i.e = zext i32 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !56
  %.not64 = icmp eq ptr %i.g, null
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.7) #9
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !57
  %.not65 = icmp eq ptr %i.i, null
  br i1 %.not65, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.8) #9
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.k) #9
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.bu, %bb.p ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.v = load i16, ptr %i.u, align 2, !tbaa !45
  %i.w = zext i16 %i.v to i32
  %i.x = add i32 %i.t, %i.w
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.z = load i32, ptr %i.c, align 8, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !35
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i64, ptr %2, align 8, !tbaa !58
  %.not72 = icmp sgt i64 %i.ah, %i.ag
  br i1 %.not72, label %.sink.split, label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %0, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !52
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.al
  %i.an = tail call i32 @cli_caloff(ptr noundef null, ptr noundef %2, i32 noundef %i.ai, ptr noundef nonnull %i.p, ptr noundef %i.am, ptr noundef null) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.an, 0
  br i1 %.not66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.9, ptr noundef %i.ap) #9
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.aq) #9
  %i.ar = load ptr, ptr %1, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.ar) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !57    ; 6 uses
  %i.at = load i32, ptr %i.aj, align 8, !tbaa !52
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35 ; 4 uses
  %.not67 = icmp eq i32 %i.aw, -2
  br i1 %.not67, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !14
  %i.az = zext i16 %i.ay to i32
  %i.ba = add i32 %i.aw, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load i64, ptr %2, align 8, !tbaa !58    ; 2 uses
  %.not68 = icmp slt i64 %i.bc, %i.bb
  br i1 %.not68, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %.not69 = icmp eq i32 %i.bd, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !45 ; 2 uses
  br i1 %.not69, label %._crit_edge79, label %bb.n

._crit_edge79:                                    ; preds = %bb.m
  %.pre80 = load ptr, ptr %i.h, align 8, !tbaa !56
  %.pre83 = zext i16 %.pre to i32
  %.pre84 = add i32 %i.aw, %.pre83
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = zext i16 %.pre to i32
  %i.bf = add i32 %i.aw, %i.be                    ; 2 uses
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.bh = add i32 %i.bd, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %.not70 = icmp eq i32 %i.bf, %i.bk
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge79, %bb.n
  %.pre-phi85 = phi i32 [ %.pre84, %._crit_edge79 ], [ %i.bf, %bb.n ]
  %i.bl = phi ptr [ %.pre80, %._crit_edge79 ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bm = zext i32 %i.bd to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  store i32 %.pre-phi85, ptr %i.bn, align 4, !tbaa !35
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = zext i32 %i.br to i64
  %.not71 = icmp samesign ugt i64 %i.bc, %i.bs
  br i1 %.not71, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.h
  %.sink95 = phi i32 [ %i.ac, %bb.h ], [ %i.bo, %bb.o ]
  %.ph = phi ptr [ %i.l, %bb.h ], [ %i.as, %bb.o ]
  %i.bt = add i32 %.sink95, 1
  store i32 %i.bt, ptr %i.c, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.n, %bb.o, %bb.h
  %i.bu = phi ptr [ %i.as, %bb.o ], [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.l, %bb.h ], [ %i.as, %bb.n ], [ %.ph, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !50
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre82 = load i32, ptr %i.c, align 8, !tbaa !55
  %.pre81 = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.by = zext i32 %.pre82 to i64
  tail call void @cli_qsort(ptr noundef %.pre81, i64 noundef %i.by, i64 noundef 4, ptr noundef null) #9
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.j, %bb.f, %bb.d, %bb.b
  %.060 = phi i32 [ %i.an, %bb.j ], [ 0, %._crit_edge ], [ 20, %bb.f ], [ 20, %bb.d ], [ 0, %bb.b ]
  ret i32 %.060
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @cli_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cli_bm_freeoff(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.a) #9
  store ptr null, ptr %0, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.c) #9
  store ptr null, ptr %i.b, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_bm_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.h, ptr noundef nonnull %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.not3336 = icmp eq ptr %i.n, null
  br i1 %.not3336, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.02637 = phi ptr [ %i.p, %bb.j ], [ %i.n, %bb.f ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02637, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02637, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not34 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !40
  br i1 %.not34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %.02637, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.sink = phi ptr [ %i.t, %bb.g ], [ %i.r, %.lr.ph ]
  tail call void @mpool_free(ptr noundef %i.s, ptr noundef %.sink) #9
  %i.u = getelementptr inbounds nuw i8, ptr %.02637, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 2 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.w, ptr noundef nonnull %i.v) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.x, ptr noundef nonnull %.02637) #9
  %.not33 = icmp eq ptr %i.p, null
  br i1 %.not33, label %bb.k, label %.lr.ph

bb.k:                                             ; preds = %bb.j, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f

bb.l:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_bm_scanbuff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit293, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %.not245 = icmp eq ptr %i.d, null
  %i.e = icmp ult i32 %1, 3
  %or.cond290 = or i1 %i.e, %.not245
  br i1 %or.cond290, label %.loopexit293, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not246 = icmp eq ptr %7, null                 ; 5 uses
  br i1 %.not246, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 4 uses
  %.not247 = icmp eq i32 %i.g, 0
  br i1 %.not247, label %.loopexit293, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = icmp eq i32 %i.i, %i.g
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pr = phi i32 [ %i.k, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.not248327 = icmp eq i32 %.pr, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !56 ; 3 uses
  br i1 %.not248327, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.l = phi i32 [ %i.q, %bb.h ], [ %.pr, %bb.g ] ; 3 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = icmp ugt i32 %i.o, %5
  br i1 %i.p, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i32 %i.l, -1                         ; 3 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !53
  %.not248 = icmp eq i32 %i.q, 0
  br i1 %.not248, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %i.r = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = icmp ult i32 %i.u, %5
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.w = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.w, ptr %i.h, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.x = phi i32 [ %i.w, %bb.i ], [ %i.r, %.critedge ] ; 2 uses
  %.not249 = icmp ult i32 %i.x, %i.g
  br i1 %.not249, label %bb.k, label %.loopexit293

bb.k:                                             ; preds = %bb.j
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = sub i32 %i.aa, %5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.0206 = phi i32 [ %i.ab, %bb.k ], [ 0, %bb.c ] ; 2 uses
  %i.ac = add i32 %1, -2                          ; 3 uses
  %i.ad = icmp ult i32 %.0206, %i.ac
  br i1 %i.ad, label %.lr.ph337.lr.ph, label %.outer._crit_edge

.lr.ph337.lr.ph:                                  ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not266 = icmp eq ptr %6, null
  %.not268 = icmp eq ptr %2, null
  %.not269 = icmp eq ptr %8, null                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.not271 = icmp eq ptr %3, null
  br label %.lr.ph337

.lr.ph337:                                        ; preds = %.lr.ph337.lr.ph, %.outer
  %.0.ph367 = phi i32 [ 0, %.lr.ph337.lr.ph ], [ %.4, %.outer ] ; 5 uses
  %.1207.ph366 = phi i32 [ %.0206, %.lr.ph337.lr.ph ], [ %.3209, %.outer ]
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph337, %bb.w
  %.1207336 = phi i32 [ %.1207.ph366, %.lr.ph337 ], [ %.2208, %bb.w ] ; 11 uses
  %i.ak = zext i32 %.1207336 to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42  ; 3 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, 211
  %i.ap = add nuw i32 %.1207336, 1                ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.at = zext i8 %i.as to i64
  %i.au = mul nuw nsw i64 %i.at, 37
  %i.av = add nuw nsw i64 %i.au, %i.ao
  %i.aw = add nuw i32 %.1207336, 2
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %i.ba = zext i8 %i.az to i64
  %i.bb = add nuw nsw i64 %i.av, %i.ba            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !42  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.n, label %.loopexit.loopexit370

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 4 uses
  %.not250 = icmp eq ptr %i.bh, null
  br i1 %.not250, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !49
  %i.bk = icmp eq i16 %i.bj, 1
  br i1 %i.bk, label %bb.p, label %.lr.ph354

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 62
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !47
  %.not251 = icmp eq i8 %i.bm, %i.am
  br i1 %.not251, label %.lr.ph354, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not246, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add i32 %.1207336, %5                   ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !55 ; 3 uses
  %.promoted = load i32, ptr %i.ag, align 4, !tbaa !53 ; 3 uses
  %i.bp = icmp ult i32 %.promoted, %i.bo
  br i1 %i.bp, label %.lr.ph330, label %.critedge2

.lr.ph330:                                        ; preds = %bb.r
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.br = zext i32 %.promoted to i64
  %wide.trip.count = zext i32 %i.bo to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph330, %bb.t
  %indvars.iv = phi i64 [ %i.br, %.lr.ph330 ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !35
  %.not277 = icmp ult i32 %i.bn, %i.bt
  br i1 %.not277, label %.critedge2.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bu = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bu, ptr %i.ag, align 4, !tbaa !53
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.thread, label %bb.s

.critedge2.loopexit:                              ; preds = %bb.s
  %i.bv = trunc nuw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.r
  %.lcssa295 = phi i32 [ %.promoted, %bb.r ], [ %i.bv, %.critedge2.loopexit ] ; 2 uses
  %i.bw = icmp eq i32 %.lcssa295, %i.bo
  br i1 %i.bw, label %.critedge2.thread, label %bb.u

bb.u:                                             ; preds = %.critedge2
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.by = zext i32 %.lcssa295 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35 ; 2 uses
end_hunk_0
