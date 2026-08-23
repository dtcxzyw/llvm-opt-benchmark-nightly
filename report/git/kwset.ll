Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kwsincr:bb.a
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.en
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !37 ; 2 uses
  br i1 %i.eq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %.0204, ptr %i.es, align 8, !tbaa !47
  br label %.critedge232

bb.ak:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %.0204, ptr %i.et, align 8, !tbaa !48
  br label %.critedge232

.critedge232:                                     ; preds = %.lr.ph, %bb.v, %bb.u, %.critedge2, %bb.w, %bb.x, %bb.ak, %bb.aj
  %.2209 = phi ptr [ %i.ak, %bb.w ], [ %i.ak, %bb.aj ], [ %i.ak, %bb.ak ], [ %i.ak, %bb.x ], [ %i.ak, %.critedge2 ], [ %i.ak, %bb.u ], [ %i.ak, %bb.v ], [ %.0207269, %.lr.ph ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.2209, i64 16
  %.0210 = load ptr, ptr %i.eu, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %.critedge232, %bb.a
  %.0210.lcssa = phi ptr [ %.0210274, %bb.a ], [ %.0210, %.critedge232 ] ; 3 uses
  %i.ev = load i32, ptr %.0210.lcssa, align 8, !tbaa !26
  %.not217 = icmp eq i32 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !12 ; 2 uses
  br i1 %.not217, label %bb.al, label %._crit_edge._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.ey = shl nsw i32 %i.ex, 1
  %i.ez = or disjoint i32 %i.ey, 1
  store i32 %i.ez, ptr %.0210.lcssa, align 8, !tbaa !26
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = add nsw i32 %i.ex, 1
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %.0210.lcssa, i64 40
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !44 ; 4 uses
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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
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
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !38
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next187.prol
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !35
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !36
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

._crit_edge175.thread:                            ; preds = %.preheader150, %bb.j
  %i.bj = phi i32 [ %.pre198, %.preheader150 ], [ %i.av, %bb.j ] ; 2 uses
  %i.bk = add nsw i32 %i.bj, -2
  br label %._crit_edge179

.lr.ph174:                                        ; preds = %.preheader150
  %i.bl = zext nneg i32 %.pre198 to i64
  %wide.trip.count = zext nneg i32 %.pre198 to i64 ; 2 uses
  %xtraiter223 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.bm = icmp ult i32 %.pre198, 4
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph174.new

.lr.ph174.new:                                    ; preds = %.lr.ph174
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.k

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.1, %.lr.ph172 ], [ %indvars.iv186.unr, %.lr.ph172.prol.loopexit ] ; 3 uses
  %.0128.in170 = phi ptr [ %i.cd, %.lr.ph172 ], [ %.0128.in170.unr, %.lr.ph172.prol.loopexit ]
  %.0128 = load ptr, ptr %.0128.in170, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.0128, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !38
  %i.br = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.bs = getelementptr i8, ptr %i.br, i64 %indvars.iv186
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !35
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %indvars.iv.next187.1 = add nsw i64 %indvars.iv186, -2 ; 2 uses
  %.0128.1 = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %.0128.1, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !38
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next187.1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !35
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = icmp sgt i64 %indvars.iv186, 2
  br i1 %i.ce, label %.lr.ph172, label %.preheader150, !llvm.loop !51

bb.k:                                             ; preds = %bb.k, %.lr.ph174.new
  %indvars.iv189 = phi i64 [ 0, %.lr.ph174.new ], [ %indvars.iv.next190.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph174.new ], [ %niter.next.3, %bb.k ]
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1 ; 2 uses
  %i.cf = trunc i64 %indvars.iv.next190 to i32
  %i.cg = sub i32 %.pre198, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv189
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !35
  %indvars.iv.next190.1 = or disjoint i64 %indvars.iv189, 2 ; 2 uses
  %i.cm = trunc i64 %indvars.iv.next190.1 to i32
  %i.cn = sub i32 %.pre198, %i.cm
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !35
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !35
  %indvars.iv.next190.2 = or disjoint i64 %indvars.iv189, 3 ; 2 uses
  %i.ct = trunc i64 %indvars.iv.next190.2 to i32
  %i.cu = sub i32 %.pre198, %i.ct
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190.1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !35
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !35
  %indvars.iv.next190.3 = add nuw nsw i64 %indvars.iv189, 4 ; 3 uses
  %i.da = trunc i64 %indvars.iv.next190.3 to i32
  %i.db = sub i32 %.pre198, %i.da
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv.next190.2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !35
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge175.unr-lcssa, label %bb.k, !llvm.loop !52

._crit_edge175.unr-lcssa:                         ; preds = %bb.k
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %._crit_edge175, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge175.unr-lcssa, %.lr.ph174
  %indvars.iv189.epil.init = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next190.3, %._crit_edge175.unr-lcssa ]
  %lcmp.mod225 = icmp ne i64 %xtraiter223, 0
  tail call void @llvm.assume(i1 %lcmp.mod225)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv189.epil = phi i64 [ %indvars.iv189.epil.init, %.epil.preheader ], [ %indvars.iv.next190.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %indvars.iv.next190.epil = add nuw nsw i64 %indvars.iv189.epil, 1 ; 2 uses
  %i.dh = trunc i64 %indvars.iv.next190.epil to i32
  %i.di = sub i32 %.pre198, %i.dh
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %indvars.iv189.epil
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !35
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  store i8 %i.dj, ptr %i.dn, align 1, !tbaa !35
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter223
  br i1 %epil.iter.cmp.not, label %._crit_edge175, label %bb.l, !llvm.loop !53

._crit_edge175:                                   ; preds = %bb.l, %._crit_edge175.unr-lcssa
  %i.do = getelementptr i8, ptr %.pre199.pre, i64 %i.bl
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !35
  %.not222 = icmp eq i32 %.pre198, 1
  br i1 %.not222, label %._crit_edge179, label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %._crit_edge175
  %i.dr = add nsw i32 %.pre198, -2
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.m
  %.2132176 = phi i32 [ %2, %bb.m ], [ %i.dr, %.lr.ph178.preheader ] ; 4 uses
  %1 = zext nneg i32 %.2132176 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre199.pre, i64 %1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !35
  %i.du = icmp eq i8 %i.dt, %i.dq
  br i1 %i.du, label %._crit_edge179, label %bb.m

bb.m:                                             ; preds = %.lr.ph178
  %2 = add nsw i32 %.2132176, -1
  %i.dv = icmp sgt i32 %.2132176, 0
  br i1 %i.dv, label %.lr.ph178, label %._crit_edge179, !llvm.loop !55

._crit_edge179:                                   ; preds = %bb.m, %.lr.ph178, %._crit_edge175.thread, %._crit_edge175
  %i.dw = phi i32 [ 1, %._crit_edge175 ], [ %i.bj, %._crit_edge175.thread ], [ %.pre198, %.lr.ph178 ], [ %.pre198, %bb.m ]
  %.2132.lcssa = phi i32 [ -1, %._crit_edge175 ], [ %i.bk, %._crit_edge175.thread ], [ -1, %bb.m ], [ %.2132176, %.lr.ph178 ]
  %.neg = xor i32 %.2132.lcssa, -1
  %i.dx = add i32 %i.dw, %.neg
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2424
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !56
  %.pre200 = load ptr, ptr %i.i, align 8, !tbaa !32
  br label %bb.aa

bb.n:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !25, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !33
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.n, %._crit_edge
  %.1129157 = phi ptr [ %i.fi, %._crit_edge ], [ %i.ea, %bb.n ] ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1129157, i64 8 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !36
  call fastcc void @enqueue(ptr noundef %i.ec, ptr noundef %i.b)
  %i.ed = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1129157, i64 44
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %.1129157, i64 48
  store i32 %i.ed, ptr %i.ef, align 8, !tbaa !58
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %.1129157, i64 40 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !44
  call fastcc void @treedelta(ptr noundef %i.eg, i32 noundef %i.ei, ptr noundef %i.a)
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %.1129157, i64 32 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !59
  %i.em = load ptr, ptr %i.dz, align 8, !tbaa !25
  call fastcc void @treefails(ptr noundef %i.ej, ptr noundef %i.el, ptr noundef %i.em)
  %.0153 = load ptr, ptr %i.ek, align 8, !tbaa !59 ; 2 uses
  %.not144154 = icmp eq ptr %.0153, null
  br i1 %.not144154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph159
  %i.en = load ptr, ptr %i.eb, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.u
  %.0155 = phi ptr [ %.0153, %.lr.ph ], [ %.0, %bb.u ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0155, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  %i.eq = call fastcc i32 @hasevery(ptr noundef %i.ep, ptr noundef %i.en)
  %.not145 = icmp eq i32 %i.eq, 0
  br i1 %.not145, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %i.eh, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %.0155, i64 40
  %i.et = load i32, ptr %i.es, align 8, !tbaa !44
  %i.eu = sub nsw i32 %i.er, %i.et                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0155, i64 44 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !45
  %i.ex = icmp slt i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !45
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.ey = load i32, ptr %.1129157, align 8, !tbaa !26
  %.not146 = icmp eq i32 %i.ey, 0
  br i1 %.not146, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %.0155, i64 48 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !58
  %i.fb = load i32, ptr %i.eh, align 8, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %.0155, i64 40
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !44
  %i.fe = sub nsw i32 %i.fb, %i.fd                ; 2 uses
  %i.ff = icmp sgt i32 %i.fa, %i.fe
  br i1 %i.ff, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.fe, ptr %i.ez, align 8, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %.0155, i64 32
  %.0 = load ptr, ptr %i.fg, align 8, !tbaa !59   ; 2 uses
  %.not144 = icmp eq ptr %.0, null
  br i1 %.not144, label %._crit_edge, label %bb.o, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.u, %.lr.ph159
  %i.fh = getelementptr inbounds nuw i8, ptr %.1129157, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.fi, null
  br i1 %.not, label %._crit_edge160.loopexit, label %.lr.ph159, !llvm.loop !62

._crit_edge160.loopexit:                          ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  %.2.in161 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.2162 = load ptr, ptr %.2.in161, align 8, !tbaa !61 ; 2 uses
  %.not142163 = icmp eq ptr %.2162, null
  br i1 %.not142163, label %.preheader152, label %.lr.ph166

.preheader152:                                    ; preds = %bb.y, %._crit_edge160.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false), !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36
  call fastcc void @treenext(ptr noundef %i.fk, ptr noundef %i.c)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !32 ; 6 uses
  %.not143 = icmp eq ptr %i.fm, null
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  br i1 %.not143, label %bb.z, label %.preheader151

.lr.ph166:                                        ; preds = %._crit_edge160.loopexit, %bb.y
  %.2164 = phi ptr [ %.2, %bb.y ], [ %.2162, %._crit_edge160.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.2164, i64 48 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !58 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.2164, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !58 ; 3 uses
  %i.fu = icmp sgt i32 %i.fp, %i.ft
  br i1 %i.fu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph166
  store i32 %i.ft, ptr %i.fo, align 8, !tbaa !58
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph166
  %i.fv = phi i32 [ %i.ft, %bb.v ], [ %i.fp, %.lr.ph166 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.2164, i64 44 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !45
  %i.fy = icmp sgt i32 %i.fx, %i.fv
  br i1 %i.fy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.2.in = getelementptr inbounds nuw i8, ptr %.2164, i64 24
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !61  ; 2 uses
  %.not142 = icmp eq ptr %.2, null
  br i1 %.not142, label %.preheader152, label %.lr.ph166, !llvm.loop !63

.preheader151:                                    ; preds = %.preheader152, %.preheader151
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader151 ], [ 0, %.preheader152 ] ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !35
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !33
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !35
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !33
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !33
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !35
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !33
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.1
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !33
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !35
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !33
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.2
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader151, !llvm.loop !64

bb.z:                                             ; preds = %.preheader152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.fn, ptr noundef nonnull readonly align 16 dereferenceable(2048) %i.c, i64 2048, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader151, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge179, %.loopexit
  %i.gx = phi ptr [ %.pre200, %._crit_edge179 ], [ %i.fm, %.loopexit ] ; 5 uses
  %.not148 = icmp eq ptr %i.gx, null
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  br i1 %.not148, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.aa, %.preheader
  %indvars.iv193.a = phi i64 [ %indvars.iv.next194.3, %.preheader ], [ 0, %bb.aa ] ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv193.a
end_hunk_0
