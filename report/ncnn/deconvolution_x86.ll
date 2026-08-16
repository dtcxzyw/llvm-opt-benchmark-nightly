inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge

bb.l:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit32:                          ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %i.ci

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i40, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = atomicrmw add ptr %i.cu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre107 = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre107, null
  br i1 %.not.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = atomicrmw add ptr %.pre107, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %.thread unwind label %bb.f, !inline_history !65

bb.r:                                             ; preds = %bb.p
  %.not.i18.i = icmp eq ptr %i.cz, null
  br i1 %.not.i18.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cz) #10
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n, %bb.q, %bb.s, %bb.r
  %i.dd = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.dd, ptr %4, align 16, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !57
  store i64 %i.df, ptr %i.bi, align 16, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !67
  store i32 %i.dh, ptr %i.bj, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  store ptr %i.dj, ptr %i.bk, align 16, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dl = load <4 x i32>, ptr %i.dk, align 8, !tbaa !68
  store <4 x i32> %i.dl, ptr %i.bl, align 8, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !69
  store i32 %i.dn, ptr %i.bo, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !20
  store i64 %i.dp, ptr %i.bp, align 16, !tbaa !20
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.e, %.thread
  %.sink160 = phi i64 [ 8, %.thread ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %bb.b ], [ 16, %bb.a ], [ 16, %._crit_edge ]
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.sink160
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !242
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.an, i32 noundef %i.av, i32 noundef %i.bg, i64 noundef %i.bf, i32 noundef %.031, ptr noundef %i.dr)
          to label %bb.t unwind label %bb.f

bb.t:                                             ; preds = %.thread.invoke
  %i.ds = load ptr, ptr %4, align 16, !tbaa !18
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42

_ZNK4ncnn3Mat5emptyEv.exit42:                     ; preds = %bb.t
  %i.du = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.dv = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.du, %i.dw
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = load i32, ptr %i.u, align 4, !tbaa !49  ; 3 uses
  %i.ec = load i32, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ed = load i32, ptr %i.s, align 4, !tbaa !230 ; 2 uses
  %i.ee = load i32, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ef = load i32, ptr %i.ah, align 4, !tbaa !232
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !233
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ek = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !68
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !68
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !68
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !68
  store i32 %i.ef, ptr %i.e, align 4, !tbaa !68
  store i32 %i.eg, ptr %i.f, align 4, !tbaa !68
  store i32 %i.ei, ptr %i.g, align 4, !tbaa !68
  %i.el = load i32, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.em = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.en = mul nsw i32 %i.em, %i.el                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.eo = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.ep = sext i32 %i.el to i64
  %i.eq = mul i64 %i.eo, %i.ep
  store i64 %i.eq, ptr %i.h, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.er = add nsw i32 %i.eb, -1
  %i.es = mul nsw i32 %i.ed, %i.er
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.i, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.eu = add nsw i32 %i.ec, -1
  %i.ev = mul nsw i32 %i.ee, %i.eu
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ex = mul nsw i32 %i.ec, %i.eb
  store i32 %i.ex, ptr %i.k, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ey = load ptr, ptr %i.ea, align 8, !tbaa !18
  store ptr %i.ey, ptr %i.l, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.ez = sdiv i32 %i.en, 4
  store i32 %i.ez, ptr %i.m, align 4, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ek, i32 %i.fb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.dz, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.ej, ptr nonnull %i.h)
  %i.fc = load i32, ptr %i.m, align 4, !tbaa !68
  %i.fd = shl nsw i32 %i.fc, 2
  %i.fe = load i32, ptr %i.n, align 4, !tbaa !68
  %i.ff = add nsw i32 %i.fe, %i.fd                ; 5 uses
  store i32 %i.ff, ptr %i.n, align 4, !tbaa !68
  %i.fg = sub nsw i32 %i.en, %i.ff                ; 2 uses
  %i.fh = sdiv i32 %i.fg, 2                       ; 3 uses
  store i32 %i.fh, ptr %i.m, align 4, !tbaa !68
  %i.fi = icmp sgt i32 %i.fg, 1
  br i1 %i.fi, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, label %._crit_edge1072.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.i:                 ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !67
  %.fr.i = freeze i32 %i.fk                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  %i.fn = mul i32 %i.fm, %.fr.i                   ; 10 uses
  %i.fo = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.fp = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.fq = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.fr = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.fs = load ptr, ptr %4, align 16, !tbaa !18, !noalias !357 ; 2 uses
  %i.ft = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !357
  %i.fu = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !357
  %factor.op.mul.i = mul i64 %i.fu, %i.ft         ; 2 uses
  %i.fv = icmp slt i32 %i.fr, 1
  %i.fw = icmp slt i32 %i.fq, 1
  %i.fx = icmp sgt i32 %i.fn, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge.i = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %brmerge.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !360
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !20, !noalias !360
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !57, !noalias !360
  %factor.op.mul1078.i = mul i64 %i.ge, %i.gd
  %i.gf = add i32 %i.fn, -4                       ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.gg, 2147483646
  %narrow.i = add nuw i32 %i.gh, 2
  %i.gi = zext i32 %narrow.i to i64
  %i.gj = and i32 %i.gf, -4
  %i.gk = add nuw nsw i32 %i.gj, 4
  %i.gl = sext i32 %i.fn to i64
  %i.gm = sext i32 %i.ff to i64
  %wide.trip.count1337.i = zext nneg i32 %i.fh to i64
  %invariant.op1449.i = add nsw i64 %i.gl, -3
  %i.gn = sext i32 %i.fo to i64                   ; 4 uses
  %i.go = and i32 %i.fn, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1072.split.i:                          ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.u
  %i.gp = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.gq = add nsw i32 %i.gp, %i.ff
  %i.gr = icmp slt i32 %i.gq, %i.en
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1072.split.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !67
  %.fr1100.i = freeze i32 %i.gt                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !69
  %i.gw = mul i32 %i.gv, %.fr1100.i               ; 10 uses
  %i.gx = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.gy = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.gz = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.ha = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.hb = load ptr, ptr %4, align 16, !tbaa !18, !noalias !363
  %i.hc = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !363
  %i.hd = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !363
  %factor.op.mul1221.i = mul i64 %i.hd, %i.hc
  %i.he = icmp slt i32 %i.ha, 1
  %i.hf = icmp slt i32 %i.gz, 1
  %i.hg = icmp sgt i32 %i.gw, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge1230.i = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %brmerge1230.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hl = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !366
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !20, !noalias !366
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !57, !noalias !366
  %factor.op.mul1224.i = mul i64 %i.hn, %i.hm
  %i.ho = add i32 %i.gw, -4                       ; 2 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 2147483646
  %narrow1439.i = add nuw i32 %i.hq, 2
  %i.hr = zext i32 %narrow1439.i to i64
  %i.hs = and i32 %i.ho, -4
  %i.ht = add nuw nsw i32 %i.hs, 4
  %i.hu = sext i32 %i.gw to i64
  %i.hv = sext i32 %i.ff to i64
  %i.hw = sext i32 %i.gp to i64
  %i.hx = add nsw i64 %i.hw, %i.hv
  %i.hy = sext i32 %i.en to i64
  %invariant.op1450.i = add nsw i64 %i.hu, -3
  %i.hz = sext i32 %i.gx to i64                   ; 4 uses
  %i.ia = and i32 %i.gw, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1334.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1335.i, %._crit_edge1070.i ] ; 2 uses
  %i.ib = shl nuw nsw i64 %indvars.iv1334.i, 1
  %i.ic = add nsw i64 %i.ib, %i.gm                ; 4 uses
  %.reass.i = mul i64 %i.ic, %factor.op.mul.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass.i
  %i.ie = add nsw i64 %i.ic, 1
  %.reass1075.i = mul i64 %i.ie, %factor.op.mul.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass1075.i
  %i.ig = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.ig, null
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ic
  %i.ii = trunc nsw i64 %i.ic to i32              ; 2 uses
  %i.ij = sdiv i32 %i.ii, 4
  %i.ik = srem i32 %i.ii, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ik to i8
  %i.il = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.il to i32
  %i.im = add nsw i32 %i.ij, %.sext.i
  %i.in = sext i32 %i.im to i64
  %i.io = load i32, ptr %i.g, align 4
  %.reass1079.i = mul i64 %factor.op.mul1078.i, %i.in
  %i.ip = getelementptr i8, ptr %i.gc, i64 %.reass1079.i ; 3 uses
  br label %.preheader911.i

.preheader911.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03141069.i = phi ptr [ %i.id, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vm, %._crit_edge.i ]
  %.03151068.i = phi ptr [ %i.if, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vn, %._crit_edge.i ]
  %.03181067.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg887.i, %._crit_edge.i ]
  %i.iq = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, 0                   ; 3 uses
  %.neg887.i = add nuw nsw i32 %.03181067.i, 1    ; 5 uses
  %i.is = load i32, ptr %i.k, align 4             ; 3 uses
  %i.it = shl i32 %i.is, 3
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl i32 %i.is, 2
  %i.iw = sext i32 %i.iv to i64                   ; 3 uses
  %i.ix = shl nsw i32 %i.is, 1
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %i.iu, %i.gi
  %scevgep1282.i = getelementptr i8, ptr %i.ip, i64 %i.iz
  %wide.trip.count1295.i = zext nneg i32 %i.iq to i64 ; 4 uses
  br label %bb.v

._crit_edge1070.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1335.i = add nuw nsw i64 %indvars.iv1334.i, 1 ; 2 uses
  %exitcond1338.not.i = icmp eq i64 %indvars.iv.next1335.i, %wide.trip.count1337.i
  br i1 %exitcond1338.not.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !369

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1333.not.i = icmp eq i32 %.neg887.i, %i.fr
  br i1 %exitcond1333.not.i, label %._crit_edge1070.i, label %.preheader911.i, !llvm.loop !370

bb.v:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader911.i
  %.11065.i = phi ptr [ %.03141069.i, %.preheader911.i ], [ %i.vm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13161064.i = phi ptr [ %.03151068.i, %.preheader911.i ], [ %i.vn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.03191063.i = phi i32 [ 0, %.preheader911.i ], [ %i.vo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ja = load <2 x float>, ptr %i.ih, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.w, %bb.v
  %i.jb = phi <2 x float> [ %i.ja, %bb.w ], [ zeroinitializer, %bb.v ]
  br i1 %i.fx, label %.preheader909.lr.ph.i, label %._crit_edge958.i

.preheader909.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.jc = load i32, ptr %i.d, align 4             ; 2 uses
  %i.jd = load i32, ptr %i.j, align 4
  %invariant.op939.i = sub i32 %.neg887.i, %i.jd  ; 2 uses
  %i.je = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jf = load i32, ptr %i.a, align 4
  %.fr1231.i = freeze i32 %i.jf                   ; 2 uses
  %i.jg = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jh = load i32, ptr %i.i, align 4
  %.neg889.i = add nuw nsw i32 %.03191063.i, 1
  %invariant.op.i = sub i32 %.neg889.i, %i.jh     ; 2 uses
  %i.ji = load i32, ptr %i.e, align 4             ; 4 uses
  %i.jj = icmp sgt i32 %.fr1231.i, 0
  %or.cond.i = and i1 %i.ir, %i.jj
  br i1 %or.cond.i, label %.preheader909.us.us.preheader.i, label %._crit_edge958.i

.preheader909.us.us.preheader.i:                  ; preds = %.preheader909.lr.ph.i
  %i.jk = zext nneg i32 %.fr1231.i to i64         ; 4 uses
  br label %.preheader909.us.us.i

.preheader909.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.us.us.preheader.i
  %indvars.iv1297.i = phi i64 [ 0, %.preheader909.us.us.preheader.i ], [ %indvars.iv.next1298.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0340956.us.us.i = phi ptr [ %i.ip, %.preheader909.us.us.preheader.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0835953.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0840952.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.jl = lshr exact i64 %indvars.iv1297.i, 2
  %i.jm = or disjoint i64 %indvars.iv1297.i, 1
  %i.jn = or disjoint i64 %indvars.iv1297.i, 2
  %i.jo = or disjoint i64 %indvars.iv1297.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader909.us.us.i.split.us
    i32 1, label %.preheader909.us.us.i.split.us61
  ]

.preheader909.us.us.i.split.us:                   ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us
  %indvars.iv1292.i.us = phi i64 [ %indvars.iv.next1293.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.jp = trunc i64 %indvars.iv1292.i.us to i32
  %i.jq = mul i32 %i.jc, %i.jp
  %.reass.us940.us.us.i.us = add i32 %i.jq, %invariant.op939.i ; 3 uses
  %i.jr = icmp slt i32 %.reass.us940.us.us.i.us, 0
  br i1 %i.jr, label %..loopexit906_crit_edge.us.us.us.i.us, label %bb.x

bb.x:                                             ; preds = %.preheader909.us.us.i.split.us
  %i.js = srem i32 %.reass.us940.us.us.i.us, %i.je
  %i.jt = sdiv i32 %.reass.us940.us.us.i.us, %i.je ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.js, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.jt, %i.fp
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader905.us.us.us.i.us, label %..loopexit906_crit_edge.us.us.us.i.us

.preheader905.us.us.us.i.us:                      ; preds = %bb.x
  %i.ju = mul nuw nsw i64 %indvars.iv1292.i.us, %i.jk
  %i.jv = sext i32 %i.jt to i64
  %i.jw = mul nsw i64 %i.jv, %i.gn
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader905.us.us.us.i.us, %bb.z
  %indvars.iv1287.i.us = phi i64 [ %indvars.iv.next1288.i.us, %bb.z ], [ 0, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2837916.us.us.us.us.i.us = phi <4 x float> [ %.3838.us.us.us.us.i.us, %bb.z ], [ %.1836935.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2842915.us.us.us.us.i.us = phi <4 x float> [ %.3843.us.us.us.us.i.us, %bb.z ], [ %.1841934.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %i.jx = trunc i64 %indvars.iv1287.i.us to i32
  %i.jy = mul i32 %i.jg, %i.jx
  %.reass919.us.us.us.us.i.us = add i32 %i.jy, %invariant.op.i ; 3 uses
  %i.jz = icmp slt i32 %.reass919.us.us.us.us.i.us, 0
  br i1 %i.jz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.ka = srem i32 %.reass919.us.us.us.us.i.us, %i.ji
  %i.kb = sdiv i32 %.reass919.us.us.us.us.i.us, %i.ji ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.ka, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.kb, %i.fo
  %or.cond197 = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond197, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.z

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.y
  %i.kc = add nuw nsw i64 %indvars.iv1287.i.us, %i.ju
  %i.kd = shl i64 %i.kc, 3
  %i.ke = and i64 %i.kd, 4294967288
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %.0340956.us.us.i, i64 %i.ke ; 2 uses
  %i.kg = load ptr, ptr %1, align 8, !tbaa !18, !noalias !371
  %i.kh = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !371
  %i.ki = mul i64 %i.kh, %i.jl
  %i.kj = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !371 ; 2 uses
  %i.kk = mul i64 %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kk
  %i.km = mul i64 %i.jw, %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km
  %i.ko = shl nsw i32 %i.kb, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 1, !tbaa !245
  %i.ks = insertelement <2 x i64> poison, i64 %i.kr, i64 0
  %i.kt = bitcast <2 x i64> %i.ks to <8 x i16>
  %i.ku = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x float>  ; 2 uses
  %i.kw = load i64, ptr %i.kf, align 1, !tbaa !245
  %i.kx = insertelement <2 x i64> poison, i64 %i.kw, i64 0
  %i.ky = bitcast <2 x i64> %i.kx to <8 x i16>
  %i.kz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.la = bitcast <8 x i16> %i.kz to <4 x float>
  %i.lb = fmul fast <4 x float> %i.la, %i.kv
  %i.lc = fadd fast <4 x float> %i.lb, %.2837916.us.us.us.us.i.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.le = load i64, ptr %i.ld, align 1, !tbaa !245
  %i.lf = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %i.lg = bitcast <2 x i64> %i.lf to <8 x i16>
  %i.lh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.li = bitcast <8 x i16> %i.lh to <4 x float>
  %i.lj = fmul fast <4 x float> %i.li, %i.kv
  %i.lk = fadd fast <4 x float> %i.lj, %.2842915.us.us.us.us.i.us
  br label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.y, %.lr.ph.split.us.us.us.us.i.us
  %.3843.us.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2842915.us.us.us.us.i.us, %bb.y ], [ %i.lk, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3838.us.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2837916.us.us.us.us.i.us, %bb.y ], [ %i.lc, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1288.i.us = add nuw nsw i64 %indvars.iv1287.i.us, 1 ; 2 uses
  %exitcond1291.not.i.us = icmp eq i64 %indvars.iv.next1288.i.us, %i.jk
  br i1 %exitcond1291.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !374

..loopexit906_crit_edge.us.us.us.i.us:            ; preds = %bb.z, %bb.x, %.preheader909.us.us.i.split.us
  %.4844.us.us.us.i.us = phi nsz <4 x float> [ %.1841934.us.us.us.i.us, %.preheader909.us.us.i.split.us ], [ %.1841934.us.us.us.i.us, %bb.x ], [ %.3843.us.us.us.us.i.us, %bb.z ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  %scevgep.3 = getelementptr i8, ptr %i.s, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.eu, i1 false), !tbaa !39
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit190.unr-lcssa, label %.noexc44.us108.us

.noexc44.us108:                                   ; preds = %.noexc44.us108.preheader, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117
  %indvars.iv = phi i64 [ %i.eo, %.noexc44.us108.preheader ], [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117 ] ; 3 uses
  %.reass87.us110 = mul i64 %factor.op.mul86, %indvars.iv
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us110 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !39 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc44.us108
  %i.fk = getelementptr i8, ptr %i.fh, i64 %i.es
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !39
  store <4 x float> %broadcast.splat, ptr %i.fm, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc44.us108, %middle.block
  %.0.i55.us112.ph = phi i32 [ 0, %.noexc44.us108 ], [ %i.er, %middle.block ]
  %.05.i54.us113.ph = phi ptr [ %i.fh, %.noexc44.us108 ], [ %i.fk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i55.us112 = phi i32 [ %i.fp, %scalar.ph ], [ %.0.i55.us112.ph, %scalar.ph.preheader ]
  %.05.i54.us113 = phi ptr [ %i.fo, %scalar.ph ], [ %.05.i54.us113.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i54.us113, i64 4
  store float %i.fj, ptr %.05.i54.us113, align 4, !tbaa !39
  %i.fp = add nuw nsw i32 %.0.i55.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %i.an
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %scalar.ph, !llvm.loop !441

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117: ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.ep, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %.noexc44.us108

._crit_edge.loopexit189.unr-lcssa:                ; preds = %.noexc44.us98
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %._crit_edge, label %.noexc44.us98.epil.preheader

.noexc44.us98.epil.preheader:                     ; preds = %._crit_edge.loopexit189.unr-lcssa, %.noexc44.us98.preheader
  %indvar129.epil.init = phi i64 [ 0, %.noexc44.us98.preheader ], [ %indvar.next130.3, %._crit_edge.loopexit189.unr-lcssa ]
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.noexc44.us98.epil

.noexc44.us98.epil:                               ; preds = %.noexc44.us98.epil, %.noexc44.us98.epil.preheader
  %indvar129.epil = phi i64 [ %indvar129.epil.init, %.noexc44.us98.epil.preheader ], [ %indvar.next130.epil, %.noexc44.us98.epil ] ; 2 uses
  %epil.iter196 = phi i32 [ 0, %.noexc44.us98.epil.preheader ], [ %epil.iter196.next, %.noexc44.us98.epil ]
  %i.fq = add i64 %indvar129.epil, %i.du
  %i.fr = mul i64 %factor.op.mul86, %i.fq
  %scevgep131.epil = getelementptr i8, ptr %i.s, i64 %i.fr
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep131.epil, i8 0, i64 %i.dw, i1 false), !tbaa !39
  %indvar.next130.epil = add nuw nsw i64 %indvar129.epil, 1
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %._crit_edge, label %.noexc44.us98.epil, !llvm.loop !442

._crit_edge.loopexit190.unr-lcssa:                ; preds = %.noexc44.us108.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.noexc44.us108.us.epil.preheader

.noexc44.us108.us.epil.preheader:                 ; preds = %._crit_edge.loopexit190.unr-lcssa, %.noexc44.us108.us.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc44.us108.us.preheader ], [ %indvar.next.3, %._crit_edge.loopexit190.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.noexc44.us108.us.epil

.noexc44.us108.us.epil:                           ; preds = %.noexc44.us108.us.epil, %.noexc44.us108.us.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc44.us108.us.epil.preheader ], [ %indvar.next.epil, %.noexc44.us108.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc44.us108.us.epil.preheader ], [ %epil.iter.next, %.noexc44.us108.us.epil ]
  %i.fs = add i64 %indvar.epil, %i.eo
  %i.ft = mul i64 %factor.op.mul86, %i.fs
  %scevgep.epil = getelementptr i8, ptr %i.s, i64 %i.ft
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.eu, i1 false), !tbaa !39
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.noexc44.us108.us.epil, !llvm.loop !443

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, %._crit_edge.loopexit190.unr-lcssa, %.noexc44.us108.us.epil, %._crit_edge.loopexit189.unr-lcssa, %.noexc44.us98.epil, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not792 = icmp sgt i32 %i.k, %i.j
  br i1 %.not792, label %._crit_edge794, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge794

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge791.split
  %.0793 = phi i32 [ %i.bh, %._crit_edge791.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader672.lr.ph, label %._crit_edge791.split

.preheader672.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0793, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader672.preheader, label %._crit_edge791.split

.preheader672.preheader:                          ; preds = %.preheader672.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !444
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !444
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !444
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 2 uses
  %i.ba = and i32 %i.az, -4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 4                ; 2 uses
  %i.bd = and i32 %i.az, -4
  %i.be = add nuw nsw i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %invariant.op = add nsw i64 %i.bf, -3
  %i.bg = trunc nuw nsw i64 %i.bc to i32
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %._crit_edge
  %.0188790 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader672.preheader ]
  %.0189789 = phi i32 [ %.neg660, %._crit_edge ], [ 0, %.preheader672.preheader ]
  %.neg660 = add nuw nsw i32 %.0189789, 1         ; 5 uses
  br label %bb.c

._crit_edge791.split:                             ; preds = %._crit_edge, %.preheader672.lr.ph, %.noexc299
  %i.bh = add i32 %.0793, 1
  %exitcond839.not = icmp eq i32 %.0793, %i.j
  br i1 %exitcond839.not, label %._crit_edge794, label %.noexc299, !llvm.loop !447

._crit_edge:                                      ; preds = %bb.aa
  %exitcond838.not = icmp eq i32 %.neg660, %i.ag
  br i1 %exitcond838.not, label %._crit_edge791.split, label %.preheader672, !llvm.loop !448

bb.c:                                             ; preds = %.preheader672, %bb.aa
  %.1788 = phi ptr [ %.0188790, %.preheader672 ], [ %.3, %bb.aa ] ; 8 uses
  %.0190787 = phi i32 [ 0, %.preheader672 ], [ %i.tj, %bb.aa ] ; 4 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !249   ; 2 uses
  %.not221 = icmp eq ptr %i.bi, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !245
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0620 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bk, %bb.d ] ; 3 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !18, !noalias !449 ; 2 uses
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !449
  %i.bn = mul i64 %i.bm, %i.ap
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !449
  %i.bp = mul i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp ; 2 uses
  br i1 %i.aq, label %.preheader669.lr.ph, label %.preheader671

.preheader669.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.br = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  %.neg662 = add nuw nsw i32 %.0190787, 1
  %i.bt = load i32, ptr %16, align 4, !tbaa !68
  %i.bu = shl i32 %i.bt, 4
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.bs, label %.preheader669.lr.ph.split.us, label %.preheader669.preheader

.preheader669.preheader:                          ; preds = %.preheader669.lr.ph
  %i.bw = mul nsw i64 %i.bc, %i.bv
  %i.bx = getelementptr i8, ptr %i.bl, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.bw
  br label %.preheader671

.preheader669.lr.ph.split.us:                     ; preds = %.preheader669.lr.ph
  %i.by = load i32, ptr %9, align 4, !tbaa !68
  %i.bz = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op714.us = sub i32 %.neg660, %i.bz
  br label %.preheader669.us

.preheader669.us:                                 ; preds = %._crit_edge.us, %.preheader669.lr.ph.split.us
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %._crit_edge.us ], [ 0, %.preheader669.lr.ph.split.us ] ; 6 uses
  %.0192721.us = phi ptr [ %i.hh, %._crit_edge.us ], [ %i.bq, %.preheader669.lr.ph.split.us ] ; 3 uses
  %.1621719.us = phi <4 x float> [ %.6.us, %._crit_edge.us ], [ %.0620, %.preheader669.lr.ph.split.us ]
  %.0624718.us = phi <4 x float> [ %.5629.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %.0635717.us = phi <4 x float> [ %.5640.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %.0641716.us = phi <4 x float> [ %.5646.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %i.ca = or disjoint i64 %indvars.iv815, 3
  %i.cb = or disjoint i64 %indvars.iv815, 1
  %i.cc = or disjoint i64 %indvars.iv815, 2
  %i.cd = lshr exact i64 %indvars.iv815, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader669.us, %.loopexit666.us
  %.0199709.us = phi i32 [ 0, %.preheader669.us ], [ %i.cj, %.loopexit666.us ] ; 3 uses
  %.2622708.us = phi <4 x float> [ %.1621719.us, %.preheader669.us ], [ %.6.us, %.loopexit666.us ] ; 6 uses
  %.1625707.us = phi <4 x float> [ %.0624718.us, %.preheader669.us ], [ %.5629.us, %.loopexit666.us ] ; 6 uses
  %.1636706.us = phi <4 x float> [ %.0635717.us, %.preheader669.us ], [ %.5640.us, %.loopexit666.us ] ; 6 uses
  %.1642705.us = phi <4 x float> [ %.0641716.us, %.preheader669.us ], [ %.5646.us, %.loopexit666.us ] ; 6 uses
  %i.ce = mul nsw i32 %i.by, %.0199709.us
  %.reass715.us = add i32 %i.ce, %invariant.op714.us ; 3 uses
  %i.cf = icmp slt i32 %.reass715.us, 0
  br i1 %i.cf, label %.loopexit666.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ch = srem i32 %.reass715.us, %i.cg
  %i.ci = sdiv i32 %.reass715.us, %i.cg           ; 2 uses
  %.not231.us = icmp eq i32 %i.ch, 0
  %.not232.us = icmp slt i32 %i.ci, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader665.us, label %.loopexit666.us

.loopexit666.us:                                  ; preds = %bb.k, %bb.i, %.lr.ph.us, %.preheader665.us, %bb.f, %bb.e
  %.5646.us = phi nsz <4 x float> [ %.1642705.us, %bb.e ], [ %.1642705.us, %bb.f ], [ %.4645.us.us, %bb.i ], [ %.1642705.us, %.preheader665.us ], [ %.1642705.us, %.lr.ph.us ], [ %.4645.us693.us, %bb.k ] ; 3 uses
  %.5640.us = phi nsz <4 x float> [ %.1636706.us, %bb.e ], [ %.1636706.us, %bb.f ], [ %.4639.us.us, %bb.i ], [ %.1636706.us, %.preheader665.us ], [ %.1636706.us, %.lr.ph.us ], [ %.4639.us694.us, %bb.k ] ; 3 uses
  %.5629.us = phi nsz <4 x float> [ %.1625707.us, %bb.e ], [ %.1625707.us, %bb.f ], [ %.4628.us.us, %bb.i ], [ %.1625707.us, %.preheader665.us ], [ %.1625707.us, %.lr.ph.us ], [ %.4628.us695.us, %bb.k ] ; 3 uses
  %.6.us = phi nsz <4 x float> [ %.2622708.us, %bb.e ], [ %.2622708.us, %bb.f ], [ %.5.us.us, %bb.i ], [ %.2622708.us, %.preheader665.us ], [ %.2622708.us, %.lr.ph.us ], [ %.5.us696.us, %bb.k ] ; 3 uses
  %i.cj = add nuw nsw i32 %.0199709.us, 1         ; 2 uses
  %exitcond814.not = icmp eq i32 %i.cj, %i.br
  br i1 %exitcond814.not, label %._crit_edge.us, label %bb.e, !llvm.loop !452

.preheader665.us:                                 ; preds = %bb.f
  %i.ck = load i32, ptr %12, align 4, !tbaa !68   ; 4 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.us, label %.loopexit666.us

.lr.ph.us:                                        ; preds = %.preheader665.us
  %i.cm = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.cn = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us = sub i32 %.neg662, %i.cn      ; 2 uses
  %i.co = mul nuw nsw i32 %i.ck, %.0199709.us     ; 2 uses
  %i.cp = sext i32 %i.ci to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit666.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us684.us.preheader
  ]

.lr.ph.split.us684.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us684.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count812 = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.i
  %indvars.iv809 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next810, %bb.i ] ; 3 uses
  %.3623676.us.us = phi <4 x float> [ %.2622708.us, %.lr.ph.split.us.us.preheader ], [ %.5.us.us, %bb.i ] ; 3 uses
  %.2626675.us.us = phi <4 x float> [ %.1625707.us, %.lr.ph.split.us.us.preheader ], [ %.4628.us.us, %bb.i ] ; 3 uses
  %.2637674.us.us = phi <4 x float> [ %.1636706.us, %.lr.ph.split.us.us.preheader ], [ %.4639.us.us, %bb.i ] ; 3 uses
  %.2643673.us.us = phi <4 x float> [ %.1642705.us, %.lr.ph.split.us.us.preheader ], [ %.4645.us.us, %bb.i ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv809 to i32
  %i.cr = mul i32 %i.cm, %i.cq
  %.reass.us.us = add i32 %i.cr, %invariant.op.us ; 3 uses
  %i.cs = icmp slt i32 %.reass.us.us, 0
  br i1 %i.cs, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us
  %i.ct = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.cu = srem i32 %.reass.us.us, %i.ct
  %i.cv = sdiv i32 %.reass.us.us, %i.ct           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.cu, 0
  %.not234.us.us = icmp slt i32 %i.cv, %i.ad
  %or.cond873 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond873, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cw = trunc i64 %indvars.iv809 to i32
  %i.cx = add i32 %i.co, %i.cw
  %i.cy = shl nsw i32 %i.cx, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0192721.us, i64 %i.cz ; 4 uses
  %i.db = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !453
  %i.dc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !453
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !453
  %i.de = mul i64 %i.dd, %i.cd
  %i.df = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !453 ; 2 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.cp
  %i.dk = mul i64 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = shl nsw i32 %i.cv, 2
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dn ; 4 uses
  %i.dp = load float, ptr %i.do, align 1, !tbaa !245
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dt = load float, ptr %i.ds, align 1, !tbaa !245
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dx = load float, ptr %i.dw, align 1, !tbaa !245
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.eb = load float, ptr %i.ea, align 1, !tbaa !245
  %i.ec = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = load <4 x float>, ptr %i.da, align 16, !tbaa !245
  %i.ef = fmul fast <4 x float> %i.ee, %i.dr
  %i.eg = fadd fast <4 x float> %i.ef, %.3623676.us.us
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !245
  %i.ej = fmul fast <4 x float> %i.ei, %i.dv
  %i.ek = fadd fast <4 x float> %i.ej, %.2626675.us.us
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !245
  %i.en = fmul fast <4 x float> %i.em, %i.dz
  %i.eo = fadd fast <4 x float> %i.en, %.2637674.us.us
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !245
  %i.er = fmul fast <4 x float> %i.eq, %i.ed
  %i.es = fadd fast <4 x float> %i.er, %.2643673.us.us
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.rx = fadd fast <4 x float> %i.rw, splat (float f0x3C088908)
  %i.ry = fmul fast <4 x float> %i.rx, %i.rs
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3D2AA9C1)
  %i.sa = fmul fast <4 x float> %i.rz, %i.rs
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3E2AAAAA)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rs
  %i.sd = fadd fast <4 x float> %i.sc, splat (float 5.000000e-01)
  %i.se = fmul fast <4 x float> %i.rt, %i.sd
  %i.sf = fadd fast <4 x float> %i.rs, splat (float 1.000000e+00)
  %i.sg = fadd fast <4 x float> %i.sf, %i.se
  %i.sh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rq)
  %i.si = shl <4 x i32> %i.sh, splat (i32 23)
  %i.sj = add <4 x i32> %i.si, splat (i32 1065353216)
  %i.sk = bitcast <4 x i32> %i.sj to <4 x float>
  %i.sl = fmul fast <4 x float> %i.sg, %i.sk
  %i.sm = fadd fast <4 x float> %i.sl, splat (float 1.000000e+00)
  %i.sn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sm
  %i.so = fadd fast <4 x float> %i.sn, splat (float -1.000000e+00)
  %i.sp = fmul fast <4 x float> %i.so, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge779
  %i.sq = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !39
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sy = fmul fast <4 x float> %i.st, %i.mr
  %i.sz = fadd fast <4 x float> %i.sy, %i.sx
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> zeroinitializer)
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float 1.000000e+00))
  %i.tc = fmul fast <4 x float> %i.tb, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge779
  %.0.i = phi nsz <4 x float> [ %i.tc, %bb.y ], [ %i.mt, %bb.w ], [ %i.nb, %.noexc308 ], [ %i.nl, %bb.x ], [ %i.os, %.noexc309 ], [ %i.sp, %.noexc310 ], [ %i.mr, %._crit_edge779 ] ; 5 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1788, align 1, !tbaa !245
  %i.td = getelementptr inbounds nuw i8, ptr %.1788, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1788, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.te = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.1788, i64 %i.te
  store float %.sroa.0.4.vec.extract, ptr %i.tf, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.te, 3
  %i.tg = getelementptr inbounds nuw i8, ptr %.1788, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.tg, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx222 = mul i64 %i.te, 12
  %i.th = getelementptr inbounds nuw i8, ptr %.1788, i64 %.idx222
  store float %.sroa.0.12.vec.extract, ptr %i.th, align 4, !tbaa !39
  %i.ti = getelementptr inbounds nuw i8, ptr %.1788, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.ti, %bb.z ], [ %.1788, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.td, %.thread ] ; 2 uses
  %i.tj = add nuw nsw i32 %.0190787, 1            ; 2 uses
  %exitcond837.not = icmp eq i32 %i.tj, %i.af
  br i1 %exitcond837.not, label %._crit_edge, label %bb.c, !llvm.loop !473

._crit_edge794:                                   ; preds = %._crit_edge791.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge794, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not804 = icmp sgt i32 %i.k, %i.j
  br i1 %.not804, label %._crit_edge806, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge806

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge803.split
  %.0805 = phi i32 [ %i.bi, %._crit_edge803.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader684.lr.ph, label %._crit_edge803.split

.preheader684.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0805, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader684.preheader, label %._crit_edge803.split

.preheader684.preheader:                          ; preds = %.preheader684.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !474
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !474
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !474
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483646
  %narrow = add nuw i32 %i.bb, 2
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -4
  %i.be = add nuw nsw i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -4
  %i.bh = add i32 %i.bg, 4
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader, %._crit_edge
  %.0188802 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader684.preheader ]
  %.0189801 = phi i32 [ %.neg672, %._crit_edge ], [ 0, %.preheader684.preheader ]
  %.neg672 = add nuw nsw i32 %.0189801, 1         ; 5 uses
  br label %bb.c

._crit_edge803.split:                             ; preds = %._crit_edge, %.preheader684.lr.ph, %.noexc299
  %i.bi = add i32 %.0805, 1
  %exitcond851.not = icmp eq i32 %.0805, %i.j
  br i1 %exitcond851.not, label %._crit_edge806, label %.noexc299, !llvm.loop !477

._crit_edge:                                      ; preds = %bb.aa
  %exitcond850.not = icmp eq i32 %.neg672, %i.ag
  br i1 %exitcond850.not, label %._crit_edge803.split, label %.preheader684, !llvm.loop !478

bb.c:                                             ; preds = %.preheader684, %bb.aa
  %.1800 = phi ptr [ %.0188802, %.preheader684 ], [ %.3, %bb.aa ] ; 8 uses
  %.0190799 = phi i32 [ 0, %.preheader684 ], [ %i.wn, %bb.aa ] ; 4 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !249   ; 2 uses
  %.not221 = icmp eq ptr %i.bj, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !245
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0632 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !18, !noalias !479 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !479
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !479
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader681.lr.ph, label %.preheader683

.preheader681.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.bs = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg674 = add nuw nsw i32 %.0190799, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !68
  %i.bv = shl i32 %i.bu, 4
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader681.lr.ph.split.us, label %.preheader681.preheader

.preheader681.preheader:                          ; preds = %.preheader681.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader683

.preheader681.lr.ph.split.us:                     ; preds = %.preheader681.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !68
  %i.ca = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op726.us = sub i32 %.neg672, %i.ca
  br label %.preheader681.us

.preheader681.us:                                 ; preds = %._crit_edge.us, %.preheader681.lr.ph.split.us
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %._crit_edge.us ], [ 0, %.preheader681.lr.ph.split.us ] ; 6 uses
  %.0192733.us = phi ptr [ %i.jg, %._crit_edge.us ], [ %i.br, %.preheader681.lr.ph.split.us ] ; 3 uses
  %.1633731.us = phi <4 x float> [ %.6.us, %._crit_edge.us ], [ %.0632, %.preheader681.lr.ph.split.us ]
  %.0636730.us = phi <4 x float> [ %.5641.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0647729.us = phi <4 x float> [ %.5652.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0653728.us = phi <4 x float> [ %.5658.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv827, 3
  %i.cc = or disjoint i64 %indvars.iv827, 1
  %i.cd = or disjoint i64 %indvars.iv827, 2
  %i.ce = lshr exact i64 %indvars.iv827, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader681.us, %.loopexit678.us
  %.0199721.us = phi i32 [ 0, %.preheader681.us ], [ %i.ck, %.loopexit678.us ] ; 3 uses
  %.2634720.us = phi <4 x float> [ %.1633731.us, %.preheader681.us ], [ %.6.us, %.loopexit678.us ] ; 6 uses
  %.1637719.us = phi <4 x float> [ %.0636730.us, %.preheader681.us ], [ %.5641.us, %.loopexit678.us ] ; 6 uses
  %.1648718.us = phi <4 x float> [ %.0647729.us, %.preheader681.us ], [ %.5652.us, %.loopexit678.us ] ; 6 uses
  %.1654717.us = phi <4 x float> [ %.0653728.us, %.preheader681.us ], [ %.5658.us, %.loopexit678.us ] ; 6 uses
  %i.cf = mul nsw i32 %i.bz, %.0199721.us
  %.reass727.us = add i32 %i.cf, %invariant.op726.us ; 3 uses
  %i.cg = icmp slt i32 %.reass727.us, 0
  br i1 %i.cg, label %.loopexit678.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ci = srem i32 %.reass727.us, %i.ch
  %i.cj = sdiv i32 %.reass727.us, %i.ch           ; 2 uses
  %.not231.us = icmp eq i32 %i.ci, 0
  %.not232.us = icmp slt i32 %i.cj, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader677.us, label %.loopexit678.us

.loopexit678.us:                                  ; preds = %bb.k, %bb.i, %.lr.ph.us, %.preheader677.us, %bb.f, %bb.e
  %.5658.us = phi nsz <4 x float> [ %.1654717.us, %bb.e ], [ %.1654717.us, %bb.f ], [ %.4657.us.us, %bb.i ], [ %.1654717.us, %.preheader677.us ], [ %.1654717.us, %.lr.ph.us ], [ %.4657.us705.us, %bb.k ] ; 3 uses
  %.5652.us = phi nsz <4 x float> [ %.1648718.us, %bb.e ], [ %.1648718.us, %bb.f ], [ %.4651.us.us, %bb.i ], [ %.1648718.us, %.preheader677.us ], [ %.1648718.us, %.lr.ph.us ], [ %.4651.us706.us, %bb.k ] ; 3 uses
  %.5641.us = phi nsz <4 x float> [ %.1637719.us, %bb.e ], [ %.1637719.us, %bb.f ], [ %.4640.us.us, %bb.i ], [ %.1637719.us, %.preheader677.us ], [ %.1637719.us, %.lr.ph.us ], [ %.4640.us707.us, %bb.k ] ; 3 uses
  %.6.us = phi nsz <4 x float> [ %.2634720.us, %bb.e ], [ %.2634720.us, %bb.f ], [ %.5.us.us, %bb.i ], [ %.2634720.us, %.preheader677.us ], [ %.2634720.us, %.lr.ph.us ], [ %.5.us708.us, %bb.k ] ; 3 uses
  %i.ck = add nuw nsw i32 %.0199721.us, 1         ; 2 uses
  %exitcond826.not = icmp eq i32 %i.ck, %i.bs
  br i1 %exitcond826.not, label %._crit_edge.us, label %bb.e, !llvm.loop !482

.preheader677.us:                                 ; preds = %bb.f
  %i.cl = load i32, ptr %12, align 4, !tbaa !68   ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %.loopexit678.us

.lr.ph.us:                                        ; preds = %.preheader677.us
  %i.cn = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.co = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us = sub i32 %.neg674, %i.co      ; 2 uses
  %i.cp = mul nuw nsw i32 %i.cl, %.0199721.us     ; 2 uses
  %i.cq = sext i32 %i.cj to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit678.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us696.us.preheader
  ]

.lr.ph.split.us696.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us696.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count824 = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.i
  %indvars.iv821 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next822, %bb.i ] ; 3 uses
  %.3635688.us.us = phi <4 x float> [ %.2634720.us, %.lr.ph.split.us.us.preheader ], [ %.5.us.us, %bb.i ] ; 3 uses
  %.2638687.us.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us.us.preheader ], [ %.4640.us.us, %bb.i ] ; 3 uses
  %.2649686.us.us = phi <4 x float> [ %.1648718.us, %.lr.ph.split.us.us.preheader ], [ %.4651.us.us, %bb.i ] ; 3 uses
  %.2655685.us.us = phi <4 x float> [ %.1654717.us, %.lr.ph.split.us.us.preheader ], [ %.4657.us.us, %bb.i ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv821 to i32
  %i.cs = mul i32 %i.cn, %i.cr
  %.reass.us.us = add i32 %i.cs, %invariant.op.us ; 3 uses
  %i.ct = icmp slt i32 %.reass.us.us, 0
  br i1 %i.ct, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us
  %i.cu = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.cv = srem i32 %.reass.us.us, %i.cu
  %i.cw = sdiv i32 %.reass.us.us, %i.cu           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.cv, 0
  %.not234.us.us = icmp slt i32 %i.cw, %i.ad
  %or.cond885 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond885, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cx = trunc i64 %indvars.iv821 to i32
  %i.cy = add i32 %i.cp, %i.cx
  %i.cz = shl nsw i32 %i.cy, 4
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0192733.us, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !483
  %i.dd = load ptr, ptr %4, align 8, !tbaa !18, !noalias !483
  %i.de = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !483
  %i.df = mul i64 %i.de, %i.ce
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !483 ; 2 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = mul nsw i64 %i.dj, %i.cq
  %i.dl = mul i64 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = shl nsw i32 %i.cw, 2
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !328
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 16
  %i.dt = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !328
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw i32 %i.dy, 16
  %i.ea = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.eb = bitcast <4 x i32> %i.ea to <4 x float>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ee = load <2 x i16>, ptr %i.ed, align 2, !tbaa !328
  %i.ef = zext <2 x i16> %i.ee to <2 x i32>
  %i.eg = shl nuw <2 x i32> %i.ef, splat (i32 16) ; 2 uses
  %i.eh = bitcast <2 x i32> %i.eg to <2 x float>
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ej = bitcast <2 x i32> %i.eg to <2 x float>
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.el = load i64, ptr %i.db, align 1, !tbaa !245
  %i.em = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.en = bitcast <2 x i64> %i.em to <8 x i16>
  %i.eo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.en, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ep = bitcast <8 x i16> %i.eo to <4 x float>
  %i.eq = fmul fast <4 x float> %i.dv, %i.ep
  %i.er = fadd fast <4 x float> %i.eq, %.3635688.us.us
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 8
end_hunk_2
