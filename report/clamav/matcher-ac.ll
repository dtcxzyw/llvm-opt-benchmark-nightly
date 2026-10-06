Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-ac?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_ac_freedata:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre78, i64 %indvars.iv74
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %.preheader
  %i.ae = phi ptr [ %.pre79, %._crit_edge63.loopexit ], [ %i.v, %.preheader ]
  tail call void @free(ptr noundef %i.ae) #20
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !96  ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv74
  store ptr null, ptr %i.ag, align 8, !tbaa !106
  %.pre80 = load i32, ptr %i.o, align 4, !tbaa !93
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge63, %.lr.ph65
  %i.ah = phi i32 [ %.pre80, %._crit_edge63 ], [ %i.s, %.lr.ph65 ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %._crit_edge63 ], [ %i.t, %.lr.ph65 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next75, %i.aj
  br i1 %i.ak, label %.lr.ph65, label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ai) #20
  store ptr null, ptr %i.q, align 8, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge66, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.am) #20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !94
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.ap) #20
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.aq) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.at) #20
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !97
  tail call void @free(ptr noundef %i.au) #20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !98
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.ax) #20
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.ay) #20
  store i32 0, ptr %i.o, align 4, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !89
  %.not54 = icmp eq i32 %i.ba, 0
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  tail call void @free(ptr noundef %i.bc) #20
  store i32 0, ptr %i.az, align 8, !tbaa !89
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @lsig_increment_subsig_match(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @lsig_sub_matched(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = zext i32 %2 to i64                       ; 11 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 4 uses
  %.not = icmp eq i32 %4, -2
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = zext i32 %3 to i64                       ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = icmp eq i32 %i.l, -2
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %4, ptr %i.k, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.j ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 3 uses
  %.not131 = icmp eq i32 %i.s, -2
  br i1 %.not131, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not132.not = icmp eq i32 %5, 0
  %.not133 = icmp ule i32 %4, %i.s
  %i.t = icmp ult i32 %4, %i.s
  %or.cond145 = select i1 %.not132.not, i1 %.not133, i1 %i.t
  br i1 %or.cond145, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.c
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.j ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !59
  %i.ab = icmp ult i32 %i.aa, 2
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !153 ; 2 uses
  %.not134 = icmp eq ptr %i.ad, null
  br i1 %.not134, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.j
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %.not135 = icmp eq i32 %i.af, 0
  br i1 %.not135, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i32 %4, ptr %i.r, align 4, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !155
  %i.ai = and i32 %i.ah, 2
  %.not136 = icmp eq i32 %i.ai, 0
  br i1 %.not136, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i32 noundef %2, i32 noundef %3, i32 noundef %4) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.c ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !156 ; 2 uses
  %i.aq = add i32 %i.ap, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 16
  %i.au = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.at) #24 ; 4 uses
  store ptr %i.au, ptr %i.al, align 8, !tbaa !106
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.31) #20
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  store i32 %i.ap, ptr %i.au, align 8, !tbaa !108
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.0 = phi ptr [ %i.au, %bb.n ], [ %i.am, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.j ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #22 ; 4 uses
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !110
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.32) #20
  br label %.critedge

.thread:                                          ; preds = %bb.p
  store i32 15, ptr %i.ba, align 4, !tbaa !158
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !159 ; 2 uses
  %.pre146 = load i32, ptr %i.ay, align 4, !tbaa !158 ; 2 uses
  %i.bc = icmp ugt i32 %.pre, %.pre146
  br i1 %i.bc, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bd = zext i32 %.pre146 to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 72
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.bf) #25 ; 6 uses
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !110
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.33) #20
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !158
  %i.bj = shl i32 %i.bi, 1
  %i.bk = add i32 %i.bj, 15
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !158
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.pre148 = load i32, ptr %.phi.trans.insert147, align 4, !tbaa !159
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u, %bb.r
  %i.bl = phi i32 [ %.pre148, %bb.u ], [ %.pre, %bb.r ], [ 0, %.thread ] ; 2 uses
  %.1 = phi ptr [ %i.bg, %bb.u ], [ %i.ay, %bb.r ], [ %i.ba, %.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 %4, ptr %i.bp, align 4, !tbaa !59
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !159
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.j, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !153 ; 2 uses
  %.not137 = icmp eq ptr %i.bs, null
  br i1 %.not137, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = zext i32 %3 to i64                      ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59 ; 2 uses
  %.not138 = icmp eq i32 %i.bv, 0
  br i1 %.not138, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.c
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bt
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cc = icmp ugt i32 %i.cb, 1
  br i1 %i.cc, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !38
  %i.cf = zext i32 %i.bv to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !30
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 76
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !30
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !115
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !59 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !97
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.c
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.bt
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59 ; 3 uses
  %i.da = icmp eq i32 %i.ct, -2
  %i.db = add i32 %i.cz, %i.ck
  %i.dc = icmp ugt i32 %i.db, %i.ct
  %or.cond140 = select i1 %i.da, i1 true, i1 %i.dc
  %i.dd = add i32 %i.cz, %i.cn
  %i.de = icmp ult i32 %i.dd, %i.ct
  %or.cond142 = select i1 %or.cond140, i1 true, i1 %i.de
  br i1 %or.cond142, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #20
  %i.df = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.c
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.bt ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !59
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.c
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.bt
  store i32 %4, ptr %i.do, align 4, !tbaa !59
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35, i32 noundef %i.cz, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.ct) #20
  %i.dp = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.c
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = add i32 %3, 1
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !59
  %i.dx = load ptr, ptr %i.cu, align 8, !tbaa !97
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.c
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !58
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dt
  store i32 %i.ct, ptr %i.ea, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.q, %bb.t, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.aa, %bb.e
  %.1118 = phi i32 [ 0, %bb.w ], [ 20, %bb.m ], [ 0, %bb.e ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ], [ 20, %bb.t ], [ 20, %bb.q ]
  ret i32 %.1118
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cli_ac_chkmacro(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !160
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nuw i32 %.013, 1                     ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !160
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.k = tail call i32 @lsig_sub_matched(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %.013, i32 noundef -2, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.k, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define range(i32 0, 65536) i32 @cli_ac_scanbuff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef captures(address_is_null) %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not522 = icmp eq ptr %i.d, null
  br i1 %.not522, label %.critedge16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not523 = icmp eq ptr %6, null
  br i1 %.not523, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %.not524 = icmp eq i32 %i.f, 0
  br i1 %.not524, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %.not525 = icmp eq i32 %i.h, 0
  br i1 %.not525, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100
  %.not526 = icmp eq i32 %i.j, 0
  br i1 %.not526, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36) #20
  br label %.critedge16

bb.g:                                             ; preds = %bb.e, %bb.b
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph740

.lr.ph740:                                        ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 200
  %.not580 = icmp eq ptr %4, null                 ; 2 uses
  %.not581 = icmp eq ptr %11, null                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  %.not583 = icmp eq ptr %2, null                 ; 2 uses
  %.not584 = icmp eq ptr %3, null                 ; 2 uses
  %.not589 = icmp eq ptr %9, null                 ; 2 uses
  %i.p = icmp eq i32 %8, 506                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %wide.trip.count803 = zext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph740, %.critedge16.thread654
  %indvars.iv801 = phi i64 [ 0, %.lr.ph740 ], [ %indvars.iv.next802.pre-phi, %.critedge16.thread654 ] ; 3 uses
  %.0432739 = phi i32 [ 0, %.lr.ph740 ], [ %.7, %.critedge16.thread654 ] ; 2 uses
  %.0435738 = phi i8 [ 0, %.lr.ph740 ], [ %.8, %.critedge16.thread654 ] ; 2 uses
  %.0456736 = phi ptr [ %i.d, %.lr.ph740 ], [ %i.x, %.critedge16.thread654 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0456736, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv801
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.smax.i32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p2 _ZTS11cli_bm_patt", !10, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"cli_hash_patt", !4, i64 0}
!14 = !{!"cli_hash_wild", !4, i64 0}
!15 = !{!"p2 _ZTS11cli_ac_lsig", !10, i64 0}
!16 = !{!"p1 _ZTS11cli_ac_node", !8, i64 0}
!17 = !{!"p2 _ZTS11cli_ac_node", !10, i64 0}
!18 = !{!"p2 _ZTS11cli_ac_list", !10, i64 0}
!19 = !{!"p2 _ZTS11cli_ac_patt", !10, i64 0}
!20 = !{!"p1 _ZTS6filter", !8, i64 0}
!21 = !{!"short", !4, i64 0}
!22 = !{!"p2 _ZTS13cli_pcre_meta", !10, i64 0}
!23 = !{!"p2 _ZTS14cli_bcomp_meta", !10, i64 0}
!24 = !{!"any p3 pointer", !10, i64 0}
!25 = !{!"p3 _ZTS11cli_ac_node", !24, i64 0}
!26 = !{!"long", !4, i64 0}
!27 = !{!"p1 _ZTS2MP", !8, i64 0}
!28 = !{!"cli_matcher", !5, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !13, i64 64, !14, i64 160, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !15, i64 256, !16, i64 264, !17, i64 272, !18, i64 280, !19, i64 288, !19, i64 296, !5, i64 304, !5, i64 308, !4, i64 312, !4, i64 313, !20, i64 320, !21, i64 328, !4, i64 330, !5, i64 332, !22, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !23, i64 360, !8, i64 368, !5, i64 376, !25, i64 384, !26, i64 392, !26, i64 400, !27, i64 408}
!29 = !{!28, !4, i64 313}
!30 = !{!21, !21, i64 0}
!31 = !{!"p1 short", !8, i64 0}
!32 = !{!"p2 _ZTS14cli_ac_special", !10, i64 0}
!33 = !{!"cli_ac_patt", !31, i64 0, !31, i64 8, !4, i64 16, !4, i64 22, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !4, i64 52, !9, i64 56, !8, i64 64, !4, i64 72, !4, i64 76, !21, i64 80, !21, i64 82, !21, i64 84, !21, i64 86, !32, i64 88, !21, i64 96, !21, i64 98, !4, i64 100, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 129}
!34 = !{!33, !31, i64 0}
!35 = !{!28, !4, i64 312}
!36 = !{!28, !5, i64 244}
!37 = !{!28, !27, i64 408}
!38 = !{!28, !19, i64 288}
!39 = !{!"p1 _ZTS11cli_ac_patt", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!33, !4, i64 128}
!42 = !{!28, !16, i64 264}
!43 = !{!"p1 _ZTS11cli_ac_list", !8, i64 0}
!44 = !{!"cli_ac_list", !39, i64 0, !4, i64 8, !43, i64 16}
!45 = !{!44, !39, i64 0}
!46 = !{!4, !4, i64 0}
!47 = !{!28, !5, i64 240}
!48 = !{!28, !18, i64 280}
!49 = !{!43, !43, i64 0}
!50 = !{!"cli_ac_node", !43, i64 0, !17, i64 8, !16, i64 16}
!51 = !{!50, !17, i64 8}
!52 = !{!28, !26, i64 392}
!53 = !{!28, !26, i64 400}
!54 = !{!28, !25, i64 384}
!55 = !{!17, !17, i64 0}
!56 = !{!33, !4, i64 129}
!57 = !{!31, !31, i64 0}
!58 = !{!12, !12, i64 0}
!59 = !{!5, !5, i64 0}
!60 = !{!16, !16, i64 0}
!61 = !{!28, !20, i64 320}
!62 = !{!28, !5, i64 0}
!63 = !{!44, !43, i64 16}
!64 = !{!50, !43, i64 0}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!50, !16, i64 16}
!67 = !{!33, !31, i64 8}
!68 = !{!33, !9, i64 56}
!69 = !{!33, !21, i64 84}
!70 = !{!28, !19, i64 296}
!71 = !{!28, !5, i64 236}
!72 = !{!28, !17, i64 272}
!73 = !{!33, !32, i64 88}
!74 = !{!"p1 _ZTS14cli_ac_special", !8, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"cli_ac_special", !4, i64 0, !4, i64 8, !21, i64 12, !21, i64 14, !21, i64 16}
!77 = !{!76, !21, i64 14}
!78 = !{!76, !21, i64 12}
!79 = !{!9, !9, i64 0}
!80 = !{!"p1 _ZTS12cli_alt_node", !8, i64 0}
!81 = !{!"cli_alt_node", !31, i64 0, !21, i64 8, !4, i64 10, !80, i64 16}
!82 = !{!81, !80, i64 16}
!83 = !{!81, !31, i64 0}
!84 = !{!"p3 int", !24, i64 0}
!85 = !{!"p2 int", !10, i64 0}
!86 = !{!"p2 _ZTS16cli_lsig_matches", !10, i64 0}
!87 = !{!"p1 _ZTS11cli_hashset", !8, i64 0}
!88 = !{!"cli_ac_data", !84, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !86, i64 48, !9, i64 56, !12, i64 64, !4, i64 72, !87, i64 200, !5, i64 208}
!89 = !{!88, !5, i64 16}
!90 = !{!88, !12, i64 64}
!91 = !{!88, !5, i64 8}
!92 = !{!88, !84, i64 0}
!93 = !{!88, !5, i64 12}
!94 = !{!88, !85, i64 24}
!95 = !{!88, !9, i64 56}
!96 = !{!88, !86, i64 48}
!97 = !{!88, !85, i64 32}
!98 = !{!88, !85, i64 40}
!99 = !{!88, !5, i64 208}
!100 = !{!28, !5, i64 304}
!101 = !{!88, !87, i64 200}
!102 = !{!33, !5, i64 116}
!103 = !{!33, !5, i64 120}
!104 = !{!85, !85, i64 0}
!105 = !{!"p1 _ZTS16cli_lsig_matches", !8, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"cli_lsig_matches", !5, i64 0, !4, i64 8}
!108 = !{!107, !5, i64 0}
!109 = !{!"p1 _ZTS18cli_subsig_matches", !8, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!28, !15, i64 256}
!112 = !{!"p1 _ZTS11cli_ac_lsig", !8, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"cli_lsig_tdb", !12, i64 0, !12, i64 8, !9, i64 16, !4, i64 24, !5, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !9, i64 104, !9, i64 112, !12, i64 120, !27, i64 128}
!115 = !{!33, !5, i64 36}
!116 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!117 = !{!33, !21, i64 82}
!118 = !{!33, !21, i64 86}
!119 = !{!33, !21, i64 98}
!120 = !{!33, !21, i64 80}
!121 = !{!33, !5, i64 32}
!122 = !{!33, !5, i64 28}
!123 = !{!33, !21, i64 96}
!124 = !{!"p1 _ZTS16cli_matched_type", !8, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"cli_matched_type", !124, i64 0, !26, i64 8, !5, i64 16, !21, i64 20}
!127 = !{!126, !21, i64 20}
!128 = !{!126, !26, i64 8}
!129 = !{!33, !8, i64 64}
!130 = !{!76, !21, i64 16}
!131 = !{!33, !5, i64 124}
!132 = !{!81, !21, i64 8}
!133 = !{!81, !4, i64 10}
!134 = distinct !{!134, !65}
!135 = !{!"p1 _ZTS8bfs_list", !8, i64 0}
!136 = !{!"bfs_list", !16, i64 0, !135, i64 8}
!137 = !{!136, !135, i64 8}
!138 = !{!136, !16, i64 0}
!139 = distinct !{!139, !141}
!140 = !{!26, !26, i64 0}
!141 = !{!"llvm.loop.peeled.count", i32 1}
!142 = distinct !{!142, !65}
!143 = distinct !{!143, !145, !146}
!144 = distinct !{!144, !146, !145}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
!147 = !{!"p1 _ZTS15cli_exe_section", !8, i64 0}
!148 = !{!"cli_hashset", !12, i64 0, !12, i64 8, !27, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!149 = !{!"pe_image_file_hdr", !5, i64 0, !21, i64 4, !21, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !21, i64 20, !21, i64 22}
!150 = !{!"cli_exe_info", !147, i64 0, !5, i64 8, !5, i64 12, !21, i64 16, !5, i64 20, !5, i64 24, !148, i64 32, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !149, i64 108, !4, i64 136, !4, i64 248}
!151 = !{!"cli_target_info", !26, i64 0, !150, i64 8, !5, i64 384}
!152 = !{!151, !26, i64 0}
!153 = !{!114, !12, i64 120}
!154 = !{!"cli_ac_lsig", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !4, i64 16, !9, i64 24, !114, i64 32}
!155 = !{!154, !5, i64 8}
!156 = !{!154, !5, i64 68}
!157 = !{!"cli_subsig_matches", !5, i64 0, !5, i64 4, !4, i64 8}
!158 = !{!157, !5, i64 0}
!159 = !{!157, !5, i64 4}
!160 = !{!114, !5, i64 36}
!161 = distinct !{!161, !65}
!162 = !{!28, !5, i64 232}
!163 = !{!28, !5, i64 248}
!164 = !{!"p1 long", !8, i64 0}
!165 = !{!"p1 _ZTS11cli_matcher", !8, i64 0}
!166 = !{!"p1 _ZTS9cl_engine", !8, i64 0}
!167 = !{!"p1 _ZTS15cl_scan_options", !8, i64 0}
!168 = !{!"p1 _ZTS14cli_scan_layer", !8, i64 0}
!169 = !{!"p1 _ZTS7cl_fmap", !8, i64 0}
!170 = !{!"p1 _ZTS9cli_dconf", !8, i64 0}
!171 = !{!"p1 _ZTS10bitset_tag", !8, i64 0}
!172 = !{!"p1 _ZTS10cli_events", !8, i64 0}
!173 = !{!"p1 _ZTS11json_object", !8, i64 0}
!174 = !{!"timeval", !26, i64 0, !26, i64 8}
!175 = !{!"_Bool", !4, i64 0}
!176 = !{!"cli_ctx_tag", !9, i64 0, !9, i64 8, !164, i64 16, !165, i64 24, !166, i64 32, !26, i64 40, !167, i64 48, !5, i64 56, !5, i64 60, !168, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !169, i64 88, !26, i64 96, !170, i64 104, !171, i64 112, !8, i64 120, !172, i64 128, !173, i64 136, !173, i64 144, !174, i64 152, !175, i64 168, !175, i64 169}
!177 = !{!176, !166, i64 32}
!178 = !{!"p2 _ZTS11cli_matcher", !10, i64 0}
!179 = !{!"p1 _ZTS7cli_cdb", !8, i64 0}
!180 = !{!"p1 _ZTS13regex_matcher", !8, i64 0}
!181 = !{!"p1 _ZTS10phishcheck", !8, i64 0}
!182 = !{!"p1 _ZTS9cli_ftype", !8, i64 0}
!183 = !{!"p2 _ZTS8cli_pwdb", !10, i64 0}
!184 = !{!"p1 _ZTS12icon_matcher", !8, i64 0}
!185 = !{!"p1 _ZTS5CACHE", !8, i64 0}
!186 = !{!"p1 _ZTS10cli_dbinfo", !8, i64 0}
!187 = !{!"p1 _ZTS9cli_crt_t", !8, i64 0}
!188 = !{!"", !187, i64 0, !5, i64 8}
!189 = !{!"p1 _ZTS6cli_bc", !8, i64 0}
!190 = !{!"p1 _ZTS12cli_bcengine", !8, i64 0}
!191 = !{!"cli_environment", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 93, !4, i64 158, !4, i64 223, !4, i64 288, !4, i64 353, !4, i64 418, !4, i64 483, !4, i64 484, !4, i64 485, !4, i64 486, !4, i64 487, !4, i64 488, !4, i64 489, !4, i64 490, !4, i64 491}
!192 = !{!"cli_all_bc", !189, i64 0, !5, i64 8, !190, i64 16, !191, i64 24, !5, i64 516}
!193 = !{!"p1 _ZTS12_yara_global", !8, i64 0}
!194 = !{!"cl_engine", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 20, !5, i64 24, !5, i64 28, !9, i64 32, !9, i64 40, !5, i64 48, !26, i64 56, !5, i64 64, !5, i64 68, !26, i64 72, !26, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !178, i64 104, !165, i64 112, !165, i64 120, !165, i64 128, !165, i64 136, !179, i64 144, !180, i64 152, !180, i64 160, !181, i64 168, !170, i64 176, !182, i64 184, !182, i64 192, !183, i64 200, !165, i64 208, !165, i64 216, !9, i64 224, !184, i64 232, !185, i64 240, !186, i64 248, !26, i64 256, !27, i64 264, !188, i64 272, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !192, i64 464, !4, i64 984, !4, i64 1040, !5, i64 1068, !5, i64 1072, !5, i64 1076, !5, i64 1080, !26, i64 1088, !26, i64 1096, !26, i64 1104, !26, i64 1112, !26, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !8, i64 1176, !8, i64 1184, !8, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !26, i64 1216, !26, i64 1224, !26, i64 1232, !193, i64 1240}
!195 = !{!194, !5, i64 92}
!196 = !{!8, !8, i64 0}
!197 = !{!"p1 _ZTS13cli_ac_result", !8, i64 0}
!198 = !{!197, !197, i64 0}
!199 = !{!"cli_ac_result", !9, i64 0, !8, i64 8, !26, i64 16, !197, i64 24}
!200 = !{!199, !197, i64 24}
!201 = !{!199, !26, i64 16}
!202 = !{!176, !167, i64 48}
!203 = !{!"cl_scan_options", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!204 = !{!203, !5, i64 0}
!205 = !{!126, !5, i64 16}
!206 = !{!126, !124, i64 0}
!207 = !{!28, !21, i64 328}
!208 = !{!80, !80, i64 0}
end_hunk_1
