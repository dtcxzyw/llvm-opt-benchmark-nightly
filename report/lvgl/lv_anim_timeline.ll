Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_anim_timeline?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0_@lv_anim_timeline_set_progress:bb.a
  %.not3034.not.i = icmp eq i32 %i.b, 0
  br i1 %.not3034.not.i, label %lv_anim_timeline_get_playtime.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %i.c = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.f, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.01935.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.e, -1
  br i1 %.not29.i, label %lv_anim_timeline_get_playtime.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = add i32 %i.i, %i.e
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !13
  %i.l = zext i32 %i.k to i64
  %.not30.i = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %.not30.i, label %.lr.ph.i, label %lv_anim_timeline_get_playtime.exit, !llvm.loop !21

lv_anim_timeline_get_playtime.exit:               ; preds = %.lr.ph.i, %bb.b, %.preheader33.i
  %spec.select31.i = phi i32 [ 0, %.preheader33.i ], [ %spec.select.i, %bb.b ], [ -1, %.lr.ph.i ]
  %i.m = zext i16 %1 to i32
  %i.n = tail call i32 @lv_map(i32 noundef %i.m, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef %spec.select31.i) #6
  tail call fastcc void @anim_timeline_set_act_time(ptr noundef nonnull %0, i32 noundef %i.n)
  ret void
}

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @anim_timeline_set_act_time(ptr noundef initializes((12, 16)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  %i.b = tail call ptr @lv_anim_get(ptr noundef %0, ptr noundef nonnull @anim_timeline_exec_cb) #6
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %.not136 = icmp eq i32 %i.d, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %exec_anim.exit128, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %exec_anim.exit128
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %exec_anim.exit128 ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv ; 57 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 7 uses
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 16
  %.not99 = icmp eq i8 %i.m, 0
  br i1 %.not99, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4               ; 4 uses
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = and i8 %i.q, 1
  %.not112 = icmp eq i8 %i.r, 0
  br i1 %.not112, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %.not113 = icmp eq ptr %i.t, null
  br i1 %.not113, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.t(ptr noundef nonnull %i.g) #6
  %.pre140 = load i8, ptr %i.p, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.u = phi i8 [ %.pre140, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  %i.v = or i8 %i.u, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.w = and i8 %i.q, -2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i8 [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  store i8 %.sink, ptr %i.p, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.aa(ptr noundef %i.ab, i32 noundef %i.y) #6, !inline_history !38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.not8.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i, label %exec_anim.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.ad(ptr noundef nonnull %i.g, i32 noundef %i.y) #6, !inline_history !38
  br label %exec_anim.exit

exec_anim.exit:                                   ; preds = %bb.n, %bb.m
  %i.ae = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4             ; 4 uses
  br i1 %i.af, label %bb.o, label %bb.s

bb.o:                                             ; preds = %exec_anim.exit
  %i.ai = and i8 %i.ah, 2
  %.not114 = icmp eq i8 %i.ai, 0
  br i1 %.not114, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %.not115 = icmp eq ptr %i.ak, null
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.ak(ptr noundef nonnull %i.g) #6
  %.pre141 = load i8, ptr %i.ag, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.al = phi i8 [ %.pre141, %bb.q ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ]
  %i.am = or i8 %i.al, 2
  store i8 %i.am, ptr %i.ag, align 4
  br label %exec_anim.exit128

bb.s:                                             ; preds = %exec_anim.exit
  %i.an = and i8 %i.ah, -3
  store i8 %i.an, ptr %i.ag, align 4
  br label %exec_anim.exit128

bb.t:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = add i32 %i.ap, %i.i
  %.not101 = icmp ugt i32 %1, %i.aq
  br i1 %.not101, label %.thread.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not, label %.critedge117, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 11 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 3 uses
  %i.at = and i8 %i.as, 1
  %.not106 = icmp eq i8 %i.at, 0
  br i1 %.not106, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not107 = icmp eq ptr %i.av, null
  br i1 %.not107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void %i.av(ptr noundef nonnull %i.g) #6
  %.pre = load i8, ptr %i.ar, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.aw = phi i8 [ %.pre, %bb.x ], [ %i.as, %bb.w ], [ %i.as, %bb.v ]
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.ar, align 4
  %i.ay = sub nuw i32 %1, %i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %.not.i120 = icmp eq ptr %i.be, null
  br i1 %.not.i120, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.be(ptr noundef %i.bf, i32 noundef %i.bc) #6, !inline_history !38
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %.not8.i121 = icmp eq ptr %i.bh, null
  br i1 %.not8.i121, label %exec_anim.exit122, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void %i.bh(ptr noundef nonnull %i.g, i32 noundef %i.bc) #6, !inline_history !38
  br label %exec_anim.exit122

exec_anim.exit122:                                ; preds = %bb.ab, %bb.aa
  %i.bi = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %exec_anim.exit122
  %i.bk = icmp eq i32 %1, %i.i
  %i.bl = load i8, ptr %i.ar, align 4             ; 4 uses
  br i1 %i.bk, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bm = and i8 %i.bl, 2
  %.not110 = icmp eq i8 %i.bm, 0
  br i1 %.not110, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40 ; 2 uses
  %.not111 = icmp eq ptr %i.bo, null
  br i1 %.not111, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void %i.bo(ptr noundef nonnull %i.g) #6
  %.pre139 = load i8, ptr %i.ar, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = phi i8 [ %.pre139, %bb.af ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ad ]
  %i.bq = or i8 %i.bp, 2
  store i8 %i.bq, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.ah:                                            ; preds = %bb.ac
  %i.br = and i8 %i.bl, -3
  store i8 %i.br, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.ai:                                            ; preds = %exec_anim.exit122
  %i.bs = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.bt = add i32 %i.bs, %i.i
  %i.bu = icmp eq i32 %1, %i.bt
  %i.bv = load i8, ptr %i.ar, align 4             ; 4 uses
  br i1 %i.bu, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bw = and i8 %i.bv, 2
  %.not108 = icmp eq i8 %i.bw, 0
  br i1 %.not108, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !40 ; 2 uses
  %.not109 = icmp eq ptr %i.by, null
  br i1 %.not109, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void %i.by(ptr noundef nonnull %i.g) #6
  %.pre138 = load i8, ptr %i.ar, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.bz = phi i8 [ %.pre138, %bb.al ], [ %i.bv, %bb.ak ], [ %i.bv, %bb.aj ]
  %i.ca = or i8 %i.bz, 2
  store i8 %i.ca, ptr %i.ar, align 4
  br label %exec_anim.exit128

bb.an:                                            ; preds = %bb.ai
  %i.cb = and i8 %i.bv, -3
  store i8 %i.cb, ptr %i.ar, align 4
  br label %exec_anim.exit128

.thread:                                          ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %.pre142 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !32
  %.pre145 = add i32 %.pre142, %i.i
  %i.cc = icmp ugt i32 %1, %.pre145
  br i1 %i.cc, label %.thread.thread, label %exec_anim.exit128

.thread.thread:                                   ; preds = %bb.t, %.thread
  br i1 %.not, label %.critedge119, label %bb.ao

bb.ao:                                            ; preds = %.thread.thread
  %i.cd = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 4             ; 4 uses
  br i1 %i.ce, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ch = and i8 %i.cg, -2
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.ci = and i8 %i.cg, 1
  %.not102 = icmp eq i8 %i.ci, 0
  br i1 %.not102, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35 ; 2 uses
  %.not103 = icmp eq ptr %i.ck, null
  br i1 %.not103, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void %i.ck(ptr noundef nonnull %i.g) #6
  %.pre143 = load i8, ptr %i.cf, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.cl = phi i8 [ %.pre143, %bb.as ], [ %i.cg, %bb.ar ], [ %i.cg, %bb.aq ]
  %i.cm = or i8 %i.cl, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  %.sink168 = phi i8 [ %i.ch, %bb.ap ], [ %i.cm, %bb.at ]
  store i8 %.sink168, ptr %i.cf, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !34 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36 ; 2 uses
  %.not.i123 = icmp eq ptr %i.cq, null
  br i1 %.not.i123, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.cq(ptr noundef %i.cr, i32 noundef %i.co) #6, !inline_history !38
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 2 uses
  %.not8.i124 = icmp eq ptr %i.ct, null
  br i1 %.not8.i124, label %exec_anim.exit125, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void %i.ct(ptr noundef nonnull %i.g, i32 noundef %i.co) #6, !inline_history !38
  br label %exec_anim.exit125

exec_anim.exit125:                                ; preds = %bb.ax, %bb.aw
  %i.cu = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 140 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 4             ; 4 uses
  br i1 %i.cv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %exec_anim.exit125
  %i.cy = and i8 %i.cx, -3
  store i8 %i.cy, ptr %i.cw, align 4
  br label %exec_anim.exit128

bb.az:                                            ; preds = %exec_anim.exit125
  %i.cz = and i8 %i.cx, 2
  %.not104 = icmp eq i8 %i.cz, 0
  br i1 %.not104, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40 ; 2 uses
  %.not105 = icmp eq ptr %i.db, null
  br i1 %.not105, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void %i.db(ptr noundef nonnull %i.g) #6
  %.pre144 = load i8, ptr %i.cw, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.dc = phi i8 [ %.pre144, %bb.bb ], [ %i.cx, %bb.ba ], [ %i.cx, %bb.az ]
  %i.dd = or i8 %i.dc, 2
  store i8 %i.dd, ptr %i.cw, align 4
  br label %exec_anim.exit128

.critedge:                                        ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.df = load i32, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 2 uses
  %.not.i126 = icmp eq ptr %i.dh, null
  br i1 %.not.i126, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.dh(ptr noundef %i.di, i32 noundef %i.df) #6, !inline_history !38
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !39 ; 2 uses
  %.not8.i127 = icmp eq ptr %i.dk, null
  br i1 %.not8.i127, label %exec_anim.exit128, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void %i.dk(ptr noundef nonnull %i.g, i32 noundef %i.df) #6, !inline_history !38
  br label %exec_anim.exit128

.critedge117:                                     ; preds = %bb.u
  %i.dl = sub nuw i32 %1, %i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dp = tail call i32 %i.do(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !36 ; 2 uses
  %.not.i129 = icmp eq ptr %i.dr, null
  br i1 %.not.i129, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.critedge117
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.dr(ptr noundef %i.ds, i32 noundef %i.dp) #6, !inline_history !38
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge117
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !39 ; 2 uses
  %.not8.i130 = icmp eq ptr %i.du, null
  br i1 %.not8.i130, label %exec_anim.exit128, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void %i.du(ptr noundef nonnull %i.g, i32 noundef %i.dp) #6, !inline_history !38
  br label %exec_anim.exit128

.critedge119:                                     ; preds = %.thread.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !34 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !36 ; 2 uses
  %.not.i132 = icmp eq ptr %i.dy, null
  br i1 %.not.i132, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.critedge119
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.dy(ptr noundef %i.dz, i32 noundef %i.dw) #6, !inline_history !38
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.critedge119
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !39 ; 2 uses
  %.not8.i133 = icmp eq ptr %i.eb, null
  br i1 %.not8.i133, label %exec_anim.exit128, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void %i.eb(ptr noundef nonnull %i.g, i32 noundef %i.dw) #6, !inline_history !38
  br label %exec_anim.exit128

exec_anim.exit128:                                ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.ah, %bb.ag, %bb.an, %bb.am, %bb.bc, %bb.ay, %.thread, %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = load i32, ptr %i.c, align 8, !tbaa !13
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !42
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_anim_timeline_set_user_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  ret void
}

declare i32 @lv_anim_get_playtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @lv_anim_timeline_get_reverse(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_delay(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i16 @lv_anim_timeline_get_progress(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader33.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader33.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %.not3034.not.i = icmp eq i32 %i.b, 0
  br i1 %.not3034.not.i, label %lv_anim_timeline_get_playtime.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader33.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %i.c = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.f, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.01935.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.b ]
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = tail call i32 @lv_anim_get_playtime(ptr noundef %i.d) #6 ; 2 uses
  %.not29.i = icmp eq i32 %i.e, -1
  br i1 %.not29.i, label %lv_anim_timeline_get_playtime.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = add i32 %i.i, %i.e
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.01935.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !13
  %i.l = zext i32 %i.k to i64
  %.not30.i = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %.not30.i, label %.lr.ph.i, label %lv_anim_timeline_get_playtime.exit, !llvm.loop !21

lv_anim_timeline_get_playtime.exit:               ; preds = %.lr.ph.i, %bb.b, %.preheader33.i
  %spec.select31.i = phi i32 [ 0, %.preheader33.i ], [ %spec.select.i, %bb.b ], [ -1, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = tail call i32 @lv_map(i32 noundef %i.n, i32 noundef 0, i32 noundef %spec.select31.i, i32 noundef 0, i32 noundef 65535) #6
  %i.p = trunc i32 %i.o to i16
  ret i16 %i.p
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_repeat_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_anim_timeline_get_repeat_delay(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @lv_anim_timeline_get_user_data(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
end_hunk_0
