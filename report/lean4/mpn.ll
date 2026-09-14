Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/mpn?download=true
inline.NumInlined: 138
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4lean7mpn_divEPKjmS1_mPjS2_:bb.a
  %i.g = sub i64 %i.f, %3
  %i.h = shl nuw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.h, i1 false), !tbaa !12
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph115.preheader, %.preheader103
  %xtraiter227 = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter230 = and i64 %3, -2
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.preheader.new
  %.068116 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.u, %bb.d ] ; 5 uses
  %niter231 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter231.next.1, %bb.d ]
  %i.j = icmp ult i64 %.068116, %1
  br i1 %i.j, label %bb.b, label %.preheader.1

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.068116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.068116
  store i32 %i.m, ptr %i.n, align 4, !tbaa !12
  %i.o = or disjoint i64 %.068116, 1              ; 3 uses
  %i.p = icmp ult i64 %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.1
  %i.s = phi i32 [ %i.r, %bb.c ], [ 0, %.preheader.1 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.o
  store i32 %i.s, ptr %i.t, align 4, !tbaa !12
  %i.u = add nuw i64 %.068116, 2                  ; 2 uses
  %niter231.next.1 = add i64 %niter231, 2         ; 2 uses
  %niter231.ncmp.1 = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.a
  %i.v = icmp eq i64 %1, 1
  %i.w = icmp eq i64 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.x = load i32, ptr %0, align 4, !tbaa !12
  %i.y = load i32, ptr %2, align 4, !tbaa !12
  %i.z = udiv i32 %i.x, %i.y
  store i32 %i.z, ptr %4, align 4, !tbaa !12
  %i.aa = load i32, ptr %0, align 4, !tbaa !12
  %i.ab = load i32, ptr %2, align 4, !tbaa !12
  %i.ac = urem i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %5, align 4, !tbaa !12
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ad = icmp eq i64 %1, %3
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %1
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %1
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = icmp ult i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4, !tbaa !12
  %.not118 = icmp eq i64 %1, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %bb.h
  %min.iters.check191 = icmp ult i64 %1, 8
  %i.al = sub i64 %i.a, %i.b
  %diff.check189 = icmp ugt i64 %i.al, -32
  %or.cond202 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond202, label %.lr.ph113.preheader206, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph113.preheader
  %n.vec193 = and i64 %1, -8                      ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index195 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.am, align 4, !tbaa !12
  %wide.load197 = load <4 x i32>, ptr %i.an, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index195 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load196, ptr %i.ao, align 4, !tbaa !12
  store <4 x i32> %wide.load197, ptr %i.ap, align 4, !tbaa !12
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.aq, label %middle.block199, label %vector.body194, !llvm.loop !42

middle.block199:                                  ; preds = %vector.body194
  %cmp.n200 = icmp eq i64 %1, %n.vec193
  br i1 %cmp.n200, label %.loopexit, label %.lr.ph113.preheader206

.lr.ph113.preheader206:                           ; preds = %.lr.ph113.preheader, %middle.block199
  %.064111.ph = phi i64 [ 0, %.lr.ph113.preheader ], [ %n.vec193, %middle.block199 ] ; 3 uses
  %xtraiter224 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %.lr.ph113.preheader206, %.lr.ph113.prol
  %.064111.prol = phi i64 [ %i.au, %.lr.ph113.prol ], [ %.064111.ph, %.lr.ph113.preheader206 ] ; 3 uses
  %prol.iter226 = phi i64 [ %prol.iter226.next, %.lr.ph113.prol ], [ 0, %.lr.ph113.preheader206 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.064111.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.064111.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = add nuw i64 %.064111.prol, 1            ; 2 uses
  %prol.iter226.next = add i64 %prol.iter226, 1   ; 2 uses
  %prol.iter226.cmp.not = icmp eq i64 %prol.iter226.next, %xtraiter224
  br i1 %prol.iter226.cmp.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol, !llvm.loop !43

.lr.ph113.prol.loopexit:                          ; preds = %.lr.ph113.prol, %.lr.ph113.preheader206
  %.064111.unr = phi i64 [ %.064111.ph, %.lr.ph113.preheader206 ], [ %i.au, %.lr.ph113.prol ]
  %i.av = sub i64 %.064111.ph, %1
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113
  %.064111 = phi i64 [ %i.bm, %.lr.ph113 ], [ %.064111.unr, %.lr.ph113.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.064111
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.064111
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !12
  %i.ba = add nuw i64 %.064111, 1                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !12
  %i.be = add nuw i64 %.064111, 2                 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.be
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = add nuw i64 %.064111, 3                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bi
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !12
  %i.bm = add nuw i64 %.064111, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bm, %1
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph113, !llvm.loop !44

bb.i:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.bn, ptr %6, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 16, ptr %i.bp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.bq, ptr %7, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.br, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 16, ptr %i.bs, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.bt, ptr %8, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 16, ptr %i.bv, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.bw, ptr %9, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 16, ptr %i.by, align 8, !tbaa !23
  %i.bz = invoke fastcc noundef i64 @_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %bb.j unwind label %.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %7, align 8, !tbaa !21
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %.val = load ptr, ptr %6, align 8               ; 2 uses
  %.val77 = load i64, ptr %i.bo, align 8, !tbaa !22
  %.01.i = add i64 %.val77, -1                    ; 2 uses
  %.not2.i = icmp eq i64 %.01.i, 0
  br i1 %.not2.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %.0.in3.i = phi i64 [ %.01.i, %.lr.ph.i ], [ %i.ci, %bb.p ] ; 2 uses
  %i.cd = and i64 %.0.in3.i, 4294967295
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cd ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = add i64 %.0.in3.i, -1                   ; 4 uses
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cj ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.ch, %i.cm            ; 3 uses
  %i.co = udiv i64 %i.cn, %i.cc                   ; 3 uses
  %.recomposed = urem i64 %i.cn, %i.cc            ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 4294967295
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = call ptr @__cxa_allocate_exception(i64 40) #14 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.ct, align 8, !tbaa !28
  store i8 0, ptr %i.cs, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.cq, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cu = mul nuw i64 %i.co, %i.cc
  %i.cv = icmp ugt i64 %i.cu, %i.cn
  %i.cw = trunc i64 %.recomposed to i32
  store i32 %i.cw, ptr %i.ck, align 4, !tbaa !12
  %i.cx = lshr i64 %.recomposed, 32
  %i.cy = trunc nuw i64 %i.cx to i32
  store i32 %i.cy, ptr %i.ce, align 4, !tbaa !12
  %i.cz = trunc nuw i64 %i.co to i32              ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci ; 2 uses
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !12
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = add i32 %i.cz, -1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !12
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.dd = add i32 %i.dc, %i.cb
  store i32 %i.dd, ptr %i.ce, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %bb.l, !llvm.loop !3

.loopexit105:                                     ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.i, %bb.m, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit105
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.de = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.bw
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %i.by, align 8, !tbaa !23
  %i.dg = shl i64 %i.df, 2
  call void @_ZdaPvm(ptr noundef %i.de, i64 noundef %i.dg) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

bb.s:                                             ; preds = %bb.j
  %i.dh = load i64, ptr %i.bo, align 8, !tbaa !22 ; 3 uses
  %i.di = load i64, ptr %i.br, align 8, !tbaa !22 ; 23 uses
  %i.dj = add i64 %i.di, 1                        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.dk = and i64 %i.dj, 4294967295
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %8, i64 noundef %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.dl = xor i64 %i.di, -1
  %i.dm = add i64 %i.dh, %i.dl                    ; 2 uses
  %.not8.i = icmp eq i64 %i.dm, -1
  br i1 %.not8.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.noexc82
  %i.dn = add i64 %i.di, 4294967295
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = add i64 %i.di, 4294967294
  %i.dq = and i64 %i.dp, 4294967295
  %.not5060.i.i = icmp eq i64 %i.di, 0
  %.not.i.i = icmp eq i64 %i.dj, 0
  %i.dr = add i64 %i.di, 2
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dj) ; 2 uses
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !21
  %.pre12.i = load ptr, ptr %7, align 8, !tbaa !21
  %i.du = trunc i64 %i.dh to i32
  %i.dv = trunc i64 %i.di to i32
  %i.dw = trunc i64 %i.dh to i32
  %i.dx = trunc i64 %i.di to i32
  %i.dy = xor i32 %i.dx, -1
  %i.dz = add i32 %i.dy, %i.dw
  %i.ea = add i64 %i.di, 1                        ; 2 uses
  %xtraiter = and i64 %i.di, 1
  %i.eb = icmp eq i64 %i.di, 1
  %unroll_iter = and i64 %i.di, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod211 = trunc i64 %i.di to i1
  %i.ec = icmp eq i64 %i.di, 0
  %unroll_iter216 = and i64 %i.ea, -2
  %i.ed = and i64 %i.di, 1
  %lcmp.mod213.not.not = icmp eq i64 %i.ed, 0
  %lcmp.mod215 = trunc i64 %i.ea to i1
  %min.iters.check = icmp ult i64 %i.dj, 12
  %i.ee = trunc i64 %i.di to i32
  %i.ef = sub i32 %i.dv, %i.du
  %i.eg = icmp ugt i64 %i.di, 4294967295
  %n.vec = and i64 %i.dj, 8589934584              ; 3 uses
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  %i.eh = and i64 %i.di, 1
  %lcmp.mod219.not.not = icmp eq i64 %i.eh, 0
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph.i80
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph.i80 ] ; 3 uses
  %i.ei = phi ptr [ %i.kx, %.loopexit.i ], [ %.pre12.i, %.lr.ph.i80 ] ; 7 uses
  %i.ej = phi ptr [ %i.ky, %.loopexit.i ], [ %.pre.i, %.lr.ph.i80 ] ; 6 uses
  %.0649.i = phi i64 [ %i.kz, %.loopexit.i ], [ %i.dm, %.lr.ph.i80 ] ; 10 uses
  %i.ek = sub i32 %i.dz, %indvar
  %i.el = zext i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = add i64 %.0649.i, %i.di                 ; 3 uses
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !12
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  %i.et = add i64 %i.en, 4294967295
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %i.ex = zext i32 %i.ew to i64
  %i.ey = or disjoint i64 %i.es, %i.ex            ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.do
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  %i.fb = zext i32 %i.fa to i64                   ; 3 uses
  %i.fc = udiv i64 %i.ey, %i.fb
  %i.fd = urem i64 %i.ey, %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dq
  %i.ff = add i64 %i.en, 4294967294
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fg
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.066.i = phi i64 [ %i.fc, %bb.t ], [ %i.fr, %bb.w ] ; 4 uses
  %.065.i = phi i64 [ %i.fd, %bb.t ], [ %i.fs, %bb.w ] ; 2 uses
  %i.fi = icmp ugt i64 %.066.i, 4294967295
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw i64 %.066.i, %i.fk
  %i.fm = shl nuw i64 %.065.i, 32
  %i.fn = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fo = zext i32 %i.fn to i64
  %i.fp = or disjoint i64 %i.fm, %i.fo
  %i.fq = icmp ugt i64 %i.fl, %i.fp
  br i1 %i.fq, label %bb.w, label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fr = add i64 %.066.i, -1                     ; 2 uses
  %i.fs = add nuw nsw i64 %.065.i, %i.fb          ; 2 uses
  %i.ft = icmp samesign ult i64 %i.fs, 4294967296
  br i1 %i.ft, label %bb.u, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.v
  %.1.i = phi i64 [ %i.fr, %bb.w ], [ %.066.i, %bb.v ] ; 2 uses
  %i.fu = trunc i64 %.1.i to i32                  ; 3 uses
  %i.fv = load ptr, ptr %8, align 8, !tbaa !21    ; 8 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !12
  %invariant.gep4359.i.i = getelementptr i8, ptr %i.fv, i64 4 ; 3 uses
  br i1 %.not5060.i.i, label %.lr.ph.i69.preheader.i, label %.lr.ph48.split.us.i.preheader.i

.lr.ph48.split.us.i.preheader.i:                  ; preds = %.lr.ph.i.i
  %i.fw = and i64 %.1.i, 4294967295               ; 3 uses
  br i1 %i.eb, label %.lr.ph48.split.us.i.i.epil.preheader, label %.lr.ph48.split.us.i.i

.lr.ph48.split.us.i.i:                            ; preds = %.lr.ph48.split.us.i.preheader.i, %bb.x
  %.03447.us.i.i = phi i64 [ %i.gm, %bb.x ], [ 0, %.lr.ph48.split.us.i.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.x ], [ 0, %.lr.ph48.split.us.i.preheader.i ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.03447.us.i.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !12 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph48.split.us.i.i.1, label %.preheader.us.i.i

.lr.ph48.split.us.i.i.1:                          ; preds = %.preheader.us.i.i, %.lr.ph48.split.us.i.i
  %.sink.i.i = phi i32 [ %i.gu, %.preheader.us.i.i ], [ 0, %.lr.ph48.split.us.i.i ]
  %gep46.us.i.i = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %.03447.us.i.i
  store i32 %.sink.i.i, ptr %gep46.us.i.i, align 4, !tbaa !12
  %i.ga = or disjoint i64 %.03447.us.i.i, 1       ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !12 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.x, label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %.lr.ph48.split.us.i.i.1
  %invariant.gep.us.i.i.1 = getelementptr [4 x i8], ptr %i.fv, i64 %i.ga ; 2 uses
  %i.ge = zext i32 %i.gc to i64
  %i.gf = mul nuw i64 %i.fw, %i.ge
  %i.gg = load i32, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !12
  %i.gh = zext i32 %i.gg to i64
  %i.gi = add nuw i64 %i.gf, %i.gh                ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  store i32 %i.gj, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !12
  %i.gk = lshr i64 %i.gi, 32
  %i.gl = trunc nuw i64 %i.gk to i32
  br label %bb.x

bb.x:                                             ; preds = %.preheader.us.i.i.1, %.lr.ph48.split.us.i.i.1
  %.sink.i.i.1 = phi i32 [ %i.gl, %.preheader.us.i.i.1 ], [ 0, %.lr.ph48.split.us.i.i.1 ]
  %gep46.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %i.ga
  store i32 %.sink.i.i.1, ptr %gep46.us.i.i.1, align 4, !tbaa !12
  %i.gm = add nuw i64 %.03447.us.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, label %.lr.ph48.split.us.i.i, !llvm.loop !2

.preheader.us.i.i:                                ; preds = %.lr.ph48.split.us.i.i
  %invariant.gep.us.i.i = getelementptr [4 x i8], ptr %i.fv, i64 %.03447.us.i.i ; 2 uses
  %i.gn = zext i32 %i.fy to i64
  %i.go = mul nuw i64 %i.fw, %i.gn
  %i.gp = load i32, ptr %invariant.gep.us.i.i, align 4, !tbaa !12
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add nuw i64 %i.go, %i.gq                ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %invariant.gep.us.i.i, align 4, !tbaa !12
  %i.gt = lshr i64 %i.gr, 32
  %i.gu = trunc nuw i64 %i.gt to i32
  br label %.lr.ph48.split.us.i.i.1

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa:     ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_:bb.a
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12
  %i.bg = and i64 %i.bd, 4294967295
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !12
  %i.bi = add nuw i64 %.06384, 2                  ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = and i64 %i.bi, 4294967295
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !12
  %i.bn = add nuw i64 %.06384, 3                  ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bq = and i64 %i.bn, 4294967295
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bq
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !12
  %i.bs = add nuw i64 %.06384, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bs, %1
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph86, !llvm.loop !62

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %.06287 = phi i64 [ %i.cm, %scalar.ph148 ], [ %.06287.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06287
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = and i64 %.06287, 4294967295
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !12
  %i.bx = add nuw i64 %.06287, 1                  ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !12
  %i.ca = and i64 %i.bx, 4294967295
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ca
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !12
  %i.cc = add nuw i64 %.06287, 2                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !12
  %i.ch = add nuw i64 %.06287, 3                  ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12
  %i.ck = and i64 %i.ch, 4294967295
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ck
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !12
  %i.cm = add nuw i64 %.06287, 4                  ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %i.cm, %3
  br i1 %exitcond91.not.3, label %.loopexit, label %scalar.ph148, !llvm.loop !63

bb.d:                                             ; preds = %.critedge
  %.not67 = icmp eq i64 %1, 0
  br i1 %.not67, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = add i64 %1, -1                          ; 9 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = trunc i64 %.064.lcssa to i32            ; 11 uses
  %i.cr = sub i32 32, %i.cq                       ; 9 uses
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = and i64 %1, 4294967295
  %i.cu = load ptr, ptr %4, align 8, !tbaa !21    ; 8 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  store i32 %i.cs, ptr %i.cv, align 4, !tbaa !12
  %.not6874 = icmp eq i64 %i.cn, 0
  br i1 %.not6874, label %._crit_edge, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %bb.e
  %min.iters.check = icmp ult i64 %1, 17
  br i1 %min.iters.check, label %.lr.ph76.preheader167, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph76.preheader
  %i.cw = and i64 %1, 4294967295
  %i.cx = icmp eq i64 %i.cw, 1
  %i.cy = add i64 %1, -4294967298
  %i.cz = icmp ult i64 %i.cy, -4294967296
  %i.da = or i1 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph76.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.db = shl nuw nsw i64 %1, 2                   ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.db
  %i.dc = shl nuw nsw i64 %1, 2
  %i.dd = add nuw nsw i64 %i.dc, 17179869180
  %i.de = and i64 %i.dd, 17179869180              ; 2 uses
  %i.df = add nuw nsw i64 %i.de, 8
  %i.dg = sub nsw i64 %i.df, %i.db
  %scevgep97 = getelementptr i8, ptr %i.cu, i64 %i.dg
  %i.dh = getelementptr i8, ptr %i.cu, i64 %i.de
  %scevgep98 = getelementptr i8, ptr %i.dh, i64 4
  %bound0 = icmp ult ptr %0, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph76.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, -8                      ; 2 uses
  %i.di = and i64 %i.cn, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = sub i64 %i.cn, %index                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -12
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -28
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !12, !alias.scope !74, !noalias !75
  %wide.load101 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !12, !alias.scope !74, !noalias !75
  %i.dn = shl <4 x i32> %wide.load, %broadcast.splat
  %i.do = shl <4 x i32> %wide.load101, %broadcast.splat
  %i.dp = getelementptr i8, ptr %i.dk, i64 -16
  %i.dq = getelementptr i8, ptr %i.dk, i64 -32
  %wide.load102 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !12, !alias.scope !74, !noalias !75
  %wide.load103 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !12, !alias.scope !74, !noalias !75
  %i.dr = lshr <4 x i32> %wide.load102, %broadcast.splat100
  %i.ds = lshr <4 x i32> %wide.load103, %broadcast.splat100
  %i.dt = or disjoint <4 x i32> %i.dr, %i.dn
  %i.du = or disjoint <4 x i32> %i.ds, %i.do
  %i.dv = and i64 %i.dj, 4294967295
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -12
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 -28
  store <4 x i32> %i.dt, ptr %i.dx, align 4, !tbaa !12, !alias.scope !75
  store <4 x i32> %i.du, ptr %i.dy, align 4, !tbaa !12, !alias.scope !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph76.preheader167

.lr.ph76.preheader167:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph76.preheader, %middle.block
  %.06175.ph = phi i64 [ %i.cn, %vector.memcheck ], [ %i.cn, %vector.scevcheck ], [ %i.cn, %.lr.ph76.preheader ], [ %i.di, %middle.block ] ; 6 uses
  %xtraiter = and i64 %.06175.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader167
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06175.ph ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12
  %i.ec = shl i32 %i.eb, %i.cq
  %i.ed = getelementptr i8, ptr %i.ea, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !12
  %i.ef = lshr i32 %i.ee, %i.cr
  %i.eg = or disjoint i32 %i.ef, %i.ec
  %i.eh = and i64 %.06175.ph, 4294967295
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !12
  %i.ej = add nsw i64 %.06175.ph, -1
  br label %.lr.ph76.prol.loopexit

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader167
  %.06175.unr = phi i64 [ %.06175.ph, %.lr.ph76.preheader167 ], [ %i.ej, %.lr.ph76.prol ]
  %i.ek = icmp eq i64 %.06175.ph, 1
  br i1 %i.ek, label %._crit_edge, label %.lr.ph76

._crit_edge:                                      ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %middle.block, %bb.e
  %i.el = load i32, ptr %0, align 4, !tbaa !12
  %i.em = shl i32 %i.el, %i.cq
  store i32 %i.em, ptr %i.cu, align 4, !tbaa !12
  %.077 = add i64 %3, -1                          ; 9 uses
  %.not6978 = icmp eq i64 %.077, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !21    ; 7 uses
  br i1 %.not6978, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %._crit_edge
  %min.iters.check113 = icmp ult i64 %.077, 16
  br i1 %min.iters.check113, label %.lr.ph82.preheader166, label %vector.scevcheck104

vector.scevcheck104:                              ; preds = %.lr.ph82.preheader
  %i.en = and i64 %3, 4294967295
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = add i64 %3, -4294967298
  %i.eq = icmp ult i64 %i.ep, -4294967296
  %i.er = or i1 %i.eo, %i.eq
  br i1 %i.er, label %.lr.ph82.preheader166, label %vector.memcheck105

vector.memcheck105:                               ; preds = %vector.scevcheck104
  %i.es = shl nuw nsw i64 %3, 2                   ; 2 uses
  %scevgep106 = getelementptr i8, ptr %2, i64 %i.es
  %i.et = shl nuw nsw i64 %3, 2
  %i.eu = add nuw nsw i64 %i.et, 17179869180
  %i.ev = and i64 %i.eu, 17179869180              ; 2 uses
  %i.ew = add nuw nsw i64 %i.ev, 8
  %i.ex = sub nsw i64 %i.ew, %i.es
  %scevgep107 = getelementptr i8, ptr %.pre, i64 %i.ex
  %i.ey = getelementptr i8, ptr %.pre, i64 %i.ev
  %scevgep108 = getelementptr i8, ptr %i.ey, i64 4
  %bound0109 = icmp ult ptr %2, %scevgep108
  %bound1110 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph82.preheader166, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck105
  %n.vec115 = and i64 %.077, -8                   ; 2 uses
  %i.ez = and i64 %.077, 7
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph114
  %index121 = phi i64 [ 0, %vector.ph114 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.fa = sub i64 %.077, %index121                ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %2, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -12
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -28
  %wide.load122 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !12, !alias.scope !76, !noalias !77
  %wide.load123 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !12, !alias.scope !76, !noalias !77
  %i.fe = shl <4 x i32> %wide.load122, %broadcast.splat117
  %i.ff = shl <4 x i32> %wide.load123, %broadcast.splat117
  %i.fg = getelementptr i8, ptr %i.fb, i64 -16
  %i.fh = getelementptr i8, ptr %i.fb, i64 -32
  %wide.load124 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !12, !alias.scope !76, !noalias !77
  %wide.load125 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !12, !alias.scope !76, !noalias !77
  %i.fi = lshr <4 x i32> %wide.load124, %broadcast.splat119
  %i.fj = lshr <4 x i32> %wide.load125, %broadcast.splat119
  %i.fk = or disjoint <4 x i32> %i.fi, %i.fe
  %i.fl = or disjoint <4 x i32> %i.fj, %i.ff
  %i.fm = and i64 %i.fa, 4294967295
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -12
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -28
  store <4 x i32> %i.fk, ptr %i.fo, align 4, !tbaa !12, !alias.scope !77
  store <4 x i32> %i.fl, ptr %i.fp, align 4, !tbaa !12, !alias.scope !77
  %index.next126 = add nuw i64 %index121, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next126, %n.vec115
  br i1 %i.fq, label %middle.block127, label %vector.body120, !llvm.loop !71

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %.077, %n.vec115
  br i1 %cmp.n128, label %._crit_edge83, label %.lr.ph82.preheader166

.lr.ph82.preheader166:                            ; preds = %vector.memcheck105, %vector.scevcheck104, %.lr.ph82.preheader, %middle.block127
  %.080.ph = phi i64 [ %.077, %vector.memcheck105 ], [ %.077, %vector.scevcheck104 ], [ %.077, %.lr.ph82.preheader ], [ %i.ez, %middle.block127 ] ; 7 uses
  %xtraiter168 = and i64 %.080.ph, 1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader166
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.080.ph
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12
  %i.ft = shl i32 %i.fs, %i.cq
  %i.fu = getelementptr [4 x i8], ptr %2, i64 %.080.ph
  %i.fv = getelementptr i8, ptr %i.fu, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !12
  %i.fx = lshr i32 %i.fw, %i.cr
  %i.fy = or disjoint i32 %i.fx, %i.ft
  %i.fz = and i64 %.080.ph, 4294967295
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fz
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !12
  %.0.prol = add nsw i64 %.080.ph, -1
  br label %.lr.ph82.prol.loopexit

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader166
  %.080.unr = phi i64 [ %.080.ph, %.lr.ph82.preheader166 ], [ %.0.prol, %.lr.ph82.prol ]
  %i.gb = icmp eq i64 %.080.ph, 1
  br i1 %i.gb, label %._crit_edge83, label %.lr.ph82

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %.06175 = phi i64 [ %i.gv, %.lr.ph76 ], [ %.06175.unr, %.lr.ph76.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06175 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12
  %i.ge = shl i32 %i.gd, %i.cq
  %i.gf = getelementptr i8, ptr %i.gc, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !12
  %i.gh = lshr i32 %i.gg, %i.cr
  %i.gi = or disjoint i32 %i.gh, %i.ge
  %i.gj = and i64 %.06175, 4294967295
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.gj
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !12
  %i.gl = add i64 %.06175, -1                     ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !12
  %i.go = shl i32 %i.gn, %i.cq
  %i.gp = getelementptr i8, ptr %i.gm, i64 -4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !12
  %i.gr = lshr i32 %i.gq, %i.cr
  %i.gs = or disjoint i32 %i.gr, %i.go
  %i.gt = and i64 %i.gl, 4294967295
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.gt
  store i32 %i.gs, ptr %i.gu, align 4, !tbaa !12
  %i.gv = add i64 %.06175, -2                     ; 2 uses
  %.not68.1 = icmp eq i64 %i.gv, 0
  br i1 %.not68.1, label %._crit_edge, label %.lr.ph76, !llvm.loop !72

._crit_edge83:                                    ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %middle.block127, %._crit_edge
  %i.gw = load i32, ptr %2, align 4, !tbaa !12
  %i.gx = shl i32 %i.gw, %i.cq
  store i32 %i.gx, ptr %.pre, align 4, !tbaa !12
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.0.in79 = phi i64 [ %.0.1, %.lr.ph82 ], [ %.080.unr, %.lr.ph82.prol.loopexit ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.in79
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12
  %i.ha = shl i32 %i.gz, %i.cq
  %i.hb = getelementptr [4 x i8], ptr %2, i64 %.0.in79
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !12
  %i.he = lshr i32 %i.hd, %i.cr
  %i.hf = or disjoint i32 %i.he, %i.ha
  %i.hg = and i64 %.0.in79, 4294967295
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.hg
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !12
  %.0 = add i64 %.0.in79, -1                      ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  %i.hk = shl i32 %i.hj, %i.cq
  %i.hl = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.hm = getelementptr i8, ptr %i.hl, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12
  %i.ho = lshr i32 %i.hn, %i.cr
  %i.hp = or disjoint i32 %i.ho, %i.hk
  %i.hq = and i64 %.0, 4294967295
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.hq
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !12
  %.0.1 = add i64 %.0.in79, -2                    ; 2 uses
  %.not69.1 = icmp eq i64 %.0.1, 0
  br i1 %.not69.1, label %._crit_edge83, label %.lr.ph82, !llvm.loop !73

.loopexit:                                        ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block157, %.preheader, %bb.d, %._crit_edge83
  %.1 = phi i64 [ 0, %bb.d ], [ %.064.lcssa, %._crit_edge83 ], [ 0, %.preheader ], [ 0, %middle.block157 ], [ 0, %scalar.ph148 ], [ 0, %scalar.ph148.prol.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4lean13mpn_to_stringEPKjmPcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef returned captures(ret: address, provenance) %2, i64 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %4 = alloca %"class.lean::mpn_buffer", align 8  ; 16 uses
  %5 = alloca %"class.lean::mpn_buffer", align 8  ; 20 uses
  %6 = alloca %"class.lean::mpn_buffer", align 8  ; 15 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !12
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str, i32 noundef %i.e) #14 ; 0 uses
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i64 16, ptr %i.i, align 8, !tbaa !23
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN4lean10mpn_bufferC2EmRKj.exit.thread, label %.lr.ph.i

_ZN4lean10mpn_bufferC2EmRKj.exit.thread:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 16, ptr %i.l, align 8, !tbaa !23
  br label %.lr.ph.i53.preheader

.lr.ph.i:                                         ; preds = %bb.c, %._crit_edge.i.i
  %.pre.i.i = phi ptr [ %.pre.i7.i, %._crit_edge.i.i ], [ %i.g, %bb.c ]
  %i.m = phi i64 [ %i.y, %._crit_edge.i.i ], [ 16, %bb.c ] ; 4 uses
  %i.n = phi i64 [ %i.ab, %._crit_edge.i.i ], [ 0, %bb.c ] ; 2 uses
  %.06.i = phi i64 [ %i.ac, %._crit_edge.i.i ], [ 0, %bb.c ]
  %.not.i.i = icmp ult i64 %i.n, %i.m
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = shl i64 %i.m, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #16
          to label %.noexc.i unwind label %bb.i   ; 4 uses

.noexc.i:                                         ; preds = %bb.d
  %i.q = load ptr, ptr %4, align 8, !tbaa !21     ; 4 uses
  %i.r = load i64, ptr %i.h, align 8, !tbaa !22   ; 4 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %.noexc.i
  %.idx.i.i.i.i = shl nuw nsw i64 %i.r, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.q, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc.i
  %i.t = icmp eq i64 %i.r, 1
  br i1 %i.t, label %bb.g, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !12
  store i32 %i.u, ptr %i.p, align 4, !tbaa !12
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  %i.v = load i64, ptr %i.i, align 8, !tbaa !23
  %i.w = shl i64 %i.v, 2
  call void @_ZdaPvm(ptr noundef %i.q, i64 noundef %i.w) #14
  %.pre2.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !22
  br label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i

_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i:        ; preds = %bb.h, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  %.pre2.i.i = phi i64 [ %i.r, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ %.pre2.pre.i.i, %bb.h ]
  %i.x = shl i64 %i.m, 1                          ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !21
  store i64 %i.x, ptr %i.i, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i, %.lr.ph.i
  %.pre.i7.i = phi ptr [ %i.p, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %.pre.i.i, %.lr.ph.i ] ; 2 uses
  %i.y = phi i64 [ %i.x, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %i.m, %.lr.ph.i ]
  %i.z = phi i64 [ %.pre2.i.i, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i7.i, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !12
  %i.ab = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !22
  %i.ac = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %1
  br i1 %exitcond.not.i, label %_ZN4lean10mpn_bufferC2EmRKj.exit, label %.lr.ph.i, !llvm.loop !78

bb.i:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.g
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ag = shl i64 %i.af, 2
  call void @_ZdaPvm(ptr noundef %i.ae, i64 noundef %i.ag) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.j, %_ZN4lean6bufferIjLm16EED2Ev.exit103
  %common.resume.op = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZN4lean6bufferIjLm16EED2Ev.exit103 ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4lean10mpn_bufferC2EmRKj.exit:                 ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 16, ptr %i.aj, align 8, !tbaa !23
  %.not.i52 = icmp eq i64 %1, -1
  br i1 %.not.i52, label %._crit_edge.i.i82.thread, label %.lr.ph.i53.preheader

._crit_edge.i.i82.thread:                         ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 16, ptr %i.am, align 8, !tbaa !23
  store i32 0, ptr %i.ak, align 8, !tbaa !12
  store i64 1, ptr %i.al, align 8, !tbaa !22
  br label %.lr.ph

.lr.ph.i53.preheader:                             ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit.thread, %_ZN4lean10mpn_bufferC2EmRKj.exit
  %i.an = phi ptr [ %i.l, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.aj, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 5 uses
  %i.ao = phi ptr [ %i.k, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.ai, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 5 uses
  %i.ap = phi ptr [ %i.j, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.ah, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 5 uses
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %._crit_edge.i.i65
  %.pre.i.i54 = phi ptr [ %.pre.i7.i66, %._crit_edge.i.i65 ], [ %i.ap, %.lr.ph.i53.preheader ]
  %i.aq = phi i64 [ %i.bc, %._crit_edge.i.i65 ], [ 16, %.lr.ph.i53.preheader ] ; 4 uses
  %i.ar = phi i64 [ %i.bf, %._crit_edge.i.i65 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.06.i55 = phi i64 [ %i.bg, %._crit_edge.i.i65 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.not.i.i56 = icmp ult i64 %i.ar, %i.aq
  br i1 %.not.i.i56, label %._crit_edge.i.i65, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i53
  %i.as = shl i64 %i.aq, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #16
          to label %.noexc.i59 unwind label %bb.p ; 4 uses

.noexc.i59:                                       ; preds = %bb.k
  %i.au = load ptr, ptr %5, align 8, !tbaa !21    ; 4 uses
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !22 ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !32

bb.l:                                             ; preds = %.noexc.i59
  %.idx.i.i.i.i68 = shl nuw nsw i64 %i.av, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.au, i64 %.idx.i.i.i.i68, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

bb.m:                                             ; preds = %.noexc.i59
  %i.ax = icmp eq i64 %i.av, 1
  br i1 %i.ax, label %bb.n, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !12
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !12
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60: ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i.i.i.i.i61 = icmp eq ptr %i.au, %i.ap
  br i1 %.not.i.i.i.i.i.i61, label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63, label %bb.o

bb.o:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60
  %i.az = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ba = shl i64 %i.az, 2
  call void @_ZdaPvm(ptr noundef %i.au, i64 noundef %i.ba) #14
  %.pre2.pre.i.i62 = load i64, ptr %i.ao, align 8, !tbaa !22
  br label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63

_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63:      ; preds = %bb.o, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60
  %.pre2.i.i64 = phi i64 [ %i.av, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60 ], [ %.pre2.pre.i.i62, %bb.o ]
  %i.bb = shl i64 %i.aq, 1                        ; 2 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !21
  store i64 %i.bb, ptr %i.an, align 8, !tbaa !23
  br label %._crit_edge.i.i65

._crit_edge.i.i65:                                ; preds = %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63, %.lr.ph.i53
  %.pre.i7.i66 = phi ptr [ %i.at, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %.pre.i.i54, %.lr.ph.i53 ] ; 4 uses
  %i.bc = phi i64 [ %i.bb, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %i.aq, %.lr.ph.i53 ]
  %i.bd = phi i64 [ %.pre2.i.i64, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %i.ar, %.lr.ph.i53 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i7.i66, i64 %i.bd
  store i32 0, ptr %i.be, align 4, !tbaa !12
  %i.bf = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ao, align 8, !tbaa !22
  %i.bg = add nuw i64 %.06.i55, 1
  %exitcond.not.i67 = icmp eq i64 %.06.i55, %1
  br i1 %exitcond.not.i67, label %._crit_edge.i.i82, label %.lr.ph.i53, !llvm.loop !78

bb.p:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.bi, %i.ap
  br i1 %.not.i.i.i.i57, label %.body, label %.body.sink.split

._crit_edge.i.i82:                                ; preds = %._crit_edge.i.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store ptr %i.bj, ptr %6, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 16, ptr %i.bl, align 8, !tbaa !23
  store i32 0, ptr %i.bj, align 8, !tbaa !12
  store i64 1, ptr %i.bk, align 8, !tbaa !22
  br i1 %.not.i, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i82.thread, %._crit_edge.i.i82
  %i.bm = phi ptr [ %i.am, %._crit_edge.i.i82.thread ], [ %i.bl, %._crit_edge.i.i82 ] ; 2 uses
  %i.bn = phi ptr [ %i.al, %._crit_edge.i.i82.thread ], [ %i.bk, %._crit_edge.i.i82 ] ; 2 uses
  %i.bo = phi ptr [ %i.ak, %._crit_edge.i.i82.thread ], [ %i.bj, %._crit_edge.i.i82 ] ; 2 uses
  %i.bp = phi ptr [ %i.ah, %._crit_edge.i.i82.thread ], [ %.pre.i7.i66, %._crit_edge.i.i82 ] ; 2 uses
  %i.bq = phi ptr [ %i.ah, %._crit_edge.i.i82.thread ], [ %i.ap, %._crit_edge.i.i82 ] ; 2 uses
  %i.br = phi ptr [ %i.ai, %._crit_edge.i.i82.thread ], [ %i.ao, %._crit_edge.i.i82 ] ; 2 uses
  %i.bs = phi ptr [ %i.aj, %._crit_edge.i.i82.thread ], [ %i.an, %._crit_edge.i.i82 ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %min.iters.check = icmp ult i64 %1, 20
  br i1 %min.iters.check, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = add i64 %1, -1                          ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp eq i64 %i.bw, 4294967295
  %i.by = icmp ugt i64 %i.bv, 4294967295
  %i.bz = or i1 %i.bx, %i.by
  %i.ca = sub i64 %i.a, %i.bu
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = select i1 %i.bz, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !12
  %wide.load179 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !12
  store <4 x i32> %wide.load179, ptr %i.ce, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader

_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader:     ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN4lean10mpn_bufferC2EmRKj.exit88

_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge:    ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit88, %middle.block, %._crit_edge.i.i82
  %i.cg = phi ptr [ %i.bl, %._crit_edge.i.i82 ], [ %i.bm, %middle.block ], [ %i.bm, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  %i.ch = phi ptr [ %i.bk, %._crit_edge.i.i82 ], [ %i.bn, %middle.block ], [ %i.bn, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.ci = phi ptr [ %i.bj, %._crit_edge.i.i82 ], [ %i.bo, %middle.block ], [ %i.bo, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 3 uses
  %i.cj = phi ptr [ %.pre.i7.i66, %._crit_edge.i.i82 ], [ %i.bp, %middle.block ], [ %i.bp, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.ck = phi ptr [ %i.ap, %._crit_edge.i.i82 ], [ %i.bq, %middle.block ], [ %i.bq, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  %i.cl = phi ptr [ %i.ao, %._crit_edge.i.i82 ], [ %i.br, %middle.block ], [ %i.br, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.cm = phi ptr [ %i.an, %._crit_edge.i.i82 ], [ %i.bs, %middle.block ], [ %i.bs, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 10, ptr %i.c, align 4, !tbaa !12
  %.pre = load i64, ptr %i.h, align 8, !tbaa !22
  br label %bb.q

_ZN4lean10mpn_bufferC2EmRKj.exit88:               ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, %_ZN4lean10mpn_bufferC2EmRKj.exit88
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ], [ %indvars.iv.ph, %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cq = and i64 %indvars.iv.next, 4294967295
  %i.cr = icmp ugt i64 %1, %i.cq
  br i1 %i.cr, label %_ZN4lean10mpn_bufferC2EmRKj.exit88, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, !llvm.loop !80

bb.q:                                             ; preds = %.critedge4, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge
  %i.cs = phi i32 [ undef, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.er, %.critedge4 ]
  %i.ct = phi ptr [ %i.cj, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %.val50, %.critedge4 ]
  %i.cu = phi ptr [ %i.ci, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.da, %.critedge4 ] ; 2 uses
  %i.cv = phi i64 [ %.pre, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.ff, %.critedge4 ] ; 2 uses
  %.034 = phi i64 [ 0, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.eu, %.critedge4 ] ; 4 uses
  switch i64 %i.cv, label %._crit_edge126 [
    i64 0, label %.critedge
    i64 1, label %bb.r
  ]

._crit_edge126:                                   ; preds = %bb.q
  %.pre127 = load ptr, ptr %4, align 8, !tbaa !21
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge126, %bb.r
  %i.cy = phi ptr [ %.pre127, %._crit_edge126 ], [ %i.cw, %bb.r ]
  %i.cz = invoke fastcc noundef i64 @_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_(ptr noundef nonnull %i.cy, i64 noundef %i.cv, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.t unwind label %.loopexit  ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.da = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %.val49 = load i64, ptr %i.cl, align 8, !tbaa !22
  %.01.i = add i64 %.val49, -1                    ; 2 uses
  %.not2.i = icmp eq i64 %.01.i, 0
  br i1 %.not2.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.t
  %i.dd = zext i32 %i.db to i64                   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i89
  %.0.in3.i = phi i64 [ %.01.i, %.lr.ph.i89 ], [ %i.dj, %bb.y ] ; 2 uses
  %i.de = and i64 %.0.in3.i, 4294967295
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.de ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = add i64 %.0.in3.i, -1                   ; 4 uses
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.dk ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.dn = zext i32 %i.dm to i64
  %i.do = or disjoint i64 %i.di, %i.dn            ; 3 uses
  %i.dp = udiv i64 %i.do, %i.dd                   ; 3 uses
  %.recomposed = urem i64 %i.do, %i.dd            ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 4294967295
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = call ptr @__cxa_allocate_exception(i64 40) #14 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 0, ptr %i.du, align 8, !tbaa !28
  store i8 0, ptr %i.dt, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.dr, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dv = mul nuw i64 %i.dp, %i.dd
  %i.dw = icmp ugt i64 %i.dv, %i.do
  %i.dx = trunc i64 %.recomposed to i32
  store i32 %i.dx, ptr %i.dl, align 4, !tbaa !12
  %i.dy = lshr i64 %.recomposed, 32
  %i.dz = trunc nuw i64 %i.dy to i32
  store i32 %i.dz, ptr %i.df, align 4, !tbaa !12
  %i.ea = trunc nuw i64 %i.dp to i32              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dj ; 2 uses
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !12
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = add i32 %i.ea, -1
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !12
  %i.ed = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.ee = add i32 %i.ed, %i.db
  store i32 %i.ee, ptr %i.df, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not.i90 = icmp eq i64 %i.dj, 0
  br i1 %.not.i90, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, label %bb.u, !llvm.loop !3

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit: ; preds = %bb.y
  %.val50.pre = load ptr, ptr %5, align 8
  br label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, %bb.t
  %.val50 = phi ptr [ %.val50.pre, %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit ], [ %.val, %bb.t ] ; 3 uses
  %.val51 = load i64, ptr %i.ch, align 8          ; 4 uses
  %i.ef = icmp eq i64 %i.cz, 0
  br i1 %i.ef, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.eg = add i64 %.val51, 4294967295
  %.pre.i = trunc i64 %i.cz to i32
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = lshr i32 %i.ej, %.pre.i
  %i.el = getelementptr [4 x i8], ptr %i.b, i64 %.val51
  %i.em = getelementptr i8, ptr %i.el, i64 -4
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !12
  %.pre129 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %.not5.i = icmp eq i64 %.val51, 0
  br i1 %.not5.i, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %.preheader.i
  %i.en = add i64 %.val51, 4294967295
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !12 ; 2 uses
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !12
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit: ; preds = %.lr.ph4.i.preheader, %.preheader1.i, %.preheader.i
  %i.er = phi i32 [ %i.eq, %.lr.ph4.i.preheader ], [ %.pre129, %.preheader1.i ], [ %i.cs, %.preheader.i ] ; 2 uses
  %i.es = trunc i32 %i.er to i8
  %i.et = add i8 %i.es, 48
  %i.eu = add i64 %.034, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !29
  %.pr = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.ew = icmp eq i64 %.pr, 0
  br i1 %i.ew, label %.critedge4, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, %bb.z
  %i.ex = phi i64 [ %i.fc, %bb.z ], [ %.pr, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ] ; 3 uses
  %i.ey = getelementptr [4 x i8], ptr %i.dc, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.z, label %.critedge4

bb.z:                                             ; preds = %.lr.ph116
  %i.fc = add i64 %i.ex, -1                       ; 3 uses
  store i64 %i.fc, ptr %i.h, align 8, !tbaa !22
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.critedge4, label %.lr.ph116, !llvm.loop !81

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.fe = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.fe, %i.ci
  br i1 %.not.i.i.i98, label %.body86, label %bb.ae

.critedge4:                                       ; preds = %.lr.ph116, %bb.z, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit
  %i.ff = phi i64 [ 0, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ], [ %i.ex, %.lr.ph116 ], [ 0, %bb.z ]
  br label %bb.q, !llvm.loop !82

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 0, ptr %i.fg, align 1, !tbaa !29
  %i.fh = add i64 %.034, -1                       ; 5 uses
  %i.fi = lshr i64 %i.fh, 1                       ; 2 uses
  %i.fj = and i64 %i.fh, 1                        ; 2 uses
  %i.fk = add nuw i64 %i.fi, %i.fj                ; 4 uses
  %.not121 = icmp eq i64 %i.fk, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %.critedge
  %i.fl = add nsw i64 %i.fi, -1
  %xtraiter = and i64 %i.fk, 1
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph119.epil.preheader, label %.lr.ph119.preheader.new

.lr.ph119.preheader.new:                          ; preds = %.lr.ph119.preheader
  %unroll_iter = and i64 %i.fk, -2
  br label %.lr.ph119

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph119
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph119.epil.preheader

.lr.ph119.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph119.preheader
  %.0118.epil.init = phi i64 [ 0, %.lr.ph119.preheader ], [ %i.gm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %.0118.epil.init ; 2 uses
  %i.fp = sub i64 %i.fh, %.0118.epil.init
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fs = load i8, ptr %i.fq, align 1, !tbaa !29
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !29
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph119.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not.i.i.i = icmp eq ptr %i.cu, %i.ci
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ft = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.fu = shl i64 %i.ft, 2
  call void @_ZdaPvm(ptr noundef nonnull %i.cu, i64 noundef %i.fu) #14
  %.pre125 = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

_ZN4lean6bufferIjLm16EED2Ev.exit:                 ; preds = %._crit_edge, %bb.ab
  %i.fv = phi ptr [ %i.ct, %._crit_edge ], [ %.pre125, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not.i.i.i94 = icmp eq ptr %i.fv, %i.ck
  br i1 %.not.i.i.i94, label %_ZN4lean6bufferIjLm16EED2Ev.exit95, label %bb.ac

bb.ac:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit
  %i.fw = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.fx = shl i64 %i.fw, 2
  call void @_ZdaPvm(ptr noundef %i.fv, i64 noundef %i.fx) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit95

_ZN4lean6bufferIjLm16EED2Ev.exit95:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.fy = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.fy, %i.g
  br i1 %.not.i.i.i96, label %_ZN4lean6bufferIjLm16EED2Ev.exit97, label %bb.ad

bb.ad:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95
  %i.fz = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ga = shl i64 %i.fz, 2
  call void @_ZdaPvm(ptr noundef %i.fy, i64 noundef %i.ga) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit97

_ZN4lean6bufferIjLm16EED2Ev.exit97:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ag

.lr.ph119:                                        ; preds = %.lr.ph119, %.lr.ph119.preheader.new
  %.0118 = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %i.gm, %.lr.ph119 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph119.preheader.new ], [ %niter.next.1, %.lr.ph119 ]
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %.0118 ; 2 uses
  %i.gc = sub i64 %i.fh, %.0118
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc ; 2 uses
  %i.ge = load i8, ptr %i.gb, align 1, !tbaa !29
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !29
  store i8 %i.gf, ptr %i.gb, align 1, !tbaa !29
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !29
  %i.gg = or disjoint i64 %.0118, 1               ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %i.gg ; 2 uses
  %i.gi = sub i64 %i.fh, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 %i.gi ; 2 uses
  %i.gk = load i8, ptr %i.gh, align 1, !tbaa !29
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !29
  store i8 %i.gl, ptr %i.gh, align 1, !tbaa !29
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !29
  %i.gm = add nuw i64 %.0118, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph119, !llvm.loop !83

bb.ae:                                            ; preds = %bb.aa
  %i.gn = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.go = shl i64 %i.gn, 2
  call void @_ZdaPvm(ptr noundef %i.fe, i64 noundef %i.go) #14
  br label %.body86

.body86:                                          ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.gp = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.gp, %i.ck
  br i1 %.not.i.i.i100, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body86, %bb.p
  %.sink171 = phi ptr [ %i.an, %bb.p ], [ %i.cm, %.body86 ]
end_hunk_1
