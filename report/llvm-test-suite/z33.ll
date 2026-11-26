Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z33?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@DbConvert:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !72
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !72
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !72
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  store ptr %i.bd, ptr @zz_hold, align 8, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, %i.bd
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bm, ptr @zz_res, align 8, !tbaa !79
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !72
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !72
  %i.bp = load ptr, ptr @zz_res, align 8, !tbaa !79
  %i.bq = load ptr, ptr @zz_hold, align 8, !tbaa !79 ; 5 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !72
  store ptr %i.bq, ptr %i.bq, align 8, !tbaa !72
  %.pre = load ptr, ptr @xx_link, align 8, !tbaa !79
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bu = phi ptr [ %i.bd, %bb.p ], [ %.pre, %bb.q ] ; 4 uses
  store ptr %i.bu, ptr @zz_hold, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !72  ; 2 uses
  %.off = add i8 %i.bw, -11
  %switch = icmp ult i8 %.off, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 33
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.by
  %.in42.in = select i1 %switch, ptr %i.bx, ptr %i.bz
  %.in42 = load i8, ptr %.in42.in, align 1, !tbaa !72 ; 2 uses
  %i.ca = zext i8 %.in42 to i32
  store i32 %i.ca, ptr @zz_size, align 4, !tbaa !7
  %i.cb = zext i8 %.in42 to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !79
  store ptr %i.cd, ptr %i.bu, align 8, !tbaa !72
  %i.ce = load ptr, ptr @zz_hold, align 8, !tbaa !79
  %i.cf = load i32, ptr @zz_size, align 4, !tbaa !7
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cg
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !79
  %i.ci = load ptr, ptr @xx_hold, align 8, !tbaa !79 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72 ; 2 uses
  %.not39 = icmp eq ptr %i.ck, %i.ci
  br i1 %.not39, label %.preheader, label %.lr.ph, !llvm.loop !102

.lr.ph65:                                         ; preds = %.preheader, %bb.v
  %i.cl = phi ptr [ %i.ds, %bb.v ], [ %i.bc, %.preheader ] ; 11 uses
  store ptr %i.cl, ptr @xx_link, align 8, !tbaa !79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !72 ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.cl
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph65
  store ptr %i.cn, ptr @zz_res, align 8, !tbaa !79
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !72 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !72
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !72
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !72
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !72
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph65, %bb.s
  store ptr %i.cl, ptr @zz_hold, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, %i.cl
  br i1 %i.cv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.cu, ptr @zz_res, align 8, !tbaa !79
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !72
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !72
  %i.cx = load ptr, ptr @zz_res, align 8, !tbaa !79
  %i.cy = load ptr, ptr @zz_hold, align 8, !tbaa !79 ; 5 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !72
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !72
  store ptr %i.cy, ptr %i.cy, align 8, !tbaa !72
  %.pre77 = load ptr, ptr @xx_link, align 8, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dc = phi ptr [ %i.cl, %bb.t ], [ %.pre77, %bb.u ] ; 4 uses
  store ptr %i.dc, ptr @zz_hold, align 8, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !72  ; 2 uses
  %.off46 = add i8 %i.de, -11
  %switch47 = icmp ult i8 %.off46, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 33
  %i.dg = zext i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.dg
  %.in41.in = select i1 %switch47, ptr %i.df, ptr %i.dh
  %.in41 = load i8, ptr %.in41.in, align 1, !tbaa !72 ; 2 uses
  %i.di = zext i8 %.in41 to i32
  store i32 %i.di, ptr @zz_size, align 4, !tbaa !7
  %i.dj = zext i8 %.in41 to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !79
  store ptr %i.dl, ptr %i.dc, align 8, !tbaa !72
  %i.dm = load ptr, ptr @zz_hold, align 8, !tbaa !79
  %i.dn = load i32, ptr @zz_size, align 4, !tbaa !7
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !79
  %i.dq = load ptr, ptr @xx_hold, align 8, !tbaa !79 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !72 ; 2 uses
  %.not40 = icmp eq ptr %i.ds, %i.dq
  br i1 %.not40, label %._crit_edge66, label %.lr.ph65, !llvm.loop !103

._crit_edge66:                                    ; preds = %bb.v, %.preheader
  %.lcssa = phi ptr [ %i.ba, %.preheader ], [ %i.dq, %bb.v ] ; 4 uses
  store ptr %.lcssa, ptr @zz_hold, align 8, !tbaa !79
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !72  ; 2 uses
  %.off48 = add i8 %i.du, -11
  %switch49 = icmp ult i8 %.off48, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.lcssa, i64 33
  %i.dw = zext i8 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.dw
  %.in.in = select i1 %switch49, ptr %i.dv, ptr %i.dx
  %.in = load i8, ptr %.in.in, align 1, !tbaa !72 ; 2 uses
  %i.dy = zext i8 %.in to i32
  store i32 %i.dy, ptr @zz_size, align 4, !tbaa !7
  %i.dz = zext i8 %.in to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !79
  store ptr %i.eb, ptr %.lcssa, align 8, !tbaa !72
  %i.ec = load ptr, ptr @zz_hold, align 8, !tbaa !79
  %i.ed = load i32, ptr @zz_size, align 4, !tbaa !7
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.ee
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @FullSymName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @SortFile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @DbClose(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 !guid !105 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.b = load i8, ptr %i.a, align 1, !tbaa !72
  %.not6 = icmp eq i8 %i.b, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DbLoad(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !115 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [512 x i8], align 16              ; 29 uses
  %i.d = alloca [512 x i8], align 16              ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = tail call zeroext i16 @DefineFile(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.g, i32 noundef 4, i32 noundef %1) #11 ; 7 uses
  %i.i = tail call ptr @OpenFile(i16 noundef zeroext %i.h, i32 noundef %2, i32 noundef 0) #11 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %i.i)
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = call i32 @StringBeginsWith(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.21) #11
  %.not213 = icmp eq i32 %i.m, 0
  br i1 %.not213, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = call ptr @FileName(i16 noundef zeroext %i.h) #11
  %i.o = call i32 @remove(ptr noundef %i.n) #11   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not260 = icmp eq i32 %2, 0
  br i1 %.not260, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call zeroext i16 @DefineFile(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.g, i32 noundef 3, i32 noundef %1) #11 ; 4 uses
  call void @LexPush(i16 noundef zeroext %i.p, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 0) #11
  %i.q = call ptr @LexGetToken() #11
  %.not230 = icmp eq ptr %3, null
  %.0180.in287 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.z, %bb.f
  %.0188 = phi ptr [ null, %bb.f ], [ %.1189, %bb.z ] ; 4 uses
  %.pn237 = phi ptr [ %i.q, %bb.f ], [ %i.cl, %bb.z ] ; 4 uses
  %.0172 = phi i64 [ 0, %bb.f ], [ %i.ck, %bb.z ]
  store ptr %.pn237, ptr %i.a, align 8, !tbaa !79
  %.0175.in.in = getelementptr inbounds nuw i8, ptr %.pn237, i64 36
  %.0175.in = load i32, ptr %.0175.in.in, align 4
  %.0175 = and i32 %.0175.in, 1048575
  %i.r = getelementptr inbounds nuw i8, ptr %.pn237, i64 32
  %i.s = load i8, ptr %i.r, align 8, !tbaa !72
  switch i8 %i.s, label %bb.aa [
    i8 102, label %bb.h
    i8 105, label %.loopexit270
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @StartSym, align 8, !tbaa !79
  %i.u = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef %i.t, i32 noundef 0, i32 noundef 0) #11 ; 14 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not228 = icmp eq ptr %i.v, null
  br i1 %.not228, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !72
  %.not229 = icmp eq i8 %i.x, 2
  br i1 %.not229, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = call ptr @FileName(i16 noundef zeroext %i.p) #11
  %i.aa = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 6, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %i.y, ptr noundef %i.z) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not230, label %bb.l, label %.critedge240.preheader

.critedge240.preheader:                           ; preds = %bb.k
  %.0180288 = load ptr, ptr %.0180.in287, align 8, !tbaa !72 ; 2 uses
  %.not231289 = icmp eq ptr %.0180288, %3
  br i1 %.not231289, label %.critedge240._crit_edge, label %.preheader265.lr.ph

.preheader265.lr.ph:                              ; preds = %.critedge240.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  br label %.preheader265

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.ad = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ac, ptr noundef nonnull @.str.30) #11 ; 0 uses
  br label %.loopexit269

.preheader265:                                    ; preds = %.preheader265.lr.ph, %.critedge240
  %.0180290 = phi ptr [ %.0180288, %.preheader265.lr.ph ], [ %.0180, %.critedge240 ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader265, %bb.m
  %.0180.pn = phi ptr [ %.0178, %bb.m ], [ %.0180290, %.preheader265 ]
  %.0178.in = getelementptr inbounds nuw i8, ptr %.0180.pn, i64 16
  %.0178 = load ptr, ptr %.0178.in, align 8, !tbaa !72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0178, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !72
  switch i8 %i.af, label %.critedge240 [
    i8 0, label %bb.m
    i8 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.0178, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit269, label %.critedge240

.critedge240:                                     ; preds = %bb.m, %bb.n
  %.0180.in = getelementptr inbounds nuw i8, ptr %.0180290, i64 8
  %.0180 = load ptr, ptr %.0180.in, align 8, !tbaa !72 ; 2 uses
  %.not231 = icmp eq ptr %.0180, %3
  br i1 %.not231, label %.critedge240._crit_edge, label %.preheader265, !llvm.loop !106

.critedge240._crit_edge:                          ; preds = %.critedge240, %.critedge240.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = call ptr @SymName(ptr noundef %i.am) #11
  %i.ao = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 7, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %i.ak, ptr noundef %i.an, ptr noundef nonnull @.str.32) #11 ; 0 uses
  br label %.loopexit269

.loopexit269:                                     ; preds = %bb.n, %bb.l, %.critedge240._crit_edge
  %.1181.in291 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.1181292 = load ptr, ptr %.1181.in291, align 8, !tbaa !72 ; 2 uses
  %.not233293 = icmp eq ptr %.1181292, %i.u
  br i1 %.not233293, label %._crit_edge, label %.preheader263

.preheader263:                                    ; preds = %.loopexit269, %.loopexit264
  %.1181294 = phi ptr [ %.1181, %.loopexit264 ], [ %.1181292, %.loopexit269 ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader263, %bb.o
  %.1181.pn = phi ptr [ %.0185, %bb.o ], [ %.1181294, %.preheader263 ]
  %.0185.in = getelementptr inbounds nuw i8, ptr %.1181.pn, i64 16
  %.0185 = load ptr, ptr %.0185.in, align 8, !tbaa !72 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0185, i64 32
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !72
  switch i8 %i.aq, label %.loopexit264 [
    i8 0, label %bb.o
    i8 10, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.0185, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  %i.au = load i16, ptr %i.at, align 1
  %i.av = and i16 %i.au, 1
  %.not234 = icmp eq i16 %i.av, 0
  br i1 %.not234, label %.loopexit264, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.0185, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 2 uses
  %.not235 = icmp eq ptr %i.ax, %.0185
  br i1 %.not235, label %.loopexit264, label %.preheader267

.preheader267:                                    ; preds = %bb.q, %.preheader267
  %.pn238 = phi ptr [ %.0186, %.preheader267 ], [ %i.ax, %bb.q ]
  %.0186.in = getelementptr inbounds nuw i8, ptr %.pn238, i64 16
  %.0186 = load ptr, ptr %.0186.in, align 8, !tbaa !72 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0186, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !72
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.preheader267, label %.loopexit268, !llvm.loop !107

.loopexit264:                                     ; preds = %bb.o, %bb.p, %bb.q
  %.1181.in = getelementptr inbounds nuw i8, ptr %.1181294, i64 8
  %.1181 = load ptr, ptr %.1181.in, align 8, !tbaa !72 ; 2 uses
  %.not233 = icmp eq ptr %.1181, %i.u
  br i1 %.not233, label %._crit_edge, label %.preheader263, !llvm.loop !108

._crit_edge:                                      ; preds = %.loopexit264, %.loopexit269
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.be = call ptr @SymName(ptr noundef %i.bd) #11
  %i.bf = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 8, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %i.bb, ptr noundef %i.be) #11 ; 0 uses
  br label %.loopexit268

.loopexit268:                                     ; preds = %.preheader267, %._crit_edge
  %.1187250 = phi ptr [ null, %._crit_edge ], [ %.0186, %.preheader267 ]
  %i.bg = call ptr @ReplaceWithTidy(ptr noundef %.1187250, i32 noundef 1) #11 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !72
  %.off = add i8 %i.bi, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit268
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bk = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef nonnull %i.bj) #11 ; 0 uses
  br label %bb.s
end_hunk_0
begin_hunk_1_@DbLoad:bb.a
bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cx = sext i32 %i.ct to i64
  %i.cy = getelementptr inbounds i8, ptr %i.c, i64 %i.cx
  store i8 0, ptr %i.cy, align 1
  %i.cz = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g) #11 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load i8, ptr %i.da, align 8, !tbaa !72
  %.off.i242 = add i8 %i.db, -11
  %switch.i243 = icmp ult i8 %.off.i242, 2
  br i1 %switch.i243, label %DbCreate.exit244, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.dd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dc, ptr noundef nonnull @.str.1) #11 ; 0 uses
  br label %DbCreate.exit244

DbCreate.exit244:                                 ; preds = %bb.ad, %bb.ae
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 42
  store i8 0, ptr %i.de, align 2, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store ptr null, ptr %i.df, align 8, !tbaa !72
  br label %bb.af

bb.af:                                            ; preds = %DbCreate.exit244, %.loopexit270
  %.2190 = phi ptr [ %i.cz, %DbCreate.exit244 ], [ %.0188, %.loopexit270 ] ; 2 uses
  call void @DbConvert(ptr noundef nonnull %.2190, i32 noundef 0)
  %i.dg = call ptr @OpenFile(i16 noundef zeroext %i.h, i32 noundef 0, i32 noundef 0) #11 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %i.dg)
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.dl = call i32 @StringBeginsWith(ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.21) #11
  %.not215 = icmp eq i32 %i.dl, 0
  br i1 %.not215, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %.2190, i64 32
  %i.dn = call ptr @FileName(i16 noundef zeroext %i.h) #11
  %i.do = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %i.dm, ptr noundef %i.dn) #11 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.ah, %bb.ai, %bb.e
  %.1192 = phi ptr [ %i.dg, %bb.ai ], [ %i.dg, %bb.ah ], [ null, %bb.e ], [ %i.i, %bb.c ] ; 7 uses
  %i.dp = call ptr @FileName(i16 noundef zeroext %i.h) #11
  %i.dq = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.dp) #11 ; 0 uses
  %i.dr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = add i32 %i.ds, -3                       ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.dv = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.dw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dv, ptr noundef nonnull @.str.41) #11 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds i8, ptr %i.c, i64 %i.dx
  store i8 0, ptr %i.dy, align 1
  %i.dz = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g) #11 ; 17 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 42
  store i8 1, ptr %i.eb, align 2, !tbaa !72
  %i.ec = trunc i32 %4 to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 43 ; 4 uses
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !72
  %.not216 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not216, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !72
  %i.eg = icmp eq i8 %i.ef, 17
  br i1 %i.eg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.ei = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.eh, ptr noundef nonnull @.str.42) #11 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ej = load i8, ptr @zz_lengths, align 1, !tbaa !72 ; 2 uses
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  store i32 %i.ek, ptr @zz_size, align 4, !tbaa !7
  %i.el = zext i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.el ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !79 ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ep = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.eq = call ptr @GetMemory(i32 noundef %i.ek, ptr noundef %i.ep) #11
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store ptr %i.en, ptr @zz_hold, align 8, !tbaa !79
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !72
  store ptr %i.er, ptr %i.em, align 8, !tbaa !79
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.es = phi ptr [ %i.eq, %bb.ao ], [ %i.en, %bb.ap ] ; 12 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i8 0, ptr %i.et, align 8, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.es, ptr %i.ew, align 8, !tbaa !72
  store ptr %i.es, ptr %i.es, align 8, !tbaa !72
  store ptr %i.es, ptr @xx_link, align 8, !tbaa !79
  store ptr %i.es, ptr @zz_res, align 8, !tbaa !79
  store ptr %i.dz, ptr @zz_hold, align 8, !tbaa !79
  %i.ex = load ptr, ptr %i.dz, align 8, !tbaa !72
  store ptr %i.ex, ptr @zz_tmp, align 8, !tbaa !79
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !72
  store ptr %i.ey, ptr %i.dz, align 8, !tbaa !72
  %i.ez = load ptr, ptr @zz_hold, align 8, !tbaa !79
  %i.fa = load ptr, ptr @zz_res, align 8, !tbaa !79 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !72
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !72
  %i.fd = load ptr, ptr @zz_tmp, align 8, !tbaa !79 ; 2 uses
  store ptr %i.fd, ptr %i.fa, align 8, !tbaa !72
  %i.fe = load ptr, ptr @zz_res, align 8, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !72
  %i.fg = load ptr, ptr @xx_link, align 8, !tbaa !79 ; 4 uses
  store ptr %i.fg, ptr @zz_res, align 8, !tbaa !79
  store ptr %3, ptr @zz_hold, align 8, !tbaa !79
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !72 ; 3 uses
  store ptr %i.fj, ptr @zz_tmp, align 8, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !72 ; 2 uses
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr %3, ptr %i.fm, align 8, !tbaa !72
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !72
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !72
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ak
  %i.fo = icmp eq ptr %.1192, null
  br i1 %i.fo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store ptr null, ptr %i.fp, align 8, !tbaa !72
  br label %bb.bt

bb.au:                                            ; preds = %bb.as
  %i.fq = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %.1192)
  %.not217298 = icmp eq ptr %i.fq, null
  br i1 %.not217298, label %._crit_edge303, label %.lr.ph302

.lr.ph302:                                        ; preds = %bb.au
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.fs = load i8, ptr %i.c, align 16, !tbaa !72
  %i.ft = icmp ne i8 %i.fs, 48
  %i.fu = load i8, ptr %i.fr, align 1
  %i.fv = icmp ne i8 %i.fu, 48
  %or.cond5378 = select i1 %i.ft, i1 true, i1 %i.fv
  br i1 %or.cond5378, label %.thread257, label %.lr.ph380

bb.av:                                            ; preds = %bb.bo
  %i.fw = load i8, ptr %i.c, align 16, !tbaa !72
  %i.fx = icmp ne i8 %i.fw, 48
  %i.fy = load i8, ptr %i.fr, align 1
  %i.fz = icmp ne i8 %i.fy, 48
  %or.cond5 = select i1 %i.fx, i1 true, i1 %i.fz
  br i1 %or.cond5, label %.thread257.loopexit, label %.lr.ph380, !llvm.loop !110

.lr.ph380:                                        ; preds = %.lr.ph302, %bb.av
  %.0176299379 = phi i32 [ %i.ga, %bb.av ], [ 1, %.lr.ph302 ]
  %i.ga = add nuw nsw i32 %.0176299379, 1         ; 2 uses
  %i.gb = call i64 @ftell(ptr noundef nonnull %.1192) ; 2 uses
  %i.gc = call i32 @StringBeginsWith(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.43) #11 ; 2 uses
  %.not218 = icmp eq i32 %i.gc, 0                 ; 2 uses
  %i.gd = select i1 %.not218, ptr @.str.45, ptr @.str.44
  %i.ge = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.b) #11 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph380
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 9, %.lr.ph380 ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !72
  switch i8 %i.gg, label %bb.ax [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.aw, !llvm.loop !111

.critedge:                                        ; preds = %bb.aw, %bb.aw
  br i1 %.not216, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.critedge
  %i.gh = trunc nuw nsw i64 %indvars.iv to i32
  %i.gi = load ptr, ptr @StartSym, align 8, !tbaa !79
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %indvars.iv323 = phi i32 [ %indvars.iv.next324, %bb.ba ], [ 1, %bb.ay ] ; 2 uses
  %.0183 = phi ptr [ %i.go, %bb.ba ], [ %i.gi, %bb.ay ] ; 3 uses
  %.1 = phi i32 [ %i.gs, %bb.ba ], [ %i.gh, %bb.ay ] ; 2 uses
  %.0174 = phi i32 [ %i.gj, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %5 = sext i32 %.1 to i64
  %6 = getelementptr inbounds i8, ptr %i.c, i64 %5 ; 2 uses
  %7 = load i8, ptr %6, align 1, !tbaa !72
  switch i8 %7, label %bb.ba [
    i8 10, label %.critedge7
    i8 0, label %.critedge7
  ]

bb.ba:                                            ; preds = %bb.az
  call void @PushScope(ptr noundef %.0183, i32 noundef 0, i32 noundef 0) #11
  %i.gj = add nuw nsw i32 %.0174, 1
  %i.gk = getelementptr i8, ptr %6, i64 1
  %i.gl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.gk, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.gm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #13
  %i.gn = trunc i64 %i.gm to i32
  %i.go = call ptr @SearchSym(ptr noundef nonnull %i.d, i32 noundef %i.gn) #11
  %i.gp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #13
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = add i32 %.1, 1
  %i.gs = add i32 %i.gr, %i.gq
  %indvars.iv.next324 = add nuw i32 %indvars.iv323, 1
  br label %bb.az, !llvm.loop !112

.critedge7:                                       ; preds = %bb.az, %bb.az
  %.not224296 = icmp eq i32 %.0174, 0
  br i1 %.not224296, label %.loopexit261, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge7, %.lr.ph
  %.2297 = phi i32 [ %i.gt, %.lr.ph ], [ 1, %.critedge7 ]
  call void @PopScope() #11
  %i.gt = add nuw i32 %.2297, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %indvars.iv323
  br i1 %exitcond.not, label %.loopexit261, label %.lr.ph, !llvm.loop !113

bb.bb:                                            ; preds = %.critedge
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.gv, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.d) #11 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %bb.bb
  %.pn = phi ptr [ %3, %bb.bb ], [ %.2182, %.loopexit ]
  %.2182.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.2182 = load ptr, ptr %.2182.in, align 8, !tbaa !72 ; 3 uses
  %.not221 = icmp eq ptr %.2182, %3
  br i1 %.not221, label %.thread252, label %.preheader

.preheader:                                       ; preds = %bb.bc, %.preheader
  %.2182.pn = phi ptr [ %.1179, %.preheader ], [ %.2182, %bb.bc ]
  %.1179.in = getelementptr inbounds nuw i8, ptr %.2182.pn, i64 16
  %.1179 = load ptr, ptr %.1179.in, align 8, !tbaa !72 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1179, i64 32
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !72
  switch i8 %i.gy, label %bb.bd [
    i8 0, label %.preheader
    i8 2, label %.loopexit
  ]

bb.bd:                                            ; preds = %.preheader
  %i.gz = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.ha = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.gz, ptr noundef nonnull @.str.47) #11 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.bd
  %i.hb = getelementptr inbounds nuw i8, ptr %.1179, i64 80
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !72
  %i.hd = call ptr @SymName(ptr noundef %i.hc) #11
  %i.he = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.hd) #13
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.be, label %bb.bc, !llvm.loop !114

bb.be:                                            ; preds = %.loopexit
  %i.hg = getelementptr inbounds nuw i8, ptr %.1179, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !72
  br label %.loopexit261

.loopexit261:                                     ; preds = %.lr.ph, %.critedge7, %bb.be
  %.1184 = phi ptr [ %i.hh, %bb.be ], [ %.0183, %.critedge7 ], [ %.0183, %.lr.ph ] ; 5 uses
  %.not225 = icmp eq ptr %.1184, null
  %i.hi = load ptr, ptr @StartSym, align 8
  %.not226 = icmp eq ptr %.1184, %i.hi
  %or.cond241 = select i1 %.not225, i1 true, i1 %.not226
  br i1 %or.cond241, label %.thread252, label %bb.bf

bb.bf:                                            ; preds = %.loopexit261
  %i.hj = getelementptr inbounds nuw i8, ptr %.1184, i64 88 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !72
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @CrossInit(ptr noundef nonnull %.1184) #11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hm = load i8, ptr @zz_lengths, align 1, !tbaa !72 ; 2 uses
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  store i32 %i.hn, ptr @zz_size, align 4, !tbaa !7
  %i.ho = zext i8 %i.hm to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ho ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !79 ; 4 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hs = load ptr, ptr @no_fpos, align 8, !tbaa !74
  %i.ht = call ptr @GetMemory(i32 noundef %i.hn, ptr noundef %i.hs) #11
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  store ptr %i.hq, ptr @zz_hold, align 8, !tbaa !79
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !72
  store ptr %i.hu, ptr %i.hp, align 8, !tbaa !79
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.hv = phi ptr [ %i.ht, %bb.bi ], [ %i.hq, %bb.bj ] ; 12 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  store i8 0, ptr %i.hw, align 8, !tbaa !72
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !72
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !72
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !72
  store ptr %i.hv, ptr %i.hv, align 8, !tbaa !72
  store ptr %i.hv, ptr @xx_link, align 8, !tbaa !79
  store ptr %i.hv, ptr @zz_res, align 8, !tbaa !79
  store ptr %i.dz, ptr @zz_hold, align 8, !tbaa !79
  %i.ia = load ptr, ptr %i.dz, align 8, !tbaa !72
  store ptr %i.ia, ptr @zz_tmp, align 8, !tbaa !79
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !72
  store ptr %i.ib, ptr %i.dz, align 8, !tbaa !72
  %i.ic = load ptr, ptr @zz_hold, align 8, !tbaa !79
  %i.id = load ptr, ptr @zz_res, align 8, !tbaa !79 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !72
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ic, ptr %i.if, align 8, !tbaa !72
  %i.ig = load ptr, ptr @zz_tmp, align 8, !tbaa !79 ; 2 uses
  store ptr %i.ig, ptr %i.id, align 8, !tbaa !72
  %i.ih = load ptr, ptr @zz_res, align 8, !tbaa !79
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !72
  %.pre326 = load ptr, ptr @xx_link, align 8, !tbaa !79 ; 4 uses
  store ptr %.pre326, ptr @zz_res, align 8, !tbaa !79
  %i.ij = load ptr, ptr %i.hj, align 8, !tbaa !72 ; 4 uses
  store ptr %i.ij, ptr @zz_hold, align 8, !tbaa !79
  %i.ik = icmp eq ptr %i.ij, null
  %i.il = icmp eq ptr %.pre326, null
  %or.cond15 = select i1 %i.ik, i1 true, i1 %i.il
  br i1 %or.cond15, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !72 ; 3 uses
  store ptr %i.in, ptr @zz_tmp, align 8, !tbaa !79
  %i.io = getelementptr inbounds nuw i8, ptr %.pre326, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !72 ; 2 uses
  store ptr %i.ip, ptr %i.im, align 8, !tbaa !72
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store ptr %i.ij, ptr %i.iq, align 8, !tbaa !72
  store ptr %i.in, ptr %i.io, align 8, !tbaa !72
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store ptr %.pre326, ptr %i.ir, align 8, !tbaa !72
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.is = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %i.it = load i32, ptr %i.b, align 4, !tbaa !7
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 33
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !72
  %i.iw = trunc i32 %i.gc to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 34
  store i8 %i.iw, ptr %i.ix, align 2, !tbaa !72
  br i1 %.not218, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = getelementptr inbounds nuw i8, ptr %.1184, i64 41 ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 1
  %i.ja = or i16 %i.iz, 6144
  store i16 %i.ja, ptr %i.iy, align 1
  br label %bb.bo

.thread252:                                       ; preds = %.loopexit261, %bb.bc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.jc = call ptr @FileName(i16 noundef zeroext %i.h) #11
  %i.jd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 13, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %i.jb, ptr noundef %i.jc, i32 noundef %i.ga) #11 ; 0 uses
  %i.je = call i32 @fclose(ptr noundef nonnull %.1192) ; 0 uses
  store i8 0, ptr %i.ed, align 1, !tbaa !72
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store ptr null, ptr %i.jf, align 8, !tbaa !72
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.jg = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %.1192)
  %.not217 = icmp eq ptr %i.jg, null
  br i1 %.not217, label %._crit_edge303.loopexit, label %bb.av, !llvm.loop !110

._crit_edge303.loopexit:                          ; preds = %bb.bo
  %i.jh = trunc i64 %i.gb to i16
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %._crit_edge303.loopexit, %bb.au
  %.0173.lcssa = phi i16 [ 0, %bb.au ], [ %i.jh, %._crit_edge303.loopexit ]
  %i.ji = load i8, ptr %i.ed, align 1, !tbaa !72
  %.not227 = icmp eq i8 %i.ji, 0
  br i1 %.not227, label %bb.bs, label %bb.bp

.thread257.loopexit:                              ; preds = %bb.av
  %i.jj = trunc i64 %i.gb to i16
  br label %.thread257

.thread257:                                       ; preds = %.thread257.loopexit, %.lr.ph302
  %.0173300.lcssa = phi i16 [ 0, %.lr.ph302 ], [ %i.jj, %.thread257.loopexit ]
  %i.jk = load i8, ptr %i.ed, align 1, !tbaa !72
  %.not227258 = icmp eq i8 %i.jk, 0
  br i1 %.not227258, label %bb.bs, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
end_hunk_1
