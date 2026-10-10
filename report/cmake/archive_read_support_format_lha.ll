Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_lha?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@lzh_make_huffman_table:bb.a
  %.not220.13 = icmp eq i32 %i.bk, 0
  %i.bl = shl nsw i32 %i.bk, 2
  %.1191.13 = select i1 %.not220.13, i32 %.1191.12, i32 14
  %.1189.13 = add nsw i32 %i.bl, %.1189.12        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.1189.13, ptr %i.bm, align 4, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !92 ; 2 uses
  %.not220.14 = icmp eq i32 %i.bo, 0
  %i.bp = shl nsw i32 %i.bo, 1
  %.1191.14 = select i1 %.not220.14, i32 %.1191.13, i32 15
  %.1189.14 = add nsw i32 %i.bp, %.1189.13        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.1189.14, ptr %i.bq, align 16, !tbaa !92
  store <4 x i32> <i32 8, i32 4, i32 2, i32 1>, ptr %i.be, align 4, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !92 ; 2 uses
  %.not220.15 = icmp eq i32 %i.bs, 0
  %.1191.15 = select i1 %.not220.15, i32 %.1191.14, i32 16 ; 10 uses
  %.1189.15 = add nsw i32 %i.bs, %.1189.14
  %.not = icmp eq i32 %.1189.15, 65536
  br i1 %.not, label %bb.b, label %.thread221

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !84
  %i.bv = icmp sgt i32 %.1191.15, %i.bu
  br i1 %i.bv, label %.thread221, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.1191.15, ptr %i.bw, align 8, !tbaa !85
  %i.bx = icmp samesign ult i32 %.1191.15, 16
  br i1 %i.bx, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.by = sub nuw nsw i32 16, %.1191.15           ; 6 uses
  %.not209232 = icmp eq i32 %.1191.15, 0
  br i1 %.not209232, label %._crit_edge..loopexit225_crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bz = zext nneg i32 %.1191.15 to i64          ; 2 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i32 %.1191.15, 1
  br i1 %i.ca, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bz, 14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !92
  %i.cd = ashr i32 %i.cc, %i.by
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !92
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !92
  %i.cg = ashr i32 %i.cf, %i.by
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !92
  %i.cj = ashr i32 %i.ci, %i.by
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !92
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !92
  %i.cm = ashr i32 %i.cl, %i.by
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !92
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !180

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod308 = trunc i32 %.1191.15 to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !92
  %i.cp = ashr i32 %i.co, %i.by
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !92
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !92
  %i.cs = ashr i32 %i.cr, %i.by
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !92
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ct = icmp samesign ugt i32 %.1191.15, 10
  br i1 %i.ct, label %._crit_edge..thread_crit_edge, label %._crit_edge..loopexit225_crit_edge

._crit_edge..loopexit225_crit_edge:               ; preds = %bb.d, %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre295 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %.loopexit225

._crit_edge..thread_crit_edge:                    ; preds = %._crit_edge
  %.pre289 = load i32, ptr %i.ah, align 16, !tbaa !92
  %i.cu = load <2 x i32>, ptr %i.ad, align 4, !tbaa !92
  %.pre291 = load i32, ptr %i.al, align 4, !tbaa !92
  %.pre292 = load i32, ptr %i.am, align 4, !tbaa !92
  %.pre293 = load i32, ptr %i.aq, align 8, !tbaa !92
  %.pre294 = load i32, ptr %i.ar, align 8, !tbaa !92
  br label %.thread

.thread:                                          ; preds = %._crit_edge..thread_crit_edge, %bb.c
  %i.cv = phi i32 [ %.pre294, %._crit_edge..thread_crit_edge ], [ 64, %bb.c ]
  %i.cw = phi i32 [ %.pre293, %._crit_edge..thread_crit_edge ], [ %.1189.8, %bb.c ]
  %i.cx = phi i32 [ %.pre292, %._crit_edge..thread_crit_edge ], [ 128, %bb.c ]
  %i.cy = phi i32 [ %.pre291, %._crit_edge..thread_crit_edge ], [ %.1189.7, %bb.c ]
  %i.cz = phi i32 [ %.pre289, %._crit_edge..thread_crit_edge ], [ %.1189.6, %bb.c ]
  %i.da = phi <2 x i32> [ %i.cu, %._crit_edge..thread_crit_edge ], [ <i32 512, i32 256>, %bb.c ]
  %i.db = add nsw i32 %.1191.15, -10              ; 11 uses
  %i.dc = load <4 x i32>, ptr %i.c, align 4, !tbaa !92
  %i.dd = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.df = ashr <4 x i32> %i.dc, %i.de
  store <4 x i32> %i.df, ptr %i.c, align 4, !tbaa !92
  %i.dg = load <4 x i32>, ptr %i.d, align 4, !tbaa !92
  %i.dh = ashr <4 x i32> %i.dg, %i.de
  store <4 x i32> %i.dh, ptr %i.d, align 4, !tbaa !92
  %i.di = load i32, ptr %i.t, align 4, !tbaa !92
  %i.dj = ashr i32 %i.di, %i.db
  store i32 %i.dj, ptr %i.t, align 4, !tbaa !92
  %i.dk = load i32, ptr %i.y, align 8, !tbaa !92
  %i.dl = ashr i32 %i.dk, %i.db
  store i32 %i.dl, ptr %i.y, align 8, !tbaa !92
  %i.dm = load i32, ptr %i.ac, align 4, !tbaa !92
  %i.dn = ashr i32 %i.dm, %i.db
  store i32 %i.dn, ptr %i.ac, align 4, !tbaa !92
  %i.do = ashr i32 %i.cz, %i.db
  store i32 %i.do, ptr %i.ah, align 16, !tbaa !92
  %i.dp = load <2 x i32>, ptr %i.u, align 4, !tbaa !92
  %i.dq = shufflevector <2 x i32> %i.dp, <2 x i32> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = ashr <4 x i32> %i.dq, %i.de
  store <4 x i32> %i.dr, ptr %i.u, align 4, !tbaa !92
  %i.ds = ashr i32 %i.cy, %i.db
  store i32 %i.ds, ptr %i.al, align 4, !tbaa !92
  %i.dt = ashr i32 %i.cx, %i.db
  store i32 %i.dt, ptr %i.am, align 4, !tbaa !92
  %i.du = ashr i32 %i.cw, %i.db                   ; 2 uses
  store i32 %i.du, ptr %i.aq, align 8, !tbaa !92
  %i.dv = ashr i32 %i.cv, %i.db                   ; 2 uses
  store i32 %i.dv, ptr %i.ar, align 8, !tbaa !92
  %i.dw = mul nsw i32 %i.at, %i.dv
  %i.dx = add nsw i32 %i.dw, %i.du                ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !81 ; 3 uses
  %i.ea = icmp ult i32 %i.dx, 1024
  br i1 %i.ea, label %.lr.ph237.preheader, label %.loopexit225

.lr.ph237.preheader:                              ; preds = %.thread
  %i.eb = shl nuw nsw i32 %i.dx, 1
  %.idx = zext nneg i32 %i.eb to i64              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dz, i64 %.idx
  %i.ec = sub nuw nsw i64 2048, %.idx
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.ec, i1 false), !tbaa !41
  br label %.loopexit225

.loopexit225:                                     ; preds = %._crit_edge..loopexit225_crit_edge, %.lr.ph237.preheader, %.thread
  %i.ed = phi ptr [ %.pre295, %._crit_edge..loopexit225_crit_edge ], [ %i.dz, %.thread ], [ %i.dz, %.lr.ph237.preheader ] ; 2 uses
  %.0186 = phi i32 [ 0, %._crit_edge..loopexit225_crit_edge ], [ %i.db, %.thread ], [ %i.db, %.lr.ph237.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.0186, ptr %i.ee, align 4, !tbaa !86
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !80
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !90 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 6 uses
  store i32 0, ptr %i.ej, align 4, !tbaa !91
  %i.ek = icmp sgt i32 %i.ei, 0
  br i1 %i.ek, label %.lr.ph254, label %.thread221

.lr.ph254:                                        ; preds = %.loopexit225
  %i.el = add nsw i32 %.0186, -1
  %i.em = shl nuw nsw i32 1, %i.el                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %wide.trip.count287 = zext nneg i32 %i.ei to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph254, %bb.ah
  %indvars.iv284 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next285, %bb.ah ] ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv284
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10  ; 5 uses
  %i.er = zext i8 %i.eq to i32
  %i.es = icmp eq i8 %i.eq, 0
  br i1 %i.es, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.et = zext i8 %i.eq to i64                    ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !92 ; 5 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.et
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !92 ; 9 uses
  %i.ey = icmp ult i8 %i.eq, 11
  %i.ez = add nsw i32 %i.ex, %i.ev                ; 2 uses
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !92
  br i1 %i.ey, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.fa = icmp sgt i32 %i.ez, 1024
  br i1 %i.fa, label %.thread221, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fb = sext i32 %i.ev to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.fb ; 7 uses
  %i.fd = icmp sgt i32 %i.ex, 7
  br i1 %i.fd, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.fe = icmp sgt i32 %i.ex, 1
  br i1 %i.fe, label %.lr.ph245, label %._crit_edge246

.lr.ph245:                                        ; preds = %.preheader
  %i.ff = trunc i64 %indvars.iv284 to i16         ; 2 uses
  %i.fg = zext nneg i32 %i.ex to i64
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.fh = add nsw i32 %i.ex, -8                   ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fi ; 3 uses
  %i.fk = trunc i64 %indvars.iv284 to i16
  %i.fl = insertelement <8 x i16> poison, i16 %i.fk, i64 0
  %i.fm = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.fm, ptr %i.fj, align 2, !tbaa !41
  %i.fn = icmp samesign ugt i32 %i.ex, 15
  br i1 %i.fn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fo = add nsw i32 %i.ex, -16                  ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fp ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.fq, ptr noundef nonnull align 2 dereferenceable(16) %i.fj, i64 16, i1 false)
  %i.fr = icmp samesign ugt i32 %i.ex, 31
  br i1 %i.fr, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %bb.j, %.lr.ph250
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph250 ], [ %i.fp, %bb.j ] ; 2 uses
  %indvars.iv.next282 = add nsw i64 %indvars.iv281, -16 ; 3 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.next282
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.fs, ptr noundef nonnull align 2 dereferenceable(32) %i.fq, i64 32, i1 false)
  %i.ft = icmp samesign ugt i64 %indvars.iv281, 31
  br i1 %i.ft, label %.lr.ph250, label %.loopexit.loopexit, !llvm.loop !181

.loopexit.loopexit:                               ; preds = %.lr.ph250
  %i.fu = trunc nuw nsw i64 %indvars.iv.next282 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %bb.i
  %.1182 = phi i32 [ %i.fh, %bb.i ], [ %i.fo, %bb.j ], [ %i.fu, %.loopexit.loopexit ] ; 2 uses
  %.0 = phi ptr [ %i.fj, %bb.i ], [ %i.fq, %bb.j ], [ %i.fq, %.loopexit.loopexit ]
  %.not219 = icmp eq i32 %.1182, 0
  br i1 %.not219, label %bb.ah, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.fv = zext nneg i32 %.1182 to i64
  %i.fw = shl nuw nsw i64 %i.fv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fc, ptr nonnull align 2 %.0, i64 %i.fw, i1 false)
  br label %bb.ah

bb.l:                                             ; preds = %.lr.ph245, %bb.l
  %indvars.iv278 = phi i64 [ %i.fg, %.lr.ph245 ], [ %indvars.iv.next279.a, %bb.l ] ; 3 uses
  %i.fx = getelementptr [2 x i8], ptr %i.fc, i64 %indvars.iv278
  %i.fy = getelementptr i8, ptr %i.fx, i64 -2
  store i16 %i.ff, ptr %i.fy, align 2, !tbaa !41
  %indvars.iv.next279.a = add nsw i64 %indvars.iv278, -2 ; 3 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.next279.a
  store i16 %i.ff, ptr %i.fz, align 2, !tbaa !41
  %i.ga = icmp samesign ugt i64 %indvars.iv278, 3
  br i1 %i.ga, label %bb.l, label %._crit_edge246.loopexit, !llvm.loop !182

._crit_edge246.loopexit:                          ; preds = %bb.l
  %i.gb = trunc nuw nsw i64 %indvars.iv.next279.a to i32
  br label %._crit_edge246

._crit_edge246:                                   ; preds = %._crit_edge246.loopexit, %.preheader
  %.2183.lcssa = phi i32 [ %i.ex, %.preheader ], [ %i.gb, %._crit_edge246.loopexit ] ; 2 uses
  %.not218 = icmp eq i32 %.2183.lcssa, 0
  br i1 %.not218, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %._crit_edge246
  %i.gc = trunc i64 %indvars.iv284 to i16
  %i.gd = sext i32 %.2183.lcssa to i64
  %i.ge = getelementptr [2 x i8], ptr %i.fc, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -2
  store i16 %i.gc, ptr %i.gf, align 2, !tbaa !41
  br label %bb.ah

bb.n:                                             ; preds = %bb.f
  %i.gg = ashr i32 %i.ev, %.0186
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gh ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !41 ; 2 uses
  %i.gk = zext i16 %i.gj to i32                   ; 3 uses
  %i.gl = icmp eq i16 %i.gj, 0
  br i1 %i.gl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gm = load i32, ptr %i.ej, align 4, !tbaa !91 ; 4 uses
  %i.gn = add nsw i32 %i.gm, %i.ei
  %i.go = trunc i32 %i.gn to i16
  store i16 %i.go, ptr %i.gi, align 2, !tbaa !41
  %i.gp = load ptr, ptr %i.en, align 8, !tbaa !82 ; 2 uses
  %i.gq = add nsw i32 %i.gm, 1                    ; 2 uses
  store i32 %i.gq, ptr %i.ej, align 4, !tbaa !91
  %i.gr = load i32, ptr %i.eo, align 8, !tbaa !83
  %.not211 = icmp slt i32 %i.gm, %i.gr
  br i1 %.not211, label %bb.p, label %.thread221

bb.p:                                             ; preds = %bb.o
  %i.gs = sext i32 %i.gm to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gs ; 3 uses
  store i16 0, ptr %i.gt, align 2, !tbaa !186
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store i16 0, ptr %i.gu, align 2, !tbaa !187
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.gv = icmp sgt i32 %i.ei, %i.gk
  br i1 %i.gv, label %.thread221, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gw = load i32, ptr %i.ej, align 4, !tbaa !91 ; 2 uses
  %i.gx = add nsw i32 %i.gw, %i.ei
  %.not210 = icmp sgt i32 %i.gx, %i.gk
  br i1 %.not210, label %bb.s, label %.thread221

bb.s:                                             ; preds = %bb.r
  %i.gy = load ptr, ptr %i.en, align 8, !tbaa !82 ; 2 uses
  %i.gz = sub nuw nsw i32 %i.gk, %i.ei
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ha
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.hc = phi i32 [ %i.gq, %bb.p ], [ %i.gw, %bb.s ]
  %i.hd = phi ptr [ %i.gp, %bb.p ], [ %i.gy, %bb.s ] ; 4 uses
  %.0178 = phi ptr [ %i.gt, %bb.p ], [ %i.hb, %bb.s ] ; 2 uses
  %.not268 = icmp eq i8 %i.eq, 11
  br i1 %.not268, label %._crit_edge242, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %bb.t
  %i.he = add nsw i32 %i.er, -11
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %bb.ac
  %i.hf = phi i32 [ %i.ik, %bb.ac ], [ %i.hc, %.lr.ph241.preheader ] ; 10 uses
  %i.hg = phi i32 [ %i.im, %bb.ac ], [ %i.he, %.lr.ph241.preheader ] ; 2 uses
  %.1239 = phi ptr [ %.2, %bb.ac ], [ %.0178, %.lr.ph241.preheader ] ; 3 uses
  %.0180.in238 = phi i32 [ %i.il, %bb.ac ], [ %i.em, %.lr.ph241.preheader ]
  %i.hh = and i32 %.0180.in238, 65535             ; 2 uses
  %i.hi = and i32 %i.hh, %i.ev
  %.not215 = icmp eq i32 %i.hi, 0
  br i1 %.not215, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph241
  %i.hj = load i16, ptr %.1239, align 2, !tbaa !186
  %i.hk = zext i16 %i.hj to i32                   ; 2 uses
  %i.hl = icmp sgt i32 %i.ei, %i.hk
  br i1 %i.hl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.hm = add nsw i32 %i.hf, %i.ei
  %i.hn = trunc i32 %i.hm to i16
  store i16 %i.hn, ptr %.1239, align 2, !tbaa !186
  %i.ho = add nsw i32 %i.hf, 1                    ; 2 uses
  store i32 %i.ho, ptr %i.ej, align 4, !tbaa !91
  %i.hp = load i32, ptr %i.eo, align 8, !tbaa !83
  %.not217 = icmp slt i32 %i.hf, %i.hp
  br i1 %.not217, label %bb.w, label %.thread221

bb.w:                                             ; preds = %bb.v
  %i.hq = sext i32 %i.hf to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hq ; 3 uses
  store i16 0, ptr %i.hr, align 2, !tbaa !186
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store i16 0, ptr %i.hs, align 2, !tbaa !187
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.ht = sub nuw nsw i32 %i.hk, %i.ei
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hu
  br label %bb.ac

bb.y:                                             ; preds = %.lr.ph241
  %i.hw = getelementptr inbounds nuw i8, ptr %.1239, i64 2 ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !187
  %i.hy = zext i16 %i.hx to i32                   ; 2 uses
  %i.hz = icmp sgt i32 %i.ei, %i.hy
  br i1 %i.hz, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ia = add nsw i32 %i.hf, %i.ei
  %i.ib = trunc i32 %i.ia to i16
  store i16 %i.ib, ptr %i.hw, align 2, !tbaa !187
  %i.ic = add nsw i32 %i.hf, 1                    ; 2 uses
  store i32 %i.ic, ptr %i.ej, align 4, !tbaa !91
  %i.id = load i32, ptr %i.eo, align 8, !tbaa !83
  %.not216 = icmp slt i32 %i.hf, %i.id
  br i1 %.not216, label %bb.aa, label %.thread221

bb.aa:                                            ; preds = %bb.z
  %i.ie = sext i32 %i.hf to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.ie ; 3 uses
  store i16 0, ptr %i.if, align 2, !tbaa !186
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i16 0, ptr %i.ig, align 2, !tbaa !187
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ih = sub nuw nsw i32 %i.hy, %i.ei
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ii
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.ik = phi i32 [ %i.ho, %bb.w ], [ %i.hf, %bb.x ], [ %i.ic, %bb.aa ], [ %i.hf, %bb.ab ]
  %.2 = phi ptr [ %i.hr, %bb.w ], [ %i.hv, %bb.x ], [ %i.if, %bb.aa ], [ %i.ij, %bb.ab ] ; 2 uses
  %i.il = lshr i32 %i.hh, 1                       ; 2 uses
  %i.im = add nsw i32 %i.hg, -1
  %i.in = icmp sgt i32 %i.hg, 1
  br i1 %i.in, label %.lr.ph241, label %._crit_edge242, !llvm.loop !183

._crit_edge242:                                   ; preds = %bb.ac, %bb.t
  %.0180.in.lcssa = phi i32 [ %i.em, %bb.t ], [ %i.il, %bb.ac ]
  %.1.lcssa = phi ptr [ %.0178, %bb.t ], [ %.2, %bb.ac ] ; 3 uses
  %i.io = and i32 %i.ev, 65535
  %i.ip = and i32 %i.io, %.0180.in.lcssa
  %.not212 = icmp eq i32 %i.ip, 0
  br i1 %.not212, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge242
  %i.iq = load i16, ptr %.1.lcssa, align 2, !tbaa !186
  %.not214 = icmp eq i16 %i.iq, 0
  br i1 %.not214, label %bb.ae, label %.thread221

bb.ae:                                            ; preds = %bb.ad
  %i.ir = trunc i64 %indvars.iv284 to i16
  store i16 %i.ir, ptr %.1.lcssa, align 2, !tbaa !186
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge242
  %i.is = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2 ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !tbaa !187
  %.not213 = icmp eq i16 %i.it, 0
  br i1 %.not213, label %bb.ag, label %.thread221

bb.ag:                                            ; preds = %bb.af
  %i.iu = trunc i64 %indvars.iv284 to i16
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !187
  br label %bb.ah

bb.ah:                                            ; preds = %bb.e, %.loopexit, %bb.k, %._crit_edge246, %bb.m, %bb.ag, %bb.ae
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %.thread221, label %bb.e, !llvm.loop !184

.thread221:                                       ; preds = %bb.ah, %bb.o, %bb.g, %bb.q, %bb.af, %bb.ad, %bb.r, %bb.z, %bb.v, %.loopexit225, %bb.a, %bb.b
  %.2197 = phi i32 [ 0, %bb.a ], [ 1, %.loopexit225 ], [ 0, %bb.b ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.g ], [ 0, %bb.o ], [ 1, %bb.ah ], [ 0, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2197
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS14archive_vtable", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"archive_string", !16, i64 0, !12, i64 8, !12, i64 16}
!18 = !{!"p1 _ZTS19archive_string_conv", !14, i64 0}
!19 = !{!"archive", !7, i64 0, !7, i64 4, !15, i64 8, !7, i64 16, !16, i64 24, !7, i64 32, !7, i64 36, !16, i64 40, !17, i64 48, !16, i64 72, !7, i64 80, !7, i64 84, !18, i64 88, !16, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !6, i64 128, !12, i64 136}
!20 = !{!"p1 _ZTS13archive_entry", !14, i64 0}
!21 = !{!"p1 _ZTS22archive_read_data_node", !14, i64 0}
!22 = !{!"archive_read_client", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !7, i64 48, !7, i64 52, !12, i64 56, !21, i64 64}
!23 = !{!"p1 _ZTS19archive_read_filter", !14, i64 0}
!24 = !{!"p1 _ZTS25archive_format_descriptor", !14, i64 0}
!25 = !{!"p1 _ZTS20archive_read_extract", !14, i64 0}
!26 = !{!"p1 _ZTS23archive_read_passphrase", !14, i64 0}
!27 = !{!"any p2 pointer", !14, i64 0}
!28 = !{!"p2 _ZTS23archive_read_passphrase", !27, i64 0}
!29 = !{!"", !26, i64 0, !28, i64 8, !7, i64 16, !14, i64 24, !14, i64 32}
!30 = !{!"archive_read", !19, i64 0, !20, i64 144, !7, i64 152, !12, i64 160, !12, i64 168, !22, i64 176, !6, i64 248, !23, i64 632, !7, i64 640, !12, i64 648, !7, i64 656, !7, i64 660, !6, i64 664, !24, i64 2072, !25, i64 2080, !14, i64 2088, !29, i64 2096}
!31 = !{!30, !24, i64 2072}
!32 = !{!"archive_format_descriptor", !14, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!33 = !{!32, !14, i64 0}
!34 = !{!"short", !6, i64 0}
!35 = !{!"p1 int", !14, i64 0}
!36 = !{!"archive_wstring", !35, i64 0, !12, i64 8, !12, i64 16}
!37 = !{!"p1 _ZTS7lzh_dec", !14, i64 0}
!38 = !{!"lzh_stream", !16, i64 0, !7, i64 8, !12, i64 16, !16, i64 24, !7, i64 32, !12, i64 40, !37, i64 48}
!39 = !{!"lha", !12, i64 0, !12, i64 8, !12, i64 16, !34, i64 24, !12, i64 32, !6, i64 40, !6, i64 41, !12, i64 48, !12, i64 56, !7, i64 64, !12, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !12, i64 104, !7, i64 112, !7, i64 116, !12, i64 120, !12, i64 128, !17, i64 136, !17, i64 160, !34, i64 184, !34, i64 186, !18, i64 192, !18, i64 200, !18, i64 208, !17, i64 216, !17, i64 240, !36, i64 264, !6, i64 288, !6, i64 289, !6, i64 290, !6, i64 291, !6, i64 292, !6, i64 293, !6, i64 294, !6, i64 295, !38, i64 360}
!40 = !{!39, !18, i64 208}
!41 = !{!34, !34, i64 0}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!39, !6, i64 291}
!45 = !{!39, !6, i64 292}
!46 = !{!39, !6, i64 293}
!47 = !{!39, !12, i64 16}
!48 = !{!39, !6, i64 294}
!49 = !{!39, !12, i64 72}
!50 = !{!39, !12, i64 88}
!51 = !{!39, !12, i64 104}
!52 = !{!39, !7, i64 116}
!53 = !{!39, !12, i64 224}
!54 = !{!39, !12, i64 248}
!55 = !{!39, !6, i64 288}
!56 = !{!39, !18, i64 192}
!57 = !{!39, !18, i64 200}
!58 = !{!39, !12, i64 48}
!59 = !{!39, !12, i64 56}
!60 = !{!39, !34, i64 186}
!61 = !{!39, !7, i64 64}
!62 = !{!39, !12, i64 120}
!63 = !{!39, !12, i64 128}
!64 = !{!39, !34, i64 184}
!65 = !{!39, !16, i64 216}
!66 = !{!36, !12, i64 8}
!67 = !{!36, !35, i64 0}
!68 = !{!39, !12, i64 144}
!69 = !{!39, !12, i64 168}
!70 = !{!39, !12, i64 8}
!71 = !{!39, !12, i64 0}
!72 = !{!39, !34, i64 24}
!73 = !{!38, !37, i64 48}
!74 = !{!"lzh_br", !12, i64 0, !7, i64 8}
!75 = !{!"p1 short", !14, i64 0}
!76 = !{!"p1 _ZTS7htree_t", !14, i64 0}
!77 = !{!"huffman", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 12, !16, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !75, i64 112, !76, i64 120}
!78 = !{!"lzh_dec", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !74, i64 40, !77, i64 56, !77, i64 184, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340}
!79 = !{!78, !16, i64 16}
!80 = !{!77, !16, i64 80}
!81 = !{!77, !75, i64 112}
!82 = !{!77, !76, i64 120}
!83 = !{!77, !7, i64 104}
!84 = !{!77, !7, i64 96}
!85 = !{!77, !7, i64 88}
!86 = !{!77, !7, i64 92}
!87 = !{!74, !7, i64 8}
!88 = !{!74, !12, i64 0}
!89 = !{!78, !16, i64 264}
!90 = !{!77, !7, i64 4}
!91 = !{!77, !7, i64 100}
!92 = !{!7, !7, i64 0}
!93 = !{!38, !7, i64 8}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11, !42, !43}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11, !42, !43}
!100 = distinct !{!100, !11, !42, !43}
!101 = distinct !{!101, !11, !43, !42}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11, !42, !43}
!104 = distinct !{!104, !11, !42, !43}
!105 = distinct !{!105, !11, !43, !42}
!106 = !{!30, !7, i64 16}
!107 = !{!30, !16, i64 24}
!108 = !{!39, !6, i64 289}
!109 = !{!39, !12, i64 32}
!110 = !{!39, !6, i64 40}
!111 = !{!39, !6, i64 290}
!112 = !{!39, !7, i64 80}
!113 = !{!39, !7, i64 96}
!114 = !{!39, !7, i64 112}
!115 = !{!"branch_weights", i32 4, i32 28}
!116 = !{!"archive_mstring", !17, i64 0, !17, i64 24, !36, i64 48, !17, i64 72, !7, i64 96}
!117 = !{!116, !12, i64 8}
!118 = !{!116, !12, i64 80}
!119 = !{!116, !12, i64 32}
!120 = !{!116, !12, i64 56}
!121 = !{!39, !16, i64 240}
!122 = !{!39, !16, i64 136}
!123 = !{!39, !16, i64 160}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = !{!14, !14, i64 0}
!129 = !{!78, !7, i64 340}
!130 = !{!78, !7, i64 4}
!131 = !{!78, !7, i64 8}
!132 = !{!78, !7, i64 24}
!133 = !{!78, !7, i64 0}
!134 = !{!78, !7, i64 316}
!135 = !{!78, !7, i64 320}
!136 = !{!78, !7, i64 324}
!137 = !{!78, !7, i64 328}
!138 = !{!78, !12, i64 40}
!139 = !{!78, !7, i64 48}
!140 = !{!77, !7, i64 0}
!141 = !{!78, !7, i64 64}
!142 = !{!39, !7, i64 392}
!143 = !{!39, !12, i64 400}
!144 = !{!39, !16, i64 360}
!145 = !{!39, !7, i64 368}
!146 = !{!39, !12, i64 376}
!147 = !{!78, !7, i64 192}
!148 = !{!78, !7, i64 336}
!149 = !{!78, !7, i64 184}
!150 = !{!78, !7, i64 332}
!151 = !{!78, !7, i64 60}
!152 = !{!78, !7, i64 188}
!153 = !{!38, !16, i64 24}
!154 = !{!38, !7, i64 32}
!155 = !{!38, !12, i64 40}
!156 = !{!78, !7, i64 312}
!157 = !{!78, !7, i64 56}
!158 = !{!78, !7, i64 272}
!159 = !{!78, !16, i64 136}
!160 = !{i64 0, i64 8, !13, i64 8, i64 4, !92}
!161 = !{!78, !7, i64 32}
!162 = !{!78, !7, i64 28}
!163 = !{!38, !12, i64 16}
!164 = !{!39, !16, i64 384}
!165 = distinct !{!165, !11, !42, !43}
!166 = distinct !{!166, !11, !43, !42}
!167 = distinct !{!167, !11, !42, !43}
!168 = distinct !{!168, !11, !43, !42}
!169 = !{!39, !12, i64 272}
!170 = !{!39, !35, i64 264}
!171 = distinct !{!171, !11}
!172 = distinct !{!172, !11, !42, !43}
!173 = distinct !{!173, !11, !42, !43}
!174 = distinct !{!174, !11, !42}
!175 = !{!"branch_weights", i32 4, i32 12}
!176 = !{!17, !16, i64 0}
!177 = distinct !{!177, !11}
!178 = !{!38, !16, i64 0}
!179 = distinct !{!179, !11}
!180 = distinct !{!180, !11}
!181 = distinct !{!181, !11}
!182 = distinct !{!182, !11}
!183 = distinct !{!183, !11}
!184 = distinct !{!184, !11}
!185 = !{!"htree_t", !34, i64 0, !34, i64 2}
!186 = !{!185, !34, i64 0}
!187 = !{!185, !34, i64 2}
end_hunk_0
