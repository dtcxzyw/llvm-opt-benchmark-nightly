Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Abc_NtkFxInsert:.critedge.preheader
  br i1 %lcmp.mod289.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv231.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next232.1, %.critedge4.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i32 %.val141201 to i1
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val146, i64 %indvars.iv231.epil.init
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val159.epil = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.br = load i32, ptr %.val159.epil, align 4, !tbaa !48
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !48 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %.critedge4.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.epil.preheader
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bs
  %i.bx = trunc nuw nsw i64 %indvars.iv231.epil.init to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !48
  br label %.critedge4.loopexit.epilog-lcssa

.critedge4.loopexit.epilog-lcssa:                 ; preds = %bb.i, %.epil.preheader
  %i.by = add nsw i32 %i.bu, 1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !48
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit.epilog-lcssa, %.critedge4.loopexit.unr-lcssa, %Vec_IntStart.exit183
  %.val162.val = load i32, ptr %i.ad, align 4, !tbaa !38 ; 5 uses
  %i.bz = add i32 %.val162.val, -1
  %or.cond.i.i184 = icmp ult i32 %i.bz, 15
  %spec.store.select.i.i185 = select i1 %or.cond.i.i184, i32 16, i32 %.val162.val ; 2 uses
  %.not.i.i186 = icmp eq i32 %spec.store.select.i.i185, 0
  br i1 %.not.i.i186, label %Vec_IntStartFull.exit, label %Vec_IntAlloc.exit.i187

Vec_IntAlloc.exit.i187:                           ; preds = %.critedge4
  %i.ca = sext i32 %spec.store.select.i.i185 to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.cb) #27 ; 3 uses
  %.not.i188 = icmp eq ptr %i.cc, null
  br i1 %.not.i188, label %Vec_IntStartFull.exit, label %bb.j

bb.j:                                             ; preds = %Vec_IntAlloc.exit.i187
  %i.cd = sext i32 %.val162.val to i64
  %i.ce = shl nsw i64 %i.cd, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 -1, i64 %i.ce, i1 false)
  %.val224.pre = load i32, ptr %i.ad, align 4, !tbaa !38
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %.critedge4, %Vec_IntAlloc.exit.i187, %bb.j
  %i.cf = phi ptr [ %i.cc, %bb.j ], [ null, %Vec_IntAlloc.exit.i187 ], [ null, %.critedge4 ] ; 9 uses
  %.val224 = phi i32 [ %.val224.pre, %bb.j ], [ %.val162.val, %Vec_IntAlloc.exit.i187 ], [ %.val162.val, %.critedge4 ]
  %i.cg = icmp sgt i32 %.val224, 0
  br i1 %i.cg, label %.lr.ph226, label %.critedge6

.lr.ph226:                                        ; preds = %Vec_IntStartFull.exit
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph226, %.critedge12
  %indvars.iv243 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next244, %.critedge12 ] ; 5 uses
  %i.cj = phi ptr [ %.val164, %.lr.ph226 ], [ %i.hd, %.critedge12 ]
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val133.val = load ptr, ptr %i.ck, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val133.val, i64 %indvars.iv243
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40 ; 9 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.critedge12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr i8, ptr %i.cm, i64 20
  %.val134 = load i32, ptr %i.co, align 4
  %i.cp = and i32 %.val134, 15
  %.not195 = icmp eq i32 %i.cp, 7
  br i1 %.not195, label %bb.m, label %.critedge12

bb.m:                                             ; preds = %bb.l
  tail call void @Abc_ObjRemoveFanins(ptr noundef nonnull %i.cm) #29
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv243 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !48 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph208, label %._crit_edge

.lr.ph208:                                        ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv243
  %i.cu = getelementptr i8, ptr %i.cm, i64 28
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph208, %.critedge8
  %i.cv = phi i32 [ %i.cr, %.lr.ph208 ], [ %i.dr, %.critedge8 ]
  %.0119207 = phi i32 [ 0, %.lr.ph208 ], [ %i.ds, %.critedge8 ] ; 2 uses
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cx = add nsw i32 %i.cw, %.0119207
  %.val145 = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %.val145, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 4      ; 2 uses
  %.val140204 = load i32, ptr %i.da, align 4, !tbaa !45 ; 2 uses
  %i.db = icmp sgt i32 %.val140204, 1
  br i1 %i.db, label %.lr.ph206, label %.critedge8

.lr.ph206:                                        ; preds = %bb.n
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph206, %bb.q
  %.val140259 = phi i32 [ %.val140204, %.lr.ph206 ], [ %.val140, %bb.q ]
  %indvars.iv234 = phi i64 [ 1, %.lr.ph206 ], [ %indvars.iv.next235, %bb.q ] ; 2 uses
  %.val155 = load ptr, ptr %i.dc, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val155, i64 %indvars.iv234
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !48
  %i.df = ashr i32 %i.de, 1
  %.val132 = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.dg = getelementptr i8, ptr %.val132, i64 8
  %.val132.val = load ptr, ptr %i.dg, align 8, !tbaa !39
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %.val132.val, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.val138 = load i32, ptr %i.dk, align 8, !tbaa !44
  %i.dl = sext i32 %.val138 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !48
  %i.do = icmp sgt i32 %i.dn, -1
  br i1 %i.do, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val174 = load i32, ptr %i.cu, align 4, !tbaa !122
  store i32 %.val174, ptr %i.dm, align 4, !tbaa !48
  tail call void @Abc_ObjAddFanin(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.dj) #29
  %.val140.pre = load i32, ptr %i.da, align 4, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.val140 = phi i32 [ %.val140259, %bb.o ], [ %.val140.pre, %bb.p ] ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.dp = sext i32 %.val140 to i64
  %i.dq = icmp slt i64 %indvars.iv.next235, %i.dp
  br i1 %i.dq, label %bb.o, label %.critedge8.loopexit, !llvm.loop !115

.critedge8.loopexit:                              ; preds = %bb.q
  %.pre = load i32, ptr %i.cq, align 4, !tbaa !48
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %bb.n
  %i.dr = phi i32 [ %.pre, %.critedge8.loopexit ], [ %i.cv, %bb.n ] ; 3 uses
  %i.ds = add nuw nsw i32 %.0119207, 1            ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dr
  br i1 %i.dt, label %bb.n, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %.critedge8, %bb.m
  %.lcssa = phi i32 [ %i.cr, %bb.m ], [ %i.dr, %.critedge8 ]
  %i.du = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.dv = getelementptr i8, ptr %i.cm, i64 28     ; 4 uses
  %.val173 = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.dw = tail call ptr @Abc_SopStart(ptr noundef %i.du, i32 noundef %.lcssa, i32 noundef %.val173) #29 ; 3 uses
  %i.dx = load i32, ptr %i.cq, align 4, !tbaa !48 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %._crit_edge
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv243
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph218, %.critedge10
  %i.eb = phi i32 [ %i.dx, %.lr.ph218 ], [ %i.ex, %.critedge10 ]
  %.1120216 = phi i32 [ 0, %.lr.ph218 ], [ %i.fb, %.critedge10 ] ; 2 uses
  %.0124215 = phi ptr [ %i.dw, %.lr.ph218 ], [ %i.fa, %.critedge10 ] ; 2 uses
  %i.ec = add nsw i32 %i.ea, %.1120216
  %.val144 = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %.val144, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 4      ; 2 uses
  %.val139211 = load i32, ptr %i.ef, align 4, !tbaa !45
  %i.eg = icmp sgt i32 %.val139211, 1
  br i1 %i.eg, label %.lr.ph214, label %.critedge10

.lr.ph214:                                        ; preds = %bb.r
  %i.eh = getelementptr i8, ptr %i.ee, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph214, %bb.s
  %indvars.iv237 = phi i64 [ 1, %.lr.ph214 ], [ %indvars.iv.next238, %bb.s ] ; 2 uses
  %.val150 = load ptr, ptr %i.eh, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val150, i64 %indvars.iv237
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !48 ; 2 uses
  %i.ek = ashr i32 %i.ej, 1
  %.val131 = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.el = getelementptr i8, ptr %.val131, i64 8
  %.val131.val = load ptr, ptr %i.el, align 8, !tbaa !39
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.val131.val, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %.val136 = load i32, ptr %i.ep, align 8, !tbaa !44
  %i.eq = sext i32 %.val136 to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !48
  %2 = and i32 %i.ej, 1
  %.not130 = icmp eq i32 %2, 0
  %3 = select i1 %.not130, i8 49, i8 48
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %.0124215, i64 %i.et
  store i8 %3, ptr %i.eu, align 1, !tbaa !41
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %.val139 = load i32, ptr %i.ef, align 4, !tbaa !45
  %i.ev = sext i32 %.val139 to i64
  %i.ew = icmp slt i64 %indvars.iv.next238, %i.ev
  br i1 %i.ew, label %bb.s, label %.critedge10.loopexit, !llvm.loop !117

.critedge10.loopexit:                             ; preds = %bb.s
  %.pre263 = load i32, ptr %i.cq, align 4, !tbaa !48
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge10.loopexit, %bb.r
  %i.ex = phi i32 [ %.pre263, %.critedge10.loopexit ], [ %i.eb, %bb.r ] ; 2 uses
  %.val172 = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.ey = sext i32 %.val172 to i64
  %i.ez = getelementptr i8, ptr %.0124215, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 3
  %i.fb = add nuw nsw i32 %.1120216, 1            ; 2 uses
  %i.fc = icmp slt i32 %i.fb, %i.ex
  br i1 %i.fc, label %bb.r, label %._crit_edge219, !llvm.loop !118

._crit_edge219:                                   ; preds = %.critedge10, %._crit_edge
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cm, i64 64 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !41 ; 2 uses
  %.not128 = icmp eq ptr %i.fe, null
  br i1 %.not128, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge219
  %i.ff = tail call i32 @Abc_SopIsComplement(ptr noundef nonnull %i.fe) #29
  %.not129 = icmp eq i32 %i.ff, 0
  br i1 %.not129, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @Abc_SopComplement(ptr noundef %i.dw) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge219
  store ptr %i.dw, ptr %i.fd, align 8, !tbaa !41
  %.val171220 = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.fg = icmp sgt i32 %.val171220, 0
  br i1 %i.fg, label %.lr.ph223, label %.critedge12

.lr.ph223:                                        ; preds = %bb.v
  %.val175 = load ptr, ptr %i.cm, align 8, !tbaa !124
  %i.fh = getelementptr i8, ptr %i.cm, i64 32
  %.val176 = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 5 uses
  %i.fi = getelementptr i8, ptr %.val175, i64 32
  %.val175.val = load ptr, ptr %i.fi, align 8, !tbaa !35
  %i.fj = getelementptr i8, ptr %.val175.val, i64 8
  %.val175.val.val = load ptr, ptr %i.fj, align 8, !tbaa !39 ; 5 uses
  %.val171 = load i32, ptr %i.dv, align 4, !tbaa !122 ; 2 uses
  %i.fk = tail call i32 @llvm.smax.i32(i32 %.val171, i32 1)
  %smax = zext nneg i32 %i.fk to i64              ; 2 uses
  %xtraiter294 = and i64 %smax, 3                 ; 3 uses
  %i.fl = icmp slt i32 %.val171, 4
  br i1 %i.fl, label %.epil.preheader293, label %.lr.ph223.new

.lr.ph223.new:                                    ; preds = %.lr.ph223
  %unroll_iter298 = and i64 %smax, 2147483644
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph223.new
  %indvars.iv240 = phi i64 [ 0, %.lr.ph223.new ], [ %indvars.iv.next241.3, %bb.w ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph223.new ], [ %niter299.next.3, %bb.w ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv240
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !48
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %.val175.val.val, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  %.val135 = load i32, ptr %i.fr, align 8, !tbaa !44
  %i.fs = sext i32 %.val135 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fs
  store i32 -1, ptr %i.ft, align 4, !tbaa !48
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv240
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !48
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %.val175.val.val, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !40
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %.val135.1 = load i32, ptr %i.ga, align 8, !tbaa !44
  %i.gb = sext i32 %.val135.1 to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gb
  store i32 -1, ptr %i.gc, align 4, !tbaa !48
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv240
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !48
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %.val175.val.val, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !40
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %.val135.2 = load i32, ptr %i.gj, align 8, !tbaa !44
  %i.gk = sext i32 %.val135.2 to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gk
  store i32 -1, ptr %i.gl, align 4, !tbaa !48
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv240
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !48
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val175.val.val, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !40
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %.val135.3 = load i32, ptr %i.gs, align 8, !tbaa !44
  %i.gt = sext i32 %.val135.3 to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gt
  store i32 -1, ptr %i.gu, align 4, !tbaa !48
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %niter299.next.3 = add i64 %niter299, 4         ; 2 uses
  %niter299.ncmp.3.not = icmp eq i64 %niter299.next.3, %unroll_iter298
  br i1 %niter299.ncmp.3.not, label %.critedge12.loopexit.unr-lcssa, label %bb.w, !llvm.loop !119

.critedge12.loopexit.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %.critedge12, label %.epil.preheader293

.epil.preheader293:                               ; preds = %.critedge12.loopexit.unr-lcssa, %.lr.ph223
  %indvars.iv240.epil.init = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next241.3, %.critedge12.loopexit.unr-lcssa ]
  %lcmp.mod297 = icmp ne i64 %xtraiter294, 0
  tail call void @llvm.assume(i1 %lcmp.mod297)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader293
  %indvars.iv240.epil = phi i64 [ %indvars.iv240.epil.init, %.epil.preheader293 ], [ %indvars.iv.next241.epil, %bb.x ] ; 2 uses
  %epil.iter295 = phi i64 [ 0, %.epil.preheader293 ], [ %epil.iter295.next, %bb.x ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv240.epil
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !48
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %.val175.val.val, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !40
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %.val135.epil = load i32, ptr %i.ha, align 8, !tbaa !44
  %i.hb = sext i32 %.val135.epil to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.hb
  store i32 -1, ptr %i.hc, align 4, !tbaa !48
  %indvars.iv.next241.epil = add nuw nsw i64 %indvars.iv240.epil, 1
  %epil.iter295.next = add i64 %epil.iter295, 1   ; 2 uses
  %epil.iter295.cmp.not = icmp eq i64 %epil.iter295.next, %xtraiter294
  br i1 %epil.iter295.cmp.not, label %.critedge12, label %bb.x, !llvm.loop !120

.critedge12:                                      ; preds = %.critedge12.loopexit.unr-lcssa, %bb.x, %bb.v, %bb.l, %bb.k
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.hd = load ptr, ptr %i.y, align 8, !tbaa !35  ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 4
  %.val = load i32, ptr %i.he, align 4, !tbaa !38
  %i.hf = sext i32 %.val to i64
  %i.hg = icmp slt i64 %indvars.iv.next244, %i.hf
  br i1 %i.hg, label %bb.k, label %.critedge6, !llvm.loop !121

.critedge6:                                       ; preds = %.critedge12, %Vec_IntStartFull.exit
  %.not.i190 = icmp eq ptr %i.ak, null
  br i1 %.not.i190, label %Vec_IntFree.exit, label %bb.y

bb.y:                                             ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.ak) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.y
  %.not.i191 = icmp eq ptr %i.aq, null
  br i1 %.not.i191, label %Vec_IntFree.exit192, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.aq) #29
  br label %Vec_IntFree.exit192

Vec_IntFree.exit192:                              ; preds = %Vec_IntFree.exit, %bb.z
  %.not.i193 = icmp eq ptr %i.cf, null
  br i1 %.not.i193, label %Vec_IntFree.exit194, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit192
  tail call void @free(ptr noundef nonnull %i.cf) #29
  br label %Vec_IntFree.exit194

Vec_IntFree.exit194:                              ; preds = %bb.aa, %Vec_IntFree.exit192, %.critedge2
  ret void
}

declare void @Abc_ObjRemoveFanins(ptr noundef) local_unnamed_addr #2

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopStart(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Abc_SopIsComplement(ptr noundef) local_unnamed_addr #2

declare void @Abc_SopComplement(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkFxCheck(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !38  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val13.val = load ptr, ptr %i.e, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %.val to i64
end_hunk_0
