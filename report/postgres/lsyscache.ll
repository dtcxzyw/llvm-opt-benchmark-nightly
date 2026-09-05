Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/lsyscache?download=true
inline.NumInlined: 282
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lappend_oid
declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @get_compatible_hash_operators(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not47 = icmp eq ptr %2, null                  ; 4 uses
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = zext i32 %0 to i64
  %i.b = tail call ptr @SearchSysCacheList(i32 noundef 3, i32 noundef 1, i64 noundef %i.a, i64 noundef 0, i64 noundef 0) #6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread66

.lr.ph:                                           ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not47, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.g = zext nneg i32 %i.d to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %.thread.us.us
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next99, %.thread.us.us ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv98
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 80
  %.val.us.us = load ptr, ptr %i.j, align 8       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.us.us, i64 22
  %i.l = load i8, ptr %i.k, align 2
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val.us.us, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 405
  br i1 %i.q, label %bb.f, label %.thread.us.us

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i16, ptr %i.r, align 4
  %i.t = icmp eq i16 %i.s, 1
  br i1 %i.t, label %bb.g, label %.thread.us.us

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %.split.us, label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.g, %bb.f, %.lr.ph.split.us.split.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next99, %i.g
  br i1 %i.z, label %.lr.ph.split.us.split.us, label %.thread66, !llvm.loop !10

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.thread.us
  %i.aa = phi i32 [ %i.bf, %.thread.us ], [ %i.d, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.thread.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 80
  %.val.us = load ptr, ptr %i.ad, align 8         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.us, i64 22
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 405
  br i1 %i.ak, label %bb.h, label %.thread.us

bb.h:                                             ; preds = %.lr.ph.split.us.split
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i16, ptr %i.al, align 4
  %i.an = icmp eq i16 %i.am, 1
  br i1 %i.an, label %bb.i, label %.thread.us

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %.split.us, label %.critedge.us

.critedge.us:                                     ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = zext i32 %i.ar to i64                   ; 2 uses
  %i.ax = tail call ptr @SearchSysCache4(i32 noundef 4, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.aw, i64 noundef 1) #6 ; 3 uses
  %.not.i53.us = icmp eq ptr %i.ax, null
  br i1 %.not.i53.us, label %get_opfamily_member.exit56.us.thread, label %get_opfamily_member.exit56.us

get_opfamily_member.exit56.us.thread:             ; preds = %.critedge.us
  store i32 0, ptr %2, align 4
  br label %get_opfamily_member.exit56.us..thread.us_crit_edge

get_opfamily_member.exit56.us:                    ; preds = %.critedge.us
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val.i54.us = load ptr, ptr %i.ay, align 8     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i54.us, i64 22
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i54.us, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.ax) #6
  store i32 %i.be, ptr %2, align 4
  %.not49.us.not = icmp eq i32 %i.be, 0
  br i1 %.not49.us.not, label %get_opfamily_member.exit56.us..thread.us_crit_edge, label %.thread66

get_opfamily_member.exit56.us..thread.us_crit_edge: ; preds = %get_opfamily_member.exit56.us.thread, %get_opfamily_member.exit56.us
  %.pre = load i32, ptr %i.c, align 8
  br label %.thread.us

.thread.us:                                       ; preds = %get_opfamily_member.exit56.us..thread.us_crit_edge, %bb.h, %.lr.ph.split.us.split
  %i.bf = phi i32 [ %.pre, %get_opfamily_member.exit56.us..thread.us_crit_edge ], [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next97, %i.bg
  br i1 %i.bh, label %.lr.ph.split.us.split, label %.thread66, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not47, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.thread.us79
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.thread.us79 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv94
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 80
  %.val.us76 = load ptr, ptr %i.bk, align 8       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.us76, i64 22
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.us76, i64 %i.bn ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp eq i32 %i.bq, 405
  br i1 %i.br, label %bb.j, label %.thread.us79

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load i16, ptr %i.bs, align 4
  %i.bu = icmp eq i16 %i.bt, 1
  br i1 %i.bu, label %bb.k, label %.thread.us79

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = zext i32 %i.bw to i64                   ; 2 uses
  %i.ce = tail call ptr @SearchSysCache4(i32 noundef 4, i64 noundef %i.cc, i64 noundef %i.cd, i64 noundef %i.cd, i64 noundef 1) #6 ; 3 uses
  %.not.i.us = icmp eq ptr %i.ce, null
  br i1 %.not.i.us, label %get_opfamily_member.exit.thread.us, label %get_opfamily_member.exit.us

get_opfamily_member.exit.us:                      ; preds = %bb.l
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %.val.i.us = load ptr, ptr %i.cf, align 8       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.us, i64 22
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.us, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.ce) #6
  store i32 %i.cl, ptr %1, align 4
  %.not48.us.not = icmp eq i32 %i.cl, 0
  br i1 %.not48.us.not, label %.thread.us79, label %.thread66

get_opfamily_member.exit.thread.us:               ; preds = %bb.l
  store i32 0, ptr %1, align 4
  br label %.thread.us79

.thread.us79:                                     ; preds = %get_opfamily_member.exit.us, %get_opfamily_member.exit.thread.us, %bb.j, %.lr.ph.split.split.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.cm = load i32, ptr %i.c, align 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next95, %i.cn
  br i1 %i.co, label %.lr.ph.split.split.us, label %.thread66, !llvm.loop !10

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 80
  %.val = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.ct = load i8, ptr %i.cs, align 2
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cu ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp eq i32 %i.cx, 405
  br i1 %i.cy, label %bb.m, label %.thread

bb.m:                                             ; preds = %.lr.ph.split.split
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.da = load i16, ptr %i.cz, align 4
  %i.db = icmp eq i16 %i.da, 1
  br i1 %i.db, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp eq i32 %i.dd, %i.df
  br i1 %i.dg, label %.split.us, label %bb.r

.split.us:                                        ; preds = %bb.n, %bb.k, %bb.i, %bb.g
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split.us
  store i32 %0, ptr %1, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split.us
  br i1 %.not47, label %.thread66, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %0, ptr %2, align 4
  br label %.thread66

bb.r:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = zext i32 %i.dd to i64                   ; 2 uses
  %i.dl = tail call ptr @SearchSysCache4(i32 noundef 4, i64 noundef %i.dj, i64 noundef %i.dk, i64 noundef %i.dk, i64 noundef 1) #6 ; 3 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %.thread.sink.split, label %get_opfamily_member.exit

get_opfamily_member.exit:                         ; preds = %bb.r
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.val.i = load ptr, ptr %i.dm, align 8          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.dl) #6
  store i32 %i.ds, ptr %1, align 4
  %.not48.not = icmp eq i32 %i.ds, 0
  br i1 %.not48.not, label %.thread, label %.critedge

.critedge:                                        ; preds = %get_opfamily_member.exit
  %i.dt = load i32, ptr %i.dh, align 4
  %i.du = load i32, ptr %i.de, align 4
  %i.dv = zext i32 %i.dt to i64
  %i.dw = zext i32 %i.du to i64                   ; 2 uses
  %i.dx = tail call ptr @SearchSysCache4(i32 noundef 4, i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef %i.dw, i64 noundef 1) #6 ; 3 uses
  %.not.i53 = icmp eq ptr %i.dx, null
  br i1 %.not.i53, label %get_opfamily_member.exit56.thread, label %get_opfamily_member.exit56

get_opfamily_member.exit56.thread:                ; preds = %.critedge
  store i32 0, ptr %2, align 4
  br label %.thread.sink.split

get_opfamily_member.exit56:                       ; preds = %.critedge
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %.val.i54 = load ptr, ptr %i.dy, align 8        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i54, i64 22
  %i.ea = load i8, ptr %i.dz, align 2
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i54, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.dx) #6
  store i32 %i.ee, ptr %2, align 4
  %.not49.not = icmp eq i32 %i.ee, 0
  br i1 %.not49.not, label %.thread.sink.split, label %.thread66

.thread.sink.split:                               ; preds = %get_opfamily_member.exit56, %get_opfamily_member.exit56.thread, %bb.r
  store i32 0, ptr %1, align 4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %get_opfamily_member.exit, %.lr.ph.split.split, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = load i32, ptr %i.c, align 8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %.lr.ph.split.split, label %.thread66, !llvm.loop !10

.thread66:                                        ; preds = %get_opfamily_member.exit56, %.thread, %.thread.us79, %get_opfamily_member.exit.us, %.thread.us, %get_opfamily_member.exit56.us, %.thread.us.us, %bb.e, %bb.q, %bb.p
  %.2 = phi i1 [ true, %bb.p ], [ true, %bb.q ], [ false, %bb.e ], [ true, %get_opfamily_member.exit.us ], [ false, %.thread.us.us ], [ false, %.thread.us ], [ true, %get_opfamily_member.exit56.us ], [ false, %.thread.us79 ], [ false, %.thread ], [ true, %get_opfamily_member.exit56 ]
  tail call void @ReleaseCatCacheList(ptr noundef nonnull %i.b) #6
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @get_op_hash_functions(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not43 = icmp eq ptr %2, null                  ; 3 uses
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = zext i32 %0 to i64
  %i.b = tail call ptr @SearchSysCacheList(i32 noundef 3, i32 noundef 1, i64 noundef %i.a, i64 noundef 0, i64 noundef 0) #6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not43, label %.loopexit, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.thread58.us
  %i.g = phi i32 [ %i.ai, %.thread58.us ], [ %i.d, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %.thread58.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv89
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 80
  %.val.us = load ptr, ptr %i.j, align 8          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.us, i64 22
  %i.l = load i8, ptr %i.k, align 2
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 405
  br i1 %i.q, label %bb.f, label %.thread58.us

bb.f:                                             ; preds = %.lr.ph.split.us.split
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i16, ptr %i.r, align 4
  %i.t = icmp eq i16 %i.s, 1
  br i1 %i.t, label %.thread.us, label %.thread58.us

.thread.us:                                       ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.v to i64
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %i.aa = tail call ptr @SearchSysCache4(i32 noundef 5, i64 noundef %i.y, i64 noundef %i.z, i64 noundef %i.z, i64 noundef 1) #6 ; 3 uses
  %.not.i49.us = icmp eq ptr %i.aa, null
  br i1 %.not.i49.us, label %get_opfamily_proc.exit52.us.thread, label %get_opfamily_proc.exit52.us

get_opfamily_proc.exit52.us.thread:               ; preds = %.thread.us
  store i32 0, ptr %2, align 4
  br label %get_opfamily_proc.exit52.us..thread58.us_crit_edge

get_opfamily_proc.exit52.us:                      ; preds = %.thread.us
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.val.i50.us = load ptr, ptr %i.ab, align 8     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i50.us, i64 22
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i50.us, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.aa) #6
  store i32 %i.ah, ptr %2, align 4
  %.not45.us.not = icmp eq i32 %i.ah, 0
  br i1 %.not45.us.not, label %get_opfamily_proc.exit52.us..thread58.us_crit_edge, label %.loopexit

get_opfamily_proc.exit52.us..thread58.us_crit_edge: ; preds = %get_opfamily_proc.exit52.us.thread, %get_opfamily_proc.exit52.us
  %.pre = load i32, ptr %i.c, align 8
  br label %.thread58.us

.thread58.us:                                     ; preds = %get_opfamily_proc.exit52.us..thread58.us_crit_edge, %bb.f, %.lr.ph.split.us.split
  %i.ai = phi i32 [ %.pre, %get_opfamily_proc.exit52.us..thread58.us_crit_edge ], [ %i.g, %bb.f ], [ %i.g, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next90, %i.aj
  br i1 %i.ak, label %.lr.ph.split.us.split, label %.loopexit, !llvm.loop !11

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not43, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.thread58.us75
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.thread58.us75 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv87
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 80
  %.val.us72 = load ptr, ptr %i.an, align 8       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.us72, i64 22
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.us72, i64 %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, 405
  br i1 %i.au, label %bb.g, label %.thread58.us75

bb.g:                                             ; preds = %.lr.ph.split.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = icmp eq i16 %i.aw, 1
  br i1 %i.ax, label %bb.h, label %.thread58.us75

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.az to i64
  %i.bd = zext i32 %i.bb to i64                   ; 2 uses
  %i.be = tail call ptr @SearchSysCache4(i32 noundef 5, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %i.bd, i64 noundef 1) #6 ; 3 uses
  %.not.i.us = icmp eq ptr %i.be, null
  br i1 %.not.i.us, label %get_opfamily_proc.exit.thread.us, label %get_opfamily_proc.exit.us

get_opfamily_proc.exit.us:                        ; preds = %bb.h
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %.val.i.us = load ptr, ptr %i.bf, align 8       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.us, i64 22
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.us, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.be) #6
  store i32 %i.bl, ptr %1, align 4
  %.not44.us.not = icmp eq i32 %i.bl, 0
  br i1 %.not44.us.not, label %.thread58.us75, label %.loopexit

get_opfamily_proc.exit.thread.us:                 ; preds = %bb.h
  store i32 0, ptr %1, align 4
  br label %.thread58.us75

.thread58.us75:                                   ; preds = %get_opfamily_proc.exit.us, %get_opfamily_proc.exit.thread.us, %bb.g, %.lr.ph.split.split.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.bm = load i32, ptr %i.c, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next88, %i.bn
  br i1 %i.bo, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !11

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.thread58
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread58 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 80
  %.val = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.bt = load i8, ptr %i.bs, align 2
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp eq i32 %i.bx, 405
  br i1 %i.by, label %bb.i, label %.thread58

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = icmp eq i16 %i.ca, 1
  br i1 %i.cb, label %bb.j, label %.thread58

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = zext i32 %i.cd to i64
  %i.ch = zext i32 %i.cf to i64                   ; 2 uses
  %i.ci = tail call ptr @SearchSysCache4(i32 noundef 5, i64 noundef %i.cg, i64 noundef %i.ch, i64 noundef %i.ch, i64 noundef 1) #6 ; 3 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %.thread58.sink.split, label %get_opfamily_proc.exit

get_opfamily_proc.exit:                           ; preds = %bb.j
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  %.val.i = load ptr, ptr %i.cj, align 8          ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4            ; 3 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.ci) #6
  store i32 %i.cp, ptr %1, align 4
  %.not44.not = icmp eq i32 %i.cp, 0
  br i1 %.not44.not, label %.thread58, label %bb.k

bb.k:                                             ; preds = %get_opfamily_proc.exit
  %i.cq = load i32, ptr %i.ce, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %.thread62, label %.thread

.thread62:                                        ; preds = %bb.k
  store i32 %i.cp, ptr %2, align 4
  br label %.loopexit

.thread:                                          ; preds = %bb.k
  %i.cu = load i32, ptr %i.cc, align 4
  %i.cv = zext i32 %i.cu to i64
  %i.cw = zext i32 %i.cs to i64                   ; 2 uses
  %i.cx = tail call ptr @SearchSysCache4(i32 noundef 5, i64 noundef %i.cv, i64 noundef %i.cw, i64 noundef %i.cw, i64 noundef 1) #6 ; 3 uses
  %.not.i49 = icmp eq ptr %i.cx, null
  br i1 %.not.i49, label %get_opfamily_proc.exit52.thread, label %get_opfamily_proc.exit52

get_opfamily_proc.exit52.thread:                  ; preds = %.thread
  store i32 0, ptr %2, align 4
  br label %.thread58.sink.split

get_opfamily_proc.exit52:                         ; preds = %.thread
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %.val.i50 = load ptr, ptr %i.cy, align 8        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i50, i64 22
  %i.da = load i8, ptr %i.cz, align 2
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i50, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.cx) #6
  store i32 %i.de, ptr %2, align 4
  %.not45.not = icmp eq i32 %i.de, 0
  br i1 %.not45.not, label %.thread58.sink.split, label %.loopexit

.thread58.sink.split:                             ; preds = %get_opfamily_proc.exit52, %get_opfamily_proc.exit52.thread, %bb.j
  store i32 0, ptr %1, align 4
  br label %.thread58

.thread58:                                        ; preds = %.thread58.sink.split, %get_opfamily_proc.exit, %.lr.ph.split.split, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.c, align 8
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %get_opfamily_proc.exit52, %.thread58, %.thread58.us75, %get_opfamily_proc.exit.us, %.thread58.us, %get_opfamily_proc.exit52.us, %.lr.ph.split.us, %bb.e, %.thread62
  %.2 = phi i1 [ true, %.thread62 ], [ false, %bb.e ], [ false, %.lr.ph.split.us ], [ true, %get_opfamily_proc.exit.us ], [ false, %.thread58.us ], [ true, %get_opfamily_proc.exit52.us ], [ false, %.thread58.us75 ], [ true, %get_opfamily_proc.exit52 ], [ false, %.thread58 ]
  tail call void @ReleaseCatCacheList(ptr noundef nonnull %i.b) #6
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_opfamily_proc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = zext i32 %1 to i64
  %i.c = zext i32 %2 to i64
  %i.d = sext i16 %3 to i64
  %i.e = tail call ptr @SearchSysCache4(i32 noundef 5, i64 noundef %i.a, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.d) #6 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @get_op_hash_functions_ext(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %0, label %bb.j [
    i32 1070, label %bb.f
    i32 2988, label %bb.g
    i32 3882, label %bb.h
    i32 2860, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.a = tail call ptr @lookup_type_cache(i32 noundef %1, i32 noundef 16) #6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4
  %.not26 = icmp eq i32 %i.c, 626
  br i1 %.not26, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.d = tail call ptr @lookup_type_cache(i32 noundef %1, i32 noundef 16) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %.not25 = icmp eq i32 %i.f, 6192
  br i1 %.not25, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.g = tail call ptr @lookup_type_cache(i32 noundef %1, i32 noundef 16) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.i = load i32, ptr %i.h, align 4
  %.not24 = icmp eq i32 %i.i, 3902
  br i1 %.not24, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.j = tail call ptr @lookup_type_cache(i32 noundef %1, i32 noundef 16) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %.not23 = icmp eq i32 %i.l, 4278
  br i1 %.not23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.h, %bb.f
  %i.m = tail call zeroext i1 @get_op_hash_functions(i32 noundef %0, ptr noundef %2, ptr noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j
  %.0 = phi i1 [ false, %bb.h ], [ %i.m, %bb.j ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.0
}

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
end_hunk_0
