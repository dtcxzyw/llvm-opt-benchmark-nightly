Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_gcm?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_gcm:ir_array_init.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39   ; 2 uses
  %.not153 = icmp eq i32 %i.z, 1
  br i1 %.not153, label %bb.e, label %bb.b, !llvm.loop !66

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.aa, align 4, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !43 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph206, label %.preheader

.lr.ph206:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 52 ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %bb.h, %bb.e
  %.not154214 = icmp eq i32 %.sroa.17166.1, 0
  br i1 %.not154214, label %._crit_edge217, label %.lr.ph216

bb.f:                                             ; preds = %.lr.ph206, %bb.h
  %.0136204 = phi ptr [ %i.al, %.lr.ph206 ], [ %i.ax, %bb.h ] ; 2 uses
  %.0138203 = phi i32 [ %i.ae, %.lr.ph206 ], [ %i.aw, %bb.h ] ; 2 uses
  %i.an = load i32, ptr %.0136204, align 4, !tbaa !38
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !39  ; 2 uses
  %.off = add i8 %i.aq, -67
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i8 %i.aq, 67
  %i.as = select i1 %i.ar, i32 4096, i32 8192
  %i.at = load i32, ptr %i.am, align 4, !tbaa !46
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.am, align 4, !tbaa !46
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ao
  store i32 1, ptr %i.av, align 4, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aw = add nsw i32 %.0138203, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0136204, i64 4
  %i.ay = icmp sgt i32 %.0138203, 1
  br i1 %i.ay, label %bb.f, label %.preheader, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph212.prol.loopexit, %bb.o, %.lr.ph216
  %.sroa.17166.3.lcssa = phi i32 [ %i.az, %.lr.ph216 ], [ %.sroa.17166.4.lcssa.unr, %.lr.ph212.prol.loopexit ], [ %.sroa.17166.4.1, %bb.o ] ; 2 uses
  %.not154 = icmp eq i32 %.sroa.17166.3.lcssa, 0
  br i1 %.not154, label %._crit_edge217, label %.lr.ph216, !llvm.loop !68

.lr.ph216:                                        ; preds = %.preheader, %.loopexit
  %.sroa.17166.2215 = phi i32 [ %.sroa.17166.3.lcssa, %.loopexit ], [ %.sroa.17166.1, %.preheader ] ; 2 uses
  %i.az = add i32 %.sroa.17166.2215, -1           ; 6 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !39 ; 3 uses
  %.not218 = icmp eq i16 %i.bg, 0
  br i1 %.not218, label %.loopexit, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %.lr.ph216
  %i.bh = zext i16 %i.bg to i32                   ; 3 uses
  %xtraiter = and i32 %i.bh, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph212.prol.loopexit, label %.lr.ph212.prol

.lr.ph212.prol:                                   ; preds = %.lr.ph212.preheader
  %.1137210.prol = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.1137210.prol, align 4, !tbaa !38 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %.lr.ph212.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.lr.ph212.prol
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !38
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.j, label %.lr.ph212.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.bl, align 4, !tbaa !38
  %i.bo = zext i32 %i.az to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !38
  br label %.lr.ph212.prol.loopexit.unr-lcssa

.lr.ph212.prol.loopexit.unr-lcssa:                ; preds = %bb.j, %bb.i, %.lr.ph212.prol
  %.sroa.17166.4.prol = phi i32 [ %.sroa.17166.2215, %bb.j ], [ %i.az, %bb.i ], [ %i.az, %.lr.ph212.prol ] ; 2 uses
  %i.bq = add nsw i32 %i.bh, -1
  br label %.lr.ph212.prol.loopexit

.lr.ph212.prol.loopexit:                          ; preds = %.lr.ph212.prol.loopexit.unr-lcssa, %.lr.ph212.preheader
  %.1137210.pn.unr = phi ptr [ %i.be, %.lr.ph212.preheader ], [ %.1137210.prol, %.lr.ph212.prol.loopexit.unr-lcssa ]
  %.1139209.unr = phi i32 [ %i.bh, %.lr.ph212.preheader ], [ %i.bq, %.lr.ph212.prol.loopexit.unr-lcssa ]
  %.sroa.17166.3208.unr = phi i32 [ %i.az, %.lr.ph212.preheader ], [ %.sroa.17166.4.prol, %.lr.ph212.prol.loopexit.unr-lcssa ]
  %.sroa.17166.4.lcssa.unr = phi i32 [ poison, %.lr.ph212.preheader ], [ %.sroa.17166.4.prol, %.lr.ph212.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i16 %i.bg, 1
  br i1 %i.br, label %.loopexit, label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.prol.loopexit, %bb.o
  %.1137210.pn = phi ptr [ %.1137210.1, %bb.o ], [ %.1137210.pn.unr, %.lr.ph212.prol.loopexit ] ; 2 uses
  %.1139209 = phi i32 [ %i.ck, %bb.o ], [ %.1139209.unr, %.lr.ph212.prol.loopexit ] ; 2 uses
  %.sroa.17166.3208 = phi i32 [ %.sroa.17166.4.1, %bb.o ], [ %.sroa.17166.3208.unr, %.lr.ph212.prol.loopexit ] ; 4 uses
  %.1137210 = getelementptr inbounds nuw i8, ptr %.1137210.pn, i64 4
  %i.bs = load i32, ptr %.1137210, align 4, !tbaa !38 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %.lr.ph212.1

bb.k:                                             ; preds = %.lr.ph212
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !38
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.l, label %.lr.ph212.1

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.bv, align 4, !tbaa !38
  %i.by = add i32 %.sroa.17166.3208, 1
  %i.bz = zext i32 %.sroa.17166.3208 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bz
  store i32 %i.bs, ptr %i.ca, align 4, !tbaa !38
  br label %.lr.ph212.1

.lr.ph212.1:                                      ; preds = %.lr.ph212, %bb.k, %bb.l
  %.sroa.17166.4 = phi i32 [ %i.by, %bb.l ], [ %.sroa.17166.3208, %bb.k ], [ %.sroa.17166.3208, %.lr.ph212 ] ; 4 uses
  %.1137210.1 = getelementptr inbounds nuw i8, ptr %.1137210.pn, i64 8 ; 2 uses
  %i.cb = load i32, ptr %.1137210.1, align 4, !tbaa !38 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph212.1
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.ce, align 4, !tbaa !38
  %i.ch = add i32 %.sroa.17166.4, 1
  %i.ci = zext i32 %.sroa.17166.4 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ci
  store i32 %i.cb, ptr %i.cj, align 4, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph212.1
  %.sroa.17166.4.1 = phi i32 [ %i.ch, %bb.n ], [ %.sroa.17166.4, %bb.m ], [ %.sroa.17166.4, %.lr.ph212.1 ] ; 2 uses
  %i.ck = add nsw i32 %.1139209, -2
  %i.cl = icmp sgt i32 %.1139209, 2
  br i1 %i.cl, label %.lr.ph212, label %.loopexit, !llvm.loop !69

._crit_edge217:                                   ; preds = %.loopexit, %.preheader
  tail call void @_efree(ptr noundef %i.g) #10
  br label %bb.ah

ir_array_init.exit156:                            ; preds = %ir_array_init.exit
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = tail call noalias ptr @_emalloc(i64 noundef %i.co) #11
  store ptr %i.cp, ptr %1, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cm, ptr %i.cq, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !51
  %i.cs = load i32, ptr %i.h, align 4, !tbaa !33  ; 3 uses
  %.not186 = icmp eq i32 %i.cs, 0
  br i1 %.not186, label %._crit_edge199, label %.lr.ph190

.lr.ph190:                                        ; preds = %ir_array_init.exit156
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34
  %i.cv = zext i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [52 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %0, align 8, !tbaa !37    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.p

.preheader175:                                    ; preds = %.loopexit176
  %i.db = icmp sgt i32 %.sroa.17166.11, 0
  br i1 %i.db, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %.preheader175
  %i.dc = zext nneg i32 %.sroa.17166.11 to i64
  %.pre224 = load ptr, ptr %0, align 8, !tbaa !37
  br label %.lr.ph198

bb.p:                                             ; preds = %.lr.ph190, %.loopexit176
  %.0189 = phi i32 [ %i.cs, %.lr.ph190 ], [ %i.fj, %.loopexit176 ] ; 7 uses
  %.0134188 = phi ptr [ %i.cw, %.lr.ph190 ], [ %i.fi, %.loopexit176 ] ; 9 uses
  %.sroa.17166.5187 = phi i32 [ 0, %.lr.ph190 ], [ %.sroa.17166.11, %.loopexit176 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0134188, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.df
  store i32 %.0189, ptr %i.dh, align 4, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !39
  %i.dk = icmp ugt i16 %i.dj, 1
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = add i32 %.sroa.17166.5187, 1
  %i.dm = zext i32 %.sroa.17166.5187 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dm
  store i32 %i.de, ptr %i.dn, align 4, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.17166.6 = phi i32 [ %i.dl, %bb.q ], [ %.sroa.17166.5187, %bb.p ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0134188, i64 4 ; 2 uses
  %.1.in177 = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.1178 = load i32, ptr %.1.in177, align 4, !tbaa !39 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !52
  %.not151179 = icmp eq i32 %.1178, %i.dp
  br i1 %.not151179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.1181 = phi i32 [ %.1, %bb.t ], [ %.1178, %bb.r ] ; 2 uses
  %.sroa.17166.7180 = phi i32 [ %.sroa.17166.8, %bb.t ], [ %.sroa.17166.6, %bb.r ] ; 3 uses
  %i.dq = sext i32 %.1181 to i64                  ; 2 uses
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dq
  store i32 %.0189, ptr %i.ds, align 4, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !39
  %i.dv = icmp ugt i16 %i.du, 1
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.dw = add i32 %.sroa.17166.7180, 1
  %i.dx = zext i32 %.sroa.17166.7180 to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dx
  store i32 %.1181, ptr %i.dy, align 4, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %.sroa.17166.8 = phi i32 [ %i.dw, %bb.s ], [ %.sroa.17166.7180, %.lr.ph ] ; 2 uses
  %.1.in = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !39  ; 3 uses
  %i.dz = load i32, ptr %i.do, align 4, !tbaa !52
  %.not151 = icmp eq i32 %.1, %i.dz
  br i1 %.not151, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.t, %bb.r
  %.sroa.17166.7.lcssa = phi i32 [ %.sroa.17166.6, %bb.r ], [ %.sroa.17166.8, %bb.t ] ; 2 uses
  %.1.lcssa = phi i32 [ %.1178, %bb.r ], [ %.1, %bb.t ]
  %i.ea = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ea
  store i32 %.0189, ptr %i.eb, align 4, !tbaa !38
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !43 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.u, label %.loopexit176

bb.u:                                             ; preds = %._crit_edge
  %i.eg = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.eh = load i32, ptr %i.ec, align 4, !tbaa !45
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ei
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.aa
  %.2185 = phi ptr [ %i.ej, %bb.u ], [ %i.fg, %bb.aa ] ; 2 uses
  %.2140184 = phi i32 [ %i.ee, %bb.u ], [ %i.ff, %bb.aa ] ; 2 uses
  %.sroa.17166.9183 = phi i32 [ %.sroa.17166.7.lcssa, %bb.u ], [ %.sroa.17166.10, %bb.aa ] ; 6 uses
  %i.ek = load i32, ptr %.2185, align 4, !tbaa !38 ; 2 uses
  %i.el = sext i32 %i.ek to i64                   ; 5 uses
  %i.em = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.el
  %i.en = load i8, ptr %i.em, align 8, !tbaa !39  ; 2 uses
  switch i8 %i.en, label %bb.aa [
    i8 63, label %bb.w
    i8 65, label %bb.w
    i8 67, label %bb.y
    i8 68, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.eo = icmp eq i8 %i.en, 63
  %i.ep = select i1 %i.eo, i32 1024, i32 2048
  %i.eq = load i32, ptr %.0134188, align 4, !tbaa !46
  %i.er = or i32 %i.eq, %i.ep
  store i32 %i.er, ptr %.0134188, align 4, !tbaa !46
  %i.es = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.el
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !43
  %.not152 = icmp eq i32 %i.eu, 0
  br i1 %.not152, label %bb.aa, label %bb.x, !prof !53

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  store i32 %.0189, ptr %i.ev, align 4, !tbaa !38
  %i.ew = add i32 %.sroa.17166.9183, 1
  %i.ex = zext i32 %.sroa.17166.9183 to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ex
  store i32 %i.ek, ptr %i.ey, align 4, !tbaa !38
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.ez = load i32, ptr %.0134188, align 4, !tbaa !46
  %i.fa = or i32 %i.ez, 4096
  store i32 %i.fa, ptr %.0134188, align 4, !tbaa !46
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  store i32 %.0189, ptr %i.fb, align 4, !tbaa !38
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.fc = load i32, ptr %.0134188, align 4, !tbaa !46
  %i.fd = or i32 %i.fc, 8192
  store i32 %i.fd, ptr %.0134188, align 4, !tbaa !46
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  store i32 %.0189, ptr %i.fe, align 4, !tbaa !38
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.x, %bb.w, %bb.z, %bb.y
  %.sroa.17166.10 = phi i32 [ %.sroa.17166.9183, %bb.v ], [ %.sroa.17166.9183, %bb.w ], [ %i.ew, %bb.x ], [ %.sroa.17166.9183, %bb.y ], [ %.sroa.17166.9183, %bb.z ] ; 2 uses
  %i.ff = add nsw i32 %.2140184, -1
  %i.fg = getelementptr inbounds nuw i8, ptr %.2185, i64 4
  %i.fh = icmp sgt i32 %.2140184, 1
  br i1 %i.fh, label %bb.v, label %.loopexit176, !llvm.loop !71

.loopexit176:                                     ; preds = %bb.aa, %._crit_edge
  %.sroa.17166.11 = phi i32 [ %.sroa.17166.7.lcssa, %._crit_edge ], [ %.sroa.17166.10, %bb.aa ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %.0134188, i64 -52
  %i.fj = add i32 %.0189, -1                      ; 2 uses
  %.not = icmp eq i32 %i.fj, 0
  br i1 %.not, label %.preheader175, label %bb.p, !llvm.loop !72

.loopexit174.loopexit:                            ; preds = %bb.ad
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %.lr.ph198
  %3 = phi ptr [ %.pre, %.loopexit174.loopexit ], [ %4, %.lr.ph198 ]
  %i.fk = icmp sgt i64 %indvars.iv, 1
  br i1 %i.fk, label %.lr.ph198, label %._crit_edge199, !llvm.loop !73

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.loopexit174
  %4 = phi ptr [ %.pre224, %.lr.ph198.preheader ], [ %3, %.loopexit174 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.dc, %.lr.ph198.preheader ], [ %indvars.iv.next, %.loopexit174 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !38
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !39 ; 2 uses
  %i.fr = icmp ugt i16 %i.fq, 1
  br i1 %i.fr, label %.lr.ph196.preheader, label %.loopexit174

.lr.ph196.preheader:                              ; preds = %.lr.ph198
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ft = zext i16 %i.fq to i32
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.ad
  %.0142194.in = phi i32 [ %.0142194, %bb.ad ], [ %i.ft, %.lr.ph196.preheader ] ; 2 uses
  %.3193 = phi ptr [ %i.gb, %bb.ad ], [ %i.fs, %.lr.ph196.preheader ] ; 2 uses
  %.0142194 = add nsw i32 %.0142194.in, -1
  %i.fu = load i32, ptr %.3193, align 4, !tbaa !38 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph196
  %i.fw = zext nneg i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !38
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ga = call fastcc i32 @ir_gcm_schedule_early(ptr noundef nonnull %0, i32 noundef %i.fu, ptr noundef %1) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph196, %bb.ab, %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %.3193, i64 4
  %i.gc = icmp samesign ugt i32 %.0142194.in, 2
  br i1 %i.gc, label %.lr.ph196, label %.loopexit174.loopexit, !llvm.loop !74

._crit_edge199:                                   ; preds = %.loopexit174, %ir_array_init.exit156, %.preheader175
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.gd = load i32, ptr %i.h, align 4, !tbaa !33
  %i.ge = add i32 %i.gd, 1                        ; 2 uses
  store i32 %i.ge, ptr %2, align 8, !tbaa !76
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !55
  %i.gg = zext i32 %i.ge to i64                   ; 2 uses
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = tail call noalias ptr @_emalloc(i64 noundef %i.gh) #11
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !56
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !33
  %i.gn = add i32 %i.gm, 1                        ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 2
  %i.gq = tail call noalias ptr @_emalloc(i64 noundef %i.gp) #11 ; 2 uses
  store ptr %i.gq, ptr %i.gl, align 8, !tbaa !48
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 %i.gn, ptr %i.gr, align 8, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.gs, align 8, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %2, ptr %i.gt, align 8, !tbaa !39
  %i.gu = load i32, ptr %i.cr, align 8, !tbaa !51 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph201, label %._crit_edge202

.lr.ph201:                                        ; preds = %._crit_edge199
  %i.gw = load ptr, ptr %1, align 8, !tbaa !48
  %i.gx = zext nneg i32 %i.gu to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph201, %bb.ag
  %indvars.iv221 = phi i64 [ %i.gx, %.lr.ph201 ], [ %indvars.iv.next222, %bb.ag ] ; 2 uses
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, -1 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next222
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !38 ; 2 uses
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !38 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call fastcc void @ir_gcm_schedule_late(ptr noundef nonnull %0, i32 noundef %i.gz, i32 noundef %i.hd)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hf = icmp samesign ugt i64 %indvars.iv221, 1
  br i1 %i.hf, label %bb.ae, label %._crit_edge202.loopexit, !llvm.loop !75

._crit_edge202.loopexit:                          ; preds = %bb.ag
  %.pre.a = load ptr, ptr %i.gl, align 8, !tbaa !48
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %._crit_edge202.loopexit, %._crit_edge199
  %i.hg = phi ptr [ %.pre.a, %._crit_edge202.loopexit ], [ %i.gq, %._crit_edge199 ]
  call void @_efree(ptr noundef %i.hg) #10
  store ptr null, ptr %i.gl, align 8, !tbaa !48
  store i32 0, ptr %i.gr, align 8, !tbaa !49
  store i32 0, ptr %i.gs, align 8, !tbaa !51
  %i.hh = load ptr, ptr %i.gk, align 8, !tbaa !56
  %i.hi = load i32, ptr %2, align 8, !tbaa !76
  %i.hj = zext i32 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hk
  call void @_efree(ptr noundef %i.hl) #10
  store ptr null, ptr %i.gt, align 8, !tbaa !39
  call void @_efree(ptr noundef %i.g) #10
  %i.hm = load ptr, ptr %1, align 8, !tbaa !48
  call void @_efree(ptr noundef %i.hm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge202, %._crit_edge217
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 1, -2147483648) i32 @ir_gcm_schedule_early(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !39   ; 2 uses
  %.not43 = icmp eq i16 %i.e, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.pn = phi ptr [ %i.c, %.lr.ph ], [ %.03142, %bb.h ]
  %.041 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.h ]  ; 2 uses
  %.02940 = phi i32 [ 0, %.lr.ph ], [ %.130, %bb.h ] ; 3 uses
  %.03239 = phi i32 [ %i.f, %.lr.ph ], [ %i.x, %bb.h ] ; 2 uses
  %.03142 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.i = load i32, ptr %.03142, align 4, !tbaa !38 ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38   ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 0, %i.n
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc i32 @ir_gcm_schedule_early(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.028 = phi i32 [ %i.p, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.s = zext nneg i32 %.028 to i64
  %i.t = getelementptr inbounds nuw [52 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39   ; 2 uses
  %i.w = icmp ult i32 %.02940, %i.v
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.02940, i32 %i.v)
  %spec.select37 = select i1 %i.w, i32 %.028, i32 %.041
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.130 = phi i32 [ %.02940, %bb.b ], [ %spec.select, %bb.g ]
  %.1 = phi i32 [ %.041, %bb.b ], [ %spec.select37, %bb.g ] ; 2 uses
  %i.x = add nsw i32 %.03239, -1
  %i.y = icmp sgt i32 %.03239, 1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1, %bb.h ] ; 2 uses
  %i.z = sub nsw i32 0, %.0.lcssa
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.b
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !51
  %i.ag = load ptr, ptr %2, align 8, !tbaa !48
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  store i32 %1, ptr %i.ai, align 4, !tbaa !38
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ir_gcm_schedule_late(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 0) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._ir_hashtab, align 8        ; 10 uses
  %i.a = sub nsw i32 0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.d = sext i32 %1 to i64                       ; 12 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  store i32 %i.a, ptr %i.e, align 4, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph157, label %ir_split_partially_dead_node.exit.thread

.lr.ph157:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr i8, ptr %0, i64 128        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph157, %ir_gcm_find_lca.exit106
  %i.n = phi ptr [ %i.c, %.lr.ph157 ], [ %i.ds, %ir_gcm_find_lca.exit106 ] ; 6 uses
  %i.o = phi ptr [ %i.h, %.lr.ph157 ], [ %i.dv, %ir_gcm_find_lca.exit106 ]
  %.082156 = phi i32 [ 0, %.lr.ph157 ], [ %.3, %ir_gcm_find_lca.exit106 ] ; 6 uses
  %.083155 = phi i32 [ 0, %.lr.ph157 ], [ %i.dt, %ir_gcm_find_lca.exit106 ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !44
end_hunk_0
