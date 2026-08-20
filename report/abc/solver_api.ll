inline.NumInlined: 299
inline.NumDeleted: 86
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@satoko_minimize_assumptions:bb.a
  %i.gb = add nsw i64 %i.ga, %i.g
  br label %satoko_solve_assumptions_limit.exit100

satoko_solve_assumptions_limit.exit100:           ; preds = %._crit_edge131, %bb.r
  %i.gc = phi i64 [ %i.gb, %bb.r ], [ 0, %._crit_edge131 ]
  store i64 %i.gc, ptr %i.e, align 8, !tbaa !137
  %i.gd = tail call i32 @satoko_solve(ptr noundef nonnull %0)
  %sext.i99 = shl i64 %i.fz, 32
  %i.ge = ashr exact i64 %sext.i99, 32
  store i64 %i.ge, ptr %i.e, align 8, !tbaa !137
  %i.gf = icmp eq i32 %i.gd, -1
  br i1 %i.gf, label %.preheader, label %bb.s

.preheader:                                       ; preds = %satoko_solve_assumptions_limit.exit100
  br i1 %i.cf, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %.preheader, %.lr.ph137
  %.7136 = phi i32 [ %i.gk, %.lr.ph137 ], [ 0, %.preheader ]
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !99
  %i.gj = add i32 %i.gi, -1                       ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !99
  tail call void @solver_cancel_until(ptr noundef nonnull %0, i32 noundef %i.gj) #30
  %i.gk = add nuw nsw i32 %.7136, 1               ; 2 uses
  %exitcond172.not = icmp eq i32 %i.gk, %i.bs
  br i1 %exitcond172.not, label %.loopexit, label %.lr.ph137, !llvm.loop !168

bb.s:                                             ; preds = %satoko_solve_assumptions_limit.exit100
  %i.gl = and i32 %.tr102115, -2
  %i.gm = icmp eq i32 %i.gl, 2
  br i1 %i.gm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gn = sext i32 %i.bs to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gn
  %i.gp = tail call i32 @satoko_minimize_assumptions(ptr noundef nonnull %0, ptr noundef %i.go, i32 noundef %i.u, i32 noundef %3)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.gq = phi i32 [ %i.gp, %bb.t ], [ 1, %bb.s ]
  br i1 %i.cf, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.u, %.lr.ph134
  %.8132 = phi i32 [ %i.gv, %.lr.ph134 ], [ 0, %bb.u ]
  %i.gr = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !99
  %i.gu = add i32 %i.gt, -1                       ; 2 uses
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !99
  tail call void @solver_cancel_until(ptr noundef nonnull %0, i32 noundef %i.gu) #30
  %i.gv = add nuw nsw i32 %.8132, 1               ; 2 uses
  %exitcond171.not = icmp eq i32 %i.gv, %i.bs
  br i1 %exitcond171.not, label %._crit_edge135, label %.lr.ph134, !llvm.loop !169

._crit_edge135:                                   ; preds = %.lr.ph134, %bb.u
  %i.gw = add nsw i32 %i.gq, %i.bs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph137, %.preheader, %._crit_edge135, %satoko_solve_assumptions_limit.exit
  %.083 = phi i32 [ %i.t, %satoko_solve_assumptions_limit.exit ], [ %i.gw, %._crit_edge135 ], [ %i.bs, %.preheader ], [ %i.bs, %.lr.ph137 ]
  ret i32 %.083
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @satoko_final_conflict(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !tbaa !82
  store ptr %.val3, ptr %1, align 8, !tbaa !170
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.d, align 4, !tbaa !99
  ret i32 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @satoko_stats(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @satoko_options(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @satoko_bookmark(ptr nofree noundef captures(none) initializes((248, 256), (260, 268), (485, 486)) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val10 = load i32, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.val10, ptr %i.d, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val9 = load i32, ptr %i.g, align 4, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %.val9, ptr %i.h, align 4, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val11 = load i32, ptr %i.k, align 4, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %.val11, ptr %i.l, align 4, !tbaa !173
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val = load i32, ptr %i.o, align 4, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %.val, ptr %i.p, align 8, !tbaa !174
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 485
  store i8 1, ptr %i.q, align 1, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @satoko_unbookmark(ptr nofree noundef writeonly captures(none) initializes((248, 268), (485, 486)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 485
  store i8 0, ptr %i.b, align 1, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @satoko_reset(ptr nofree noundef captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !175
  store i32 0, ptr %i.h, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47   ; 3 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %vec_wl_clean.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 5 uses
  %wide.trip.count.i = zext i32 %i.s to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.v = icmp ult i32 %i.s, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store i32 0, ptr %i.aa, align 4, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  store i32 0, ptr %i.ad, align 4, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  store i32 0, ptr %i.ag, align 4, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i32 0, ptr %i.ah, align 8, !tbaa !111
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vec_wl_clean.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !177

vec_wl_clean.exit.loopexit.unr-lcssa:             ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec_wl_clean.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %vec_wl_clean.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %vec_wl_clean.exit.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i.epil ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !111
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %vec_wl_clean.exit, label %bb.c, !llvm.loop !178

vec_wl_clean.exit:                                ; preds = %vec_wl_clean.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  store i32 0, ptr %i.r, align 4, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !122
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val36 = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %.val36, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !99
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !99
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bp, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %i.bt, align 4, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !77
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !114
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !78
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !99
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 0, ptr %i.cc, align 4, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 0, ptr %i.cf, align 4, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 0, ptr %i.ci, align 4, !tbaa !99
  store i32 1, ptr %0, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 140737488355328, ptr %i.cj, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2048, ptr %i.ck, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %i.cp, align 8, !tbaa !74
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.cn, ptr %i.cq, align 8, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.cs, align 8, !tbaa !180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cr, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @satoko_rollback(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val84 = load i32, ptr %i.c, align 4, !tbaa !99 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !171  ; 4 uses
  %i.f = sub i32 %.val84, %i.e                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val83 = load i32, ptr %i.i, align 4, !tbaa !99 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !173  ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @satoko_reset(ptr noundef nonnull %0)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.j, align 4, !tbaa !172  ; 5 uses
  %i.n = sub i32 %.val83, %i.m
  %i.o = add i32 %i.n, %i.f                       ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #29 ; 8 uses
  %i.s = icmp ult i32 %i.e, %.val84
  br i1 %i.s, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.b, i64 8
  %.val86 = load ptr, ptr %i.t, align 8, !tbaa !82 ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.v = zext i32 %i.e to i64                     ; 6 uses
  %wide.trip.count = zext i32 %.val84 to i64      ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.v
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10   ; 2 uses
  %.not.i.i.prol = icmp eq i32 %i.y, -1
  br i1 %.not.i.i.prol, label %clause_fetch.exit.prol, label %bb.d

bb.d:                                             ; preds = %.prol.preheader
  %.val88.prol = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.val88.prol, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  br label %clause_fetch.exit.prol

clause_fetch.exit.prol:                           ; preds = %bb.d, %.prol.preheader
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ null, %.prol.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.v
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !181
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %clause_fetch.exit.prol, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next.prol, %clause_fetch.exit.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %.critedge.preheader, label %.lr.ph.new

.critedge.preheader:                              ; preds = %.prol.loopexit, %clause_fetch.exit.1, %bb.c
  %i.ah = icmp ult i32 %i.m, %.val83
  br i1 %i.ah, label %.lr.ph97, label %.critedge2.preheader

.lr.ph97:                                         ; preds = %.critedge.preheader
  %i.ai = getelementptr i8, ptr %i.h, i64 8
  %.val85 = load ptr, ptr %i.ai, align 8, !tbaa !82 ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 24        ; 3 uses
end_hunk_0
begin_hunk_1_@satoko_rollback:bb.a
  store i32 %i.cx, ptr %i.ei, align 4, !tbaa !122
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !59
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.cx, ptr %i.el, align 4, !tbaa !99
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !60
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.cx, ptr %i.eo, align 4, !tbaa !99
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %i.cx, ptr %i.er, align 4, !tbaa !99
  store i32 %i.cx, ptr %i.dg, align 4, !tbaa !114
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !77
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.cx, ptr %i.eu, align 4, !tbaa !114
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %i.cx, ptr %i.ex, align 4, !tbaa !114
  tail call fastcc void @solver_rebuild_order(ptr noundef nonnull %0)
  tail call void @solver_cancel_until(ptr noundef nonnull %0, i32 noundef 0) #30
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !174
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !99
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !188 ; 2 uses
  %.not81 = icmp eq i32 %i.fe, 0
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !41
  store i32 %i.fe, ptr %i.fg, align 8, !tbaa !176
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  store i32 0, ptr %i.d, align 8, !tbaa !171
  store i32 0, ptr %i.j, align 4, !tbaa !172
  store i32 0, ptr %i.k, align 4, !tbaa !173
  store i32 0, ptr %i.fa, align 8, !tbaa !174
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @satoko_mark_cone(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 272        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !97
  %.not23 = icmp eq ptr %.val, null
  br i1 %.not23, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i = load i32, ptr %i.d, align 4, !tbaa !114 ; 4 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 4 uses
  store i32 %.val.i, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.val.i, ptr %i.f, align 4, !tbaa !114
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %vec_char_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %.val.i to i64                  ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #29
  br label %vec_char_init.exit

vec_char_init.exit:                               ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %.pre-phi.i, i1 false)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %vec_char_init.exit, %bb.a
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.p = getelementptr i8, ptr %.val18, i64 8
  %.val18.val = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val18.val, i64 %i.q
  store i8 1, ptr %i.r, align 1, !tbaa !104
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.t = load i32, ptr %i.n, align 4, !tbaa !10   ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val19 = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.v = zext i32 %i.t to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.v
  store i64 0, ptr %i.w, align 8, !tbaa !119
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %.val20 = load ptr, ptr %i.x, align 8, !tbaa !56 ; 2 uses
  %i.y = getelementptr i8, ptr %.val20, i64 4
  %.val.i21 = load i32, ptr %i.y, align 4, !tbaa !127
  %i.z = icmp ult i32 %i.t, %.val.i21
  br i1 %i.z, label %heap_in_heap.exit, label %heap_in_heap.exit.thread

heap_in_heap.exit:                                ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %.val20, i64 8
  %.val3.i = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %i.v
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %heap_in_heap.exit.thread, label %bb.f

heap_in_heap.exit.thread:                         ; preds = %bb.e, %heap_in_heap.exit
  tail call fastcc void @heap_insert(ptr noundef nonnull %i.x, i32 noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %heap_in_heap.exit, %heap_in_heap.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.f, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @satoko_unmark_cone(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 272        ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %2, 4
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %.val = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !104
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %.val.1 = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr i8, ptr %.val.1, i64 8
  %.val.val.1 = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val.val.1, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !104
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  %.val.2 = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.r = getelementptr i8, ptr %.val.2, i64 8
  %.val.val.2 = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val.val.2, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !104
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !10
  %.val.3 = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.x = getelementptr i8, ptr %.val.3, i64 8
  %.val.val.3 = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val.3, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !104
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !190

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %.val.epil = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ac = getelementptr i8, ptr %.val.epil, i64 8
  %.val.val.epil = load ptr, ptr %i.ac, align 8, !tbaa !94
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.val.epil, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !104
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !191

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @satoko_write_dimacs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val64 = load i32, ptr %i.c, align 4, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val57 = load i32, ptr %i.f, align 4, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val56 = load i32, ptr %i.i, align 4, !tbaa !99
  %i.j = add i32 %.val56, %.val57
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val55 = load i32, ptr %i.m, align 4, !tbaa !99 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.048 = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 11 uses
  %i.p = icmp eq ptr %.048, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %.not50 = icmp eq i32 %2, 0                     ; 2 uses
  %i.q = select i1 %.not50, i32 0, i32 %.val55
  %i.r = add i32 %i.j, %i.q
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.048, ptr noundef nonnull @.str.3, i32 noundef %.val64, i32 noundef %i.r) #30 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val6078 = load i32, ptr %i.v, align 4, !tbaa !114
  %.not84 = icmp eq i32 %.val6078, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not54 = icmp eq i32 %3, 0
  br i1 %.not54, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.w = phi ptr [ %i.ah, %bb.h ], [ %i.u, %.lr.ph ] ; 2 uses
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.pre-phi, %bb.h ], [ 0, %.lr.ph ] ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val63.val.us = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %.val63.val.us, i64 %indvars.iv89
  %i.z = load i8, ptr %i.y, align 1, !tbaa !104   ; 2 uses
  %.not53.us = icmp eq i8 %i.z, 3
  br i1 %.not53.us, label %.lr.ph.split.us._crit_edge, label %bb.g

.lr.ph.split.us._crit_edge:                       ; preds = %.lr.ph.split.us
  %.pre99 = add nuw nsw i64 %indvars.iv89, 1
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.aa = icmp eq i8 %i.z, 1
  %i.ab = trunc nuw i64 %indvars.iv89 to i32
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = select i1 %i.aa, i32 %i.ac, i32 %i.ae
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.048, ptr noundef nonnull @.str.5, i32 noundef %i.af) #30 ; 0 uses
  %.pre98 = load ptr, ptr %i.t, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us._crit_edge, %bb.g
  %indvars.iv.next90.pre-phi = phi i64 [ %.pre99, %.lr.ph.split.us._crit_edge ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ah = phi ptr [ %i.w, %.lr.ph.split.us._crit_edge ], [ %.pre98, %bb.g ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val60.us = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.aj = zext i32 %.val60.us to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next90.pre-phi, %i.aj
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !192

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.al = phi ptr [ %i.as, %bb.j ], [ %i.u, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val63.val = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %.val63.val, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !104 ; 2 uses
  %.not53 = icmp eq i8 %i.ao, 3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %4 = icmp eq i8 %i.ao, 1
  %i.ap = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %5 = sub nsw i32 0, %i.ap
  %i.aq = select i1 %4, i32 %5, i32 %i.ap
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.048, ptr noundef nonnull @.str.4, i32 noundef %i.aq) #30 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.as = phi ptr [ %i.al, %.lr.ph.split ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val60 = load i32, ptr %i.at, align 4, !tbaa !114
  %i.au = zext i32 %.val60 to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph.split, label %._crit_edge, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.j, %bb.h, %bb.f
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val66 = load ptr, ptr %i.ax, align 8, !tbaa !82
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %.val80 = load i32, ptr %i.ay, align 4, !tbaa !99
  %.not85 = icmp eq i32 %.val80, 0
  br i1 %.not85, label %._crit_edge82, label %clause_fetch.exit.lr.ph

clause_fetch.exit.lr.ph:                          ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %0, i64 24
  %.not52 = icmp eq i32 %3, 0                     ; 2 uses
  %i.ba = zext i1 %.not52 to i32
  br label %clause_fetch.exit

clause_fetch.exit:                                ; preds = %clause_fetch.exit.lr.ph, %clause_dump.exit
  %indvars.iv92 = phi i64 [ 0, %clause_fetch.exit.lr.ph ], [ %indvars.iv.next93, %clause_dump.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val66, i64 %indvars.iv92
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %.val59 = load ptr, ptr %i.az, align 8, !tbaa !41
  %.not.i.i = icmp ne i32 %i.bc, -1
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !101
  %.not17.i = icmp eq i32 %i.bi, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clause_fetch.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104 ; 2 uses
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = and i32 %i.bl, 1
  %.not15.i = icmp eq i32 %i.bn, 0
  %i.bo = add nuw nsw i32 %i.bm, %i.ba            ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = select i1 %.not15.i, i32 %i.bo, i32 %i.bp
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.048, ptr noundef nonnull @.str.12, i32 noundef %i.bq) #30 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bs = load i32, ptr %i.bh, align 4, !tbaa !101
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next.i, %i.bt
  br i1 %i.bu, label %bb.k, label %._crit_edge.i, !llvm.loop !193

._crit_edge.i:                                    ; preds = %bb.k, %clause_fetch.exit
  br i1 %.not52, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.bv = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %.048) ; 0 uses
  br label %clause_dump.exit

bb.m:                                             ; preds = %._crit_edge.i
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %.048) ; 0 uses
  br label %clause_dump.exit

clause_dump.exit:                                 ; preds = %bb.l, %bb.m
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val = load i32, ptr %i.bx, align 4, !tbaa !99
  %i.by = zext i32 %.val to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next93, %i.by
  br i1 %i.bz, label %clause_fetch.exit, label %._crit_edge82, !llvm.loop !194

._crit_edge82:                                    ; preds = %clause_dump.exit, %._crit_edge
  br i1 %.not50, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %._crit_edge82
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val65 = load ptr, ptr %i.cb, align 8, !tbaa !82
  %.not86 = icmp eq i32 %.val55, 0
  br i1 %.not86, label %.loopexit, label %clause_fetch.exit68.lr.ph

clause_fetch.exit68.lr.ph:                        ; preds = %bb.n
  %i.cc = getelementptr i8, ptr %0, i64 24
  %.not51 = icmp eq i32 %3, 0                     ; 2 uses
  %i.cd = zext i1 %.not51 to i32
  %wide.trip.count = zext i32 %.val55 to i64
  br label %clause_fetch.exit68

clause_fetch.exit68:                              ; preds = %clause_fetch.exit68.lr.ph, %clause_dump.exit77
  %indvars.iv95 = phi i64 [ 0, %clause_fetch.exit68.lr.ph ], [ %indvars.iv.next96, %clause_dump.exit77 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val65, i64 %indvars.iv95
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10 ; 2 uses
  %.val58 = load ptr, ptr %i.cc, align 8, !tbaa !41
  %.not.i.i67 = icmp ne i32 %i.cf, -1
  tail call void @llvm.assume(i1 %.not.i.i67)
  %i.cg = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !101
  %.not17.i69 = icmp eq i32 %i.cl, 0
  br i1 %.not17.i69, label %._crit_edge.i74, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %clause_fetch.exit68
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i70
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i73, %bb.o ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i71
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !104 ; 2 uses
  %i.cp = lshr i32 %i.co, 1
  %i.cq = and i32 %i.co, 1
  %.not15.i72 = icmp eq i32 %i.cq, 0
  %i.cr = add nuw nsw i32 %i.cp, %i.cd            ; 2 uses
  %i.cs = sub nsw i32 0, %i.cr
  %i.ct = select i1 %.not15.i72, i32 %i.cr, i32 %i.cs
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.048, ptr noundef nonnull @.str.12, i32 noundef %i.ct) #30 ; 0 uses
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %i.cv = load i32, ptr %i.ck, align 4, !tbaa !101
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next.i73, %i.cw
  br i1 %i.cx, label %bb.o, label %._crit_edge.i74, !llvm.loop !193

._crit_edge.i74:                                  ; preds = %bb.o, %clause_fetch.exit68
  br i1 %.not51, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i74
  %i.cy = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr nonnull %.048) ; 0 uses
  br label %clause_dump.exit77

bb.q:                                             ; preds = %._crit_edge.i74
  %fputc.i76 = tail call i32 @fputc(i32 10, ptr nonnull %.048) ; 0 uses
  br label %clause_dump.exit77

clause_dump.exit77:                               ; preds = %bb.p, %bb.q
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %clause_fetch.exit68, !llvm.loop !195

.loopexit:                                        ; preds = %clause_dump.exit77, %bb.n, %._crit_edge82
  %i.cz = tail call i32 @fclose(ptr noundef nonnull %.048) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @satoko_clausenum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !99
  ret i32 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @satoko_learntnum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !99
  ret i32 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @satoko_conflictnum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}
end_hunk_1
