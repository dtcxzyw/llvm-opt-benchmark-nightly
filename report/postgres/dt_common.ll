inline.NumInlined: 40
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ParseDateTime:bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.fi, ptr %5, align 8
  %i.fj = load i8, ptr %i.e, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.ph313, i64 1 ; 2 uses
  store i8 %i.fj, ptr %.0.ph313, align 1
  %i.fl = load ptr, ptr %i.c, align 8
  %i.fm = load ptr, ptr %5, align 8               ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = zext i16 %i.fq to i32                   ; 2 uses
  %i.fs = and i32 %i.fr, 8192
  %.not137213 = icmp eq i32 %i.fs, 0
  br i1 %.not137213, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.w, %.lr.ph215
  %i.ft = phi ptr [ %i.fu, %.lr.ph215 ], [ %i.fm, %bb.w ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 3 uses
  store ptr %i.fu, ptr %5, align 8
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = load i8, ptr %i.fu, align 1
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = and i32 %i.ga, 8192
  %.not137 = icmp eq i32 %i.gb, 0
  br i1 %.not137, label %._crit_edge216, label %.lr.ph215, !llvm.loop !15

._crit_edge216:                                   ; preds = %.lr.ph215, %bb.w
  %.lcssa182 = phi i32 [ %i.fr, %bb.w ], [ %i.ga, %.lr.ph215 ] ; 2 uses
  %i.gc = and i32 %.lcssa182, 2048
  %.not138 = icmp eq i32 %i.gc, 0
  br i1 %.not138, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge216
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 4, ptr %i.gd, align 4
  %i.ge = load ptr, ptr %5, align 8               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store ptr %i.gf, ptr %5, align 8
  %i.gg = load i8, ptr %i.ge, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.ph313, i64 2
  store i8 %i.gg, ptr %i.fk, align 1
  br label %bb.y

bb.y:                                             ; preds = %.critedge8, %bb.x
  %.10 = phi ptr [ %i.gh, %bb.x ], [ %i.gr, %.critedge8 ] ; 3 uses
  %i.gi = load ptr, ptr %i.c, align 8
  %i.gj = load ptr, ptr %5, align 8               ; 3 uses
  %i.gk = load i8, ptr %i.gj, align 1             ; 2 uses
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2
  %.fr158 = freeze i16 %i.gn
  %i.go = and i16 %.fr158, 2048
  %.not141.not = icmp eq i16 %i.go, 0
  br i1 %.not141.not, label %switch.early.test156, label %.critedge8

switch.early.test156:                             ; preds = %bb.y
  switch i8 %i.gk, label %.loopexit [
    i8 58, label %.critedge8
    i8 46, label %.critedge8
  ]

.critedge8:                                       ; preds = %switch.early.test156, %switch.early.test156, %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.gp, ptr %5, align 8
  %i.gq = load i8, ptr %i.gj, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.gq, ptr %.10, align 1
  br label %bb.y, !llvm.loop !16

bb.z:                                             ; preds = %._crit_edge216
  %i.gs = and i32 %.lcssa182, 1024
  %.not139 = icmp eq i32 %i.gs, 0
  br i1 %.not139, label %.loopexit164, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 6, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %5, align 8               ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  store ptr %i.gv, ptr %5, align 8
  %i.gw = load i8, ptr %i.gu, align 1
  %i.gx = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.gw) #16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.ph313, i64 2 ; 2 uses
  store i8 %i.gx, ptr %i.fk, align 1
  %i.gz = load ptr, ptr %i.c, align 8
  %i.ha = load ptr, ptr %5, align 8               ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = and i16 %i.he, 1024
  %.not140218 = icmp eq i16 %i.hf, 0
  br i1 %.not140218, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.aa, %.lr.ph221
  %i.hg = phi ptr [ %i.hm, %.lr.ph221 ], [ %i.ha, %bb.aa ] ; 2 uses
  %.11219 = phi ptr [ %i.hk, %.lr.ph221 ], [ %i.gy, %bb.aa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hh, ptr %5, align 8
  %i.hi = load i8, ptr %i.hg, align 1
  %i.hj = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.hi) #16
  %i.hk = getelementptr inbounds nuw i8, ptr %.11219, i64 1 ; 2 uses
  store i8 %i.hj, ptr %.11219, align 1
  %i.hl = load ptr, ptr %i.c, align 8
  %i.hm = load ptr, ptr %5, align 8               ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = and i16 %i.hq, 1024
  %.not140 = icmp eq i16 %i.hr, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph221, !llvm.loop !17

bb.ab:                                            ; preds = %bb.v
  %i.hs = and i32 %i.j, 4
  %.not136 = icmp eq i32 %i.hs, 0
  br i1 %.not136, label %.loopexit164, label %.backedge

.loopexit.sink.split:                             ; preds = %.lr.ph227, %bb.o, %._crit_edge192
  %.12.ph = phi ptr [ %.1.lcssa, %._crit_edge192 ], [ %.7223, %bb.o ], [ %.7, %.lr.ph227 ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 0, ptr %i.ht, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m, %switch.early.test, %bb.t, %switch.early.test156, %.lr.ph221, %.loopexit.sink.split, %bb.aa, %._crit_edge209, %._crit_edge201
  %.12 = phi ptr [ %.2, %switch.early.test ], [ %.9, %bb.t ], [ %i.gy, %bb.aa ], [ %.10, %switch.early.test156 ], [ %.5, %bb.m ], [ %.8.lcssa, %._crit_edge209 ], [ %.12.ph, %.loopexit.sink.split ], [ %i.hk, %.lr.ph221 ], [ %.3.lcssa, %._crit_edge201 ], [ %.4, %bb.j ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 0, ptr %.12, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %.pre = load ptr, ptr %5, align 8
  %i.hv = load i8, ptr %.pre, align 1
  %.not185 = icmp eq i8 %i.hv, 0
  br i1 %.not185, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !14

.outer._crit_edge:                                ; preds = %.loopexit, %.backedge, %bb.a
  %indvars.iv310 = phi i64 [ %indvars.iv312, %.backedge ], [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ]
  %.0126.ph256 = trunc i64 %indvars.iv310 to i32
  store i32 %.0126.ph256, ptr %4, align 4
  br label %.loopexit164

.loopexit164:                                     ; preds = %.lr.ph, %bb.z, %bb.ab, %.outer._crit_edge
  %.0127 = phi i32 [ 0, %.outer._crit_edge ], [ -1, %bb.ab ], [ -1, %bb.z ], [ -1, %.lr.ph ]
  ret i32 %.0127
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare zeroext i8 @pg_tolower(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @DecodeDateTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef initializes((0, 12), (32, 36)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, i1 noundef zeroext %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tm, align 8                 ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.tm, align 8                 ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.tm, align 8                 ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.tm, align 8                ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 38 uses
  %i.g = alloca i8, align 1                       ; 9 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i32 2, ptr %3, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 14 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 13 uses
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  store i32 -1, ptr %i.n, align 8
  store i32 0, ptr %i.h, align 4
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = add nsw i32 %2, -1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.w = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 -4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.dc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dc ] ; 13 uses
  %.0282483 = phi i1 [ false, %.lr.ph ], [ %.2284, %bb.dc ] ; 29 uses
  %.0285482 = phi i1 [ false, %.lr.ph ], [ %.2287, %bb.dc ] ; 30 uses
  %.0288481 = phi i32 [ 2, %.lr.ph ], [ %.2290, %bb.dc ] ; 29 uses
  %.0292476 = phi i32 [ 0, %.lr.ph ], [ %.6298, %bb.dc ] ; 23 uses
  %.0299472 = phi i32 [ 0, %.lr.ph ], [ %.1300, %bb.dc ] ; 18 uses
  %i.x = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 9 uses
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %.thread416 [
    i32 2, label %bb.c
    i32 3, label %bb.aa
    i32 4, label %bb.af
    i32 0, label %bb.am
    i32 1, label %bb.bo
    i32 6, label %bb.bo
  ]

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.0292476, 31
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @strtoint(ptr noundef %i.ab, ptr noundef nonnull %i.i, i32 noundef 10) #16 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %.not356 = icmp eq i8 %i.ae, 45
  br i1 %.not356, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.af = add i32 %i.ac, 32044                    ; 2 uses
  %i.ag = udiv i32 %i.af, 146097                  ; 2 uses
  %.neg.i = mul i32 %i.ag, 1073595727
  %i.ah = add i32 %.neg.i, %i.af
  %i.ai = shl i32 %i.ah, 2
  %i.aj = or disjoint i32 %i.ai, 3
  %i.ak = mul nuw nsw i32 %i.ag, 3
  %i.al = udiv i32 %i.aj, 146097
  %i.am = add i32 %i.ac, 32104
  %i.an = add i32 %i.am, %i.ak
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = udiv i32 %i.ao, 1461                    ; 2 uses
  %.neg24.i = mul i32 %i.ap, -1461
  %i.aq = add i32 %.neg24.i, %i.ao                ; 3 uses
  %i.ar = shl i32 %i.aq, 2                        ; 2 uses
  %.not.i = icmp ult i32 %i.ar, 1461
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = add i32 %i.aq, 305
  %i.at = urem i32 %i.as, 365
  br label %j2date.exit

bb.g:                                             ; preds = %bb.e
  %i.au = add i32 %i.aq, 306
  %i.av = urem i32 %i.au, 366
  br label %j2date.exit

j2date.exit:                                      ; preds = %bb.f, %bb.g
  %i.aw = phi i32 [ %i.at, %bb.f ], [ %i.av, %bb.g ]
  %i.ax = udiv i32 %i.ar, 1461
  %i.ay = add nuw nsw i32 %i.aw, 123              ; 2 uses
  %i.az = shl nuw nsw i32 %i.ap, 2
  %i.ba = add nsw i32 %i.az, -4800
  %i.bb = add nsw i32 %i.ba, %i.ax
  store i32 %i.bb, ptr %i.t, align 4
  %i.bc = mul nuw nsw i32 %i.ay, 2141
  %i.bd = lshr i32 %i.bc, 16                      ; 2 uses
  %i.be = mul nuw nsw i32 %i.bd, 3917
  %i.bf = lshr i32 %i.be, 7
  %i.bg = sub nsw i32 %i.ay, %i.bf
  store i32 %i.bg, ptr %i.s, align 4
  %i.bh = trunc nuw nsw i32 %i.bd to i8
  %.lhs.trunc.i = add nuw nsw i8 %i.bh, 10
  %i.bi = urem i8 %.lhs.trunc.i, 12
  %narrow.i = add nuw nsw i8 %i.bi, 1
  %i.bj = zext nneg i8 %narrow.i to i32
  store i32 %i.bj, ptr %i.r, align 8
  %i.bk = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.h)
  %.not357 = icmp eq i32 %i.bk, 0
  br i1 %.not357, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %j2date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %.thread416

bb.h:                                             ; preds = %j2date.exit
  store i32 7214, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.da

bb.i:                                             ; preds = %bb.c
  %i.bl = and i32 %.0299472, 14
  %i.bm = icmp eq i32 %i.bl, 14
  %i.bn = icmp ne i32 %.0292476, 0                ; 2 uses
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call ptr @__ctype_b_loc() #17
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 7 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 3 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = and i16 %i.bv, 2048
  %i.bx = icmp ne i16 %i.bw, 0
  %or.cond9 = select i1 %i.bx, i1 true, i1 %i.bn
  br i1 %or.cond9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  switch i32 %.0292476, label %.thread416 [
    i32 3, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.by = and i32 %.0299472, 7168
  %i.bz = icmp eq i32 %i.by, 7168
  br i1 %i.bz, label %.thread416, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.br, i32 noundef 45) #15 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread416, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.h)
  %.not355 = icmp eq i32 %i.cc, 0
  br i1 %.not355, label %bb.o, label %.thread416

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ca, align 1
  %i.cd = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #15
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = call fastcc i32 @DecodeNumberField(i32 noundef %i.cf, ptr noundef nonnull %i.cd, i32 noundef %.0299472, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g) ; 2 uses
  store i32 %i.cg, ptr %i.x, align 4
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.thread416, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.f, align 4
  %i.cj = or i32 %i.ci, 32
  store i32 %i.cj, ptr %i.f, align 4
  br label %bb.da

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %.not20.i = icmp eq i8 %i.bs, 0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %i.ck = phi i8 [ %i.cq, %bb.r ], [ %i.bs, %bb.q ]
  %.021.i = phi ptr [ %i.cp, %bb.r ], [ %i.br, %bb.q ] ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, 1024
  %.not13.i = icmp eq i16 %i.co, 0
  br i1 %.not13.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.021.i, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  %.not.i369 = icmp eq i8 %i.cq, 0
  br i1 %.not.i369, label %.critedge.i, label %.lr.ph.i, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.r, %.lr.ph.i, %bb.q
  %.0.lcssa.i = phi ptr [ %i.br, %bb.q ], [ %.021.i, %.lr.ph.i ], [ %i.cp, %bb.r ] ; 5 uses
  %i.cr = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %.0.lcssa.i, ptr noundef nonnull %i.e)
  %.not14.i = icmp eq i32 %i.cr, 0
  br i1 %.not14.i, label %bb.s, label %DecodePosixTimezone.exit.thread

bb.s:                                             ; preds = %.critedge.i
  %i.cs = load i8, ptr %.0.lcssa.i, align 1       ; 2 uses
  store i8 0, ptr %.0.lcssa.i, align 1
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) %i.ct, i64 noundef 10) #15
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %DecodeSpecial.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cw = load i8, ptr %i.br, align 1
  %i.cx = sext i8 %i.cw to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.02030.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @datetktbl, i64 4416), %bb.u ], [ %.1.i.i.i, %bb.x ] ; 2 uses
  %.02329.i.i.i = phi ptr [ @datetktbl, %bb.u ], [ %.124.i.i.i, %bb.x ] ; 3 uses
  %i.cy = ptrtoint ptr %.02030.i.i.i to i64
  %i.cz = ptrtoint ptr %.02329.i.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr i64 %i.da, 5
  %i.dc = getelementptr inbounds [16 x i8], ptr %.02329.i.i.i, i64 %i.db ; 5 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = sext i8 %i.dd to i32
  %i.df = sub nsw i32 %i.cx, %i.de                ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) %i.dc, i64 noundef 10) #15 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %DecodeSpecial.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.019.i.i.i = phi i32 [ %i.dh, %bb.w ], [ %i.df, %bb.v ]
  %i.dj = icmp slt i32 %.019.i.i.i, 0             ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 -16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.124.i.i.i = select i1 %i.dj, ptr %.02329.i.i.i, ptr %i.dl ; 2 uses
  %.1.i.i.i = select i1 %i.dj, ptr %i.dk, ptr %.02030.i.i.i ; 2 uses
  %.not.not.i.i.i = icmp ult ptr %.1.i.i.i, %.124.i.i.i
  br i1 %.not.not.i.i.i, label %DecodeSpecial.exit.thread.i, label %bb.v, !llvm.loop !3

DecodeSpecial.exit.thread.i:                      ; preds = %bb.x
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16
  store i8 %i.cs, ptr %.0.lcssa.i, align 1
  br label %DecodePosixTimezone.exit.thread

DecodeSpecial.exit.i:                             ; preds = %bb.w, %bb.t
  %.0.ph.i.i = phi ptr [ %i.ct, %bb.t ], [ %i.dc, %bb.w ] ; 3 uses
  store ptr %.0.ph.i.i, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 11
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = sext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 12
  %i.dq = load i32, ptr %i.dp, align 4
  store i8 %i.cs, ptr %.0.lcssa.i, align 1
  %.off.i = add nsw i32 %i.do, -5
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.y, label %DecodePosixTimezone.exit.thread

DecodePosixTimezone.exit.thread:                  ; preds = %.critedge.i, %DecodeSpecial.exit.i, %DecodeSpecial.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %.thread416

bb.y:                                             ; preds = %DecodeSpecial.exit.i
  %i.dr = load i32, ptr %i.e, align 4
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = sub i32 0, %i.ds
  store i32 %i.dt, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  store i32 4, ptr %i.x, align 4
  store i32 32, ptr %i.f, align 4
  br label %bb.da

bb.z:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call fastcc i32 @DecodeDate(ptr noundef %i.dv, i32 noundef %.0299472, ptr noundef %i.f, ptr noundef %4, i1 noundef zeroext %6)
  %.not352 = icmp eq i32 %i.dw, 0
  br i1 %.not352, label %bb.da, label %.thread416

bb.aa:                                            ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call i32 @DecodeTime(ptr noundef %i.dy, ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef nonnull %5)
  %.not351 = icmp eq i32 %i.dz, 0
  br i1 %.not351, label %bb.ab, label %.thread416

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr %i.l, align 8             ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 24
  br i1 %i.eb, label %.thread416, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = icmp eq i32 %i.ea, 24
  br i1 %i.ec, label %bb.ad, label %bb.da

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i32, ptr %i.m, align 4
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.thread416, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %4, align 8
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.thread416, label %bb.da

bb.af:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call fastcc i32 @DecodeTimezone(ptr noundef %i.ei, ptr noundef nonnull %i.j)
  %.not347 = icmp eq i32 %i.ej, 0
  br i1 %.not347, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ek = icmp eq i64 %indvars.iv, 0
  %i.el = and i32 %.0299472, 32
  %.not348 = icmp eq i32 %i.el, 0
  %or.cond359 = select i1 %i.ek, i1 true, i1 %.not348
  br i1 %or.cond359, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = load i32, ptr %11, align 4
  %i.en = icmp eq i32 %i.em, 4
  br i1 %i.en, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eo = tail call ptr @__ctype_b_loc() #17
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load ptr, ptr %12, align 8
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = and i16 %i.eu, 1024
  %.not349 = icmp eq i16 %i.ev, 0
  br i1 %.not349, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = load i32, ptr %i.j, align 4
  %i.ex = load i32, ptr %i.h, align 4
  %i.ey = sub i32 %i.ex, %i.ew
  br label %.thread422

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ez = load i32, ptr %i.j, align 4
  br label %.thread422

.thread422:                                       ; preds = %bb.aj, %bb.ak
  %storemerge350 = phi i32 [ %i.ez, %bb.ak ], [ %i.ey, %bb.aj ]
  %storemerge = phi i32 [ 32, %bb.ak ], [ 0, %bb.aj ]
  store i32 %storemerge350, ptr %i.h, align 4
  store i32 %storemerge, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %bb.da

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %.thread416

bb.am:                                            ; preds = %bb.b
  %.not335 = icmp eq i32 %.0292476, 0
  br i1 %.not335, label %bb.bg, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i32 @strtoint(ptr noundef %i.fb, ptr noundef nonnull %i.k, i32 noundef 10) #16 ; 9 uses
  %i.fd = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.fe = load i8, ptr %i.fd, align 1
  switch i8 %i.fe, label %.thread429 [
    i8 46, label %bb.ao
    i8 0, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  switch i32 %.0292476, label %.thread429 [
    i32 18, label %bb.ax
    i32 31, label %bb.ba
    i32 3, label %bb.be
  ]

bb.ap:                                            ; preds = %bb.an
  switch i32 %.0292476, label %.thread429 [
    i32 25, label %bb.aq
    i32 23, label %bb.ar
    i32 21, label %bb.au
    i32 20, label %bb.av
    i32 19, label %bb.aw
    i32 18, label %bb.ax
    i32 4, label %bb.az
    i32 31, label %bb.ba
    i32 3, label %bb.be
  ]

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.fc, ptr %i.t, align 4
  store i32 4, ptr %i.f, align 4
  br label %bb.bf

bb.ar:                                            ; preds = %bb.ap
  %i.ff = and i32 %.0299472, 1026
  %or.cond360.not = icmp eq i32 %i.ff, 1026
  br i1 %or.cond360.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %i.fc, ptr %i.m, align 4
  store i32 2048, ptr %i.f, align 4
  br label %bb.bf

bb.at:                                            ; preds = %bb.ar
  store i32 %i.fc, ptr %i.r, align 8
  store i32 2, ptr %i.f, align 4
  br label %bb.bf

bb.au:                                            ; preds = %bb.ap
  store i32 %i.fc, ptr %i.s, align 4
  store i32 8, ptr %i.f, align 4
  br label %bb.bf

bb.av:                                            ; preds = %bb.ap
  store i32 %i.fc, ptr %i.l, align 8
  store i32 1024, ptr %i.f, align 4
  br label %bb.bf

bb.aw:                                            ; preds = %bb.ap
  store i32 %i.fc, ptr %i.m, align 4
  store i32 2048, ptr %i.f, align 4
  br label %bb.bf

bb.ax:                                            ; preds = %bb.ao, %bb.ap
  store i32 %i.fc, ptr %4, align 8
  store i32 4096, ptr %i.f, align 4
  %i.fg = load i8, ptr %i.fd, align 1
  %i.fh = icmp eq i8 %i.fg, 46
  br i1 %i.fh, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fi = call double @strtod(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.k) #16
  %i.fj = load ptr, ptr %i.k, align 8
  %i.fk = load i8, ptr %i.fj, align 1
  %.not344 = icmp eq i8 %i.fk, 0
  br i1 %.not344, label %.thread424, label %.thread429

.thread424:                                       ; preds = %bb.ay
  %i.fl = fmul double %i.fi, 1.000000e+06
  %i.fm = fptosi double %i.fl to i32
  store i32 %i.fm, ptr %5, align 4
  br label %bb.bf

bb.az:                                            ; preds = %bb.ap
  store i32 32, ptr %i.f, align 4
  %i.fn = load ptr, ptr %i.fa, align 8
  %i.fo = call fastcc i32 @DecodeTimezone(ptr noundef %i.fn, ptr noundef nonnull %i.h)
  %.not343 = icmp eq i32 %i.fo, 0
  br i1 %.not343, label %bb.bf, label %.thread429

bb.ba:                                            ; preds = %bb.ao, %bb.ap
  store i32 14, ptr %i.f, align 4
  %i.fp = add i32 %i.fc, 32044                    ; 2 uses
  %i.fq = udiv i32 %i.fp, 146097                  ; 2 uses
  %.neg.i370 = mul i32 %i.fq, 1073595727
  %i.fr = add i32 %.neg.i370, %i.fp
  %i.fs = shl i32 %i.fr, 2
  %i.ft = or disjoint i32 %i.fs, 3
  %i.fu = mul nuw nsw i32 %i.fq, 3
  %i.fv = udiv i32 %i.ft, 146097
  %i.fw = add i32 %i.fc, 32104
  %i.fx = add i32 %i.fw, %i.fu
  %i.fy = add i32 %i.fx, %i.fv                    ; 2 uses
  %i.fz = udiv i32 %i.fy, 1461                    ; 2 uses
  %.neg24.i371 = mul i32 %i.fz, -1461
  %i.ga = add i32 %.neg24.i371, %i.fy             ; 3 uses
  %i.gb = shl i32 %i.ga, 2                        ; 2 uses
  %.not.i372 = icmp ult i32 %i.gb, 1461
  br i1 %.not.i372, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = add i32 %i.ga, 305
  %i.gd = urem i32 %i.gc, 365
  br label %j2date.exit375

bb.bc:                                            ; preds = %bb.ba
  %i.ge = add i32 %i.ga, 306
  %i.gf = urem i32 %i.ge, 366
  br label %j2date.exit375

j2date.exit375:                                   ; preds = %bb.bb, %bb.bc
  %i.gg = phi i32 [ %i.gd, %bb.bb ], [ %i.gf, %bb.bc ]
  %i.gh = udiv i32 %i.gb, 1461
  %i.gi = add nuw nsw i32 %i.gg, 123              ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fz, 2
  %i.gk = add nsw i32 %i.gj, -4800
  %i.gl = add nsw i32 %i.gk, %i.gh
  store i32 %i.gl, ptr %i.t, align 4
  %i.gm = mul nuw nsw i32 %i.gi, 2141
  %i.gn = lshr i32 %i.gm, 16                      ; 2 uses
  %i.go = mul nuw nsw i32 %i.gn, 3917
  %i.gp = lshr i32 %i.go, 7
  %i.gq = sub nsw i32 %i.gi, %i.gp
  store i32 %i.gq, ptr %i.s, align 4
  %i.gr = trunc nuw nsw i32 %i.gn to i8
  %.lhs.trunc.i373 = add nuw nsw i8 %i.gr, 10
  %i.gs = urem i8 %.lhs.trunc.i373, 12
  %narrow.i374 = add nuw nsw i8 %i.gs, 1
  %i.gt = zext nneg i8 %narrow.i374 to i32
  store i32 %i.gt, ptr %i.r, align 8
  %i.gu = load i8, ptr %i.fd, align 1
  %i.gv = icmp eq i8 %i.gu, 46
  br i1 %i.gv, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %j2date.exit375
  %i.gw = call double @strtod(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.k) #16
  %i.gx = load ptr, ptr %i.k, align 8
  %i.gy = load i8, ptr %i.gx, align 1
  %.not342 = icmp eq i8 %i.gy, 0
  br i1 %.not342, label %.thread426, label %.thread429

.thread426:                                       ; preds = %bb.bd
  store i32 7182, ptr %i.f, align 4
  %i.gz = fmul double %i.gw, 8.640000e+10
  %i.ha = fptosi double %i.gz to i64              ; 2 uses
  %i.hb = sdiv i64 %i.ha, 3600000000              ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.l, align 8
  %sext.i = shl i64 %i.hb, 32
  %i.hd = ashr exact i64 %sext.i, 32
  %.neg.i376 = mul nsw i64 %i.hd, -3600000000
  %i.he = add i64 %.neg.i376, %i.ha               ; 2 uses
end_hunk_0
