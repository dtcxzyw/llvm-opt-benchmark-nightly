Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kwsincr:bb.a
bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %.0204 = phi ptr [ %i.de, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dx, %bb.ae ], [ %i.ec, %bb.af ] ; 2 uses
  %i.em = shl i64 %indvars.iv308, 32
  %sext = add i64 %i.em, -4294967296
  %i.en = ashr exact i64 %sext, 32                ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !52
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.en
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36 ; 2 uses
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %.0204, ptr %i.es, align 8, !tbaa !44
  br label %.critedge232

bb.ak:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %.0204, ptr %i.et, align 8, !tbaa !45
  br label %.critedge232

.critedge232:                                     ; preds = %.lr.ph, %bb.v, %bb.u, %.critedge2, %bb.w, %bb.x, %bb.ak, %bb.aj
  %.2209 = phi ptr [ %i.ak, %bb.w ], [ %i.ak, %bb.aj ], [ %i.ak, %bb.ak ], [ %i.ak, %bb.x ], [ %i.ak, %.critedge2 ], [ %i.ak, %bb.u ], [ %i.ak, %bb.v ], [ %.0207269, %.lr.ph ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.2209, i64 16
  %.0210 = load ptr, ptr %i.eu, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %.critedge232, %bb.a
  %.0210.lcssa = phi ptr [ %.0210274, %bb.a ], [ %.0210, %.critedge232 ] ; 3 uses
  %i.ev = load i32, ptr %.0210.lcssa, align 8, !tbaa !28
  %.not217 = icmp eq i32 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !19 ; 2 uses
  br i1 %.not217, label %bb.al, label %._crit_edge._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.ey = shl nsw i32 %i.ex, 1
  %i.ez = or disjoint i32 %i.ey, 1
  store i32 %i.ez, ptr %.0210.lcssa, align 8, !tbaa !28
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = add nsw i32 %i.ex, 1
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %.0210.lcssa, i64 40
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !42 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !29
  %i.fg = icmp slt i32 %i.fd, %i.ff
  br i1 %i.fg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge._crit_edge
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge._crit_edge
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fj = icmp sgt i32 %i.fd, %i.fi
  br i1 %i.fj, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  store i32 %i.fd, ptr %i.fh, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.an, %bb.ao, %bb.p, %bb.q
  %.0 = phi ptr [ null, %bb.an ], [ @.str, %bb.p ], [ @.str, %bb.q ], [ null, %bb.ao ], [ @.str, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kwsprep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 14 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [256 x ptr], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %spec.select149 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  %spec.select = trunc i32 %spec.select149 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %spec.select, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sext i32 %i.e to i64                     ; 2 uses
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef %i.e) #13
  %.pre197 = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %.pre197, %bb.d ], [ %i.o, %bb.c ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 3 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = or i8 %i.aa, 2
  store i8 %i.ab, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.af, %i.ac
  %i.ah = xor i32 %i.ae, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aj, %i.an
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !20  ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = icmp sgt i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.ap, %bb.h ], [ %i.ak, %bb.g ]
  store ptr %i.at, ptr %i.w, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 5 uses
  store ptr %i.x, ptr %i.au, align 8, !tbaa !31
  %.not147.not = icmp eq ptr %i.x, null
  br i1 %.not147.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph172.preheader, label %._crit_edge175.thread

.lr.ph172.preheader:                              ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64              ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader
  %indvars.iv.next187.prol = add nsw i64 %i.ay, -1 ; 2 uses
  %.0128.prol = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %.0128.prol, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !38
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next187.prol
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !34
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %indvars.iv186.unr = phi i64 [ %i.ay, %.lr.ph172.preheader ], [ %indvars.iv.next187.prol, %.lr.ph172.prol ]
  %.0128.in170.unr = phi ptr [ %i.ax, %.lr.ph172.preheader ], [ %i.bg, %.lr.ph172.prol ]
  %i.bh = icmp eq i32 %i.av, 1
  br i1 %i.bh, label %.preheader150, label %.lr.ph172

.preheader150:                                    ; preds = %.lr.ph172, %.lr.ph172.prol.loopexit
  %.pre198 = load i32, ptr %i.d, align 8, !tbaa !29 ; 14 uses
  %.pre199.pre = load ptr, ptr %i.au, align 8, !tbaa !31 ; 7 uses
  %i.bi = icmp sgt i32 %.pre198, 0
  br i1 %i.bi, label %.lr.ph174, label %._crit_edge175.thread

.lr.ph174:                                        ; preds = %.preheader150
  %i.bj = zext nneg i32 %.pre198 to i64           ; 2 uses
  %xtraiter219 = and i64 %i.bj, 3                 ; 3 uses
  %i.bk = icmp ult i32 %.pre198, 4
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph174.new

.lr.ph174.new:                                    ; preds = %.lr.ph174
  %unroll_iter = and i64 %i.bj, 2147483644
  br label %bb.k

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.1, %.lr.ph172 ], [ %indvars.iv186.unr, %.lr.ph172.prol.loopexit ] ; 3 uses
  %.0128.in170 = phi ptr [ %i.cb, %.lr.ph172 ], [ %.0128.in170.unr, %.lr.ph172.prol.loopexit ]
  %.0128 = load ptr, ptr %.0128.in170, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.0128, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !38
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.bq = getelementptr i8, ptr %i.bp, i64 %indvars.iv186
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !34
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %indvars.iv.next187.1 = add nsw i64 %indvars.iv186, -2 ; 2 uses
  %.0128.1 = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.0128.1, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !38
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv.next187.1
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !34
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = icmp sgt i64 %indvars.iv186, 2
  br i1 %i.cc, label %.lr.ph172, label %.preheader150, !llvm.loop !54

bb.k:                                             ; preds = %bb.k, %.lr.ph174.new
  %indvars.iv189 = phi i64 [ 0, %.lr.ph174.new ], [ %indvars.iv.next190.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph174.new ], [ %niter.next.3, %bb.k ]
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %1 = trunc i64 %indvars.iv.next190 to i32
  %2 = sub i32 %.pre198, %1
  %3 = trunc i32 %2 to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv189
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !34
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  store i8 %3, ptr %i.cg, align 1, !tbaa !34
  %indvars.iv.next190.1 = or disjoint i64 %indvars.iv189, 2 ; 2 uses
  %4 = trunc i64 %indvars.iv.next190.1 to i32
  %5 = sub i32 %.pre198, %4
  %6 = trunc i32 %5 to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  store i8 %6, ptr %i.ck, align 1, !tbaa !34
  %indvars.iv.next190.2 = or disjoint i64 %indvars.iv189, 3 ; 2 uses
  %7 = trunc i64 %indvars.iv.next190.2 to i32
  %8 = sub i32 %.pre198, %7
  %9 = trunc i32 %8 to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190.1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  store i8 %9, ptr %i.co, align 1, !tbaa !34
  %indvars.iv.next190.3 = add nuw nsw i64 %indvars.iv189, 4 ; 3 uses
  %10 = trunc i64 %indvars.iv.next190.3 to i32
  %11 = sub i32 %.pre198, %10
  %12 = trunc i32 %11 to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190.2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !34
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  store i8 %12, ptr %i.cs, align 1, !tbaa !34
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge175.unr-lcssa, label %bb.k, !llvm.loop !55

._crit_edge175.thread:                            ; preds = %.preheader150, %bb.j
  %.ph = phi i32 [ %.pre198, %.preheader150 ], [ %i.av, %bb.j ] ; 2 uses
  %i.ct = add nsw i32 %.ph, -2
  br label %._crit_edge179

._crit_edge175.unr-lcssa:                         ; preds = %bb.k
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %._crit_edge175, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge175.unr-lcssa, %.lr.ph174
  %indvars.iv189.epil.init = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next190.3, %._crit_edge175.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter219, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv189.epil = phi i64 [ %indvars.iv189.epil.init, %.epil.preheader ], [ %indvars.iv.next190.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %indvars.iv.next190.epil = add nuw nsw i64 %indvars.iv189.epil, 1 ; 2 uses
  %13 = trunc i64 %indvars.iv.next190.epil to i32
  %14 = sub i32 %.pre198, %13
  %15 = trunc i32 %14 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv189.epil
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  store i8 %15, ptr %i.cx, align 1, !tbaa !34
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter219
  br i1 %epil.iter.cmp.not, label %._crit_edge175, label %bb.l, !llvm.loop !56

._crit_edge175:                                   ; preds = %bb.l, %._crit_edge175.unr-lcssa
  %i.cy = zext nneg i32 %.pre198 to i64
  %i.cz = getelementptr i8, ptr %.pre199.pre, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %.not218 = icmp eq i32 %.pre198, 1
  br i1 %.not218, label %._crit_edge179, label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %._crit_edge175
  %i.dc = add nsw i32 %.pre198, -2
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.m
  %.2132176 = phi i32 [ %i.dh, %bb.m ], [ %i.dc, %.lr.ph178.preheader ] ; 4 uses
  %i.dd = zext nneg i32 %.2132176 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !34
  %i.dg = icmp eq i8 %i.df, %i.db
  br i1 %i.dg, label %._crit_edge179, label %bb.m

bb.m:                                             ; preds = %.lr.ph178
  %i.dh = add nsw i32 %.2132176, -1
  %i.di = icmp sgt i32 %.2132176, 0
  br i1 %i.di, label %.lr.ph178, label %._crit_edge179, !llvm.loop !57

._crit_edge179:                                   ; preds = %bb.m, %.lr.ph178, %._crit_edge175.thread, %._crit_edge175
  %i.dj = phi i32 [ 1, %._crit_edge175 ], [ %.ph, %._crit_edge175.thread ], [ %.pre198, %.lr.ph178 ], [ %.pre198, %bb.m ]
  %.2132.lcssa = phi i32 [ -1, %._crit_edge175 ], [ %i.ct, %._crit_edge175.thread ], [ -1, %bb.m ], [ %.2132176, %.lr.ph178 ]
  %.neg = xor i32 %.2132.lcssa, -1
  %i.dk = add i32 %i.dj, %.neg
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2424
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !46
  %.pre200 = load ptr, ptr %i.i, align 8, !tbaa !32
  br label %bb.aa

bb.n:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25, !nonnull !64, !noundef !64 ; 2 uses
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !33
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.n, %._crit_edge
  %.1129157 = phi ptr [ %i.ev, %._crit_edge ], [ %i.dn, %bb.n ] ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1129157, i64 8 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !35
  call fastcc void @enqueue(ptr noundef %i.dp, ptr noundef %i.b)
  %i.dq = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1129157, i64 44
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %.1129157, i64 48
  store i32 %i.dq, ptr %i.ds, align 8, !tbaa !65
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %.1129157, i64 40 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !42
  call fastcc void @treedelta(ptr noundef %i.dt, i32 noundef %i.dv, ptr noundef %i.a)
  %i.dw = load ptr, ptr %i.do, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.1129157, i64 32 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.dz = load ptr, ptr %i.dm, align 8, !tbaa !25
  call fastcc void @treefails(ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef %i.dz)
  %.0153 = load ptr, ptr %i.dx, align 8, !tbaa !47 ; 2 uses
  %.not144154 = icmp eq ptr %.0153, null
  br i1 %.not144154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph159
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.u
  %.0155 = phi ptr [ %.0153, %.lr.ph ], [ %.0, %bb.u ] ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0155, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !35
  %i.ed = call fastcc i32 @hasevery(ptr noundef %i.ec, ptr noundef %i.ea)
  %.not145 = icmp eq i32 %i.ed, 0
  br i1 %.not145, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ee = load i32, ptr %i.du, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %.0155, i64 40
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !42
  %i.eh = sub nsw i32 %i.ee, %i.eg                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0155, i64 44 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !43
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.el = load i32, ptr %.1129157, align 8, !tbaa !28
  %.not146 = icmp eq i32 %i.el, 0
  br i1 %.not146, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %.0155, i64 48 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !65
  %i.eo = load i32, ptr %i.du, align 8, !tbaa !42
  %i.ep = getelementptr inbounds nuw i8, ptr %.0155, i64 40
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !42
  %i.er = sub nsw i32 %i.eo, %i.eq                ; 2 uses
  %i.es = icmp sgt i32 %i.en, %i.er
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.er, ptr %i.em, align 8, !tbaa !65
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %.0155, i64 32
  %.0 = load ptr, ptr %i.et, align 8, !tbaa !47   ; 2 uses
  %.not144 = icmp eq ptr %.0, null
  br i1 %.not144, label %._crit_edge, label %bb.o, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.u, %.lr.ph159
  %i.eu = getelementptr inbounds nuw i8, ptr %.1129157, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !48 ; 2 uses
  %.not = icmp eq ptr %i.ev, null
  br i1 %.not, label %._crit_edge160.loopexit, label %.lr.ph159, !llvm.loop !59

._crit_edge160.loopexit:                          ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.dm, align 8, !tbaa !25 ; 2 uses
  %.2.in161 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.2162 = load ptr, ptr %.2.in161, align 8, !tbaa !48 ; 2 uses
  %.not142163 = icmp eq ptr %.2162, null
  br i1 %.not142163, label %.preheader152, label %.lr.ph166

.preheader152:                                    ; preds = %bb.y, %._crit_edge160.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false), !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !35
  call fastcc void @treenext(ptr noundef %i.ex, ptr noundef %i.c)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !32 ; 6 uses
  %.not143 = icmp eq ptr %i.ez, null
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  br i1 %.not143, label %bb.z, label %.preheader151

.lr.ph166:                                        ; preds = %._crit_edge160.loopexit, %bb.y
  %.2164 = phi ptr [ %.2, %bb.y ], [ %.2162, %._crit_edge160.loopexit ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.2164, i64 48 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !65 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2164, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !65 ; 3 uses
  %i.fh = icmp sgt i32 %i.fc, %i.fg
  br i1 %i.fh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph166
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph166
  %i.fi = phi i32 [ %i.fg, %bb.v ], [ %i.fc, %.lr.ph166 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2164, i64 44 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !43
  %i.fl = icmp sgt i32 %i.fk, %i.fi
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.2.in = getelementptr inbounds nuw i8, ptr %.2164, i64 24
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !48  ; 2 uses
  %.not142 = icmp eq ptr %.2, null
  br i1 %.not142, label %.preheader152, label %.lr.ph166, !llvm.loop !60

.preheader151:                                    ; preds = %.preheader152, %.preheader151
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader151 ], [ 0, %.preheader152 ] ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !33
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !33
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !33
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next.1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !34
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !33
end_hunk_0
