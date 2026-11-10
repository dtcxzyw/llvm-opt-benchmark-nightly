Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_dump?download=true
inline.NumInlined: 298
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@getSubscriptions:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.e, 100000
  br i1 %i.f, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 440
  %.val = load ptr, ptr %i.g, align 8
  %i.h = tail call ptr @PQparameterStatus(ptr noundef %.val, ptr noundef nonnull @.str.836) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %is_superuser.exit, label %sub_0.i

sub_0.i:                                          ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 1
  %.not1.i = icmp eq i8 %i.i, 111
  br i1 %.not1.i, label %sub_1.i, label %is_superuser.exit

sub_1.i:                                          ; preds = %sub_0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %.not2.i = icmp eq i8 %i.k, 110
  br i1 %.not2.i, label %.tail.i, label %is_superuser.exit

.tail.i:                                          ; preds = %sub_1.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %is_superuser.exit

is_superuser.exit:                                ; preds = %.tail.i, %sub_1.i, %sub_0.i, %bb.c
  %i.o = tail call ptr @ExecuteSqlQuery(ptr noundef nonnull %0, ptr noundef nonnull @.str.173, i32 noundef 2) #11 ; 2 uses
  %i.p = tail call ptr @PQgetvalue(ptr noundef %i.o, i32 noundef 0, i32 noundef 0) #11
  %i.q = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.p, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %is_superuser.exit
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.174) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %is_superuser.exit
  tail call void @PQclear(ptr noundef %i.o) #11
  br label %bb.am

bb.f:                                             ; preds = %.tail.i
  %i.t = tail call ptr @createPQExpBuffer() #11   ; 19 uses
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.175) #11
  %i.u = load i32, ptr %i.d, align 8
  %i.v = icmp sgt i32 %i.u, 139999
  %.str.176..str.177 = select i1 %i.v, ptr @.str.176, ptr @.str.177
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.176..str.177) #11
  %i.w = load i32, ptr %i.d, align 8
  %i.x = icmp sgt i32 %i.w, 139999
  %.str.179.sink = select i1 %i.x, ptr @.str.178, ptr @.str.179
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.179.sink) #11
  %i.y = load i32, ptr %i.d, align 8
  %i.z = icmp sgt i32 %i.y, 149999
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.180) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.t, ptr noundef nonnull @.str.181, i32 noundef 100) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load i32, ptr %i.d, align 8
  %i.ab = icmp sgt i32 %i.aa, 159999
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.182) #11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.t, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not214 = icmp eq i32 %i.ad, 0
  br i1 %.not214, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.d, align 8
  %i.af = icmp sgt i32 %i.ae, 169999
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.str.186.sink = phi ptr [ @.str.186, %bb.n ], [ @.str.185, %bb.m ]
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.186.sink) #11
  %i.ag = load i32, ptr %i.d, align 8
  %i.ah = icmp sgt i32 %i.ag, 169999
  %.str.187..str.188 = select i1 %i.ah, ptr @.str.187, ptr @.str.188
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.187..str.188) #11
  %i.ai = load i32, ptr %i.d, align 8
  %i.aj = icmp sgt i32 %i.ai, 189999
  %.str.190.sink = select i1 %i.aj, ptr @.str.189, ptr @.str.190
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.190.sink) #11
  %i.ak = load i32, ptr %i.d, align 8
  %i.al = icmp sgt i32 %i.ak, 189999
  %.str.192.sink = select i1 %i.al, ptr @.str.191, ptr @.str.192
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.192.sink) #11
  %i.am = load i32, ptr %i.d, align 8
  %i.an = icmp sgt i32 %i.am, 189999
  %.str.194.sink = select i1 %i.an, ptr @.str.193, ptr @.str.194
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.194.sink) #11
  %i.ao = load i32, ptr %i.d, align 8
  %i.ap = icmp sgt i32 %i.ao, 189999
  %.str.196.sink = select i1 %i.ap, ptr @.str.195, ptr @.str.196
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull %.str.196.sink) #11
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.197) #11
  %i.aq = load i32, ptr %i.d, align 8
  %i.ar = icmp sgt i32 %i.aq, 189999
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.198) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = load i32, ptr %i.ac, align 8
  %.not215 = icmp eq i32 %i.as, 0
  br i1 %.not215, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.d, align 8
  %i.au = icmp sgt i32 %i.at, 169999
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.199) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  tail call void @appendPQExpBufferStr(ptr noundef %i.t, ptr noundef nonnull @.str.200) #11
  %i.av = load ptr, ptr %i.t, align 8
  %i.aw = tail call ptr @ExecuteSqlQuery(ptr noundef nonnull %0, ptr noundef %i.av, i32 noundef 2) #11 ; 50 uses
  %i.ax = tail call i32 @PQntuples(ptr noundef %i.aw) #11 ; 3 uses
  %i.ay = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.131) #11
  %i.az = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.130) #11
  %i.ba = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.201) #11
  %i.bb = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.202) #11
  %i.bc = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.203) #11
  %i.bd = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.204) #11
  %i.be = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.205) #11
  %i.bf = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.206) #11
  %i.bg = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.207) #11
  %i.bh = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.208) #11
  %i.bi = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.209) #11
  %i.bj = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.210) #11
  %i.bk = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.211) #11
  %i.bl = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.212) #11
  %i.bm = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.213) #11 ; 2 uses
  %i.bn = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.214) #11 ; 2 uses
  %i.bo = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.215) #11 ; 2 uses
  %i.bp = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.216) #11
  %i.bq = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.217) #11
  %i.br = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.218) #11
  %i.bs = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.219) #11
  %i.bt = tail call i32 @PQfnumber(ptr noundef %i.aw, ptr noundef nonnull @.str.220) #11 ; 2 uses
  %i.bu = sext i32 %i.ax to i64
  %i.bv = tail call ptr @pg_malloc_mul(i64 noundef 152, i64 noundef %i.bu) #11
  %i.bw = icmp sgt i32 %i.ax, 0
  br i1 %i.bw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %i.ax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %selectDumpableObject.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %selectDumpableObject.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [152 x i8], ptr %i.bv, i64 %indvars.iv ; 28 uses
  store i32 46, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %indvars.iv to i32    ; 26 uses
  %i.bz = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.ay) #11
  %i.ca = tail call i64 @__isoc23_strtoul(ptr noundef %i.bz, ptr noundef null, i32 noundef 10) #11
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.az) #11
  %i.ce = tail call i64 @__isoc23_strtoul(ptr noundef %i.cd, ptr noundef null, i32 noundef 10) #11
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.cf, ptr %i.cg, align 8
  tail call void @AssignDumpId(ptr noundef %i.bx) #11
  %i.ch = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.ba) #11
  %i.ci = tail call ptr @pg_strdup(ptr noundef %i.ch) #11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bb) #11
  %i.cl = tail call i64 @__isoc23_strtoul(ptr noundef %i.ck, ptr noundef null, i32 noundef 10) #11
  %i.cm = trunc i64 %i.cl to i32                  ; 3 uses
  %i.cn = load i32, ptr @nrolenames, align 4      ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr @rolenames, align 8       ; 3 uses
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr [16 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16    ; 2 uses
  %.not33.i = icmp ugt ptr %i.cp, %i.cs
  br i1 %.not33.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.y
  %.01735.i = phi ptr [ %.2.i, %bb.y ], [ %i.cs, %bb.u ] ; 2 uses
  %.01934.i = phi ptr [ %.221.i, %bb.y ], [ %i.cp, %bb.u ] ; 3 uses
  %i.ct = ptrtoint ptr %.01735.i to i64
  %i.cu = ptrtoint ptr %.01934.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 4
  %i.cx = sdiv i64 %i.cw, 2
  %i.cy = getelementptr inbounds [16 x i8], ptr %.01934.i, i64 %i.cx ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp ugt i32 %i.cz, %i.cm
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -16
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph.i
  %i.dc = icmp ult i32 %i.cz, %i.cm
  br i1 %i.dc, label %bb.x, label %getRoleName.exit

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.221.i = phi ptr [ %i.dd, %bb.x ], [ %.01934.i, %bb.v ] ; 2 uses
  %.2.i = phi ptr [ %.01735.i, %bb.x ], [ %i.db, %bb.v ] ; 2 uses
  %.not.i220 = icmp ugt ptr %.221.i, %.2.i
  br i1 %.not.i220, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.u, %.lr.ph, %bb.y
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.850, i32 noundef %i.cm) #11
  tail call void @exit_nicely(i32 noundef 1) #13
  unreachable

getRoleName.exit:                                 ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bc) #11 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %.not251 = icmp eq i8 %i.di, 116
  br i1 %.not251, label %sub_1, label %getRoleName.exit.tail

sub_1:                                            ; preds = %getRoleName.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  %i.dm = zext i1 %i.dl to i8
  br label %getRoleName.exit.tail

getRoleName.exit.tail:                            ; preds = %getRoleName.exit, %sub_1
  %i.dn = phi i8 [ 0, %getRoleName.exit ], [ %i.dm, %sub_1 ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i8 %i.dn, ptr %i.do, align 8
  %i.dp = tail call i32 @PQgetisnull(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bm) #11
  %.not216 = icmp eq i32 %i.dp, 0
  br i1 %.not216, label %bb.z, label %sub_0243

bb.z:                                             ; preds = %getRoleName.exit.tail
  %i.dq = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bm) #11
  %i.dr = tail call ptr @pg_strdup(ptr noundef %i.dq) #11
  br label %sub_0243

sub_0243:                                         ; preds = %getRoleName.exit.tail, %bb.z
  %.sink = phi ptr [ %i.dr, %bb.z ], [ null, %getRoleName.exit.tail ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  store ptr %.sink, ptr %i.ds, align 8
  %i.dt = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bd) #11 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1
  %.not252 = icmp eq i8 %i.du, 116
  br i1 %.not252, label %sub_1244, label %.tail242

sub_1244:                                         ; preds = %sub_0243
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = zext i1 %i.dx to i8
  br label %.tail242

.tail242:                                         ; preds = %sub_0243, %sub_1244
  %i.dz = phi i8 [ 0, %sub_0243 ], [ %i.dy, %sub_1244 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 73
  store i8 %i.dz, ptr %i.ea, align 1
  %i.eb = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.be) #11
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bx, i64 74
  store i8 %i.ec, ptr %i.ed, align 2
  %i.ee = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bf) #11
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 75
  store i8 %i.ef, ptr %i.eg, align 1
  %i.eh = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bg) #11 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %.not253 = icmp eq i8 %i.ei, 116
  br i1 %.not253, label %sub_1240, label %.tail238

sub_1240:                                         ; preds = %.tail242
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = zext i1 %i.el to i8
  br label %.tail238

.tail238:                                         ; preds = %.tail242, %sub_1240
  %i.en = phi i8 [ 0, %.tail242 ], [ %i.em, %sub_1240 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bx, i64 76
  store i8 %i.en, ptr %i.eo, align 4
  %i.ep = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bh) #11 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1
  %.not254 = icmp eq i8 %i.eq, 116
  br i1 %.not254, label %sub_1236, label %.tail234

sub_1236:                                         ; preds = %.tail238
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.es, 0
  %i.eu = zext i1 %i.et to i8
  br label %.tail234

.tail234:                                         ; preds = %.tail238, %sub_1236
  %i.ev = phi i8 [ 0, %.tail238 ], [ %i.eu, %sub_1236 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bx, i64 77
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bi) #11 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1
  %.not255 = icmp eq i8 %i.ey, 116
  br i1 %.not255, label %sub_1232, label %.tail230

sub_1232:                                         ; preds = %.tail234
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, 0
  %i.fc = zext i1 %i.fb to i8
  br label %.tail230

.tail230:                                         ; preds = %.tail234, %sub_1232
  %i.fd = phi i8 [ 0, %.tail234 ], [ %i.fc, %sub_1232 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bx, i64 78
  store i8 %i.fd, ptr %i.fe, align 2
  %i.ff = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bj) #11 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1
  %.not256 = icmp eq i8 %i.fg, 116
  br i1 %.not256, label %sub_1228, label %.tail226

sub_1228:                                         ; preds = %.tail230
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = icmp eq i8 %i.fi, 0
  %i.fk = zext i1 %i.fj to i8
  br label %.tail226

.tail226:                                         ; preds = %.tail230, %sub_1228
  %i.fl = phi i8 [ 0, %.tail230 ], [ %i.fk, %sub_1228 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bx, i64 79
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bk) #11 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1
  %.not257 = icmp eq i8 %i.fo, 116
  br i1 %.not257, label %sub_1224, label %.tail

sub_1224:                                         ; preds = %.tail226
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = icmp eq i8 %i.fq, 0
  %i.fs = zext i1 %i.fr to i8
  br label %.tail

.tail:                                            ; preds = %.tail226, %sub_1224
  %i.ft = phi i8 [ 0, %.tail226 ], [ %i.fs, %sub_1224 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  store i8 %i.ft, ptr %i.fu, align 8
  %i.fv = tail call ptr @PQgetvalue(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bl) #11
  %i.fw = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fv, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bx, i64 84
  store i32 %i.fx, ptr %i.fy, align 4
  %i.fz = tail call i32 @PQgetisnull(ptr noundef %i.aw, i32 noundef %i.by, i32 noundef %i.bn) #11
  %.not217 = icmp eq i32 %i.fz, 0
end_hunk_0
begin_hunk_1_@getNamespaces:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.z, %bb.a
  tail call void @PQclear(ptr noundef %i.c) #11
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.a) #11
  ret void
}

declare void @quoteAclUserName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @appendPGArray(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @getExtensions(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @createPQExpBuffer() #11   ; 3 uses
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.236) #11
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @ExecuteSqlQuery(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef 2) #11 ; 18 uses
  %i.e = tail call i32 @PQntuples(ptr noundef %i.d) #11 ; 5 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.e to i64
  %i.h = tail call ptr @pg_malloc_mul(i64 noundef 104, i64 noundef %i.g) #11 ; 3 uses
  %i.i = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.131) #11
  %i.j = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.130) #11
  %i.k = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.237) #11
  %i.l = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.229) #11
  %i.m = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.238) #11
  %i.n = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.239) #11
  %i.o = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.240) #11
  %i.p = tail call i32 @PQfnumber(ptr noundef %i.d, ptr noundef nonnull @.str.241) #11
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %selectDumpableExtension.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %selectDumpableExtension.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %indvars.iv ; 16 uses
  store i32 1, ptr %i.s, align 8
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 8 uses
  %i.u = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.i) #11
  %i.v = tail call i64 @__isoc23_strtoul(ptr noundef %i.u, ptr noundef null, i32 noundef 10) #11
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.w, ptr %i.x, align 4
  %i.y = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.j) #11
  %i.z = tail call i64 @__isoc23_strtoul(ptr noundef %i.y, ptr noundef null, i32 noundef 10) #11
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store i32 %i.aa, ptr %i.ab, align 8
  tail call void @AssignDumpId(ptr noundef nonnull %i.s) #11
  %i.ac = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.k) #11
  %i.ad = tail call ptr @pg_strdup(ptr noundef %i.ac) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.l) #11
  %i.ag = tail call ptr @pg_strdup(ptr noundef %i.af) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.m) #11
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 116
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.am = zext i1 %i.ak to i8
  store i8 %i.am, ptr %i.al, align 8
  %i.an = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.n) #11
  %i.ao = tail call ptr @pg_strdup(ptr noundef %i.an) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.o) #11
  %i.ar = tail call ptr @pg_strdup(ptr noundef %i.aq) #11
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = tail call ptr @PQgetvalue(ptr noundef %i.d, i32 noundef %i.t, i32 noundef %i.p) #11
  %i.au = tail call ptr @pg_strdup(ptr noundef %i.at) #11
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load i32, ptr %i.ab, align 8            ; 3 uses
  %.b.i = load i1, ptr @g_last_builtin_oid, align 4
  %i.ax = select i1 %.b.i, i32 16383, i32 0
  %.not.i = icmp ugt i32 %i.aw, %i.ax
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 16, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 16, ptr %i.az, align 8
  br label %selectDumpableExtension.exit

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr @extension_include_oids, align 8
  %.not13.i = icmp eq ptr %i.ba, null
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call zeroext i1 @simple_oid_list_member(ptr noundef nonnull @extension_include_oids, i32 noundef %i.aw) #11
  br i1 %i.bb, label %.select.unfold.i_crit_edge, label %.thread.i

.select.unfold.i_crit_edge:                       ; preds = %bb.f
  %.pre = load i32, ptr %i.ab, align 8
  br label %select.unfold.i

bb.g:                                             ; preds = %bb.e
  %i.bc = load i8, ptr %i.r, align 8, !range !16, !noundef !17
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %select.unfold.i, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 0, ptr %i.bf, align 8
  br label %selectDumpableExtension.exit

select.unfold.i:                                  ; preds = %.select.unfold.i_crit_edge, %bb.g
  %i.bg = phi i32 [ %.pre, %.select.unfold.i_crit_edge ], [ %i.aw, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  store i32 65535, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store i32 65535, ptr %i.bi, align 8
  %i.bj = tail call zeroext i1 @simple_oid_list_member(ptr noundef nonnull @extension_exclude_oids, i32 noundef %i.bg) #11
  br i1 %i.bj, label %bb.h, label %selectDumpableExtension.exit

bb.h:                                             ; preds = %select.unfold.i
  store i32 0, ptr %i.bh, align 4
  store i32 0, ptr %i.bi, align 8
  br label %selectDumpableExtension.exit

selectDumpableExtension.exit:                     ; preds = %bb.d, %.thread.i, %select.unfold.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !79

.loopexit:                                        ; preds = %selectDumpableExtension.exit, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %selectDumpableExtension.exit ]
  tail call void @PQclear(ptr noundef %i.d) #11
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.b) #11
  store i32 %i.e, ptr %1, align 4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @getTypes(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @createPQExpBuffer() #11   ; 3 uses
  tail call void @appendPQExpBufferStr(ptr noundef %i.a, ptr noundef nonnull @.str.242) #11
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @ExecuteSqlQuery(ptr noundef %0, ptr noundef %i.b, i32 noundef 2) #11 ; 31 uses
  %i.d = tail call i32 @PQntuples(ptr noundef %i.c) #11 ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @pg_malloc_mul(i64 noundef 168, i64 noundef %i.e) #11
  %i.g = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.131) #11
  %i.h = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.130) #11
  %i.i = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.243) #11
  %i.j = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.244) #11
  %i.k = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.245) #11 ; 2 uses
  %i.l = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.232) #11
  %i.m = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.246) #11
  %i.n = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.247) #11
  %i.o = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.248) #11
  %i.p = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.249) #11
  %i.q = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.250) #11
  %i.r = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.251) #11
  %i.s = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.252) #11
  %i.t = tail call i32 @PQfnumber(ptr noundef %i.c, ptr noundef nonnull @.str.253) #11
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.x = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %indvars.iv ; 32 uses
  store i32 2, ptr %i.x, align 8
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 15 uses
  %i.z = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.g) #11
  %i.aa = tail call i64 @__isoc23_strtoul(ptr noundef %i.z, ptr noundef null, i32 noundef 10) #11
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.h) #11
  %i.ae = tail call i64 @__isoc23_strtoul(ptr noundef %i.ad, ptr noundef null, i32 noundef 10) #11
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 8
  tail call void @AssignDumpId(ptr noundef %i.x) #11
  %i.ah = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.i) #11
  %i.ai = tail call ptr @pg_strdup(ptr noundef %i.ah) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.j) #11
  %i.al = tail call i64 @__isoc23_strtoul(ptr noundef %i.ak, ptr noundef null, i32 noundef 10) #11
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = tail call ptr @findNamespaceByOid(i32 noundef %i.am) #11 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.c, label %findNamespace.exit

bb.c:                                             ; preds = %bb.b
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.841, i32 noundef %i.am) #11
  tail call void @exit_nicely(i32 noundef 1) #13
  unreachable

findNamespace.exit:                               ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  store ptr %i.an, ptr %i.ap, align 8
  %i.aq = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.k) #11
  %i.ar = tail call ptr @pg_strdup(ptr noundef %i.aq) #11
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.l) #11
  %i.au = tail call ptr @pg_strdup(ptr noundef %i.at) #11
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.m) #11
  %i.az = tail call i64 @__isoc23_strtoul(ptr noundef %i.ay, ptr noundef null, i32 noundef 10) #11
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  %i.bb = load i32, ptr @nrolenames, align 4      ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %findNamespace.exit
  %i.bd = load ptr, ptr @rolenames, align 8       ; 3 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr [16 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -16    ; 2 uses
  %.not33.i = icmp ugt ptr %i.bd, %i.bg
  br i1 %.not33.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.01735.i = phi ptr [ %.2.i, %bb.h ], [ %i.bg, %bb.d ] ; 2 uses
  %.01934.i = phi ptr [ %.221.i, %bb.h ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bh = ptrtoint ptr %.01735.i to i64
  %i.bi = ptrtoint ptr %.01934.i to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 4
  %i.bl = sdiv i64 %i.bk, 2
  %i.bm = getelementptr inbounds [16 x i8], ptr %.01934.i, i64 %i.bl ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, %i.ba
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -16
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.bq = icmp ult i32 %i.bn, %i.ba
  br i1 %i.bq, label %bb.g, label %getRoleName.exit

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.221.i = phi ptr [ %i.br, %bb.g ], [ %.01934.i, %bb.e ] ; 2 uses
  %.2.i = phi ptr [ %.01735.i, %bb.g ], [ %i.bp, %bb.e ] ; 2 uses
  %.not.i = icmp ugt ptr %.221.i, %.2.i
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.d, %findNamespace.exit, %bb.h
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.850, i32 noundef %i.ba) #11
  tail call void @exit_nicely(i32 noundef 1) #13
  unreachable

getRoleName.exit:                                 ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.n) #11
  %i.bw = tail call i64 @__isoc23_strtoul(ptr noundef %i.bv, ptr noundef null, i32 noundef 10) #11
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i32 %i.bx, ptr %i.by, align 8
  %i.bz = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.o) #11
  %i.ca = tail call i64 @__isoc23_strtoul(ptr noundef %i.bz, ptr noundef null, i32 noundef 10) #11
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 116 ; 2 uses
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.p) #11
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 124 ; 2 uses
  store i8 %i.ce, ptr %i.cf, align 4
  %i.cg = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.q) #11
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 125 ; 4 uses
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 2 uses
  store ptr null, ptr %i.cj, align 8
  %i.ck = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.r) #11 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %.not174 = icmp eq i8 %i.cl, 116
  br i1 %.not174, label %getRoleName.exit.tail, label %getRoleName.exit.tail.thread

getRoleName.exit.tail:                            ; preds = %getRoleName.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %sub_0163, label %getRoleName.exit.tail.thread

getRoleName.exit.tail.thread:                     ; preds = %getRoleName.exit, %getRoleName.exit.tail
  br label %sub_0163

sub_0163:                                         ; preds = %getRoleName.exit.tail, %getRoleName.exit.tail.thread
  %.sink = phi i8 [ 0, %getRoleName.exit.tail.thread ], [ 1, %getRoleName.exit.tail ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store i8 %.sink, ptr %i.cp, align 8
  %i.cq = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.s) #11 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1
  %.not175 = icmp eq i8 %i.cr, 116
  br i1 %.not175, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0163
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.i, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0163, %.tail
  br label %bb.i

bb.i:                                             ; preds = %.tail, %.tail.thread
  %.sink186 = phi i8 [ 0, %.tail.thread ], [ 1, %.tail ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 126 ; 2 uses
  store i8 %.sink186, ptr %i.cv, align 2
  %i.cw = tail call ptr @PQgetvalue(ptr noundef %i.c, i32 noundef %i.y, i32 noundef %i.t) #11
  %i.cx = tail call i64 @__isoc23_strtoul(ptr noundef %i.cw, ptr noundef null, i32 noundef 10) #11
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i32 %i.cy, ptr %i.cz, align 8
  %i.da = load i8, ptr %i.ci, align 1
  %i.db = icmp eq i8 %i.da, 109                   ; 2 uses
  %spec.select = zext i1 %i.db to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.x, i64 127
  store i8 %spec.select, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.cc, align 4            ; 2 uses
  %.not.i161 = icmp eq i32 %i.dd, 0
  br i1 %.not.i161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = load i8, ptr %i.cf, align 4
  %.not16.i = icmp eq i8 %i.de, 99
  br i1 %.not16.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = tail call ptr @findTableByOid(i32 noundef %i.dd) #11 ; 2 uses
  store i32 26, ptr %i.x, align 8
  %.not17.i = icmp eq ptr %i.df, null
  br i1 %.not17.i, label %selectDumpableType.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8
  br label %selectDumpableType.exit

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.di = load i8, ptr %i.cv, align 2, !range !16, !noundef !17
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond = select i1 %i.dj, i1 true, i1 %i.db
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 26, ptr %i.x, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.dk = load i64, ptr %i.ac, align 4
  %i.dl = tail call ptr @findOwningExtension(i64 %i.dk) #11 ; 4 uses
  %.not18.i = icmp eq ptr %i.dl, null
  br i1 %.not18.i, label %checkExtensionMembership.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i8 1, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.do = load i32, ptr %i.dn, align 4
  tail call void @addObjectDependency(ptr noundef nonnull %i.x, i32 noundef %i.do) #11
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load i32, ptr %i.dq, align 8
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q
end_hunk_1
begin_hunk_2_@getFuncs:bb.a
  br i1 %.not.i123, label %bb.v, label %bb.u

bb.u:                                             ; preds = %checkExtensionMembership.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.dr = load i32, ptr %i.dq, align 4
  br label %selectDumpableObject.exit

bb.v:                                             ; preds = %checkExtensionMembership.exit.i
  %i.ds = load ptr, ptr %0, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  %i.du = load i8, ptr %i.dt, align 8, !range !16, !noundef !17
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = select i1 %i.dv, i32 65535, i32 0
  br label %selectDumpableObject.exit

selectDumpableObject.exit:                        ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sink.i.sink.i = phi i32 [ %i.dr, %bb.u ], [ %i.dw, %bb.v ], [ %i.dj, %bb.r ], [ %i.do, %bb.t ], [ 0, %bb.s ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i32 %.sink.i.sink.i, ptr %i.dx, align 8
  %i.dy = tail call i32 @PQgetisnull(ptr noundef %i.r, i32 noundef %i.ai, i32 noundef %i.ae) #11
  %.not122 = icmp eq i32 %i.dy, 0
  br i1 %.not122, label %bb.w, label %bb.x

bb.w:                                             ; preds = %selectDumpableObject.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = or i32 %i.ea, 16
  store i32 %i.eb, ptr %i.dz, align 8
  br label %bb.x

bb.x:                                             ; preds = %selectDumpableObject.exit, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.x, %bb.g
  tail call void @PQclear(ptr noundef %i.r) #11
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.b) #11
  ret void
}

declare ptr @pg_malloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @getTables(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @createPQExpBuffer() #11   ; 34 uses
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.311) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 179999
  %.str.312..str.313 = select i1 %i.e, ptr @.str.312, ptr @.str.313
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.312..str.313) #11
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.314) #11
  %i.f = load i32, ptr %i.c, align 8
  %i.g = icmp sgt i32 %i.f, 199999
  %i.h = select i1 %i.g, ptr @.str.315, ptr @.str.316
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %i.h) #11
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.317) #11
  %i.i = load i32, ptr %i.c, align 8
  %i.j = icmp sgt i32 %i.i, 119999
  %.str.319.sink = select i1 %i.j, ptr @.str.318, ptr @.str.319
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.319.sink) #11
  %i.k = load i32, ptr %i.c, align 8
  %i.l = icmp sgt i32 %i.k, 90299
  %.str.321.sink = select i1 %i.l, ptr @.str.320, ptr @.str.321
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.321.sink) #11
  %i.m = load i32, ptr %i.c, align 8
  %i.n = icmp sgt i32 %i.m, 90399
  %.str.323.sink = select i1 %i.n, ptr @.str.322, ptr @.str.323
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.323.sink) #11
  %i.o = load i32, ptr %i.c, align 8
  %i.p = icmp sgt i32 %i.o, 90499
  %.str.325.sink = select i1 %i.p, ptr @.str.324, ptr @.str.325
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.325.sink) #11
  %i.q = load i32, ptr %i.c, align 8
  %i.r = icmp sgt i32 %i.q, 90299
  %.str.327.sink = select i1 %i.r, ptr @.str.326, ptr @.str.327
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.327.sink) #11
  %i.s = load i32, ptr %i.c, align 8
  %i.t = icmp sgt i32 %i.s, 90299
  %.str.329.sink = select i1 %i.t, ptr @.str.328, ptr @.str.329
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.329.sink) #11
  %i.u = load i32, ptr %i.c, align 8
  %i.v = icmp sgt i32 %i.u, 90599
  %.str.331.sink = select i1 %i.v, ptr @.str.330, ptr @.str.331
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.331.sink) #11
  %i.w = load i32, ptr %i.c, align 8
  %i.x = icmp sgt i32 %i.w, 90599
  %.str.333.sink = select i1 %i.x, ptr @.str.332, ptr @.str.333
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.333.sink) #11
  %i.y = load i32, ptr %i.c, align 8
  %i.z = icmp sgt i32 %i.y, 99999
  %.str.335.sink = select i1 %i.z, ptr @.str.334, ptr @.str.335
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull %.str.335.sink) #11
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.336) #11
  %i.aa = load i32, ptr %i.c, align 8
  %i.ab = icmp sgt i32 %i.aa, 90599
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.337) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.338) #11
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.339) #11
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = tail call ptr @ExecuteSqlQuery(ptr noundef nonnull %0, ptr noundef %i.ac, i32 noundef 2) #11 ; 87 uses
  %i.ae = tail call i32 @PQntuples(ptr noundef %i.ad) #11 ; 4 uses
  store i32 %i.ae, ptr %1, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call ptr @pg_malloc0_mul(i64 noundef 488, i64 noundef %i.af) #11 ; 2 uses
  %i.ah = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.131) #11
  %i.ai = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.130) #11
  %i.aj = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.340) #11
  %i.ak = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.341) #11
  %i.al = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.342) #11
  %i.am = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.343) #11
  %i.an = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.344) #11
  %i.ao = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.345) #11
  %i.ap = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.346) #11
  %i.aq = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.347) #11
  %i.ar = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.348) #11
  %i.as = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.349) #11
  %i.at = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.350) #11
  %i.au = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.351) #11
  %i.av = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.352) #11 ; 2 uses
  %i.aw = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.353) #11 ; 2 uses
  %i.ax = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.354) #11
  %i.ay = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.355) #11
  %i.az = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.356) #11
  %i.ba = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.357) #11
  %i.bb = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.358) #11
  %i.bc = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.359) #11
  %i.bd = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.360) #11
  %i.be = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.361) #11
  %i.bf = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.362) #11
  %i.bg = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.363) #11
  %i.bh = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.364) #11
  %i.bi = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.365) #11
  %i.bj = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.366) #11
  %i.bk = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.367) #11
  %i.bl = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.368) #11
  %i.bm = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.369) #11 ; 2 uses
  %i.bn = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.370) #11
  %i.bo = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.371) #11
  %i.bp = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.372) #11
  %i.bq = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.275) #11 ; 2 uses
  %i.br = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.373) #11
  %i.bs = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.374) #11 ; 2 uses
  %i.bt = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.232) #11
  %i.bu = tail call i32 @PQfnumber(ptr noundef %i.ad, ptr noundef nonnull @.str.375) #11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @resetPQExpBuffer(ptr noundef nonnull %i.b) #11
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.376) #11
  %i.bx = load ptr, ptr %i.bv, align 8
  %i.by = tail call ptr @GetConnection(ptr noundef nonnull %0) #11
  tail call void @appendStringLiteralConn(ptr noundef nonnull %i.b, ptr noundef %i.bx, ptr noundef %i.by) #11
  %i.bz = load ptr, ptr %i.b, align 8
  tail call void @ExecuteSqlStatement(ptr noundef nonnull %0, ptr noundef %i.bz) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @resetPQExpBuffer(ptr noundef nonnull %i.b) #11
  %i.ca = icmp sgt i32 %i.ae, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ar
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32    ; 45 uses
  %i.cd = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.at) #11
  %i.ce = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.cd, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.au) #11
  %i.ch = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.cg, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw [488 x i8], ptr %i.ag, i64 %indvars.iv ; 57 uses
  store i32 12, ptr %i.cj, align 8
  %i.ck = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ah) #11
  %i.cl = tail call i64 @__isoc23_strtoul(ptr noundef %i.ck, ptr noundef null, i32 noundef 10) #11
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ai) #11
  %i.cp = tail call i64 @__isoc23_strtoul(ptr noundef %i.co, ptr noundef null, i32 noundef 10) #11
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  store i32 %i.cq, ptr %i.cr, align 8
  tail call void @AssignDumpId(ptr noundef %i.cj) #11
  %i.cs = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.aj) #11
  %i.ct = tail call ptr @pg_strdup(ptr noundef %i.cs) #11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ak) #11
  %i.cw = tail call i64 @__isoc23_strtoul(ptr noundef %i.cv, ptr noundef null, i32 noundef 10) #11
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = tail call ptr @findNamespaceByOid(i32 noundef %i.cx) #11 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.g, label %findNamespace.exit

bb.g:                                             ; preds = %bb.f
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.841, i32 noundef %i.cx) #11
  tail call void @exit_nicely(i32 noundef 1) #13
  unreachable

findNamespace.exit:                               ; preds = %bb.f
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 3 uses
  store ptr %i.cy, ptr %i.da, align 8
  %i.db = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.bs) #11
  %i.dc = tail call ptr @pg_strdup(ptr noundef %i.db) #11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store i8 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  store ptr null, ptr %i.df, align 8
  %i.dg = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.al) #11
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 104 ; 6 uses
  store i8 %i.dh, ptr %i.di, align 8
  %i.dj = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.am) #11
  %i.dk = tail call i64 @__isoc23_strtoul(ptr noundef %i.dj, ptr noundef null, i32 noundef 10) #11
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  store i32 %i.dl, ptr %i.dm, align 8
  %i.dn = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.an) #11
  %i.do = tail call i64 @__isoc23_strtoul(ptr noundef %i.dn, ptr noundef null, i32 noundef 10) #11
  %i.dp = trunc i64 %i.do to i32                  ; 3 uses
  %i.dq = load i32, ptr @nrolenames, align 4      ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %findNamespace.exit
  %i.ds = load ptr, ptr @rolenames, align 8       ; 3 uses
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr [16 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -16    ; 2 uses
  %.not33.i = icmp ugt ptr %i.ds, %i.dv
  br i1 %.not33.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.l
  %.01735.i = phi ptr [ %.2.i, %bb.l ], [ %i.dv, %bb.h ] ; 2 uses
  %.01934.i = phi ptr [ %.221.i, %bb.l ], [ %i.ds, %bb.h ] ; 3 uses
  %i.dw = ptrtoint ptr %.01735.i to i64
  %i.dx = ptrtoint ptr %.01934.i to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 4
  %i.ea = sdiv i64 %i.dz, 2
  %i.eb = getelementptr inbounds [16 x i8], ptr %.01934.i, i64 %i.ea ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, %i.dp
  br i1 %i.ed, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 -16
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.ef = icmp ult i32 %i.ec, %i.dp
  br i1 %i.ef, label %bb.k, label %getRoleName.exit

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.221.i = phi ptr [ %i.eg, %bb.k ], [ %.01934.i, %bb.i ] ; 2 uses
  %.2.i = phi ptr [ %.01735.i, %bb.k ], [ %i.ee, %bb.i ] ; 2 uses
  %.not.i = icmp ugt ptr %.221.i, %.2.i
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.h, %findNamespace.exit, %bb.l
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.850, i32 noundef %i.dp) #11
  tail call void @exit_nicely(i32 noundef 1) #13
  unreachable

getRoleName.exit:                                 ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cj, i64 96 ; 3 uses
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ao) #11
  %i.el = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ek, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.em = trunc i64 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.cj, i64 172
  store i32 %i.em, ptr %i.en, align 4
  %i.eo = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ap) #11 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %.not461 = icmp eq i8 %i.ep, 116
  br i1 %.not461, label %sub_1424, label %getRoleName.exit.tail422

sub_1424:                                         ; preds = %getRoleName.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = icmp eq i8 %i.er, 0
  %i.et = zext i1 %i.es to i8
  br label %getRoleName.exit.tail422

getRoleName.exit.tail422:                         ; preds = %getRoleName.exit, %sub_1424
  %i.eu = phi i8 [ 0, %getRoleName.exit ], [ %i.et, %sub_1424 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store i8 %i.eu, ptr %i.ev, align 8
  %i.ew = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.aq) #11 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1
  %.not462 = icmp eq i8 %i.ex, 116
  br i1 %.not462, label %sub_1, label %getRoleName.exit.tail

sub_1:                                            ; preds = %getRoleName.exit.tail422
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = icmp eq i8 %i.ez, 0
  %i.fb = zext i1 %i.fa to i8
  br label %getRoleName.exit.tail

getRoleName.exit.tail:                            ; preds = %getRoleName.exit.tail422, %sub_1
  %i.fc = phi i8 [ 0, %getRoleName.exit.tail422 ], [ %i.fb, %sub_1 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cj, i64 145
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ar) #11
  %i.ff = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fe, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 200 ; 2 uses
  store i32 %i.fg, ptr %i.fh, align 8
  %i.fi = tail call i32 @PQgetisnull(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.av) #11
  %.not415 = icmp eq i32 %i.fi, 0
  br i1 %.not415, label %bb.m, label %bb.n

bb.m:                                             ; preds = %getRoleName.exit.tail
  %i.fj = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.av) #11
  %i.fk = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fj, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.fl = trunc i64 %i.fk to i32
  br label %bb.n

bb.n:                                             ; preds = %getRoleName.exit.tail, %bb.m
  %.sink = phi i32 [ %i.fl, %bb.m ], [ 0, %getRoleName.exit.tail ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cj, i64 204
  store i32 %.sink, ptr %i.fm, align 4
  %i.fn = tail call i32 @PQgetisnull(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.aw) #11
  %.not416 = icmp eq i32 %i.fn, 0
  br i1 %.not416, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cj, i64 188
  store i32 0, ptr %i.fo, align 4
  br label %sub_0442

bb.p:                                             ; preds = %bb.n
  %i.fp = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.aw) #11
  %i.fq = tail call i64 @__isoc23_strtoul(ptr noundef %i.fp, ptr noundef null, i32 noundef 10) #11
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cj, i64 188
  store i32 %i.fr, ptr %i.fs, align 4
  %i.ft = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ax) #11
  %i.fu = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ft, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.fv = trunc i64 %i.fu to i32
  br label %sub_0442

sub_0442:                                         ; preds = %bb.p, %bb.o
  %.sink480 = phi i32 [ %i.fv, %bb.p ], [ 0, %bb.o ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  store i32 %.sink480, ptr %i.fw, align 8
  %i.fx = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ay) #11
  %i.fy = tail call ptr @pg_strdup(ptr noundef %i.fx) #11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  store ptr %i.fy, ptr %i.fz, align 8
  %i.ga = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.az) #11 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1
  %.not463 = icmp eq i8 %i.gb, 116
  br i1 %.not463, label %sub_1443, label %.tail441

sub_1443:                                         ; preds = %sub_0442
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = icmp eq i8 %i.gd, 0
  %i.gf = zext i1 %i.ge to i8
  br label %.tail441

.tail441:                                         ; preds = %sub_0442, %sub_1443
  %i.gg = phi i8 [ 0, %sub_0442 ], [ %i.gf, %sub_1443 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cj, i64 150
  store i8 %i.gg, ptr %i.gh, align 2
  %i.gi = tail call ptr @PQgetvalue(ptr noundef %i.ad, i32 noundef %i.cc, i32 noundef %i.ba) #11 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1
  %.not464 = icmp eq i8 %i.gj, 116
  br i1 %.not464, label %sub_1439, label %.tail437

sub_1439:                                         ; preds = %.tail441
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gl = load i8, ptr %i.gk, align 1
end_hunk_2
begin_hunk_3_@getIndexes:bb.a
  %.str.396.sink = select i1 %i.o, ptr @.str.395, ptr @.str.396
  tail call void @appendPQExpBufferStr(ptr noundef %i.c, ptr noundef nonnull %.str.396.sink) #11
  %i.p = load i32, ptr %i.g, align 8
  %i.q = icmp sgt i32 %i.p, 179999
  %.str.398.sink = select i1 %i.q, ptr @.str.397, ptr @.str.398
  tail call void @appendPQExpBufferStr(ptr noundef %i.c, ptr noundef nonnull %.str.398.sink) #11
  %i.r = load i32, ptr %i.g, align 8
  %i.s = icmp sgt i32 %i.r, 109999
  %.str.400.sink = select i1 %i.s, ptr @.str.399, ptr @.str.400
  %i.t = load ptr, ptr %i.d, align 8
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.c, ptr noundef nonnull %.str.400.sink, ptr noundef %i.t) #11
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = tail call ptr @ExecuteSqlQuery(ptr noundef nonnull %0, ptr noundef %i.u, i32 noundef 2) #11 ; 62 uses
  %i.w = tail call i32 @PQntuples(ptr noundef %i.v) #11 ; 4 uses
  %i.x = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.131) #11
  %i.y = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.130) #11
  %i.z = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.401) #11 ; 2 uses
  %i.aa = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.402) #11
  %i.ab = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.348) #11
  %i.ac = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.349) #11
  %i.ad = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.350) #11
  %i.ae = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.351) #11
  %i.af = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.403) #11
  %i.ag = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.404) #11
  %i.ah = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.405) #11
  %i.ai = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.406) #11
  %i.aj = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.407) #11
  %i.ak = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.408) #11
  %i.al = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.409) #11
  %i.am = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.410) #11
  %i.an = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.411) #11
  %i.ao = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.268) #11
  %i.ap = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.412) #11
  %i.aq = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.413) #11
  %i.ar = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.414) #11
  %i.as = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.415) #11
  %i.at = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.416) #11
  %i.au = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.417) #11
  %i.av = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.418) #11 ; 2 uses
  %i.aw = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.419) #11
  %i.ax = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.420) #11
  %i.ay = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.421) #11
  %i.az = tail call i32 @PQfnumber(ptr noundef %i.v, ptr noundef nonnull @.str.422) #11
  %i.ba = sext i32 %i.w to i64
  %i.bb = tail call ptr @pg_malloc_mul(i64 noundef 160, i64 noundef %i.ba) #11 ; 2 uses
  %i.bc = icmp sgt i32 %i.w, 0
  br i1 %i.bc, label %.lr.ph330, label %._crit_edge331

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [488 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load i8, ptr %i.be, align 8, !range !16, !noundef !17
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !noundef !17
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bk = load i64, ptr %i.f, align 8
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %i.d, i8 noundef signext 44) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.124, i32 noundef %i.bn) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !94

.loopexit:                                        ; preds = %bb.w
  %i.bo = icmp slt i32 %i.cx, %i.w
  br i1 %i.bo, label %.lr.ph330, label %._crit_edge331, !llvm.loop !95

._crit_edge331:                                   ; preds = %.loopexit, %._crit_edge
  call void @PQclear(ptr noundef %i.v) #11
  call void @destroyPQExpBuffer(ptr noundef nonnull %i.c) #11
  call void @destroyPQExpBuffer(ptr noundef nonnull %i.d) #11
  ret void

.lr.ph330:                                        ; preds = %._crit_edge, %.loopexit
  %.0297328 = phi i32 [ %i.cx, %.loopexit ], [ 0, %._crit_edge ] ; 6 uses
  %.0300327 = phi i32 [ %i.cd, %.loopexit ], [ -1, %._crit_edge ]
  %i.bp = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.0297328, i32 noundef %i.z) #11
  %i.bq = call i64 @__isoc23_strtoul(ptr noundef %i.bp, ptr noundef null, i32 noundef 10) #11
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  %i.bs = sub i32 %i.w, %.0297328                 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %.lr.ph321, label %._crit_edge322

.lr.ph321:                                        ; preds = %.lr.ph330, %bb.h
  %.0295319 = phi i32 [ %i.by, %bb.h ], [ 1, %.lr.ph330 ] ; 3 uses
  %i.bu = add i32 %.0295319, %.0297328
  %i.bv = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %i.bu, i32 noundef %i.z) #11
  %i.bw = call i64 @__isoc23_strtoul(ptr noundef %i.bv, ptr noundef null, i32 noundef 10) #11
  %i.bx = trunc i64 %i.bw to i32
  %.not = icmp eq i32 %i.bx, %i.br
  br i1 %.not, label %bb.h, label %._crit_edge322

bb.h:                                             ; preds = %.lr.ph321
  %i.by = add nuw nsw i32 %.0295319, 1            ; 2 uses
  %exitcond341.not = icmp eq i32 %i.by, %i.bs
  br i1 %exitcond341.not, label %._crit_edge322, label %.lr.ph321, !llvm.loop !96

._crit_edge322:                                   ; preds = %bb.h, %.lr.ph321, %.lr.ph330
  %.0295.lcssa = phi i32 [ 1, %.lr.ph330 ], [ %.0295319, %.lr.ph321 ], [ %i.bs, %bb.h ] ; 2 uses
  %i.bz = add i32 %.0300327, 1                    ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %2
  br i1 %i.ca, label %.lr.ph364, label %._crit_edge322._crit_edge

bb.i:                                             ; preds = %.lr.ph364
  %i.cb = add i32 %i.cd, 1                        ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %2
  br i1 %i.cc, label %.lr.ph364, label %._crit_edge322._crit_edge, !llvm.loop !97

.lr.ph364:                                        ; preds = %._crit_edge322, %bb.i
  %i.cd = phi i32 [ %i.cb, %bb.i ], [ %i.bz, %._crit_edge322 ] ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [488 x i8], ptr %1, i64 %i.ce ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, %i.br
  br i1 %i.ci, label %bb.j, label %bb.i, !llvm.loop !97

._crit_edge322._crit_edge:                        ; preds = %._crit_edge322, %bb.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.423, i32 noundef %i.br) #11
  call void @exit_nicely(i32 noundef 1) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph364
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.ck = load i8, ptr %i.cj, align 8, !range !16, !noundef !17
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 208
  %i.cn = load i8, ptr %i.cm, align 8, !range !16, !noundef !17
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.424, ptr noundef %i.cq) #11
  call void @exit_nicely(i32 noundef 1) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cr = sext i32 %.0297328 to i64
  %i.cs = getelementptr inbounds [160 x i8], ptr %i.bb, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 456
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 448
  store i32 %.0295.lcssa, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.cx = add i32 %.0297328, %.0295.lcssa         ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.w
  %.1298325 = phi i32 [ %.0297328, %bb.m ], [ %i.jg, %bb.w ] ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4
  %i.cy = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ab) #11
  %i.cz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cy, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.da = trunc i64 %i.cz to i32
  %i.db = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ad) #11
  %i.dc = call i64 @__isoc23_strtol(ptr noundef nonnull %i.db, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ae) #11
  %i.df = call i64 @__isoc23_strtol(ptr noundef nonnull %i.de, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.dg = trunc i64 %i.df to i32
  %i.dh = sext i32 %.1298325 to i64
  %i.di = getelementptr inbounds [160 x i8], ptr %i.bb, i64 %i.dh ; 25 uses
  store i32 15, ptr %i.di, align 8
  %i.dj = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.x) #11
  %i.dk = call i64 @__isoc23_strtoul(ptr noundef %i.dj, ptr noundef null, i32 noundef 10) #11
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.dl, ptr %i.dm, align 4
  %i.dn = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.y) #11
  %i.do = call i64 @__isoc23_strtoul(ptr noundef %i.dn, ptr noundef null, i32 noundef 10) #11
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  store i32 %i.dp, ptr %i.dq, align 8
  call void @AssignDumpId(ptr noundef %i.di) #11
  %i.dr = load i32, ptr %i.cv, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i32 %i.dr, ptr %i.ds, align 8
  %i.dt = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.aa) #11
  %i.du = call ptr @pg_strdup(ptr noundef %i.dt) #11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8
  %i.dw = load ptr, ptr %i.cw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  store ptr %i.cf, ptr %i.dy, align 8
  %i.dz = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ag) #11
  %i.ea = call ptr @pg_strdup(ptr noundef %i.dz) #11
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  store ptr %i.ea, ptr %i.eb, align 8
  %i.ec = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ah) #11
  %i.ed = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ec, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  store i32 %i.ee, ptr %i.ef, align 8
  %i.eg = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ai) #11
  %i.eh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.eg, ptr noundef null, i32 noundef 10) #11, !inline_history !4
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 116 ; 3 uses
  store i32 %i.ei, ptr %i.ej, align 4
  %i.ek = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.aw) #11
  %i.el = call ptr @pg_strdup(ptr noundef %i.ek) #11
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  store ptr %i.el, ptr %i.em, align 8
  %i.en = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ax) #11
  %i.eo = call ptr @pg_strdup(ptr noundef %i.en) #11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ay) #11
  %i.er = call ptr @pg_strdup(ptr noundef %i.eq) #11
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  store ptr %i.er, ptr %i.es, align 8
  %i.et = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.az) #11
  %i.eu = call ptr @pg_strdup(ptr noundef %i.et) #11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  store ptr %i.eu, ptr %i.ev, align 8
  %i.ew = load i32, ptr %i.ej, align 4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = call ptr @pg_malloc_mul(i64 noundef 4, i64 noundef %i.ex) #11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.di, i64 120 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8
  %i.fa = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.aj) #11
  %i.fb = load ptr, ptr %i.ez, align 8
  %i.fc = load i32, ptr %i.ej, align 4
  call void @parseOidArray(ptr noundef %i.fa, ptr noundef %i.fb, i32 noundef %i.fc) #11
  %i.fd = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ak) #11
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp eq i8 %i.fe, 116
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  %i.fh = zext i1 %i.ff to i8
  store i8 %i.fh, ptr %i.fg, align 8
  %i.fi = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.al) #11
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp eq i8 %i.fj, 116
  %i.fl = getelementptr inbounds nuw i8, ptr %i.di, i64 129
  %i.fm = zext i1 %i.fk to i8
  store i8 %i.fm, ptr %i.fl, align 1
  %i.fn = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.am) #11
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, 116
  %i.fq = getelementptr inbounds nuw i8, ptr %i.di, i64 130
  %i.fr = zext i1 %i.fp to i8
  store i8 %i.fr, ptr %i.fq, align 2
  %i.fs = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.af) #11
  %i.ft = call i64 @__isoc23_strtoul(ptr noundef %i.fs, ptr noundef null, i32 noundef 10) #11
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.di, i64 132
  store i32 %i.fu, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.fx = icmp eq i32 %i.fu, 0
  %. = select i1 %i.fx, i8 105, i8 73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  %i.fy = call i32 @PQgetisnull(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.av) #11
  %.not308 = icmp eq i32 %i.fy, 0
  br i1 %.not308, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.fz = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.av) #11
  %i.ga = call zeroext i1 @parsePGArray(ptr noundef %i.fz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  br i1 %i.ga, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.418) #11
  call void @exit_nicely(i32 noundef 1) #13
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.gb = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ac) #11
  %.val = load ptr, ptr %0, align 8
  %i.gc = getelementptr i8, ptr %.val, i64 186
  %.val.val = load i8, ptr %i.gc, align 2, !range !16, !noundef !17
  %i.gd = trunc nuw i8 %.val.val to i1
  br i1 %i.gd, label %.sink.split.i, label %getRelationStatistics.exit

.sink.split.i:                                    ; preds = %bb.q
  %i.ge = load i32, ptr %i.b, align 4
  %i.gf = load ptr, ptr %i.a, align 8
  %i.gg = call ptr @pg_malloc0(i64 noundef 112) #11 ; 20 uses
  store i32 45, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 0, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 0, ptr %i.gi, align 8
  call void @AssignDumpId(ptr noundef nonnull %i.gg) #11
  %i.gj = call ptr @pg_malloc(i64 noundef 4) #11  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store ptr %i.gj, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.gm = load i32, ptr %i.gl, align 4
  store i32 %i.gm, ptr %i.gj, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  store i32 1, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 60
  store i32 1, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = or i32 %i.gq, 128
  store i32 %i.gr, ptr %i.gp, align 8
  %i.gs = load ptr, ptr %i.dv, align 8
  %i.gt = call ptr @pg_strdup(ptr noundef %i.gs) #11
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load ptr, ptr %i.dx, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store ptr %i.gv, ptr %i.gw, align 8
  %i.gx = load i32, ptr %i.dq, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  store i32 %i.gx, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gg, i64 68
  store i32 %i.da, ptr %i.gz, align 4
  %i.ha = call ptr @pstrdup(ptr noundef %i.gb) #11
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  store ptr %i.ha, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  store i32 %i.dd, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gg, i64 84
  store i32 %i.dg, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  store i8 %., ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store ptr %i.gf, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i32 %i.ge, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 108
  store i32 4, ptr %i.hh, align 4
  br label %getRelationStatistics.exit

getRelationStatistics.exit:                       ; preds = %bb.q, %.sink.split.i
  %.0.i = phi ptr [ null, %bb.q ], [ %i.gg, %.sink.split.i ] ; 2 uses
  %i.hi = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.an) #11
  %i.hj = load i8, ptr %i.hi, align 1             ; 3 uses
  switch i8 %i.hj, label %bb.v [
    i8 120, label %bb.r
    i8 117, label %bb.r
    i8 112, label %bb.r
  ]

bb.r:                                             ; preds = %getRelationStatistics.exit, %getRelationStatistics.exit, %getRelationStatistics.exit
  %i.hk = icmp eq i8 %i.hj, 120
  %i.hl = call ptr @pg_malloc(i64 noundef 112) #11 ; 19 uses
  store i32 20, ptr %i.hl, align 8
  %i.hm = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.as) #11
  %i.hn = call i64 @__isoc23_strtoul(ptr noundef %i.hm, ptr noundef null, i32 noundef 10) #11
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i32 %i.ho, ptr %i.hp, align 4
  %i.hq = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.at) #11
  %i.hr = call i64 @__isoc23_strtoul(ptr noundef %i.hq, ptr noundef null, i32 noundef 10) #11
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 %i.hs, ptr %i.ht, align 8
  call void @AssignDumpId(ptr noundef nonnull %i.hl) #11
  %i.hu = load i32, ptr %i.cv, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store i32 %i.hu, ptr %i.hv, align 8
  %i.hw = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.ao) #11
  %i.hx = call ptr @pg_strdup(ptr noundef %i.hw) #11
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = load ptr, ptr %i.cw, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr %i.hz, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  store ptr %i.cf, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  store ptr null, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  store i8 %i.hj, ptr %i.id, align 8
  br i1 %i.hk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ie = call ptr @PQgetvalue(ptr noundef %i.v, i32 noundef %.1298325, i32 noundef %i.au) #11
  %i.if = call ptr @pg_strdup(ptr noundef %i.ie) #11
  br label %bb.t
end_hunk_3
