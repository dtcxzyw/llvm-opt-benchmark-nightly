Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflate:bb.a
.lr.ph2284.preheader:                             ; preds = %.preheader1296
  %i.ca = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cb = icmp eq i32 %.0992, 0
  br i1 %i.cb, label %.loopexit1277.loopexit2349, label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %.preheader1286

.preheader1286:                                   ; preds = %bb.l
  %i.ce = icmp ult i32 %.0918, 16
  br i1 %i.ce, label %.lr.ph2333.preheader, label %._crit_edge2334

.lr.ph2333.preheader:                             ; preds = %.preheader1286
  %i.cf = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cg = icmp eq i32 %.0992, 0
  br i1 %i.cg, label %.loopexit1277.loopexit2344, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16192, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.n:                                             ; preds = %.lr.ph2333.preheader
  %i.ch = add i32 %.0992, -1                      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.cj = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, %i.cf
  %i.cm = add i64 %i.cl, %.0929                   ; 3 uses
  %indvars.iv.next2851 = add nuw nsw i64 %i.cf, 8 ; 3 uses
  %i.cn = icmp ult i32 %.0918, 8
  br i1 %i.cn, label %.lr.ph2333.1, label %._crit_edge2334.loopexit

.lr.ph2333.1:                                     ; preds = %bb.n
  %i.co = icmp eq i32 %i.ch, 0
  br i1 %i.co, label %.loopexit1277.loopexit2344, label %bb.o

bb.o:                                             ; preds = %.lr.ph2333.1
  %i.cp = add i32 %.0992, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.cr = load i8, ptr %i.ci, align 1, !tbaa !45
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, %indvars.iv.next2851
  %i.cu = add i64 %i.ct, %i.cm
  %indvars.iv.next2851.1 = or disjoint i64 %i.cf, 16
  br label %._crit_edge2334.loopexit

._crit_edge2334.loopexit:                         ; preds = %bb.o, %bb.n
  %.lcssa4205 = phi i32 [ %i.ch, %bb.n ], [ %i.cp, %bb.o ]
  %.lcssa4204 = phi ptr [ %i.ci, %bb.n ], [ %i.cq, %bb.o ]
  %.lcssa4203 = phi i64 [ %i.cm, %bb.n ], [ %i.cu, %bb.o ]
  %indvars.iv.next2851.lcssa = phi i64 [ %indvars.iv.next2851, %bb.n ], [ %indvars.iv.next2851.1, %bb.o ]
  %i.cv = trunc nuw nsw i64 %indvars.iv.next2851.lcssa to i32
  br label %._crit_edge2334

._crit_edge2334:                                  ; preds = %._crit_edge2334.loopexit, %.preheader1286
  %.11057.lcssa = phi ptr [ %.01056, %.preheader1286 ], [ %.lcssa4204, %._crit_edge2334.loopexit ] ; 5 uses
  %.1993.lcssa = phi i32 [ %.0992, %.preheader1286 ], [ %.lcssa4205, %._crit_edge2334.loopexit ] ; 5 uses
  %.1930.lcssa = phi i64 [ %.0929, %.preheader1286 ], [ %.lcssa4203, %._crit_edge2334.loopexit ] ; 8 uses
  %.1919.lcssa = phi i32 [ %.0918, %.preheader1286 ], [ %i.cv, %._crit_edge2334.loopexit ] ; 3 uses
  %i.cw = and i32 %i.cc, 2
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp eq i64 %.1930.lcssa, 35615
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge2334
  %i.cz = load i32, ptr %i.bp, align 8, !tbaa !43
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 15, ptr %i.bp, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !49
  store i8 31, ptr %i.a, align 4, !tbaa !45
  store i8 -117, ptr %i.br, align 1, !tbaa !45
  %i.dc = call i64 @crc32(i64 noundef %i.db, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !49
  store i32 16181, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.s:                                             ; preds = %._crit_edge2334
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1250 = icmp eq ptr %i.dd, null
  br i1 %.not1250, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store i32 -1, ptr %i.de, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.df = and i32 %i.cc, 1
  %.not1251 = icmp eq i32 %i.df, 0
  br i1 %.not1251, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = shl i64 %.1930.lcssa, 8
  %i.dh = and i64 %i.dg, 65280
  %i.di = lshr i64 %.1930.lcssa, 8
  %i.dj = add nuw nsw i64 %i.dh, %i.di
  %i.dk = urem i64 %i.dj, 31
  %.not1252 = icmp eq i64 %i.dk, 0
  br i1 %.not1252, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr @.str.1, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.dl = and i64 %.1930.lcssa, 15
  %.not1253 = icmp eq i64 %i.dl, 8
  br i1 %.not1253, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.dm = lshr i64 %.1930.lcssa, 4                ; 2 uses
  %i.dn = add i32 %.1919.lcssa, -4
  %i.do = trunc i64 %i.dm to i32
  %i.dp = and i32 %i.do, 15                       ; 3 uses
  %i.dq = add nuw nsw i32 %i.dp, 8                ; 3 uses
  %i.dr = load i32, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.dq, ptr %i.bp, align 8, !tbaa !43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dt = phi i32 [ %i.dq, %bb.aa ], [ %i.dr, %bb.z ]
  %i.du = icmp samesign ugt i32 %i.dp, 7
  %i.dv = icmp ugt i32 %i.dq, %i.dt
  %or.cond3397 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond3397, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.3, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dw = shl nuw nsw i32 256, %i.dp
  store i32 %i.dw, ptr %i.bq, align 4, !tbaa !30
  store i32 0, ptr %i.aj, align 8, !tbaa !29
  %i.dx = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.dx, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.dx, ptr %i.al, align 8, !tbaa !26
  %i.dy = and i64 %.1930.lcssa, 8192
  %.not1254 = icmp eq i64 %i.dy, 0
  %i.dz = select i1 %.not1254, i32 16191, i32 16189
  store i32 %i.dz, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ae:                                            ; preds = %.lr.ph2284.preheader
  %i.ea = add i32 %.0992, -1                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.ec = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, %i.ca
  %i.ef = add i64 %i.ee, %.0929                   ; 3 uses
  %indvars.iv.next2830 = add nuw nsw i64 %i.ca, 8 ; 3 uses
  %i.eg = icmp ult i32 %.0918, 8
  br i1 %i.eg, label %.lr.ph2284.1, label %._crit_edge2285.loopexit

.lr.ph2284.1:                                     ; preds = %bb.ae
  %i.eh = icmp eq i32 %i.ea, 0
  br i1 %i.eh, label %.loopexit1277.loopexit2349, label %bb.af

bb.af:                                            ; preds = %.lr.ph2284.1
  %i.ei = add i32 %.0992, -2
  %i.ej = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.ek = load i8, ptr %i.eb, align 1, !tbaa !45
  %i.el = zext i8 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, %indvars.iv.next2830
  %i.en = add i64 %i.em, %i.ef
  %indvars.iv.next2830.1 = or disjoint i64 %i.ca, 16
  br label %._crit_edge2285.loopexit

._crit_edge2285.loopexit:                         ; preds = %bb.af, %bb.ae
  %.lcssa4173 = phi i32 [ %i.ea, %bb.ae ], [ %i.ei, %bb.af ]
  %.lcssa4172 = phi ptr [ %i.eb, %bb.ae ], [ %i.ej, %bb.af ]
  %.lcssa4171 = phi i64 [ %i.ef, %bb.ae ], [ %i.en, %bb.af ]
  %indvars.iv.next2830.lcssa = phi i64 [ %indvars.iv.next2830, %bb.ae ], [ %indvars.iv.next2830.1, %bb.af ]
  %i.eo = trunc nuw nsw i64 %indvars.iv.next2830.lcssa to i32
  br label %._crit_edge2285

._crit_edge2285:                                  ; preds = %._crit_edge2285.loopexit, %.preheader1296
  %.21058.lcssa = phi ptr [ %.01056, %.preheader1296 ], [ %.lcssa4172, %._crit_edge2285.loopexit ] ; 3 uses
  %.2994.lcssa = phi i32 [ %.0992, %.preheader1296 ], [ %.lcssa4173, %._crit_edge2285.loopexit ] ; 3 uses
  %.2931.lcssa = phi i64 [ %.0929, %.preheader1296 ], [ %.lcssa4171, %._crit_edge2285.loopexit ] ; 5 uses
  %.2920.lcssa = phi i32 [ %.0918, %.preheader1296 ], [ %i.eo, %._crit_edge2285.loopexit ] ; 2 uses
  %i.ep = trunc i64 %.2931.lcssa to i32           ; 4 uses
  store i32 %i.ep, ptr %i.aj, align 8, !tbaa !29
  %i.eq = and i32 %i.ep, 255
  %.not1211 = icmp eq i32 %i.eq, 8
  br i1 %.not1211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2285
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ah:                                            ; preds = %._crit_edge2285
  %i.er = and i32 %i.ep, 57344
  %.not1212 = icmp eq i32 %i.er, 0
  br i1 %.not1212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.4, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1213 = icmp eq ptr %i.es, null
  br i1 %.not1213, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %2 = lshr i64 %.2931.lcssa, 8
  %3 = trunc i64 %2 to i32
  %i.et = and i32 %3, 1
  store i32 %i.et, ptr %i.es, align 8, !tbaa !81
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eu = and i32 %i.ep, 512
  %.not1214 = icmp eq i32 %i.eu, 0
  br i1 %.not1214, label %.thread2932, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ew = and i32 %i.ev, 4
  %.not1215 = icmp eq i32 %i.ew, 0
  br i1 %.not1215, label %.thread2932, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = trunc i64 %.2931.lcssa to i16
  store i16 %i.ex, ptr %i.a, align 4
  %i.ey = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.ez = call i64 @crc32(i64 noundef %i.ey, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.ez, ptr %i.ak, align 8, !tbaa !49
  br label %.thread2932

.thread2932:                                      ; preds = %bb.an, %bb.am, %bb.al
  store i32 16182, ptr %i.m, align 8, !tbaa !21
  br label %.lr.ph2295.preheader

bb.ao:                                            ; preds = %bb.k
  %i.fa = icmp ult i32 %.0918, 32
  br i1 %i.fa, label %.lr.ph2295.preheader, label %._crit_edge2296

.lr.ph2295.preheader:                             ; preds = %.thread2932, %bb.ao
  %.39212940 = phi i32 [ 0, %.thread2932 ], [ %.0918, %bb.ao ] ; 4 uses
  %.39322939 = phi i64 [ 0, %.thread2932 ], [ %.0929, %bb.ao ] ; 2 uses
  %.39952938 = phi i32 [ %.2994.lcssa, %.thread2932 ], [ %.0992, %bb.ao ] ; 5 uses
  %.310592937 = phi ptr [ %.21058.lcssa, %.thread2932 ], [ %.01056, %bb.ao ] ; 6 uses
  %i.fb = zext nneg i32 %.39212940 to i64         ; 5 uses
  %i.fc = icmp eq i32 %.39952938, 0
  br i1 %i.fc, label %.loopexit1277.loopexit2348, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph2295.preheader
  %i.fd = add i32 %.39952938, -1                  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.310592937, i64 1 ; 3 uses
  %i.ff = load i8, ptr %.310592937, align 1, !tbaa !45
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, %i.fb
  %i.fi = add i64 %i.fh, %.39322939               ; 3 uses
  %indvars.iv.next2833 = add nuw nsw i64 %i.fb, 8 ; 2 uses
  %i.fj = icmp samesign ult i32 %.39212940, 24
  br i1 %i.fj, label %.lr.ph2295.1, label %._crit_edge2296

.lr.ph2295.1:                                     ; preds = %bb.ap
  %i.fk = icmp eq i32 %i.fd, 0
  br i1 %i.fk, label %.loopexit1277.loopexit2348, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph2295.1
  %i.fl = add i32 %.39952938, -2                  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.310592937, i64 2 ; 3 uses
  %i.fn = load i8, ptr %i.fe, align 1, !tbaa !45
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, %indvars.iv.next2833
  %i.fq = add i64 %i.fp, %i.fi                    ; 3 uses
  %indvars.iv.next2833.1 = add nuw nsw i64 %i.fb, 16 ; 2 uses
  %i.fr = icmp samesign ult i32 %.39212940, 16
  br i1 %i.fr, label %.lr.ph2295.2, label %._crit_edge2296

.lr.ph2295.2:                                     ; preds = %bb.aq
  %i.fs = icmp eq i32 %i.fl, 0
  br i1 %i.fs, label %.loopexit1277.loopexit2348, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph2295.2
  %i.ft = add i32 %.39952938, -3                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.310592937, i64 3 ; 3 uses
  %i.fv = load i8, ptr %i.fm, align 1, !tbaa !45
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, %indvars.iv.next2833.1
  %i.fy = add i64 %i.fx, %i.fq                    ; 3 uses
  %indvars.iv.next2833.2 = add nuw nsw i64 %i.fb, 24 ; 2 uses
  %i.fz = icmp samesign ult i32 %.39212940, 8
  br i1 %i.fz, label %.lr.ph2295.3, label %._crit_edge2296

.lr.ph2295.3:                                     ; preds = %bb.ar
  %i.ga = icmp eq i32 %i.ft, 0
  br i1 %i.ga, label %.loopexit1277.loopexit2348, label %bb.as

bb.as:                                            ; preds = %.lr.ph2295.3
  %i.gb = add i32 %.39952938, -4
  %i.gc = getelementptr inbounds nuw i8, ptr %.310592937, i64 4
  %i.gd = load i8, ptr %i.fu, align 1, !tbaa !45
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, %indvars.iv.next2833.2
  %i.gg = add i64 %i.gf, %i.fy
  br label %._crit_edge2296

._crit_edge2296:                                  ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.ao
  %.41060.lcssa = phi ptr [ %.01056, %bb.ao ], [ %i.fe, %bb.ap ], [ %i.fm, %bb.aq ], [ %i.fu, %bb.ar ], [ %i.gc, %bb.as ]
  %.4996.lcssa = phi i32 [ %.0992, %bb.ao ], [ %i.fd, %bb.ap ], [ %i.fl, %bb.aq ], [ %i.ft, %bb.ar ], [ %i.gb, %bb.as ]
  %.4933.lcssa = phi i64 [ %.0929, %bb.ao ], [ %i.fi, %bb.ap ], [ %i.fq, %bb.aq ], [ %i.fy, %bb.ar ], [ %i.gg, %bb.as ] ; 2 uses
  %i.gh = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1216 = icmp eq ptr %i.gh, null
  br i1 %.not1216, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge2296
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %.4933.lcssa, ptr %i.gi, align 8, !tbaa !82
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge2296
  %i.gj = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.gk = and i32 %i.gj, 512
  %.not1217 = icmp eq i32 %i.gk, 0
  br i1 %.not1217, label %.thread2941, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.gm = and i32 %i.gl, 4
  %.not1218 = icmp eq i32 %i.gm, 0
  br i1 %.not1218, label %.thread2941, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gn = trunc i64 %.4933.lcssa to i32
  store i32 %i.gn, ptr %i.a, align 4
  %i.go = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.gp = call i64 @crc32(i64 noundef %i.go, ptr noundef nonnull %i.a, i32 noundef 4) #9
  store i64 %i.gp, ptr %i.ak, align 8, !tbaa !49
  br label %.thread2941

.thread2941:                                      ; preds = %bb.aw, %bb.av, %bb.au
  store i32 16183, ptr %i.m, align 8, !tbaa !21
  br label %.lr.ph2305.preheader

bb.ax:                                            ; preds = %bb.k
  %i.gq = icmp ult i32 %.0918, 16
  br i1 %i.gq, label %.lr.ph2305.preheader, label %._crit_edge2306

.lr.ph2305.preheader:                             ; preds = %.thread2941, %bb.ax
  %.59232949 = phi i32 [ 0, %.thread2941 ], [ %.0918, %bb.ax ] ; 2 uses
  %.59342948 = phi i64 [ 0, %.thread2941 ], [ %.0929, %bb.ax ] ; 2 uses
  %.59972947 = phi i32 [ %.4996.lcssa, %.thread2941 ], [ %.0992, %bb.ax ] ; 3 uses
  %.510612946 = phi ptr [ %.41060.lcssa, %.thread2941 ], [ %.01056, %bb.ax ] ; 4 uses
  %i.gr = zext nneg i32 %.59232949 to i64         ; 3 uses
  %i.gs = icmp eq i32 %.59972947, 0
  br i1 %i.gs, label %.loopexit1277.loopexit2347, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph2305.preheader
  %i.gt = add i32 %.59972947, -1                  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.510612946, i64 1 ; 3 uses
  %i.gv = load i8, ptr %.510612946, align 1, !tbaa !45
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, %i.gr
  %i.gy = add i64 %i.gx, %.59342948               ; 3 uses
  %indvars.iv.next2836 = add nuw nsw i64 %i.gr, 8 ; 2 uses
  %i.gz = icmp samesign ult i32 %.59232949, 8
  br i1 %i.gz, label %.lr.ph2305.1, label %._crit_edge2306

.lr.ph2305.1:                                     ; preds = %bb.ay
  %i.ha = icmp eq i32 %i.gt, 0
  br i1 %i.ha, label %.loopexit1277.loopexit2347, label %bb.az

bb.az:                                            ; preds = %.lr.ph2305.1
  %i.hb = add i32 %.59972947, -2
  %i.hc = getelementptr inbounds nuw i8, ptr %.510612946, i64 2
  %i.hd = load i8, ptr %i.gu, align 1, !tbaa !45
  %i.he = zext i8 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, %indvars.iv.next2836
  %i.hg = add i64 %i.hf, %i.gy
  br label %._crit_edge2306

._crit_edge2306:                                  ; preds = %bb.ay, %bb.az, %bb.ax
  %.61062.lcssa = phi ptr [ %.01056, %bb.ax ], [ %i.gu, %bb.ay ], [ %i.hc, %bb.az ] ; 2 uses
  %.6998.lcssa = phi i32 [ %.0992, %bb.ax ], [ %i.gt, %bb.ay ], [ %i.hb, %bb.az ] ; 2 uses
  %.6935.lcssa = phi i64 [ %.0929, %bb.ax ], [ %i.gy, %bb.ay ], [ %i.hg, %bb.az ] ; 3 uses
  %i.hh = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 3 uses
  %.not1219 = icmp eq ptr %i.hh, null
  br i1 %.not1219, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge2306
  %i.hi = trunc i64 %.6935.lcssa to i32
  %i.hj = and i32 %i.hi, 255
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !83
  %i.hl = lshr i64 %.6935.lcssa, 8
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !84
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge2306
  %i.ho = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.hp = and i32 %i.ho, 512
  %.not1220 = icmp eq i32 %i.hp, 0
  br i1 %.not1220, label %.thread2950, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hq = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.hr = and i32 %i.hq, 4
  %.not1221 = icmp eq i32 %i.hr, 0
  br i1 %.not1221, label %.thread2950, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hs = trunc i64 %.6935.lcssa to i16
end_hunk_0
begin_hunk_1_@inflate:bb.a
  %i.nd = add i32 %.171009, -2
  %i.ne = getelementptr inbounds nuw i8, ptr %.171073, i64 2
  %i.nf = load i8, ptr %i.mw, align 1, !tbaa !45
  %i.ng = zext i8 %i.nf to i64
  %i.nh = shl nuw nsw i64 %i.ng, %indvars.iv.next2848
  %i.ni = add i64 %i.nh, %i.na
  %indvars.iv.next2848.1 = or disjoint i64 %i.mt, 16
  br label %._crit_edge2324.loopexit

._crit_edge2324.loopexit:                         ; preds = %bb.dc, %bb.db
  %.lcssa4199 = phi i32 [ %i.mv, %bb.db ], [ %i.nd, %bb.dc ]
  %.lcssa4198 = phi ptr [ %i.mw, %bb.db ], [ %i.ne, %bb.dc ]
  %.lcssa4197 = phi i64 [ %i.na, %bb.db ], [ %i.ni, %bb.dc ]
  %indvars.iv.next2848.lcssa = phi i64 [ %indvars.iv.next2848, %bb.db ], [ %indvars.iv.next2848.1, %bb.dc ]
  %i.nj = trunc nuw nsw i64 %indvars.iv.next2848.lcssa to i32
  br label %._crit_edge2324

._crit_edge2324:                                  ; preds = %._crit_edge2324.loopexit, %.preheader1288
  %.181074.lcssa = phi ptr [ %.171073, %.preheader1288 ], [ %.lcssa4198, %._crit_edge2324.loopexit ] ; 3 uses
  %.181010.lcssa = phi i32 [ %.171009, %.preheader1288 ], [ %.lcssa4199, %._crit_edge2324.loopexit ] ; 3 uses
  %.14943.lcssa = phi i64 [ %.13942, %.preheader1288 ], [ %.lcssa4197, %._crit_edge2324.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1288 ], [ %i.nj, %._crit_edge2324.loopexit ]
  %i.nk = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.nl = and i32 %i.nk, 4
  %.not1247 = icmp eq i32 %i.nl, 0
  br i1 %.not1247, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge2324
  %i.nm = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.nn = and i64 %i.nm, 65535
  %.not1248 = icmp eq i64 %.14943.lcssa, %i.nn
  br i1 %.not1248, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr @.str.5, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.df:                                            ; preds = %bb.dd, %._crit_edge2324, %bb.da
  %.191075 = phi ptr [ %.171073, %bb.da ], [ %.181074.lcssa, %._crit_edge2324 ], [ %.181074.lcssa, %bb.dd ]
  %.191011 = phi i32 [ %.171009, %bb.da ], [ %.181010.lcssa, %._crit_edge2324 ], [ %.181010.lcssa, %bb.dd ]
  %.15944 = phi i64 [ %.13942, %bb.da ], [ 0, %._crit_edge2324 ], [ 0, %bb.dd ]
  %.15 = phi i32 [ %.13, %bb.da ], [ 0, %._crit_edge2324 ], [ 0, %bb.dd ]
  %i.no = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 3 uses
  %.not1249 = icmp eq ptr %i.no, null
  br i1 %.not1249, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.np = lshr i32 %i.mq, 9
  %i.nq = and i32 %i.np, 1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 68
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !92
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 72
  store i32 1, ptr %i.ns, align 8, !tbaa !51
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.nt = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.nt, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.nt, ptr %i.al, align 8, !tbaa !26
  store i32 16191, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.di:                                            ; preds = %.lr.ph2116.preheader
  %i.nu = add i32 %.0992, -1                      ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.nw = load i8, ptr %.01056, align 1, !tbaa !45
  %i.nx = zext i8 %i.nw to i64
  %i.ny = shl nuw nsw i64 %i.nx, %i.bx
  %i.nz = add i64 %i.ny, %.0929                   ; 3 uses
  %indvars.iv.next2827 = add nuw nsw i64 %i.bx, 8 ; 2 uses
  %i.oa = icmp ult i32 %.0918, 24
  br i1 %i.oa, label %.lr.ph2116.1, label %._crit_edge2117

.lr.ph2116.1:                                     ; preds = %bb.di
  %i.ob = icmp eq i32 %i.nu, 0
  br i1 %i.ob, label %.loopexit1277.loopexit2350, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2116.1
  %i.oc = add i32 %.0992, -2                      ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.01056, i64 2 ; 3 uses
  %i.oe = load i8, ptr %i.nv, align 1, !tbaa !45
  %i.of = zext i8 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, %indvars.iv.next2827
  %i.oh = add i64 %i.og, %i.nz                    ; 3 uses
  %indvars.iv.next2827.1 = add nuw nsw i64 %i.bx, 16 ; 2 uses
  %i.oi = icmp ult i32 %.0918, 16
  br i1 %i.oi, label %.lr.ph2116.2, label %._crit_edge2117

.lr.ph2116.2:                                     ; preds = %bb.dj
  %i.oj = icmp eq i32 %i.oc, 0
  br i1 %i.oj, label %.loopexit1277.loopexit2350, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2116.2
  %i.ok = add i32 %.0992, -3                      ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.01056, i64 3 ; 3 uses
  %i.om = load i8, ptr %i.od, align 1, !tbaa !45
  %i.on = zext i8 %i.om to i64
  %i.oo = shl nuw nsw i64 %i.on, %indvars.iv.next2827.1
  %i.op = add i64 %i.oo, %i.oh                    ; 3 uses
  %indvars.iv.next2827.2 = add nuw nsw i64 %i.bx, 24 ; 2 uses
  %i.oq = icmp ult i32 %.0918, 8
  br i1 %i.oq, label %.lr.ph2116.3, label %._crit_edge2117

.lr.ph2116.3:                                     ; preds = %bb.dk
  %i.or = icmp eq i32 %i.ok, 0
  br i1 %i.or, label %.loopexit1277.loopexit2350, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph2116.3
  %i.os = add i32 %.0992, -4
  %i.ot = getelementptr inbounds nuw i8, ptr %.01056, i64 4
  %i.ou = load i8, ptr %i.ol, align 1, !tbaa !45
  %i.ov = zext i8 %i.ou to i64
  %i.ow = shl nuw nsw i64 %i.ov, %indvars.iv.next2827.2
  %i.ox = add i64 %i.ow, %i.op
  br label %._crit_edge2117

._crit_edge2117:                                  ; preds = %bb.di, %bb.dj, %bb.dk, %bb.dl, %.preheader1300
  %.201076.lcssa = phi ptr [ %.01056, %.preheader1300 ], [ %i.nv, %bb.di ], [ %i.od, %bb.dj ], [ %i.ol, %bb.dk ], [ %i.ot, %bb.dl ]
  %.201012.lcssa = phi i32 [ %.0992, %.preheader1300 ], [ %i.nu, %bb.di ], [ %i.oc, %bb.dj ], [ %i.ok, %bb.dk ], [ %i.os, %bb.dl ]
  %.16945.lcssa = phi i64 [ %.0929, %.preheader1300 ], [ %i.nz, %bb.di ], [ %i.oh, %bb.dj ], [ %i.op, %bb.dk ], [ %i.ox, %bb.dl ]
  %trunc1208 = trunc i64 %.16945.lcssa to i32
  %rev1209 = call i32 @llvm.bswap.i32(i32 %trunc1208)
  %i.oy = zext i32 %rev1209 to i64                ; 2 uses
  store i64 %i.oy, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.oy, ptr %i.al, align 8, !tbaa !26
  store i32 16190, ptr %i.m, align 8, !tbaa !21
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge2117, %bb.k
  %.211077 = phi ptr [ %.201076.lcssa, %._crit_edge2117 ], [ %.01056, %bb.k ] ; 2 uses
  %.211013 = phi i32 [ %.201012.lcssa, %._crit_edge2117 ], [ %.0992, %bb.k ] ; 2 uses
  %.17946 = phi i64 [ 0, %._crit_edge2117 ], [ %.0929, %bb.k ] ; 2 uses
  %.17 = phi i32 [ 0, %._crit_edge2117 ], [ %.0918, %bb.k ] ; 2 uses
  %i.oz = load i32, ptr %i.bl, align 4, !tbaa !28
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store ptr %.01053, ptr %i.p, align 8, !tbaa !77
  store i32 %.0990, ptr %i.y, align 8, !tbaa !78
  store ptr %.211077, ptr %0, align 8, !tbaa !47
  store i32 %.211013, ptr %i.aa, align 8, !tbaa !48
  store i64 %.17946, ptr %i.ac, align 8, !tbaa !32
  store i32 %.17, ptr %i.ae, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

bb.do:                                            ; preds = %bb.dm
  %i.pb = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.pb, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.pb, ptr %i.al, align 8, !tbaa !26
  store i32 16191, ptr %i.m, align 8, !tbaa !21
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.k
  %.221078 = phi ptr [ %.211077, %bb.do ], [ %.01056, %bb.k ] ; 2 uses
  %.221014 = phi i32 [ %.211013, %bb.do ], [ %.0992, %bb.k ] ; 2 uses
  %.18947 = phi i64 [ %.17946, %bb.do ], [ %.0929, %bb.k ] ; 2 uses
  %.18 = phi i32 [ %.17, %bb.do ], [ %.0918, %bb.k ] ; 2 uses
  br i1 %or.cond3, label %.loopexit1277, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.k
  %.231079 = phi ptr [ %.221078, %bb.dp ], [ %.01056, %bb.k ] ; 5 uses
  %.231015 = phi i32 [ %.221014, %bb.dp ], [ %.0992, %bb.k ] ; 4 uses
  %.19948 = phi i64 [ %.18947, %bb.dp ], [ %.0929, %bb.k ] ; 4 uses
  %.19 = phi i32 [ %.18, %bb.dp ], [ %.0918, %bb.k ] ; 7 uses
  %i.pc = load i32, ptr %i.bn, align 4, !tbaa !27
  %.not1210 = icmp eq i32 %i.pc, 0
  br i1 %.not1210, label %.preheader1298, label %bb.dr

.preheader1298:                                   ; preds = %bb.dq
  %i.pd = icmp ult i32 %.19, 3
  br i1 %i.pd, label %.lr.ph2125, label %bb.ds

.lr.ph2125:                                       ; preds = %.preheader1298
  %i.pe = icmp eq i32 %.231015, 0
  br i1 %i.pe, label %.loopexit1277, label %._crit_edge2126

bb.dr:                                            ; preds = %bb.dq
  %i.pf = and i32 %.19, 7
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = lshr i64 %.19948, %i.pg
  %i.pi = and i32 %.19, -8
  store i32 16206, ptr %i.m, align 8, !tbaa !21
  br label %.thread

._crit_edge2126:                                  ; preds = %.lr.ph2125
  %i.pj = or disjoint i32 %.19, 8
  %i.pk = add i32 %.231015, -1
  %i.pl = getelementptr inbounds nuw i8, ptr %.231079, i64 1
  %i.pm = load i8, ptr %.231079, align 1, !tbaa !45
  %i.pn = zext i8 %i.pm to i64
  %i.po = zext nneg i32 %.19 to i64
  %i.pp = shl nuw nsw i64 %i.pn, %i.po
  %i.pq = add i64 %i.pp, %.19948
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge2126, %.preheader1298
  %.241080.lcssa = phi ptr [ %i.pl, %._crit_edge2126 ], [ %.231079, %.preheader1298 ] ; 2 uses
  %.241016.lcssa = phi i32 [ %i.pk, %._crit_edge2126 ], [ %.231015, %.preheader1298 ] ; 2 uses
  %.20949.lcssa = phi i64 [ %i.pq, %._crit_edge2126 ], [ %.19948, %.preheader1298 ] ; 4 uses
  %.20.lcssa = phi i32 [ %i.pj, %._crit_edge2126 ], [ %.19, %.preheader1298 ] ; 2 uses
  %i.pr = trunc i64 %.20949.lcssa to i32
  %i.ps = and i32 %i.pr, 1
  store i32 %i.ps, ptr %i.bn, align 4, !tbaa !27
  %4 = lshr i64 %.20949.lcssa, 1
  %5 = trunc i64 %4 to i32
  %i.pt = and i32 %5, 3
  switch i32 %i.pt, label %default.unreachable2931 [
    i32 0, label %.sink.split
    i32 1, label %bb.dt
    i32 2, label %bb.dv
    i32 3, label %bb.dw
  ]

bb.dt:                                            ; preds = %bb.ds
  call void @inflate_fixed(ptr noundef nonnull %i.j) #9
  store i32 16199, ptr %i.m, align 8, !tbaa !21
  br i1 %i.bb, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.pu = lshr i64 %.20949.lcssa, 3
  %i.pv = add i32 %.20.lcssa, -3
  br label %.loopexit1277

bb.dv:                                            ; preds = %bb.ds
  br label %.sink.split

default.unreachable2931:                          ; preds = %bb.ds
  unreachable

bb.dw:                                            ; preds = %bb.ds
  store ptr @.str.6, ptr %i.am, align 8, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ds, %bb.dw, %bb.dv
  %.sink = phi i32 [ 16209, %bb.dw ], [ 16196, %bb.dv ], [ 16193, %bb.ds ]
  store i32 %.sink, ptr %i.m, align 8, !tbaa !21
  br label %bb.dx

bb.dx:                                            ; preds = %.sink.split, %bb.dt
  %i.pw = lshr i64 %.20949.lcssa, 3
  %i.px = add i32 %.20.lcssa, -3
  br label %.thread

bb.dy:                                            ; preds = %bb.k
  %i.py = and i32 %.0918, 7
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = lshr i64 %.0929, %i.pz                  ; 3 uses
  %i.qb = and i32 %.0918, -8
  %i.qc = icmp ult i32 %.0918, 32
  br i1 %i.qc, label %.lr.ph2106.preheader, label %._crit_edge2107

.lr.ph2106.preheader:                             ; preds = %bb.dy
  %i.qd = and i32 %.0918, 24                      ; 4 uses
  %i.qe = zext nneg i32 %i.qd to i64              ; 5 uses
  %i.qf = icmp eq i32 %.0992, 0
  br i1 %i.qf, label %.loopexit1277.loopexit2351, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph2106.preheader
  %i.qg = add i32 %.0992, -1                      ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.qi = load i8, ptr %.01056, align 1, !tbaa !45
  %i.qj = zext i8 %i.qi to i64
  %i.qk = shl nuw nsw i64 %i.qj, %i.qe
  %i.ql = add i64 %i.qk, %i.qa                    ; 3 uses
  %indvars.iv.next2825 = add nuw nsw i64 %i.qe, 8 ; 3 uses
  %.not = icmp eq i32 %i.qd, 24
  br i1 %.not, label %._crit_edge2107.loopexit, label %.lr.ph2106.1

.lr.ph2106.1:                                     ; preds = %bb.dz
  %i.qm = icmp eq i32 %i.qg, 0
  br i1 %i.qm, label %.loopexit1277.loopexit2351, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph2106.1
  %i.qn = add i32 %.0992, -2                      ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.01056, i64 2 ; 3 uses
  %i.qp = load i8, ptr %i.qh, align 1, !tbaa !45
  %i.qq = zext i8 %i.qp to i64
  %i.qr = shl nuw nsw i64 %i.qq, %indvars.iv.next2825
  %i.qs = add i64 %i.qr, %i.ql                    ; 3 uses
  %indvars.iv.next2825.1 = add nuw nsw i64 %i.qe, 16 ; 3 uses
  %i.qt = icmp samesign ult i32 %i.qd, 16
  br i1 %i.qt, label %.lr.ph2106.2, label %._crit_edge2107.loopexit

.lr.ph2106.2:                                     ; preds = %bb.ea
  %i.qu = icmp eq i32 %i.qn, 0
  br i1 %i.qu, label %.loopexit1277.loopexit2351, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph2106.2
  %i.qv = add i32 %.0992, -3                      ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.01056, i64 3 ; 3 uses
  %i.qx = load i8, ptr %i.qo, align 1, !tbaa !45
  %i.qy = zext i8 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, %indvars.iv.next2825.1
  %i.ra = add i64 %i.qz, %i.qs                    ; 3 uses
  %indvars.iv.next2825.2 = add nuw nsw i64 %i.qe, 24 ; 3 uses
  %i.rb = icmp eq i32 %i.qd, 0
  br i1 %i.rb, label %.lr.ph2106.3, label %._crit_edge2107.loopexit

.lr.ph2106.3:                                     ; preds = %bb.eb
  %i.rc = icmp eq i32 %i.qv, 0
  br i1 %i.rc, label %.loopexit1277.loopexit2351, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph2106.3
  %i.rd = add i32 %.0992, -4
  %i.re = getelementptr inbounds nuw i8, ptr %.01056, i64 4
  %i.rf = load i8, ptr %i.qw, align 1, !tbaa !45
  %i.rg = zext i8 %i.rf to i64
  %i.rh = shl nuw nsw i64 %i.rg, %indvars.iv.next2825.2
  %i.ri = add i64 %i.rh, %i.ra
  br label %._crit_edge2107.loopexit

._crit_edge2107.loopexit:                         ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %.lcssa4161 = phi i32 [ %i.qg, %bb.dz ], [ %i.qn, %bb.ea ], [ %i.qv, %bb.eb ], [ %i.rd, %bb.ec ]
  %.lcssa4160 = phi ptr [ %i.qh, %bb.dz ], [ %i.qo, %bb.ea ], [ %i.qw, %bb.eb ], [ %i.re, %bb.ec ]
  %.lcssa4159 = phi i64 [ %i.ql, %bb.dz ], [ %i.qs, %bb.ea ], [ %i.ra, %bb.eb ], [ %i.ri, %bb.ec ]
  %indvars.iv.next2825.lcssa = phi i64 [ %indvars.iv.next2825, %bb.dz ], [ %indvars.iv.next2825.1, %bb.ea ], [ %indvars.iv.next2825.2, %bb.eb ], [ 32, %bb.ec ]
  %i.rj = trunc nuw nsw i64 %indvars.iv.next2825.lcssa to i32
  br label %._crit_edge2107

._crit_edge2107:                                  ; preds = %._crit_edge2107.loopexit, %bb.dy
  %.251081.lcssa = phi ptr [ %.01056, %bb.dy ], [ %.lcssa4160, %._crit_edge2107.loopexit ] ; 3 uses
  %.251017.lcssa = phi i32 [ %.0992, %bb.dy ], [ %.lcssa4161, %._crit_edge2107.loopexit ] ; 3 uses
  %.21950.lcssa = phi i64 [ %i.qa, %bb.dy ], [ %.lcssa4159, %._crit_edge2107.loopexit ] ; 4 uses
  %.21.lcssa = phi i32 [ %i.qb, %bb.dy ], [ %i.rj, %._crit_edge2107.loopexit ]
  %i.rk = and i64 %.21950.lcssa, 65535
  %i.rl = lshr i64 %.21950.lcssa, 16
  %i.rm = xor i64 %i.rl, %i.rk
  %.not1206 = icmp eq i64 %i.rm, 65535
  br i1 %.not1206, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge2107
  store ptr @.str.7, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ee:                                            ; preds = %._crit_edge2107
  %i.rn = trunc i64 %.21950.lcssa to i32
  %i.ro = and i32 %i.rn, 65535
  store i32 %i.ro, ptr %i.an, align 4, !tbaa !52
  store i32 16194, ptr %i.m, align 8, !tbaa !21
  br i1 %i.bb, label %.loopexit1277, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.k
  %.261082 = phi ptr [ %.251081.lcssa, %bb.ee ], [ %.01056, %bb.k ]
  %.261018 = phi i32 [ %.251017.lcssa, %bb.ee ], [ %.0992, %bb.k ]
  %.22951 = phi i64 [ 0, %bb.ee ], [ %.0929, %bb.k ]
  %.22 = phi i32 [ 0, %bb.ee ], [ %.0918, %bb.k ]
  store i32 16195, ptr %i.m, align 8, !tbaa !21
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.k
  %.271083 = phi ptr [ %.261082, %bb.ef ], [ %.01056, %bb.k ] ; 4 uses
  %.271019 = phi i32 [ %.261018, %bb.ef ], [ %.0992, %bb.k ] ; 4 uses
  %.23952 = phi i64 [ %.22951, %bb.ef ], [ %.0929, %bb.k ] ; 3 uses
  %.23 = phi i32 [ %.22, %bb.ef ], [ %.0918, %bb.k ] ; 3 uses
  %i.rp = load i32, ptr %i.an, align 4, !tbaa !52 ; 2 uses
  %.not1207 = icmp eq i32 %i.rp, 0
  br i1 %.not1207, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %spec.select1260 = call i32 @llvm.umin.i32(i32 %i.rp, i32 %.271019)
  %.4906 = call i32 @llvm.umin.i32(i32 %spec.select1260, i32 %.0990) ; 5 uses
  %i.rq = icmp eq i32 %.4906, 0
  br i1 %i.rq, label %.loopexit1277, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rr = zext i32 %.4906 to i64                  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01053, ptr align 1 %.271083, i64 %i.rr, i1 false)
  %i.rs = sub nuw i32 %.271019, %.4906
  %i.rt = getelementptr inbounds nuw i8, ptr %.271083, i64 %i.rr
  %i.ru = sub nuw i32 %.0990, %.4906
  %i.rv = getelementptr inbounds nuw i8, ptr %.01053, i64 %i.rr
  %i.rw = load i32, ptr %i.an, align 4, !tbaa !52
  %i.rx = sub i32 %i.rw, %.4906
  store i32 %i.rx, ptr %i.an, align 4, !tbaa !52
  br label %.thread

bb.ej:                                            ; preds = %bb.eg
  store i32 16191, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ek:                                            ; preds = %.lr.ph1772.preheader
  %i.ry = add i32 %.0992, -1                      ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.sa = load i8, ptr %.01056, align 1, !tbaa !45
  %i.sb = zext i8 %i.sa to i64
  %i.sc = shl nuw nsw i64 %i.sb, %i.bu
  %i.sd = add i64 %i.sc, %.0929                   ; 3 uses
  %indvars.iv.next2784 = add nuw nsw i64 %i.bu, 8 ; 3 uses
  %i.se = icmp ult i32 %.0918, 6
  br i1 %i.se, label %.lr.ph1772.1, label %._crit_edge1773.loopexit

.lr.ph1772.1:                                     ; preds = %bb.ek
  %i.sf = icmp eq i32 %i.ry, 0
  br i1 %i.sf, label %.loopexit1277.loopexit2359, label %bb.el

bb.el:                                            ; preds = %.lr.ph1772.1
  %i.sg = add i32 %.0992, -2
  %i.sh = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.si = load i8, ptr %i.rz, align 1, !tbaa !45
  %i.sj = zext i8 %i.si to i64
  %i.sk = shl nuw nsw i64 %i.sj, %indvars.iv.next2784
  %i.sl = add i64 %i.sk, %i.sd
  %indvars.iv.next2784.1 = or disjoint i64 %i.bu, 16
  br label %._crit_edge1773.loopexit

._crit_edge1773.loopexit:                         ; preds = %bb.el, %bb.ek
  %.lcssa4026 = phi i32 [ %i.ry, %bb.ek ], [ %i.sg, %bb.el ]
  %.lcssa4025 = phi ptr [ %i.rz, %bb.ek ], [ %i.sh, %bb.el ]
  %.lcssa4024 = phi i64 [ %i.sd, %bb.ek ], [ %i.sl, %bb.el ]
  %indvars.iv.next2784.lcssa = phi i64 [ %indvars.iv.next2784, %bb.ek ], [ %indvars.iv.next2784.1, %bb.el ]
  %i.sm = trunc nuw nsw i64 %indvars.iv.next2784.lcssa to i32
  br label %._crit_edge1773

._crit_edge1773:                                  ; preds = %._crit_edge1773.loopexit, %.preheader1314
  %.281084.lcssa = phi ptr [ %.01056, %.preheader1314 ], [ %.lcssa4025, %._crit_edge1773.loopexit ] ; 2 uses
  %.281020.lcssa = phi i32 [ %.0992, %.preheader1314 ], [ %.lcssa4026, %._crit_edge1773.loopexit ] ; 2 uses
  %.24953.lcssa = phi i64 [ %.0929, %.preheader1314 ], [ %.lcssa4024, %._crit_edge1773.loopexit ] ; 4 uses
  %.24.lcssa = phi i32 [ %.0918, %.preheader1314 ], [ %i.sm, %._crit_edge1773.loopexit ]
  %i.sn = trunc i64 %.24953.lcssa to i32
  %i.so = and i32 %i.sn, 31                       ; 2 uses
  %i.sp = add nuw nsw i32 %i.so, 257
  store i32 %i.sp, ptr %i.ao, align 4, !tbaa !93
  %6 = lshr i64 %.24953.lcssa, 5
  %7 = trunc i64 %6 to i32
  %i.sq = and i32 %7, 31                          ; 2 uses
  %i.sr = add nuw nsw i32 %i.sq, 1
  store i32 %i.sr, ptr %i.ap, align 8, !tbaa !94
  %8 = lshr i64 %.24953.lcssa, 10
  %9 = trunc i64 %8 to i32
  %i.ss = and i32 %9, 15
  %i.st = add nuw nsw i32 %i.ss, 4                ; 2 uses
  store i32 %i.st, ptr %i.aq, align 8, !tbaa !95
  %i.su = lshr i64 %.24953.lcssa, 14              ; 2 uses
  %i.sv = add i32 %.24.lcssa, -14                 ; 2 uses
  %i.sw = icmp samesign ugt i32 %i.so, 29
  %i.sx = icmp samesign ugt i32 %i.sq, 29
  %or.cond1275 = select i1 %i.sw, i1 true, i1 %i.sx
  br i1 %or.cond1275, label %bb.em, label %.split.thread

bb.em:                                            ; preds = %._crit_edge1773
  store ptr @.str.8, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1773
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  store i32 16197, ptr %i.m, align 8, !tbaa !21
  br label %.preheader1284.preheader

.split:                                           ; preds = %bb.k
  %.pre2856 = load i32, ptr %i.aq, align 8, !tbaa !95 ; 2 uses
  %.promoted.pre = load i32, ptr %i.ar, align 4, !tbaa !80 ; 3 uses
  %i.sy = icmp ult i32 %.promoted.pre, %.pre2856
  br i1 %i.sy, label %.preheader1284.preheader, label %.preheader1313

.preheader1284.preheader:                         ; preds = %.split.thread, %.split
  %.252981 = phi i32 [ %i.sv, %.split.thread ], [ %.0918, %.split ]
  %.259542980 = phi i64 [ %i.su, %.split.thread ], [ %.0929, %.split ]
  %.2910212979 = phi i32 [ %.281020.lcssa, %.split.thread ], [ %.0992, %.split ]
  %.2910852978 = phi ptr [ %.281084.lcssa, %.split.thread ], [ %.01056, %.split ]
  %i.sz = phi i32 [ %i.st, %.split.thread ], [ %.pre2856, %.split ] ; 2 uses
  %.promoted2977 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %i.ta = zext i32 %.promoted2977 to i64
  br label %.preheader1284

.preheader1313:                                   ; preds = %bb.en, %.split
  %.301086.lcssa = phi ptr [ %.01056, %.split ], [ %.311087.lcssa, %bb.en ] ; 2 uses
  %.301022.lcssa = phi i32 [ %.0992, %.split ], [ %.311023.lcssa, %bb.en ] ; 2 uses
  %.26955.lcssa = phi i64 [ %.0929, %.split ], [ %i.tu, %bb.en ] ; 2 uses
  %.26.lcssa = phi i32 [ %.0918, %.split ], [ %i.tv, %bb.en ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.sz, %bb.en ] ; 2 uses
  %i.tb = icmp ult i32 %.lcssa, 19
  br i1 %i.tb, label %.lr.ph1942.preheader, label %bb.eo

.lr.ph1942.preheader:                             ; preds = %.preheader1313
  %i.tc = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1942

.preheader1284:                                   ; preds = %.preheader1284.preheader, %bb.en
  %indvars.iv2786 = phi i64 [ %i.ta, %.preheader1284.preheader ], [ %indvars.iv.next2787, %bb.en ] ; 2 uses
  %.261935 = phi i32 [ %.252981, %.preheader1284.preheader ], [ %i.tv, %bb.en ] ; 5 uses
  %.269551934 = phi i64 [ %.259542980, %.preheader1284.preheader ], [ %i.tu, %bb.en ] ; 3 uses
  %.3010221933 = phi i32 [ %.2910212979, %.preheader1284.preheader ], [ %.311023.lcssa, %bb.en ] ; 3 uses
  %.3010861932 = phi ptr [ %.2910852978, %.preheader1284.preheader ], [ %.311087.lcssa, %bb.en ] ; 4 uses
  %i.td = icmp ult i32 %.261935, 3
  br i1 %i.td, label %.lr.ph1782, label %bb.en

.lr.ph1782:                                       ; preds = %.preheader1284
  %i.te = icmp eq i32 %.3010221933, 0
  br i1 %i.te, label %.loopexit1277, label %._crit_edge1783

._crit_edge1783:                                  ; preds = %.lr.ph1782
  %i.tf = or disjoint i32 %.261935, 8
  %i.tg = add i32 %.3010221933, -1
  %i.th = getelementptr inbounds nuw i8, ptr %.3010861932, i64 1
  %i.ti = load i8, ptr %.3010861932, align 1, !tbaa !45
  %i.tj = zext i8 %i.ti to i64
  %i.tk = zext nneg i32 %.261935 to i64
  %i.tl = shl nuw nsw i64 %i.tj, %i.tk
  %i.tm = add i64 %i.tl, %.269551934
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge1783, %.preheader1284
  %.311087.lcssa = phi ptr [ %i.th, %._crit_edge1783 ], [ %.3010861932, %.preheader1284 ] ; 2 uses
  %.311023.lcssa = phi i32 [ %i.tg, %._crit_edge1783 ], [ %.3010221933, %.preheader1284 ] ; 2 uses
  %.27956.lcssa = phi i64 [ %i.tm, %._crit_edge1783 ], [ %.269551934, %.preheader1284 ] ; 2 uses
  %.27.lcssa = phi i32 [ %i.tf, %._crit_edge1783 ], [ %.261935, %.preheader1284 ]
  %i.tn = trunc i64 %.27956.lcssa to i16
  %i.to = and i16 %i.tn, 7
  %indvars.iv.next2787 = add nuw nsw i64 %indvars.iv2786, 1 ; 2 uses
  %i.tp = trunc i64 %indvars.iv.next2787 to i32   ; 2 uses
  store i32 %i.tp, ptr %i.ar, align 4, !tbaa !80
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2786
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !97
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ts
  store i16 %i.to, ptr %i.tt, align 2, !tbaa !97
  %i.tu = lshr i64 %.27956.lcssa, 3               ; 2 uses
  %i.tv = add i32 %.27.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.sz, %i.tp
  br i1 %exitcond.not, label %.preheader1313, label %.preheader1284, !llvm.loop !61

.lr.ph1942:                                       ; preds = %.lr.ph1942.preheader, %.lr.ph1942
  %indvars.iv2789 = phi i64 [ %i.tc, %.lr.ph1942.preheader ], [ %indvars.iv.next2790, %.lr.ph1942 ] ; 2 uses
  %indvars.iv.next2790 = add nuw nsw i64 %indvars.iv2789, 1 ; 2 uses
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2789
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !97
  %i.ty = zext i16 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ty
  store i16 0, ptr %i.tz, align 2, !tbaa !97
  %i.ua = and i64 %indvars.iv.next2790, 4294967295
  %exitcond2793.not = icmp eq i64 %i.ua, 19
  br i1 %exitcond2793.not, label %._crit_edge1943, label %.lr.ph1942, !llvm.loop !62

._crit_edge1943:                                  ; preds = %.lr.ph1942
  store i32 19, ptr %i.ar, align 4, !tbaa !80
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge1943, %.preheader1313
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  store ptr %i.at, ptr %i.av, align 8, !tbaa !35
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !36
  store i32 7, ptr %i.ax, align 8, !tbaa !98
  %i.ub = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %i.as, i32 noundef 19, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #9 ; 2 uses
  %.not1183 = icmp eq i32 %i.ub, 0
  br i1 %.not1183, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store ptr @.str.9, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.eq:                                            ; preds = %bb.eo
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  store i32 16198, ptr %i.m, align 8, !tbaa !21
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge2858, %bb.eq
  %.promoted1997 = phi i32 [ 0, %bb.eq ], [ %.promoted1997.pre, %._crit_edge2858 ] ; 2 uses
  %.321088 = phi ptr [ %.301086.lcssa, %bb.eq ], [ %.01056, %._crit_edge2858 ] ; 2 uses
  %.321024 = phi i32 [ %.301022.lcssa, %bb.eq ], [ %.0992, %._crit_edge2858 ] ; 2 uses
  %.28957 = phi i64 [ %.26955.lcssa, %bb.eq ], [ %.0929, %._crit_edge2858 ] ; 2 uses
  %.28 = phi i32 [ %.26.lcssa, %bb.eq ], [ %.0918, %._crit_edge2858 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.eq ], [ %.0, %._crit_edge2858 ] ; 7 uses
  %i.uc = load i32, ptr %i.ao, align 4, !tbaa !93 ; 2 uses
  %i.ud = load i32, ptr %i.ap, align 8, !tbaa !94
  %i.ue = add i32 %i.ud, %i.uc                    ; 3 uses
  %i.uf = icmp ult i32 %.promoted1997, %i.ue
  br i1 %i.uf, label %.preheader1282.lr.ph, label %._crit_edge2005

.preheader1282.lr.ph:                             ; preds = %bb.er
  %i.ug = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.uh = load i32, ptr %i.ax, align 8, !tbaa !98
  %notmask = shl nsw i32 -1, %i.uh
  %i.ui = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader1282

.preheader1282:                                   ; preds = %.preheader1282.lr.ph, %bb.fc
  %.292004 = phi i32 [ %.28, %.preheader1282.lr.ph ], [ %.35, %bb.fc ] ; 4 uses
  %.299582003 = phi i64 [ %.28957, %.preheader1282.lr.ph ], [ %.35964, %bb.fc ] ; 4 uses
  %.3310252002 = phi i32 [ %.321024, %.preheader1282.lr.ph ], [ %.391031, %bb.fc ] ; 5 uses
  %.3310892001 = phi ptr [ %.321088, %.preheader1282.lr.ph ], [ %.391095, %bb.fc ] ; 3 uses
  %.lcssa199519982000 = phi i32 [ %.promoted1997, %.preheader1282.lr.ph ], [ %.lcssa19951999, %bb.fc ] ; 11 uses
  %i.uj = trunc i64 %.299582003 to i32
  %i.uk = and i32 %i.ui, %i.uj
  %i.ul = zext nneg i32 %i.uk to i64              ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.ul
  %.sroa.1867.0..sroa_idx1947 = getelementptr inbounds nuw i8, ptr %i.um, i64 1
  %.sroa.1867.0.copyload1948 = load i8, ptr %.sroa.1867.0..sroa_idx1947, align 1, !tbaa !45 ; 2 uses
  %i.un = zext i8 %.sroa.1867.0.copyload1948 to i32 ; 2 uses
  %.not11841949 = icmp ult i32 %.292004, %i.un
  br i1 %.not11841949, label %.lr.ph1954.preheader, label %._crit_edge1955

.lr.ph1954.preheader:                             ; preds = %.preheader1282
  %i.uo = icmp eq i32 %.3310252002, 0
  br i1 %i.uo, label %.loopexit1277.loopexit2982, label %.lr.ph3810

.lr.ph3810:                                       ; preds = %.lr.ph1954.preheader
  %i.up = zext nneg i32 %.292004 to i64
  br label %bb.es

.lr.ph1954:                                       ; preds = %bb.es
  %i.uq = icmp eq i32 %i.ur, 0
  br i1 %i.uq, label %.loopexit1277.loopexit2982, label %bb.es

bb.es:                                            ; preds = %.lr.ph3810, %.lr.ph1954
  %.34109019503809 = phi ptr [ %.3310892001, %.lr.ph3810 ], [ %i.us, %.lr.ph1954 ] ; 2 uses
  %.34102619513808 = phi i32 [ %.3310252002, %.lr.ph3810 ], [ %i.ur, %.lr.ph1954 ]
  %.3095919523807 = phi i64 [ %.299582003, %.lr.ph3810 ], [ %i.uw, %.lr.ph1954 ]
  %indvars.iv27943806 = phi i64 [ %i.up, %.lr.ph3810 ], [ %indvars.iv.next2795, %.lr.ph1954 ] ; 2 uses
  %i.ur = add i32 %.34102619513808, -1            ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.34109019503809, i64 1 ; 2 uses
  %i.ut = load i8, ptr %.34109019503809, align 1, !tbaa !45
  %i.uu = zext i8 %i.ut to i64
  %i.uv = shl i64 %i.uu, %indvars.iv27943806
  %i.uw = add i64 %i.uv, %.3095919523807          ; 4 uses
  %indvars.iv.next2795 = add nuw nsw i64 %indvars.iv27943806, 8 ; 3 uses
  %i.ux = trunc i64 %i.uw to i32
  %i.uy = and i32 %i.ui, %i.ux
  %i.uz = zext nneg i32 %i.uy to i64              ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.uz
  %.sroa.1867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  %.sroa.1867.0.copyload = load i8, ptr %.sroa.1867.0..sroa_idx, align 1, !tbaa !45 ; 3 uses
  %i.vb = zext i8 %.sroa.1867.0.copyload to i64
  %.not1184 = icmp samesign ult i64 %indvars.iv.next2795, %i.vb
  br i1 %.not1184, label %.lr.ph1954, label %._crit_edge1955.loopexit

._crit_edge1955.loopexit:                         ; preds = %bb.es
  %i.vc = zext i8 %.sroa.1867.0.copyload to i32
  %i.vd = trunc nuw nsw i64 %indvars.iv.next2795 to i32
end_hunk_1
