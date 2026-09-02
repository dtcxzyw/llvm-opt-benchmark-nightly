Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regexec?download=true
inline.NumInlined: 31
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@newdfa:bb.a
  store i8 1, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.au, align 8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.bc, align 8
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = icmp eq ptr %i.bg, null
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.m, %bb.n
  tail call void @pfree(ptr noundef nonnull %i.bk) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.br = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.br, null
  br i1 %.not14.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @pfree(ptr noundef nonnull %i.br) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bs = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.bs, null
  br i1 %.not15.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @pfree(ptr noundef nonnull %i.bs) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bt = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.bt, null
  br i1 %.not16.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @pfree(ptr noundef nonnull %i.bt) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bu = load i8, ptr %i.bi, align 8, !range !11, !noundef !12
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %freedfa.exit

bb.w:                                             ; preds = %bb.v
  tail call void @pfree(ptr noundef nonnull %i.am) #9
  br label %freedfa.exit

freedfa.exit:                                     ; preds = %bb.v, %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8            ; 2 uses
  %.not95 = icmp eq i32 %i.bx, 0
  %spec.select102 = select i1 %.not95, i32 12, i32 %i.bx
  store i32 %spec.select102, ptr %i.bw, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.n, %bb.f
  %i.by = phi ptr [ %i.q, %bb.f ], [ %i.bk, %bb.n ]
  %.082 = phi ptr [ %.083, %bb.f ], [ %i.am, %bb.n ] ; 13 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 32
  %.not98 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not98, i32 %i.b, i32 7
  store i32 %i.cc, ptr %.082, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.082, i64 4
  store i32 0, ptr %i.cd, align 4
  %i.ce = load i32, ptr %1, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.082, i64 8
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.082, i64 12
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.082, i64 16
  store i32 %i.g, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.082, i64 64
  store ptr %1, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.082, i64 72
  store ptr %2, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.082, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %.082, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store ptr %i.by, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.082, i64 104
  store i32 -1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.082, i64 110
  store i16 0, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.082, i64 108
  store i16 0, ptr %i.cq, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %freedfa.exit, %bb.k, %bb.i, %bb.e
  %.084 = phi ptr [ null, %bb.e ], [ %.082, %bb.x ], [ null, %bb.i ], [ null, %bb.k ], [ null, %freedfa.exit ]
  ret ptr %.084
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @shortest(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %3, %i.b
  %.idx = select i1 %i.c, i64 0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.e = icmp eq ptr %4, %i.b
  %.idx153 = select i1 %i.e, i64 0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %.idx153
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp ne ptr %5, null                     ; 4 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp ne ptr %6, null                     ; 3 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %6, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.u = load i16, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.w = load i16, ptr %i.v, align 2              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.ab, %i.r                     ; 4 uses
  %i.ad = icmp eq i64 %i.ab, %i.r
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ne ptr %3, %2
  %.not75.i = icmp sgt i16 %i.u, %i.w
  %or.cond76.i = select i1 %i.ae, i1 true, i1 %.not75.i
  %spec.select80.i = select i1 %or.cond76.i, ptr null, ptr %2
  br label %dfa_backref.exit

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp ugt ptr %3, %2
  br i1 %.not.i, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = ptrtoint ptr %2 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = udiv i64 %i.aj, %i.ac
  %i.al = add i64 %i.ak, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.j ]
  %.056.i = phi i64 [ 0, %._crit_edge.i ], [ %i.al, %bb.j ]
  %i.am = ptrtoint ptr %4 to i64
  %i.an = sub i64 %i.am, %.pre-phi.i
  %i.ao = ashr exact i64 %i.an, 2
  %i.ap = udiv i64 %i.ao, %i.ac                   ; 2 uses
  %i.aq = sext i16 %i.u to i64
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.056.i, i64 %i.aq) ; 5 uses
  %.not71.i = icmp eq i16 %i.w, 256
  %i.ar = sext i16 %i.w to i64
  %spec.select77.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ar)
  %.055.i = select i1 %.not71.i, i64 %i.ap, i64 %spec.select77.i ; 3 uses
  %i.as = icmp ult i64 %.055.i, %spec.select.i
  br i1 %i.as, label %dfa_backref.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i64 %spec.select.i, 0
  br i1 %i.at, label %dfa_backref.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %bb.n, %.preheader.i
  %.058.i = phi i64 [ %i.ba, %bb.n ], [ 0, %.preheader.i ] ; 3 uses
  %.0.i = phi ptr [ %i.az, %bb.n ], [ %2, %.preheader.i ] ; 4 uses
  %exitcond93.not.i = icmp eq i64 %.058.i, %.055.i
  br i1 %exitcond93.not.i, label %.split.us.i, label %bb.m

bb.m:                                             ; preds = %.preheader.split.i
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 576
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 %i.ax(ptr noundef %i.z, ptr noundef %.0.i, i64 noundef %i.ac) #9, !inline_history !18
  %.not72.i = icmp eq i32 %i.ay, 0
  br i1 %.not72.i, label %bb.n, label %.split.us.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.ac ; 2 uses
  %i.ba = add nuw i64 %.058.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %spec.select.i
  br i1 %exitcond.not, label %.split.us.i, label %.preheader.split.i, !llvm.loop !19

.split.us.i:                                      ; preds = %bb.n, %bb.m, %.preheader.split.i
  %.us-phi.i = phi i64 [ %.058.i, %bb.m ], [ %.055.i, %.preheader.split.i ], [ %spec.select.i, %bb.n ]
  %.us-phi81.i = phi ptr [ %.0.i, %bb.m ], [ %.0.i, %.preheader.split.i ], [ %i.az, %bb.n ]
  %.not74.i = icmp ult i64 %.us-phi.i, %spec.select.i
  %..1.i = select i1 %.not74.i, ptr null, ptr %.us-phi81.i
  br label %dfa_backref.exit

dfa_backref.exit:                                 ; preds = %bb.h, %bb.l, %.split.us.i
  %.060.i = phi ptr [ %2, %bb.l ], [ %spec.select80.i, %bb.h ], [ %..1.i, %.split.us.i ] ; 3 uses
  %i.bb = icmp ne ptr %.060.i, null
  %or.cond = and i1 %i.i, %i.bb
  br i1 %or.cond, label %bb.o, label %dfa_backref.exit.thread

bb.o:                                             ; preds = %dfa_backref.exit
  store ptr %2, ptr %5, align 8
  br label %dfa_backref.exit.thread

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 2
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %.not161 = icmp ne i32 %i.bm, 256
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  %or.cond163 = select i1 %.not161, i1 %i.bo, i1 false
  br i1 %or.cond163, label %dfa_backref.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = ptrtoint ptr %4 to i64
  %i.bq = sub i64 %i.bp, %i.bi
  %i.br = ashr exact i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = icmp slt i64 %i.br, %i.bu
  br i1 %i.bv, label %dfa_backref.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp ult i64 %i.bk, %i.bu
  %i.bx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bu
  %spec.select = select i1 %i.bw, ptr %i.bx, ptr %3 ; 2 uses
  br i1 %i.i, label %bb.t, label %dfa_backref.exit.thread

bb.t:                                             ; preds = %bb.s
  store ptr %2, ptr %5, align 8
  br label %dfa_backref.exit.thread

bb.u:                                             ; preds = %bb.p
  %i.by = tail call fastcc ptr @initialize(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %dfa_backref.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %2, %i.cb
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cd = load ptr, ptr %i.bc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds i8, ptr %2, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4            ; 3 uses
  %i.co = icmp ult i32 %i.cn, 2048
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = zext nneg i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cu = tail call signext i16 @pg_reg_getcolor(ptr noundef %i.h, i32 noundef %i.cn) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w
  %.0124 = phi i16 [ %i.cl, %bb.w ], [ %i.ct, %bb.y ], [ %i.cu, %bb.z ]
  %i.cv = tail call fastcc ptr @miss(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.by, i16 noundef signext %.0124, ptr noundef %2, ptr noundef %2) ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %dfa_backref.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %2, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %bb.ab
  %.0125 = phi ptr [ %2, %bb.ab ], [ %i.dq, %bb.ai ] ; 5 uses
  %.0 = phi ptr [ %i.cv, %bb.ab ], [ %.1, %bb.ai ] ; 3 uses
  %i.cz = icmp ult ptr %.0125, %i.f
  br i1 %i.cz, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i32, ptr %.0125, align 4           ; 3 uses
  %i.db = icmp ult i32 %i.da, 2048
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.cy, align 8
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dg = tail call signext i16 @pg_reg_getcolor(ptr noundef %i.h, i32 noundef %i.da) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.in155 = phi i16 [ %i.df, %bb.ae ], [ %i.dg, %bb.af ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = sext i16 %.in155 to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %.0125, i64 4
  %i.do = tail call fastcc ptr @miss(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.0, i16 noundef signext %.in155, ptr noundef nonnull %i.dn, ptr noundef %2) ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %dfa_backref.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1 = phi ptr [ %i.do, %bb.ah ], [ %i.dl, %bb.ag ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0125, i64 4 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1, i64 32
  store ptr %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, 2
  %.not156 = icmp eq i32 %i.du, 0
  %.not157 = icmp ult ptr %i.dq, %i.d
  %or.cond164 = select i1 %.not156, i1 true, i1 %.not157
  br i1 %or.cond164, label %bb.ac, label %bb.aj, !llvm.loop !20

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.1126.ph = phi ptr [ %.0125, %bb.ac ], [ %i.dq, %bb.ai ] ; 5 uses
  %.1123.ph = phi ptr [ %.0, %bb.ac ], [ %.1, %bb.ai ] ; 2 uses
  br i1 %i.i, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr %i.ca, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.012.i = phi ptr [ %i.dy, %bb.al ], [ %i.dw, %bb.ak ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ea = load i32, ptr %i.dz, align 4            ; 5 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %lastcold.exit

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8            ; 4 uses
  %xtraiter = and i32 %i.ea, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = and i32 %i.ef, 8
  %.not.i169.prol = icmp eq i32 %i.eg, 0
  br i1 %.not.i169.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.prol
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = icmp ult ptr %.012.i, %i.ei
end_hunk_0
