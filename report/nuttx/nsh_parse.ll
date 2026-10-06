Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nsh_parse?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
begin_hunk_0_@nsh_parse:.lr.ph
bb.l:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.c, %bb.d
  %.143 = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.04266, %bb.g ], [ %.04266, %bb.l ]
  %.4 = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.t, %bb.g ], [ %i.ad, %bb.l ]
  %i.ae = load i8, ptr %i.b, align 2, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.critedge, label %bb.a, !llvm.loop !10

.critedge:                                        ; preds = %bb.d, %bb.m, %.thread, %bb.b
  %.5 = phi i32 [ %i.l, %bb.b ], [ -1, %.thread ], [ -1, %bb.d ], [ 0, %bb.m ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strcspn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @nsh_parse_command(ptr noundef initializes((1184, 1188)) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.nsh_param_s, align 8        ; 15 uses
  %3 = alloca %struct.nsh_memlist_s, align 8      ; 23 uses
  %4 = alloca %struct.nsh_alist_s, align 8        ; 17 uses
  %i.b = alloca [12 x ptr], align 16              ; 12 uses
  %i.c = alloca ptr, align 8                      ; 21 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store <2 x i32> splat (i32 -1), ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 -1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1185 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1186 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1187 ; 8 uses
  store i32 0, ptr %i.g, align 8
  store ptr %1, ptr %i.c, align 8
  %i.k = call fastcc ptr @nsh_argument(ptr noundef %0, ptr noundef %i.c, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 10 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread242, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.7) #22
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %i.n = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.8) #22
  %i.o = icmp eq i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.p = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 (ptr, ptr, ...) %i.u(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.mask.i = and i8 %i.ab, -64
  %i.ac = icmp eq i8 %.mask.i, 64
  br i1 %i.ac, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1251 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = lshr i8 %i.ai, 6
  %.off.i = add nsw i8 %i.aj, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call i32 (ptr, ptr, ...) %i.ar(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.at = icmp ugt i8 %i.af, 1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 (ptr, ptr, ...) %i.av(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtdeepnesting, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.ax = select i1 %i.m, i8 64, i8 -128
  %i.ay = call fastcc zeroext i1 @nsh_cmdenabled(ptr noundef nonnull %0) #22
  %i.az = zext i1 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = zext i16 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.ao, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1250
  store i8 0, ptr %i.be, align 2
  %i.bf = add nuw nsw i8 %i.af, 1                 ; 2 uses
  store i8 %i.bf, ptr %i.ae, align 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bg ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, 62
  %i.bk = or disjoint i8 %i.ax, %i.az
  %i.bl = or disjoint i8 %i.bk, %i.bj
  store i8 %i.bl, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.y, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bd, ptr %i.bn, align 8
  br label %.thread233

bb.n:                                             ; preds = %bb.b
  %i.bo = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.9) #22
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1251
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.bx = lshr i8 %i.bw, 6
  %.off119.i = add nsw i8 %i.bx, -1
  %switch120.i = icmp ult i8 %.off119.i, 2
  br i1 %switch120.i, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 (ptr, ptr, ...) %i.bz(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.9) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.q:                                             ; preds = %bb.n
  %i.cb = call i32 @strcmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.10) #22
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.cd = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %.not114.i = icmp eq ptr %i.cd, null
  br i1 %.not114.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 (ptr, ptr, ...) %i.cf(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.t:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1251 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1             ; 3 uses
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8             ; 3 uses
  %.not115.i = icmp ugt i8 %i.cm, -65
  br i1 %.not115.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 (ptr, ptr, ...) %i.co(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.cq = icmp eq i8 %i.cj, 0
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call i32 (ptr, ptr, ...) %i.cs(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtinternalerror, ptr noundef nonnull @.str.10) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.cu = and i8 %i.cm, 1
  %.not116.i = icmp eq i8 %i.cu, 0
  br i1 %.not116.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = trunc i64 %i.cy to i32
  %i.da = call i32 @lseek(i32 noundef %i.cw, i32 noundef %i.cz, i32 noundef 0) #24
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call ptr @__errno() #24
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = call i32 (ptr, ptr, ...) %i.dd(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %i.df) #24, !inline_history !11 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1250
  store i8 1, ptr %i.dh, align 2
  %.pre.i = load i8, ptr %i.ci, align 1           ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64   ; 2 uses
  %.phi.trans.insert124.i = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.phi.trans.insert.i
  %.pre125.i = load i8, ptr %.phi.trans.insert124.i, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.di = or disjoint i8 %i.cm, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi.i = phi i64 [ %i.ck, %bb.ab ], [ %.phi.trans.insert.i, %bb.aa ]
  %i.dj = phi i8 [ %i.di, %bb.ab ], [ %.pre125.i, %bb.aa ]
  %i.dk = phi i8 [ %i.cj, %bb.ab ], [ %.pre.i, %bb.aa ]
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.pre-phi.i
  %i.dm = and i8 %i.dj, 63
  store i8 %i.dm, ptr %i.dl, align 8
  %i.dn = add i8 %i.dk, -1
  store i8 %i.dn, ptr %i.ci, align 1
  br label %.thread242

bb.ad:                                            ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1251
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 8
  %i.du = lshr i8 %i.dt, 6
  %.off121.i = add nsw i8 %i.du, -1
  %switch122.i = icmp ult i8 %.off121.i, 2
  br i1 %switch122.i, label %bb.ae, label %.thread233

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call i32 (ptr, ptr, ...) %i.dw(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull %i.k) #24, !inline_history !11 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.w, %bb.u, %bb.s, %bb.p, %bb.l, %bb.j, %bb.e
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1250
  store i8 0, ptr %i.dy, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1251
  store i8 0, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = and i8 %i.eb, 62
  %i.ed = or disjoint i8 %i.ec, 1
  store i8 %i.ed, ptr %i.ea, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 0, ptr %i.ee, align 8
  %i.ef = call fastcc i32 @nsh_saveresult(ptr noundef nonnull %0, i1 noundef zeroext true) #22
  br label %.thread256

bb.ag:                                            ; preds = %bb.o
  %i.eg = or i8 %i.bw, -64
  store i8 %i.eg, ptr %i.bv, align 8
  %.not.i200 = icmp eq ptr %i.bq, null
  br i1 %.not.i200, label %.thread242, label %.thread233

.thread233:                                       ; preds = %bb.m, %bb.ad, %bb.ag
  %.1220.ph236 = phi ptr [ %i.bq, %bb.ag ], [ %i.p, %bb.m ], [ %i.k, %bb.ad ] ; 6 uses
  %i.eh = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.12) #22
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %.thread233
  %i.ej = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = load i8, ptr %i.ej, align 1
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call i32 (ptr, ptr, ...) %i.eo(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.12) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.ak:                                            ; preds = %bb.ai
  %i.eq = call i32 @strcmp(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.13) #22
  %i.er = icmp eq i32 %i.eq, 0                    ; 2 uses
  br i1 %i.er, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.es = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = load i8, ptr %i.es, align 1
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call i32 (ptr, ptr, ...) %i.ex(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef nonnull @.str.12) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %.3222 = phi ptr [ %i.es, %bb.am ], [ %i.ej, %bb.ak ]
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1253 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1252 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 4             ; 3 uses
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %.mask107.i = and i8 %i.fe, -64
  %i.ff = icmp eq i8 %.mask107.i, 64
  br i1 %i.ff, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call i32 (ptr, ptr, ...) %i.fh(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.12) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.aq:                                            ; preds = %bb.ao
  %i.fj = icmp ugt i8 %i.fb, 1
  br i1 %i.fj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call i32 (ptr, ptr, ...) %i.fl(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtdeepnesting, ptr noundef nonnull @.str.12) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.as:                                            ; preds = %bb.aq
  %i.fn = call fastcc zeroext i1 @nsh_cmdenabled(ptr noundef nonnull %0) #22
  %i.fo = add nuw nsw i8 %i.fb, 1                 ; 2 uses
  store i8 %i.fo, ptr %i.fa, align 4
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = and i8 %i.fr, 56
  %i.ft = select i1 %i.fn, i8 0, i8 2
  %i.fu = select i1 %i.er, i8 68, i8 64
  %i.fv = or disjoint i8 %i.ft, %i.fu
  %i.fw = or disjoint i8 %i.fv, %i.fs
  store i8 %i.fw, ptr %i.fq, align 1
  br label %.thread247

bb.at:                                            ; preds = %.thread233
  %i.fx = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.14) #22
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fz = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.gc = load i8, ptr %i.gb, align 4
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1             ; 2 uses
  %.mask106.i = and i8 %i.gf, -64
  %.not105.i = icmp eq i8 %.mask106.i, 64
  br i1 %.not105.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call i32 (ptr, ptr, ...) %i.gh(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.14) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.aw:                                            ; preds = %bb.au
  %i.gj = and i8 %i.gf, 63
  %i.gk = or disjoint i8 %i.gj, -128
  store i8 %i.gk, ptr %i.ge, align 1
  br label %bb.bm

bb.ax:                                            ; preds = %bb.at
  %i.gl = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.15) #22
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.gn = call fastcc ptr @nsh_argument(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #22
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1253
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.gq = load i8, ptr %i.gp, align 4
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1             ; 2 uses
  %.not103.i = icmp slt i8 %i.gt, -64
  br i1 %.not103.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call i32 (ptr, ptr, ...) %i.gv(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcontext, ptr noundef nonnull @.str.15) #24, !inline_history !12 ; 0 uses
  br label %bb.bl

bb.ba:                                            ; preds = %bb.ay
  %i.gx = or i8 %i.gt, -64
  store i8 %i.gx, ptr %i.gs, align 1
  br label %bb.bm

bb.bb:                                            ; preds = %bb.ax
  %i.gy = call i32 @strcmp(ptr noundef nonnull %.1220.ph236, ptr noundef nonnull @.str.16) #22
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
end_hunk_0
