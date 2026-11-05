Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mcv?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mcv_get_match_bitmap:bb.a

bb.am:                                            ; preds = %bb.ah, %bb.al
  %i.fr = phi i32 [ %i.ev, %bb.ah ], [ %.pre70, %bb.al ] ; 2 uses
  %i.fs = phi i8 [ %i.ew, %bb.ah ], [ %i.fm, %bb.al ]
  %i.ft = phi ptr [ %i.ex, %bb.ah ], [ %.pre68, %bb.al ]
  %i.fu = phi ptr [ %i.ey, %bb.ah ], [ %.pre, %bb.al ]
  %.1 = phi i8 [ %i.ff, %bb.ah ], [ %i.fq, %bb.al ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = sext i32 %i.fr to i64
  %i.fw = icmp slt i64 %indvars.iv.next, %i.fv
  br i1 %i.fw, label %bb.ag, label %.thread11, !llvm.loop !43

.thread11:                                        ; preds = %bb.am, %bb.ak, %bb.aj, %bb.af
  %.0234.lcssa = phi i8 [ %i.dy, %bb.af ], [ 1, %bb.aj ], [ 0, %bb.ak ], [ %.1, %bb.am ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.fy = load i8, ptr %i.fx, align 1, !range !6, !noundef !7
  %i.fz = trunc nuw i8 %i.fy to i1                ; 2 uses
  %i.ga = select i1 %i.fz, i8 1, i8 %.0234.lcssa
  %i.gb = select i1 %i.fz, i8 %.0234.lcssa, i8 0
  %.in248 = select i1 %4, i8 %i.ga, i8 %i.gb
  %i.gc = icmp ne i8 %.in248, 0
  %i.gd = getelementptr inbounds i8, ptr %i.r, i64 %i.dz
  %i.ge = zext i1 %i.gc to i8
  store i8 %i.ge, ptr %i.gd, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %.thread11, %bb.ad
  %i.gf = add nuw i32 %.023641, 1                 ; 2 uses
  %i.gg = load i32, ptr %i.o, align 8
  %i.gh = icmp ult i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.z, label %._crit_edge44, !llvm.loop !44

bb.ao:                                            ; preds = %is_opclause.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = call fastcc i32 @mcv_match_expression(ptr noundef %i.gj, ptr noundef %1, ptr noundef %2, ptr noundef null)
  %i.gl = load i32, ptr %i.o, align 8
  %.not58 = icmp eq i32 %i.gl, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %.02393, i64 16
  %i.gn = sext i32 %i.gk to i64                   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph32, %bb.as
  %.023330 = phi i32 [ 0, %.lr.ph32 ], [ %i.hh, %bb.as ] ; 2 uses
  %i.go = sext i32 %.023330 to i64                ; 3 uses
  %i.gp = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gm, align 8
  switch i32 %i.gq, label %bb.as [
    i32 0, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gn
  %i.gu = load i8, ptr %i.gt, align 1, !range !6, !noundef !7
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.gn
  %i.gy = load i8, ptr %i.gx, align 1, !range !6, !noundef !7
  %i.gz = xor i8 %i.gy, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0232 = phi i8 [ 0, %bb.ap ], [ %i.gu, %bb.aq ], [ %i.gz, %bb.ar ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.r, i64 %i.go
  %i.hb = load i8, ptr %i.ha, align 1, !range !6, !noundef !7 ; 2 uses
  %i.hc = or i8 %i.hb, %.0232
  %i.hd = and i8 %i.hb, %.0232
  %.in246 = select i1 %4, i8 %i.hc, i8 %i.hd
  %i.he = icmp ne i8 %.in246, 0
  %i.hf = getelementptr inbounds i8, ptr %i.r, i64 %i.go
  %i.hg = zext i1 %i.he to i8
  store i8 %i.hg, ptr %i.hf, align 1
  %i.hh = add nuw i32 %.023330, 1                 ; 2 uses
  %i.hi = load i32, ptr %i.o, align 8
  %i.hj = icmp ult i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ap, label %.loopexit, !llvm.loop !45

is_orclause.exit:                                 ; preds = %is_opclause.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %.02393, i64 4
  %i.hl = load i32, ptr %i.hk, align 4            ; 3 uses
  %i.hm = icmp ult i32 %i.hl, 2
  br i1 %i.hm, label %is_orclause.exit253, label %is_notclause.exit

is_orclause.exit253:                              ; preds = %is_orclause.exit
  %i.hn = icmp eq i32 %i.hl, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.hp, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.hn) ; 2 uses
  %i.hr = load i32, ptr %i.o, align 8
  %.not57 = icmp eq i32 %i.hr, 0
  br i1 %.not57, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %is_orclause.exit253, %bb.av
  %.023127 = phi i32 [ %i.hz, %bb.av ], [ 0, %is_orclause.exit253 ] ; 2 uses
  %i.hs = sext i32 %.023127 to i64                ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.r, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !range !6, !noundef !7
  %i.hv = trunc nuw i8 %i.hu to i1                ; 2 uses
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph28
  br i1 %i.hv, label %bb.av, label %.sink.split

bb.au:                                            ; preds = %.lr.ph28
  br i1 %i.hv, label %.sink.split, label %bb.av

.sink.split:                                      ; preds = %bb.au, %bb.at
  %i.hw = getelementptr inbounds i8, ptr %i.hq, i64 %i.hs
  %i.hx = load i8, ptr %i.hw, align 1, !range !6, !noundef !7
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.au, %bb.at
  %.shrunk21 = phi i8 [ 0, %bb.au ], [ 1, %bb.at ], [ %i.hx, %.sink.split ]
  %i.hy = getelementptr inbounds i8, ptr %i.r, i64 %i.hs
  store i8 %.shrunk21, ptr %i.hy, align 1
  %i.hz = add nuw i32 %.023127, 1                 ; 2 uses
  %i.ia = load i32, ptr %i.o, align 8
  %i.ib = icmp ult i32 %i.hz, %i.ia
  br i1 %i.ib, label %.lr.ph28, label %._crit_edge29, !llvm.loop !46

._crit_edge29:                                    ; preds = %bb.av, %is_orclause.exit253
  call void @pfree(ptr noundef %i.hq) #13
  br label %.loopexit

is_notclause.exit:                                ; preds = %is_orclause.exit
  %i.ic = icmp eq i32 %i.hl, 2
  br i1 %i.ic, label %bb.aw, label %.thread20

bb.aw:                                            ; preds = %is_notclause.exit
  %i.id = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.ie, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) ; 2 uses
  %i.ig = load i32, ptr %i.o, align 8
  %.not56 = icmp eq i32 %i.ig, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.aw, %bb.az
  %.023025 = phi i32 [ %i.ip, %bb.az ], [ 0, %bb.aw ] ; 2 uses
  %i.ih = sext i32 %.023025 to i64                ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %i.r, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !range !6, !noundef !7
  %i.ik = trunc nuw i8 %i.ij to i1                ; 2 uses
  br i1 %4, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph26
  br i1 %i.ik, label %bb.az, label %.sink.split88

bb.ay:                                            ; preds = %.lr.ph26
  br i1 %i.ik, label %.sink.split88, label %bb.az

.sink.split88:                                    ; preds = %bb.ay, %bb.ax
  %i.il = getelementptr inbounds i8, ptr %i.if, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !range !6, !noundef !7
  %i.in = xor i8 %i.im, 1
  br label %bb.az

bb.az:                                            ; preds = %.sink.split88, %bb.ay, %bb.ax
  %.shrunk = phi i8 [ 0, %bb.ay ], [ 1, %bb.ax ], [ %i.in, %.sink.split88 ]
  %i.io = getelementptr inbounds i8, ptr %i.r, i64 %i.ih
  store i8 %.shrunk, ptr %i.io, align 1
  %i.ip = add nuw i32 %.023025, 1                 ; 2 uses
  %i.iq = load i32, ptr %i.o, align 8
  %i.ir = icmp ult i32 %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph26, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.az, %bb.aw
  call void @pfree(ptr noundef %i.if) #13
  br label %.loopexit

bb.ba:                                            ; preds = %is_opclause.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.02393, i64 8
  %i.it = load i16, ptr %i.is, align 8
  %i.iu = sext i16 %i.it to i32
  %i.iv = call i32 @bms_member_index(ptr noundef %1, i32 noundef %i.iu) #13
  %i.iw = load i32, ptr %i.o, align 8
  %.not55 = icmp eq i32 %i.iw, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  %i.ix = sext i32 %i.iv to i64                   ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.bd
  %.022924 = phi i32 [ 0, %.lr.ph ], [ %i.jm, %bb.bd ] ; 2 uses
  %i.iy = sext i32 %.022924 to i64                ; 3 uses
  %i.iz = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.ix
  %i.jd = load i8, ptr %i.jc, align 1, !range !6, !noundef !7
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.ix
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = icmp ne i64 %i.ji, 0
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0228.a = phi i1 [ false, %bb.bb ], [ %i.jj, %bb.bc ] ; 2 uses
  %7 = getelementptr inbounds i8, ptr %i.r, i64 %i.iy
  %8 = load i8, ptr %7, align 1, !range !6, !noundef !7
  %9 = trunc nuw i8 %8 to i1                      ; 2 uses
  %10 = or i1 %.0228.a, %9
  %11 = and i1 %.0228.a, %9
  %.in245 = select i1 %4, i1 %10, i1 %11
  %i.jk = getelementptr inbounds i8, ptr %i.r, i64 %i.iy
  %i.jl = zext i1 %.in245 to i8
  store i8 %i.jl, ptr %i.jk, align 1
  %i.jm = add nuw i32 %.022924, 1                 ; 2 uses
  %i.jn = load i32, ptr %i.o, align 8
  %i.jo = icmp ult i32 %i.jm, %i.jn
  br i1 %i.jo, label %bb.bb, label %.loopexit, !llvm.loop !48

.thread20:                                        ; preds = %is_opclause.exit, %is_notclause.exit
  %i.jp = call fastcc i32 @mcv_match_expression(ptr noundef nonnull %.02393, ptr noundef %1, ptr noundef %2, ptr noundef null)
  %i.jq = load i32, ptr %i.o, align 8
  %.not60 = icmp eq i32 %i.jq, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.thread20
  %i.jr = sext i32 %i.jp to i64                   ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph46, %bb.bg
  %.045 = phi i32 [ 0, %.lr.ph46 ], [ %i.km, %bb.bg ] ; 2 uses
  %i.js = sext i32 %.045 to i64                   ; 3 uses
  %i.jt = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jr
  %i.jx = load i8, ptr %i.jw, align 1, !range !6, !noundef !7
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.jr
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = icmp ne i64 %i.kc, 0
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = phi i1 [ false, %bb.be ], [ %i.kd, %bb.bf ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.r, i64 %i.js
  %i.kg = load i8, ptr %i.kf, align 1, !range !6, !noundef !7
  %i.kh = trunc nuw i8 %i.kg to i1                ; 2 uses
  %i.ki = select i1 %i.kh, i1 true, i1 %i.ke
  %i.kj = select i1 %i.kh, i1 %i.ke, i1 false
  %.in = select i1 %4, i1 %i.ki, i1 %i.kj
  %i.kk = getelementptr inbounds i8, ptr %i.r, i64 %i.js
  %i.kl = zext i1 %.in to i8
  store i8 %i.kl, ptr %i.kk, align 1
  %i.km = add nuw i32 %.045, 1                    ; 2 uses
  %i.kn = load i32, ptr %i.o, align 8
  %i.ko = icmp ult i32 %i.km, %i.kn
  br i1 %i.ko, label %bb.be, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.bd, %bb.as, %bb.bg, %bb.ba, %bb.ao, %.thread20, %._crit_edge44, %._crit_edge29, %._crit_edge, %._crit_edge50
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv6492, 1 ; 2 uses
  %i.kp = load i32, ptr %i.w, align 4
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp slt i64 %indvars.iv.next65, %i.kq
  br i1 %i.kr, label %.lr.ph93, label %.critedge
}

; Function Attrs: nounwind uwtable
define dso_local double @mcv_clause_selectivity_or(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 8)) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7, ptr nofree noundef captures(none) initializes((0, 8)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = tail call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.e) #13
  store ptr %i.f, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @list_make1_impl(i32 noundef 1, ptr %3) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call fastcc ptr @mcv_get_match_bitmap(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %2, i1 noundef zeroext false) ; 2 uses
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store double 0.000000e+00, ptr %7, align 8
  store double 0.000000e+00, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.043 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.04142 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.i ] ; 2 uses
  %i.p = sext i32 %.04142 to i64                  ; 4 uses
  %i.q = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.p ; 4 uses
  %i.r = load double, ptr %i.q, align 8
  %i.s = load double, ptr %8, align 8
  %i.t = fadd double %i.r, %i.s
  store double %i.t, ptr %8, align 8
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !6, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.q, align 8
  %i.y = fadd double %.043, %i.x                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = load double, ptr %5, align 8
  %i.ac = fadd double %i.aa, %i.ab
  store double %i.ac, ptr %5, align 8
  %i.ad = load ptr, ptr %4, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load double, ptr %i.q, align 8
  %i.ai = load double, ptr %6, align 8
  %i.aj = fadd double %i.ah, %i.ai
  store double %i.aj, ptr %6, align 8
  %i.ak = load double, ptr %i.z, align 8
  %i.al = load double, ptr %7, align 8
  %i.am = fadd double %i.ak, %i.al
  store double %i.am, ptr %7, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi double [ %i.y, %bb.f ], [ %i.y, %bb.e ], [ %.043, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %4, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.p ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !6, !noundef !7
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i8, ptr %i.u, align 1, !range !6, !noundef !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = phi i8 [ 1, %bb.g ], [ %i.ar, %bb.h ]
  store i8 %i.as, ptr %i.ao, align 1
  %i.at = add nuw i32 %.04142, 1                  ; 2 uses
  %i.au = load i32, ptr %i.m, align 8
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %.0.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %.1, %bb.i ]
  tail call void @pfree(ptr noundef %i.l) #13
  ret double %.0.lcssa
}

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @statext_mcv_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @pfree(ptr noundef nonnull %0) #13
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.b ]  ; 2 uses
  %i.d = sext i32 %.07 to i64
  %i.e = getelementptr inbounds [32 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @pfree(ptr noundef %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @pfree(ptr noundef %i.i) #13
  %i.j = add nuw i32 %.07, 1                      ; 2 uses
  %i.k = load i32, ptr %i.a, align 8
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @statext_mcv_import(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.FmgrInfo, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %11 = alloca %struct.ErrorSaveContext, align 8  ; 5 uses
end_hunk_0
