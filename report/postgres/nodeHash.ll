Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeHash?download=true
inline.NumInlined: 122
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ExecHashTableCreate:bb.a
  %i.gc = load i64, ptr %i.bd, align 8
  %i.gd = add i64 %i.gc, %i.fz
  store i64 %i.gd, ptr %i.bd, align 8
  %i.ge = load i64, ptr %i.ba, align 8
  %i.gf = icmp ugt i64 %i.gb, %i.ge
  br i1 %i.gf, label %bb.q, label %.lr.ph101.i

bb.q:                                             ; preds = %bb.p
  store i64 %i.gb, ptr %i.ba, align 8
  br label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %bb.q, %bb.p
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = add i32 %i.fr, -1                       ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i, %.lr.ph101.i
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph101.i ], [ %indvars.iv.next108.i, %.critedge.i ] ; 2 uses
  %i.gk = load ptr, ptr %i.gg, align 8
  %i.gl = load i32, ptr %i.gh, align 8
  %i.gm = load ptr, ptr %i.gi, align 8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv107.i
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = call i64 @FunctionCall1Coll(ptr noundef %i.gk, i32 noundef %i.gl, i64 noundef %i.go) #15
  %i.gq = trunc i64 %i.gp to i32                  ; 3 uses
  %i.gr = load ptr, ptr %i.am, align 8            ; 2 uses
  %.091.i = and i32 %i.gj, %i.gq                  ; 3 uses
  %i.gs = sext i32 %.091.i to i64                 ; 2 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not8492.i = icmp eq ptr %i.gu, null
  br i1 %.not8492.i, label %._crit_edge96.i, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.r, %bb.s
  %i.gv = phi ptr [ %i.ha, %bb.s ], [ %i.gu, %bb.r ]
  %.093.i = phi i32 [ %.0.i83, %bb.s ], [ %.091.i, %bb.r ]
  %i.gw = load i32, ptr %i.gv, align 8
  %.not85.i = icmp eq i32 %i.gw, %i.gq
  br i1 %.not85.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph95.i
  %i.gx = add i32 %.093.i, 1
  %.0.i83 = and i32 %i.gx, %i.gj                  ; 3 uses
  %i.gy = sext i32 %.0.i83 to i64                 ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not84.i = icmp eq ptr %i.ha, null
  br i1 %.not84.i, label %._crit_edge96.i, label %.lr.ph95.i, !llvm.loop !26

._crit_edge96.i:                                  ; preds = %bb.s, %bb.r
  %.0.lcssa.i = phi i32 [ %.091.i, %bb.r ], [ %.0.i83, %bb.s ]
  %.lcssa.i = phi i64 [ %i.gs, %bb.r ], [ %i.gy, %bb.s ] ; 3 uses
  %i.hb = load ptr, ptr %i.bu, align 8
  %i.hc = call ptr @MemoryContextAlloc(ptr noundef %i.hb, i64 noundef 16) #15
  %i.hd = load ptr, ptr %i.am, align 8
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %.lcssa.i
  store ptr %i.hc, ptr %i.he, align 8
  %i.hf = load ptr, ptr %i.am, align 8
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %.lcssa.i
  %i.hh = load ptr, ptr %i.hg, align 8
  store i32 %i.gq, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.am, align 8
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %.lcssa.i
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr null, ptr %i.hl, align 8
  %i.hm = load ptr, ptr %i.ap, align 8
  %i.hn = load i32, ptr %i.ao, align 4
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  store i32 %.0.lcssa.i, ptr %i.hp, align 4
  %i.hq = load i32, ptr %i.ao, align 4
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ao, align 4
  %i.hs = load i64, ptr %i.az, align 8
  %i.ht = add i64 %i.hs, 16                       ; 3 uses
  store i64 %i.ht, ptr %i.az, align 8
  %i.hu = load i64, ptr %i.bd, align 8
  %i.hv = add i64 %i.hu, 16
  store i64 %i.hv, ptr %i.bd, align 8
  %i.hw = load i64, ptr %i.ba, align 8
  %i.hx = icmp ugt i64 %i.ht, %i.hw
  br i1 %i.hx, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %._crit_edge96.i
  store i64 %i.ht, ptr %i.ba, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph95.i, %bb.t, %._crit_edge96.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i79
  br i1 %exitcond111.not.i, label %.sink.split.sink.split.i, label %bb.r, !llvm.loop !27

.sink.split.sink.split.i:                         ; preds = %.critedge.i, %._crit_edge.i, %bb.m
  call void @free_attstatsslot(ptr noundef nonnull %1) #15
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.l
  call void @ReleaseSysCache(ptr noundef nonnull %i.ef) #15
  br label %ExecHashBuildSkewHash.exit

ExecHashBuildSkewHash.exit:                       ; preds = %bb.j, %bb.k, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.u

bb.u:                                             ; preds = %ExecHashBuildSkewHash.exit, %bb.i
  store ptr %i.bz, ptr @CurrentMemoryContext, align 8
  br label %ExecParallelHashTableAlloc.exit

ExecParallelHashTableAlloc.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ExecParallelHashTableAlloc.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ExecParallelHashTableAlloc.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %ExecParallelHashTableAlloc.exit.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i.epil
  store volatile i64 0, ptr %i.hy, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ExecParallelHashTableAlloc.exit, label %.lr.ph.i.epil, !llvm.loop !28

ExecParallelHashTableAlloc.exit:                  ; preds = %ExecParallelHashTableAlloc.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.h, %.thread, %bb.g, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.af
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ExecChooseHashTableSize(double noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef captures(none) initializes((0, 4)) %8) local_unnamed_addr #4 {
tailrecurse.peel.begin:
  %i.a = add i32 %1, 7
  %i.b = and i32 %i.a, -8
  %i.c = add i32 %i.b, 32                         ; 2 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = add nsw i64 %i.e, 84                     ; 4 uses
  %i.g = fcmp ole double %0, 0.000000e+00
  %spec.store.select.peel = select i1 %i.g, double 1.000000e+03, double %0 ; 2 uses
  %i.h = fmul double %spec.store.select.peel, %i.d ; 3 uses
  %i.i = load i32, ptr @work_mem, align 4
  %i.j = sitofp i32 %i.i to double
  %i.k = load double, ptr @hash_mem_multiplier, align 8
  %i.l = fmul double %i.k, %i.j
  %i.m = fmul double %i.l, 1.024000e+03           ; 2 uses
  %i.n = fcmp olt double %i.m, f0x43F0000000000000
  %i.o = select i1 %i.n, double %i.m, double f0x43F0000000000000
  %i.p = fptoui double %i.o to i64                ; 2 uses
  br i1 %3, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tailrecurse.peel.begin
  %i.q = add i32 %4, 1
  %i.r = sitofp i32 %i.q to double
  %i.s = uitofp i64 %i.p to double
  %i.t = fmul nnan double %i.r, %i.s              ; 2 uses
  %i.u = fcmp olt double %i.t, f0x43F0000000000000
  %i.v = select i1 %i.u, double %i.t, double f0x43F0000000000000
  %i.w = fptoui double %i.v to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tailrecurse.peel.begin
  %.098.peel = phi i64 [ %i.w, %bb.a ], [ %i.p, %tailrecurse.peel.begin ] ; 4 uses
  store i64 %.098.peel, ptr %5, align 8
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = udiv i64 %.098.peel, %i.f                ; 2 uses
  %i.y = udiv i64 %i.x, 50
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 2147483647) ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %.not.peel = icmp samesign ult i64 %i.x, 50
  %i.ab = mul nsw i64 %i.z, %i.f
  %i.ac = select i1 %.not.peel, i64 0, i64 %i.ab
  %.199.peel = sub i64 %.098.peel, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.aa, %bb.c ], [ 0, %bb.b ]
  %.2100.peel = phi i64 [ %.199.peel, %bb.c ], [ %.098.peel, %bb.b ] ; 3 uses
  store i32 %.sink, ptr %8, align 4
  %i.ad = lshr i64 %.2100.peel, 3
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 134217727)
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 2305843009213693952) %i.ae, i1 true)
  %i.ag = lshr exact i64 -9223372036854775808, %i.af ; 2 uses
  %i.ah = tail call double @llvm.ceil.f64(double %spec.store.select.peel) ; 4 uses
  %i.ai = uitofp nneg i64 %i.ag to double         ; 3 uses
  %i.aj = fcmp olt double %i.ah, %i.ai
  %i.ak = select i1 %i.aj, double %i.ah, double %i.ai
  %i.al = fptosi double %i.ak to i32
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1024) ; 3 uses
  %i.an = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.am)
  %i.ao = icmp samesign ult i32 %i.an, 2
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.aq = xor i32 %i.ap, 31
  %i.ar = shl nuw i32 2, %i.aq
  %.0.i.peel = select i1 %i.ao, i32 %i.am, i32 %i.ar ; 2 uses
  %i.as = sext i32 %.0.i.peel to i64
  %i.at = shl nsw i64 %i.as, 3
  %i.au = uitofp i64 %i.at to double
  %i.av = fadd double %i.h, %i.au
  %i.aw = uitofp i64 %.2100.peel to double
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  br i1 %3, label %bb.f, label %.loopexit145

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr @work_mem, align 4
  %i.az = sitofp i32 %i.ay to double
  %i.ba = load double, ptr @hash_mem_multiplier, align 8
  %i.bb = fmul double %i.ba, %i.az
  %i.bc = fmul double %i.bb, 1.024000e+03         ; 2 uses
  %i.bd = fcmp olt double %i.bc, f0x43F0000000000000
  %i.be = select i1 %i.bd, double %i.bc, double f0x43F0000000000000
  %i.bf = fptoui double %i.be to i64              ; 4 uses
  store i64 %i.bf, ptr %5, align 8
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = udiv i64 %i.bf, %i.f                    ; 2 uses
  %i.bh = udiv i64 %i.bg, 50
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2147483647) ; 2 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %.not = icmp samesign ult i64 %i.bg, 50
  %i.bk = mul nsw i64 %i.bi, %i.f
  %i.bl = select i1 %.not, i64 0, i64 %i.bk
  %.199 = sub i64 %i.bf, %i.bl
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink146 = phi i32 [ %i.bj, %bb.g ], [ 0, %bb.f ]
  %.2100 = phi i64 [ %.199, %bb.g ], [ %i.bf, %bb.f ] ; 3 uses
  store i32 %.sink146, ptr %8, align 4
  %i.bm = lshr i64 %.2100, 3
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 134217727)
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 2305843009213693952) %i.bn, i1 true)
  %i.bp = lshr exact i64 -9223372036854775808, %i.bo ; 2 uses
  %i.bq = uitofp nneg i64 %i.bp to double         ; 3 uses
  %i.br = fcmp olt double %i.ah, %i.bq
  %i.bs = select i1 %i.br, double %i.ah, double %i.bq
  %i.bt = fptosi double %i.bs to i32
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 1024) ; 3 uses
  %i.bv = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.bu)
  %i.bw = icmp samesign ult i32 %i.bv, 2
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bu, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = shl nuw i32 2, %i.by
  %.0.i = select i1 %i.bw, i32 %i.bu, i32 %i.bz   ; 2 uses
  %i.ca = sext i32 %.0.i to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %i.cc = uitofp i64 %i.cb to double
  %i.cd = fadd double %i.h, %i.cc
  %i.ce = uitofp i64 %.2100 to double
  %i.cf = fcmp ogt double %i.cd, %i.ce
  br i1 %i.cf, label %.loopexit145, label %._crit_edge

.loopexit145:                                     ; preds = %bb.h, %bb.e
  %.2100.lcssa143 = phi i64 [ %.2100.peel, %bb.e ], [ %.2100, %bb.h ] ; 3 uses
  %.lcssa142 = phi i64 [ %i.ag, %bb.e ], [ %i.bp, %bb.h ]
  %.lcssa140 = phi double [ %i.ai, %bb.e ], [ %i.bq, %bb.h ] ; 2 uses
  %i.cg = add nsw i64 %i.e, 8                     ; 2 uses
  %.not104 = icmp ugt i64 %.2100.lcssa143, %i.cg
  br i1 %.not104, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.loopexit145
  %i.ch = udiv i64 %.2100.lcssa143, %i.cg         ; 3 uses
  %i.ci = tail call range(i64 0, 62) i64 @llvm.ctpop.i64(i64 %i.ch)
  %i.cj = icmp samesign ult i64 %i.ci, 2
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cl = sub nuw nsw i64 64, %i.ck
  %i.cm = shl nuw i64 1, %i.cl
  %.0.i108 = select i1 %i.cj, i64 %i.ch, i64 %i.cm
  %i.cn = tail call i64 @llvm.umin.i64(i64 %.0.i108, i64 %.lcssa142)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit145, %bb.i
  %.093 = phi i32 [ %i.co, %bb.i ], [ 1, %.loopexit145 ] ; 3 uses
  %i.cp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.093)
  %i.cq = icmp samesign ult i32 %i.cp, 2
  %i.cr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.093, i1 true)
  %i.cs = xor i32 %i.cr, 31
  %i.ct = shl nuw nsw i32 2, %i.cs
  %.0.i109 = select i1 %i.cq, i32 %.093, i32 %i.ct ; 4 uses
  %i.cu = zext nneg i32 %.0.i109 to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = sub i64 %.2100.lcssa143, %i.cv
  %i.cx = uitofp i64 %i.cw to double
  %i.cy = fdiv double %i.h, %i.cx
  %i.cz = tail call double @llvm.ceil.f64(double %i.cy) ; 2 uses
  %i.da = fcmp olt double %i.cz, %.lcssa140
  %i.db = select i1 %i.da, double %i.cz, double %.lcssa140
  %i.dc = fptosi double %i.db to i32
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 2) ; 3 uses
  %i.de = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.dd)
  %i.df = icmp samesign ult i32 %i.de, 2
  %i.dg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dd, i1 true)
  %i.dh = xor i32 %i.dg, 31
  %i.di = shl nuw i32 2, %i.dh
  %.0.i110 = select i1 %i.df, i32 %i.dd, i32 %i.di ; 3 uses
  %i.dj = icmp slt i32 %.0.i110, 2
  %i.dk = icmp samesign ugt i32 %.0.i109, 67108863
  %or.cond130 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond130, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %.pre = load i64, ptr %5, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.dl = phi i64 [ %i.du, %bb.j ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.2132 = phi i32 [ %i.dq, %bb.j ], [ %.0.i109, %.lr.ph.preheader ] ; 3 uses
  %.297131 = phi i32 [ %i.dv, %bb.j ], [ %.0.i110, %.lr.ph.preheader ] ; 4 uses
  %i.dm = icmp slt i64 %i.dl, 0
  %i.dn = zext nneg i32 %.297131 to i64
  %i.do = lshr i64 %i.dl, 13
  %i.dp = icmp samesign ugt i64 %i.do, %i.dn
  %or.cond107 = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %or.cond107, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dq = shl nuw nsw i32 %.2132, 1               ; 2 uses
  %i.dr = load i32, ptr %8, align 4
  %i.ds = shl i32 %i.dr, 1
  store i32 %i.ds, ptr %8, align 4
  %i.dt = load i64, ptr %5, align 8
  %i.du = shl i64 %i.dt, 1                        ; 2 uses
  store i64 %i.du, ptr %5, align 8
  %i.dv = lshr i32 %.297131, 1                    ; 2 uses
  %i.dw = icmp ult i32 %.297131, 4
  %i.dx = icmp ugt i32 %.2132, 33554431
  %or.cond = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %bb.d, %bb.h, %.loopexit
  %.297.lcssa = phi i32 [ %.0.i110, %.loopexit ], [ 1, %bb.h ], [ 1, %bb.d ], [ %i.dv, %bb.j ], [ %.297131, %.lr.ph ]
  %.2.lcssa = phi i32 [ %.0.i109, %.loopexit ], [ %.0.i, %bb.h ], [ %.0.i.peel, %bb.d ], [ %i.dq, %bb.j ], [ %.2132, %.lr.ph ]
  store i32 %.2.lcssa, ptr %6, align 4
  store i32 %.297.lcssa, ptr %7, align 4
  ret void
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @PrepareTempTablespaces() local_unnamed_addr #1

declare i32 @BarrierAttach(ptr noundef) local_unnamed_addr #1

declare i32 @BarrierPhase(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @BarrierArriveAndWait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ExecParallelHashJoinSetUpBatches(ptr nofree noundef captures(none) initializes((64, 68), (224, 232)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i64 @sts_estimate(i32 noundef %i.g) #15
  %i.i = shl i64 %i.h, 1
  %i.j = add i64 %i.i, 14
  %i.k = and i64 %i.j, -16
  %i.l = add i64 %i.k, 96
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %i.n = mul i64 %i.l, %i.m
  %i.o = tail call i64 @dsa_allocate_extended(ptr noundef %i.e, i64 noundef %i.n, i32 noundef 4) #15 ; 2 uses
  store i64 %i.o, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %1, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = tail call ptr @dsa_get_address(ptr noundef %i.q, i64 noundef %i.o) #15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.t, ptr @CurrentMemoryContext, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store i32 %1, ptr %i.v, align 8
  %i.w = tail call ptr @palloc0_mul(i64 noundef 72, i64 noundef %i.m) #15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load i32, ptr %i.v, align 8
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %indvars.iv ; 3 uses
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = call i64 @sts_estimate(i32 noundef %i.af) #15
  %i.ah = shl i64 %i.ag, 1
  %i.ai = add i64 %i.ah, 14
  %i.aj = and i64 %i.ai, -16
  %i.ak = add i64 %i.aj, 96
  %i.al = mul i64 %i.ak, %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.al ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 6 uses
  call void @BarrierInit(ptr noundef nonnull %i.an, i32 noundef 0) #15
  %i.ao = icmp eq i64 %indvars.iv, 0
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = call i32 @BarrierAttach(ptr noundef nonnull %i.an) #15 ; 0 uses
  %i.aq = call i32 @BarrierPhase(ptr noundef nonnull %i.an) #15
  %i.ar = icmp slt i32 %i.aq, 3
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.as = call zeroext i1 @BarrierArriveAndWait(ptr noundef nonnull %i.an, i32 noundef 0) #15 ; 0 uses
  %i.at = call i32 @BarrierPhase(ptr noundef nonnull %i.an) #15
  %i.au = icmp slt i32 %i.at, 3
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.av = call zeroext i1 @BarrierDetach(ptr noundef nonnull %i.an) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  store ptr %i.am, ptr %i.ac, align 8
  %i.aw = load i32, ptr %i.v, align 8
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ay = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.5, i32 noundef %i.ax, i32 noundef %i.aw) #15 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.ba = load i32, ptr %i.f, align 8
  %i.bb = load i32, ptr @ParallelWorkerNumber, align 4
  %i.bc = add i32 %i.bb, 1
  %i.bd = call ptr @sts_initialize(ptr noundef nonnull %i.az, i32 noundef %i.ba, i32 noundef %i.bc, i64 noundef 4, i32 noundef 1, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a) #15
end_hunk_0
begin_hunk_1_@ExecParallelHashIncreaseNumBuckets:bb.a
._crit_edge51:                                    ; preds = %bb.h, %bb.e
  %.lcssa = phi ptr [ %i.bp, %bb.e ], [ %i.dc, %bb.h ]
  tail call void @LWLockRelease(ptr noundef nonnull %.lcssa) #15
  %i.dg = tail call zeroext i1 @BarrierArriveAndWait(ptr noundef nonnull %i.c, i32 noundef 134217758) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge51, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ExecParallelHashEnsureBatchAccessors(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.f, 0
  br i1 %i.j, label %.lr.ph.i, label %ExecParallelHashCloseBatchAccessors.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 5 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @sts_end_write(ptr noundef %i.n) #15
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @sts_end_write(ptr noundef %i.r) #15
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @sts_end_parallel_scan(ptr noundef %i.v) #15
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @sts_end_parallel_scan(ptr noundef %i.z) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %ExecParallelHashCloseBatchAccessors.exit.loopexit, !llvm.loop !4

ExecParallelHashCloseBatchAccessors.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %ExecParallelHashCloseBatchAccessors.exit

ExecParallelHashCloseBatchAccessors.exit:         ; preds = %ExecParallelHashCloseBatchAccessors.exit.loopexit, %bb.c
  %i.ad = phi ptr [ %.pre, %ExecParallelHashCloseBatchAccessors.exit.loopexit ], [ %i.d, %bb.c ]
  tail call void @pfree(ptr noundef %i.ad) #15
  store ptr null, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %ExecParallelHashCloseBatchAccessors.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.af, ptr @CurrentMemoryContext, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = sext i32 %i.ai to i64
  %i.al = tail call ptr @palloc0_mul(i64 noundef 72, i64 noundef %i.ak) #15
  store ptr %i.al, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.b, align 8
  %i.ap = tail call ptr @dsa_get_address(ptr noundef %i.an, i64 noundef %i.ao) #15
  %i.aq = load i32, ptr %i.aj, align 8
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %indvars.iv ; 6 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = tail call i64 @sts_estimate(i32 noundef %i.ay) #15
  %i.ba = shl i64 %i.az, 1
  %i.bb = add i64 %i.ba, 14
  %i.bc = and i64 %i.bb, -16
  %i.bd = add i64 %i.bc, 96
  %i.be = mul i64 %i.bd, %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.be ; 2 uses
  store ptr %i.bf, ptr %i.av, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 50
  store i8 0, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 49
  store i8 0, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 96 ; 2 uses
  %i.bk = load i32, ptr @ParallelWorkerNumber, align 4
  %i.bl = add i32 %i.bk, 1
  %i.bm = tail call ptr @sts_attach(ptr noundef nonnull %i.bj, i32 noundef %i.bl, ptr noundef nonnull %i.as) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = load i32, ptr %i.at, align 8
  %i.bp = tail call i64 @sts_estimate(i32 noundef %i.bo) #15
  %i.bq = add i64 %i.bp, 7
  %i.br = and i64 %i.bq, -8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  %i.bt = load i32, ptr @ParallelWorkerNumber, align 4
  %i.bu = add i32 %i.bt, 1
  %i.bv = tail call ptr @sts_attach(ptr noundef nonnull %i.bs, i32 noundef %i.bu, ptr noundef nonnull %i.as) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store ptr %i.bv, ptr %i.bw, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.aj, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.e, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.e, %bb.d
  store ptr %i.ag, ptr @CurrentMemoryContext, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare zeroext i1 @BarrierDetach(ptr noundef) local_unnamed_addr #1

declare i64 @sts_estimate(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #1

declare ptr @sts_attach(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @sts_begin_parallel_scan(ptr noundef) local_unnamed_addr #1

declare ptr @sts_parallel_scan_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #13

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare ptr @repalloc0(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @SearchSysCache3(i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @get_attstatsslot(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @free_attstatsslot(ptr noundef) local_unnamed_addr #1

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #1

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @FunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @BarrierInit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @sts_initialize(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !11}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{i64 2840057, i64 2840074, i64 2840097}
!15 = distinct !{null, null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !11}
!18 = distinct !{null, null}
!19 = distinct !{null, null}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !11}
!49 = distinct !{null}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
end_hunk_1
