Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/script_lua?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@luaRedisGenericCommand:bb.a
  br i1 %i.z, label %.lr.ph.1, label %.loopexit90

bb.l:                                             ; preds = %.lr.ph.9
  %i.aa = add nsw i32 %i.dd, -11
  %i.ab = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.105, i32 noundef %i.aa) #10
  br label %.loopexit90

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.ac = tail call ptr @sdscatlen(ptr noundef %i.x, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = tail call ptr @sdscatsds(ptr noundef %i.ac, ptr noundef %i.ah) #10 ; 2 uses
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !97
  %i.ak = icmp sgt i32 %i.aj, 2
  br i1 %i.ak, label %.lr.ph.2, label %.loopexit90

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.al = tail call ptr @sdscatlen(ptr noundef %i.ai, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = tail call ptr @sdscatsds(ptr noundef %i.al, ptr noundef %i.aq) #10 ; 2 uses
  %i.as = load i32, ptr %i.e, align 8, !tbaa !97
  %i.at = icmp sgt i32 %i.as, 3
  br i1 %i.at, label %.lr.ph.3, label %.loopexit90

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.au = tail call ptr @sdscatlen(ptr noundef %i.ar, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19
  %i.ba = tail call ptr @sdscatsds(ptr noundef %i.au, ptr noundef %i.az) #10 ; 2 uses
  %i.bb = load i32, ptr %i.e, align 8, !tbaa !97
  %i.bc = icmp sgt i32 %i.bb, 4
  br i1 %i.bc, label %.lr.ph.4, label %.loopexit90

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bd = tail call ptr @sdscatlen(ptr noundef %i.ba, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = tail call ptr @sdscatsds(ptr noundef %i.bd, ptr noundef %i.bi) #10 ; 2 uses
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !97
  %i.bl = icmp sgt i32 %i.bk, 5
  br i1 %i.bl, label %.lr.ph.5, label %.loopexit90

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.bm = tail call ptr @sdscatlen(ptr noundef %i.bj, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !19
  %i.bs = tail call ptr @sdscatsds(ptr noundef %i.bm, ptr noundef %i.br) #10 ; 2 uses
  %i.bt = load i32, ptr %i.e, align 8, !tbaa !97
  %i.bu = icmp sgt i32 %i.bt, 6
  br i1 %i.bu, label %.lr.ph.6, label %.loopexit90

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bv = tail call ptr @sdscatlen(ptr noundef %i.bs, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = tail call ptr @sdscatsds(ptr noundef %i.bv, ptr noundef %i.ca) #10 ; 2 uses
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !97
  %i.cd = icmp sgt i32 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.7, label %.loopexit90

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.ce = tail call ptr @sdscatlen(ptr noundef %i.cb, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = tail call ptr @sdscatsds(ptr noundef %i.ce, ptr noundef %i.cj) #10 ; 2 uses
  %i.cl = load i32, ptr %i.e, align 8, !tbaa !97
  %i.cm = icmp sgt i32 %i.cl, 8
  br i1 %i.cm, label %.lr.ph.8, label %.loopexit90

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.cn = tail call ptr @sdscatlen(ptr noundef %i.ck, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19
  %i.ct = tail call ptr @sdscatsds(ptr noundef %i.cn, ptr noundef %i.cs) #10 ; 2 uses
  %i.cu = load i32, ptr %i.e, align 8, !tbaa !97
  %i.cv = icmp sgt i32 %i.cu, 9
  br i1 %i.cv, label %.lr.ph.9, label %.loopexit90

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.cw = tail call ptr @sdscatlen(ptr noundef %i.ct, ptr noundef nonnull @.str.4, i64 noundef 1) #10
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !19
  %i.dc = tail call ptr @sdscatsds(ptr noundef %i.cw, ptr noundef %i.db) #10 ; 2 uses
  %i.dd = load i32, ptr %i.e, align 8, !tbaa !97  ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 10
  br i1 %i.de, label %bb.l, label %.loopexit90

.loopexit90:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %bb.k, %bb.l
  %.1 = phi ptr [ %i.ab, %bb.l ], [ %i.p, %bb.k ], [ %i.x, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.1 ], [ %i.ar, %.lr.ph.2 ], [ %i.ba, %.lr.ph.3 ], [ %i.bj, %.lr.ph.4 ], [ %i.bs, %.lr.ph.5 ], [ %i.cb, %.lr.ph.6 ], [ %i.ck, %.lr.ph.7 ], [ %i.ct, %.lr.ph.8 ], [ %i.dc, %.lr.ph.9 ]
  tail call void @ldbLog(ptr noundef %.1) #10
  br label %bb.m

bb.m:                                             ; preds = %.loopexit90, %bb.j
  call void @scriptCall(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %.not82 = icmp eq ptr %i.df, null
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = call ptr @sdsnew(ptr noundef nonnull %i.df) #10
  call void @luaPushErrorBuff(ptr noundef %0, ptr noundef %i.dg)
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @sdsfree(ptr noundef %i.dh) #10
  call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.41) #10
  call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #10
  call void @lua_settable(ptr noundef %0, i32 noundef -3) #10
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !98
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !99
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 960 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !101 ; 3 uses
  br i1 %i.dm, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 968
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !102
  %i.dr = icmp ult i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 976 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !103
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.do
  store i8 0, ptr %i.du, align 1, !tbaa !15
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !103
  store i64 0, ptr %i.dn, align 8, !tbaa !101
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !103
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.dz = call ptr @sdsnewlen(ptr noundef %i.dx, i64 noundef %i.do) #10 ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !101
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !98 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !99
  %.not8395 = icmp eq i64 %i.ec, 0
  br i1 %.not8395, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %._crit_edge, %.lr.ph97
  %i.ed = phi ptr [ %i.en, %.lr.ph97 ], [ %i.ea, %._crit_edge ]
  %.06896 = phi ptr [ %i.ek, %.lr.ph97 ], [ %i.dz, %._crit_edge ]
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !23
  %i.ek = call ptr @sdscatlen(ptr noundef %.06896, ptr noundef nonnull %i.eh, i64 noundef %i.ej) #10 ; 2 uses
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !98 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !104
  call void @listDelNode(ptr noundef nonnull %i.el, ptr noundef %i.em) #10
  %i.en = load ptr, ptr %i.di, align 8, !tbaa !98 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !99
  %.not83 = icmp eq i64 %i.ep, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph97, !llvm.loop !106

.loopexit:                                        ; preds = %.lr.ph97, %._crit_edge, %bb.q
  %.169 = phi ptr [ %i.dv, %bb.q ], [ %i.dz, %._crit_edge ], [ %i.ek, %.lr.ph97 ] ; 5 uses
  %.not84 = icmp eq i32 %1, 0
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.eq = load i8, ptr %.169, align 1, !tbaa !15
  %.not85 = icmp eq i8 %i.eq, 45
  %spec.select = zext i1 %.not85 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.071 = phi i32 [ 0, %.loopexit ], [ %spec.select, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %.169, ptr %2, align 8, !tbaa !107
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.er, ptr noundef nonnull align 8 dereferenceable(128) @DefaultLuaTypeParserCallbacks, i64 128, i1 false), !tbaa.struct !110
  %i.es = call i32 @parseReply(ptr noundef nonnull %2, ptr noundef %0) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.et = call i32 @ldbIsEnabled() #10
  %.not86 = icmp eq i32 %i.et, 0
  br i1 %.not86, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ldbLogRedisReply(ptr noundef %.169) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !103
  %.not87 = icmp eq ptr %.169, %i.ev
  br i1 %.not87, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @sdsfree(ptr noundef %.169) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store i64 0, ptr %i.ew, align 8, !tbaa !112
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n
  %.172 = phi i32 [ %1, %bb.n ], [ %.071, %bb.w ]
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.ey = load i32, ptr %i.e, align 8, !tbaa !97
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !113
  call void @freeLuaRedisArgv(ptr noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
  store i32 0, ptr %i.f, align 8, !tbaa !113
  store i32 0, ptr %i.e, align 8, !tbaa !97
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr null, ptr %i.fa, align 8, !tbaa !69
  store ptr null, ptr %i.h, align 8, !tbaa !96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 0, ptr %i.fb, align 8, !tbaa !114
  call void @resetClient(ptr noundef nonnull %i.d, i32 noundef 1) #10
  %i.fc = load i32, ptr @luaRedisGenericCommand.inuse, align 4, !tbaa !9
  %i.fd = add nsw i32 %i.fc, -1
  store i32 %i.fd, ptr @luaRedisGenericCommand.inuse, align 4, !tbaa !9
  %.not88 = icmp eq i32 %.172, 0
  br i1 %.not88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = call i32 @lua_error(ptr noundef %0) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.e, %bb.d, %bb.y, %bb.i
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.i ], [ %i.fe, %bb.y ], [ %i.j, %bb.e ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @luaArgsToRedisArgv(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = tail call i32 @lua_gettop(ptr noundef %0) #10 ; 4 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @sdsnew(ptr noundef nonnull @.str.106) #10
  tail call void @luaPushErrorBuff(ptr noundef %0, ptr noundef %i.f)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr @lua_argv_size, align 4, !tbaa !9 ; 2 uses
  %i.h = icmp slt i32 %i.g, %i.d
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @lua_argv, align 8, !tbaa !27
  %i.j = sext i32 %i.d to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call ptr @zrealloc(ptr noundef %i.i, i64 noundef %i.k) #13
  store ptr %i.l, ptr @lua_argv, align 8, !tbaa !27
  %i.m = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  store i32 %i.m, ptr @lua_argv_size, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.g, %bb.c ]
  store i32 %i.n, ptr %2, align 4, !tbaa !9
  %i.o = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %sdssetlen.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %sdssetlen.exit ], [ 0, %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.q = trunc nuw nsw i64 %indvars.iv.next to i32 ; 4 uses
  %i.r = call i32 @lua_type(ptr noundef %0, i32 noundef %i.q) #10
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call double @lua_tonumber(ptr noundef %0, i32 noundef %i.q) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.u = call i32 @double2ll(double noundef %i.t, ptr noundef nonnull %i.c) #10
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !115
  %i.w = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef %i.v) #10
  %i.x = sext i32 %i.w to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = call i32 @fpconv_dtoa(double noundef %i.t, ptr noundef nonnull %i.b) #10
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ %i.z, %bb.h ], [ %i.x, %bb.g ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ab = call ptr @lua_tolstring(ptr noundef %0, i32 noundef %i.q, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %sdssetlen.exit.thread, label %bb.k

sdssetlen.exit.thread:                            ; preds = %bb.j
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre56 = load i32, ptr %1, align 4, !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  %.039 = phi ptr [ %i.b, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ae, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.a, align 8, !tbaa !23
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @lua_args_cached_objects, i64 %indvars.iv ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %.not45 = icmp eq ptr %i.ag, null
  %.pre55 = load i64, ptr %i.a, align 8, !tbaa !23 ; 4 uses
  br i1 %.not45, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @lua_args_cached_objects_len, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23
  %.not46 = icmp ult i64 %i.ai, %.pre55
  br i1 %.not46, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 6 uses
  %i.al = load ptr, ptr @lua_argv, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr %i.ag, ptr %i.am, align 8, !tbaa !16
  store ptr null, ptr %i.af, align 8, !tbaa !16
  %i.an = add i64 %.pre55, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %.039, i64 %i.an, i1 false)
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !23  ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ak, i64 -1     ; 2 uses
  %.val.i = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.aq = and i8 %.val.i, 7
  switch i8 %i.aq, label %sdssetlen.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %.tr.i = trunc i64 %i.ao to i8
  %i.ar = shl i8 %.tr.i, 3
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !15
  br label %sdssetlen.exit

bb.p:                                             ; preds = %bb.n
  %i.as = trunc i64 %i.ao to i8
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 -3
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  br label %sdssetlen.exit

end_hunk_0
