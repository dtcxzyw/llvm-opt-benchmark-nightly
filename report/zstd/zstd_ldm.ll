Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_ldm?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_ldm_gear_feed:bb.a
  br i1 %or.cond, label %.lr.ph76.backedge, label %.loopexit

bb.k:                                             ; preds = %.lr.ph76
  %.old = icmp ult i64 %i.bw, %2
  br i1 %.old, label %.lr.ph76.backedge, label %.loopexit

.lr.ph76.backedge:                                ; preds = %bb.k, %bb.j
  br label %.lr.ph76, !llvm.loop !48

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.j, %bb.k, %.preheader
  %.265 = phi i64 [ %.063.lcssa, %.preheader ], [ %i.bw, %bb.j ], [ %i.bw, %bb.k ], [ %i.bf, %bb.h ], [ %i.aq, %bb.f ], [ %i.ab, %bb.d ], [ %i.m, %bb.b ]
  %.2 = phi i64 [ %.0.lcssa, %.preheader ], [ %i.bv, %bb.j ], [ %i.bv, %bb.k ], [ %i.be, %bb.h ], [ %i.ap, %bb.f ], [ %i.aa, %bb.d ], [ %i.l, %bb.b ]
  store i64 %.2, ptr %0, align 8, !tbaa !23
  ret i64 %.265
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(address), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: read) uwtable
define range(i64 -119, 1) i64 @ZSTD_ldm_generateSequences(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.ldmRollingHashState_t, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = shl nuw i32 1, %i.c                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.f = lshr i64 %4, 20
  %i.g = and i64 %4, 1048575
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i64
  %i.j = add nuw nsw i64 %i.f, %i.i
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 28         ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bo
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.md, %bb.bo ] ; 4 uses
  %.05588 = phi i64 [ 0, %.lr.ph ], [ %.257.ph, %bb.bo ] ; 2 uses
  %.05887 = phi i64 [ 0, %.lr.ph ], [ %i.mm, %bb.bo ] ; 2 uses
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !56
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ae = shl nuw i64 %.05887, 20                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %gepdiff = sub nsw i64 %4, %i.ae
  %i.ah = icmp ult i64 %gepdiff, 1048576
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1048576
  %i.aj = select i1 %i.ah, ptr %i.e, ptr %i.ai    ; 4 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 4 uses
  %i.al = sub i64 %i.ak, %i.ag                    ; 6 uses
  %.val = load ptr, ptr %i.n, align 8, !tbaa !57  ; 3 uses
  %i.am = ptrtoint ptr %.val to i64               ; 3 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, -624951295
  br i1 %i.ap, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre99 = load i32, ptr %i.m, align 8, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !12  ; 3 uses
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = sub i64 %i.ag, %i.am
  %i.at = trunc i64 %i.as to i32
  %reass.sub.i = sub i32 %i.at, %i.d              ; 3 uses
  %i.au = add i32 %reass.sub.i, -2                ; 6 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.av ; 3 uses
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !57
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !58
  %i.az = load i32, ptr %i.q, align 4, !tbaa !34  ; 2 uses
  %i.ba = icmp ult i32 %i.az, %reass.sub.i
  %i.bb = sub i32 %i.az, %i.au
  %storemerge.i = select i1 %i.ba, i32 2, i32 %i.bb
  store i32 %storemerge.i, ptr %i.q, align 4, !tbaa !34
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !35  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %reass.sub.i
  %i.be = sub i32 %i.bc, %i.au
  %storemerge33.i = select i1 %i.bd, i32 2, i32 %i.be
  store i32 %storemerge33.i, ptr %i.r, align 8, !tbaa !35
  %i.bf = load i32, ptr %i.s, align 8, !tbaa !59
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.s, align 8, !tbaa !59
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !27  ; 3 uses
  %wide.trip.count.i = zext i32 %i.ar to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bi = icmp eq i32 %i.aq, 0
  br i1 %i.bi, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !61
  %storemerge.i61 = tail call i32 @llvm.usub.sat.i32(i32 %i.bk, i32 %i.au)
  store i32 %storemerge.i61, ptr %i.bj, align 4, !tbaa !61
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !61
  %storemerge.i61.1 = tail call i32 @llvm.usub.sat.i32(i32 %i.bn, i32 %i.au)
  store i32 %storemerge.i61.1, ptr %i.bm, align 4, !tbaa !61
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_ldm_reduceTable.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

ZSTD_ldm_reduceTable.exit.unr-lcssa:              ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_ldm_reduceTable.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZSTD_ldm_reduceTable.exit.unr-lcssa, %bb.d
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.1, %ZSTD_ldm_reduceTable.exit.unr-lcssa ]
  %lcmp.mod171 = icmp eq i32 %i.aq, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !61
  %storemerge.i61.epil = tail call i32 @llvm.usub.sat.i32(i32 %i.bp, i32 %i.au)
  store i32 %storemerge.i61.epil, ptr %i.bo, align 4, !tbaa !61
  br label %ZSTD_ldm_reduceTable.exit

ZSTD_ldm_reduceTable.exit:                        ; preds = %ZSTD_ldm_reduceTable.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  store i32 0, ptr %i.m, align 8, !tbaa !62
  %.pre104 = ptrtoint ptr %i.aw to i64            ; 2 uses
  %.pre105 = sub i64 %i.ak, %.pre104
  %.pre107 = trunc i64 %.pre105 to i32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %ZSTD_ldm_reduceTable.exit
  %.pre-phi108 = phi i32 [ %i.ao, %._crit_edge ], [ %.pre107, %ZSTD_ldm_reduceTable.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %i.am, %._crit_edge ], [ %.pre104, %ZSTD_ldm_reduceTable.exit ]
  %i.bq = phi i32 [ %.pre99, %._crit_edge ], [ 0, %ZSTD_ldm_reduceTable.exit ]
  %i.br = phi ptr [ %.val, %._crit_edge ], [ %i.aw, %ZSTD_ldm_reduceTable.exit ] ; 3 uses
  %i.bs = add i32 %i.bq, %i.d
  %i.bt = icmp ult i32 %i.bs, %.pre-phi108
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !34  ; 3 uses
  br i1 %i.bt, label %bb.f, label %.ZSTD_window_enforceMaxDist.exit_crit_edge

.ZSTD_window_enforceMaxDist.exit_crit_edge:       ; preds = %bb.e
  %.val262.i.pre = load i32, ptr %i.r, align 8, !tbaa !35
  br label %ZSTD_window_enforceMaxDist.exit

bb.f:                                             ; preds = %bb.e
  %i.bv = sub i32 %.pre-phi108, %i.d              ; 3 uses
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bv, ptr %i.q, align 4, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bx = phi i32 [ %i.bv, %bb.g ], [ %i.bu, %bb.f ] ; 4 uses
  %i.by = load i32, ptr %i.r, align 8, !tbaa !35  ; 2 uses
  %i.bz = icmp ult i32 %i.by, %i.bx
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bx, ptr %i.r, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val262.i101 = phi i32 [ %i.bx, %bb.i ], [ %i.by, %bb.h ]
  store i32 0, ptr %i.m, align 8, !tbaa !25
  br label %ZSTD_window_enforceMaxDist.exit

ZSTD_window_enforceMaxDist.exit:                  ; preds = %.ZSTD_window_enforceMaxDist.exit_crit_edge, %bb.j
  %.val263.i = phi i32 [ %i.bu, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %i.bx, %bb.j ] ; 2 uses
  %.val262.i = phi i32 [ %.val262.i.pre, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %.val262.i101, %bb.j ] ; 6 uses
  %.not.i = icmp ult i32 %.val263.i, %.val262.i   ; 2 uses
  %i.ca = load i32, ptr %i.u, align 4, !tbaa !14
  %.12.val.fr.i.i = freeze i32 %i.ca              ; 2 uses
  %i.cb = load i32, ptr %i.v, align 4, !tbaa !15  ; 2 uses
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !12
  %i.ce = sub i32 %i.cd, %i.cb
  br i1 %.not.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %ZSTD_window_enforceMaxDist.exit
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !63
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %ZSTD_window_enforceMaxDist.exit
  %i.cg = phi i32 [ %.val263.i, %bb.k ], [ %.val262.i, %ZSTD_window_enforceMaxDist.exit ] ; 4 uses
  %i.ch = phi ptr [ %i.cf, %bb.k ], [ null, %ZSTD_window_enforceMaxDist.exit ] ; 3 uses
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 3 uses
  %i.ck = zext i32 %.val262.i to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ck ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al ; 6 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cp = zext i32 %.12.val.fr.i.i to i64         ; 7 uses
  %i.cq = icmp ult i64 %i.al, %i.cp
  br i1 %i.cq, label %ZSTD_ldm_generateSequences_internal.exit.thread, label %ZSTD_ldm_gear_reset.exit.i

ZSTD_ldm_generateSequences_internal.exit.thread:  ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bl

ZSTD_ldm_gear_reset.exit.i:                       ; preds = %.thread.i
  %.val254.i = load i32, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %.12.val.fr.i.i, i32 64) ; 2 uses
  store i64 4294967295, ptr %5, align 8, !tbaa !23
  %i.cr = add i32 %.val254.i, -1
  %or.cond.not.i.i = icmp ult i32 %i.cr, %spec.select.i.i
  %i.cs = zext nneg i32 %.val254.i to i64
  %notmask15.i.i = shl nsw i64 -1, %i.cs
  %i.ct = xor i64 %notmask15.i.i, -1
  %i.cu = sub nuw nsw i32 %spec.select.i.i, %.val254.i
  %narrow.i.i = select i1 %or.cond.not.i.i, i32 %i.cu, i32 0
  %i.cv = zext nneg i32 %narrow.i.i to i64
  %.sink.i.i = shl i64 %i.ct, %i.cv
  store i64 %.sink.i.i, ptr %i.z, align 8, !tbaa !24
  %i.cw = add nsw i64 %i.al, -8
  %i.cx = icmp sgt i64 %i.cw, %i.cp
  br i1 %i.cx, label %.lr.ph325.i, label %ZSTD_ldm_generateSequences_internal.exit

.lr.ph325.i:                                      ; preds = %ZSTD_ldm_gear_reset.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cp
  %i.cz = ptrtoint ptr %i.co to i64
  %i.da = sub nsw i64 0, %i.cp
  %notmask.i = shl nsw i32 -1, %i.ce
  %i.db = xor i32 %notmask.i, -1
  %i.dc = zext i32 %i.cc to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 -7 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %i.cn, i64 -3 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 -1 ; 2 uses
  %i.dg = icmp ugt i32 %.val262.i, %i.cg
  %.idx.i = shl nuw nsw i64 %i.dc, 3
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph325.i
  %.0232324.i = phi ptr [ %i.cy, %.lr.ph325.i ], [ %i.ma, %.loopexit.i ] ; 6 uses
  %.0237323.i = phi ptr [ %i.af, %.lr.ph325.i ], [ %.3240.i, %.loopexit.i ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.dh = ptrtoint ptr %.0232324.i to i64
  %i.di = sub i64 %i.cz, %i.dh
  %i.dj = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %5, ptr noundef %.0232324.i, i64 noundef %i.di, ptr noundef nonnull %i.w, ptr noundef %i.a) ; 3 uses
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !25  ; 2 uses
  %.not327.i = icmp eq i32 %i.dk, 0
  br i1 %.not327.i, label %.loopexit.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.l
  %invariant.gep.i = getelementptr i8, ptr %.0232324.i, i64 %i.da
  %i.dl = load i32, ptr %i.v, align 4, !tbaa !15
  %.val255.i = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.dm = zext nneg i32 %i.dl to i64
  %wide.trip.count.i63 = zext i32 %i.dk to i64    ; 2 uses
  br label %bb.m

.lr.ph321.i:                                      ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %.0232324.i, i64 %i.dj
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i62
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i65, %bb.m ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dp ; 2 uses
  %i.dq = tail call i64 @ZSTD_XXH64(ptr noundef captures(address) %gep.i, i64 noundef %i.cp, i64 noundef 0) #16 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = and i32 %i.dr, %i.db                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv.i64 ; 4 uses
  store ptr %gep.i, ptr %i.dt, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.ds, ptr %i.du, align 8, !tbaa !66
  %i.dv = lshr i64 %i.dq, 32
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !67
  %i.dy = zext nneg i32 %i.ds to i64
  %i.dz = shl i64 %i.dy, %i.dm
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.val255.i, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !68
  tail call void @llvm.prefetch.p0(ptr %i.ea, i32 0, i32 3, i32 1)
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i63
  br i1 %exitcond.not.i66, label %.lr.ph321.i, label %bb.m, !llvm.loop !50

bb.n:                                             ; preds = %bb.bk, %.lr.ph321.i
  %indvars.iv337.i = phi i64 [ 0, %.lr.ph321.i ], [ %indvars.iv.next338.i, %bb.bk ] ; 2 uses
  %.1238318.i = phi ptr [ %.0237323.i, %.lr.ph321.i ], [ %.2239.ph.i, %bb.bk ] ; 8 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv337.i ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65 ; 18 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !66 ; 2 uses
  %i.ei = ptrtoint ptr %i.ed to i64               ; 5 uses
  %i.ej = sub i64 %i.ei, %.pre-phi                ; 3 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = icmp ult ptr %i.ed, %.1238318.i
  br i1 %i.el, label %.sink.split.i, label %.lr.ph312.i

.lr.ph312.i:                                      ; preds = %bb.n
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !68 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i ; 2 uses
  %i.ep = icmp ult ptr %i.ed, %i.dd
  %i.eq = icmp ugt ptr %i.ed, %.1238318.i         ; 2 uses
  br i1 %.not.i, label %.lr.ph312.split.us.i, label %.lr.ph312.split.i

.lr.ph312.split.us.i:                             ; preds = %.lr.ph312.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0209311.us.i = phi ptr [ %.2211.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ null, %.lr.ph312.i ] ; 4 uses
  %.0212310.us.i = phi ptr [ %i.ik, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %i.en, %.lr.ph312.i ] ; 4 uses
  %.0213309.us.i = phi i64 [ %.2215.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 5 uses
  %.0216308.us.i = phi i64 [ %.2218.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %.0219307.us.i = phi i64 [ %.2221.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0212310.us.i, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !69
  %.not250.us.i = icmp eq i32 %i.es, %i.ef
  br i1 %.not250.us.i, label %bb.o, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.o:                                             ; preds = %.lr.ph312.split.us.i
  %i.et = load i32, ptr %.0212310.us.i, align 4, !tbaa !61 ; 3 uses
  %.not251.us.i = icmp ugt i32 %i.et, %i.cg
  br i1 %.not251.us.i, label %bb.p, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.p:                                             ; preds = %bb.o
  %i.eu = icmp ult i32 %i.et, %.val262.i          ; 3 uses
  %i.ev = select i1 %i.eu, ptr %i.ch, ptr %i.br
  %i.ew = zext i32 %i.et to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew ; 8 uses
  %i.ey = select i1 %i.eu, ptr %i.cl, ptr %i.cn   ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.ed, i64 %i.fb ; 2 uses
  %i.fd = icmp ult ptr %i.fc, %i.aj
  %..i.us.i = select i1 %i.fd, ptr %i.fc, ptr %i.cn ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %..i.us.i, i64 -7 ; 2 uses
  %i.ff = icmp ult ptr %i.ed, %i.fe
  br i1 %i.ff, label %bb.q, label %.loopexit.i.i.us.i

bb.q:                                             ; preds = %bb.p
  %.val60.i.i.us.i = load i64, ptr %i.ex, align 1, !tbaa !26 ; 2 uses
  %.val.i.i.us.i = load i64, ptr %i.ed, align 1, !tbaa !26 ; 2 uses
  %.not.i.i.us.i = icmp eq i64 %.val60.i.i.us.i, %.val.i.i.us.i
  br i1 %.not.i.i.us.i, label %.preheader.i.i.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = xor i64 %.val.i.i.us.i, %.val60.i.i.us.i
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fg, i1 true)
  %i.fi = lshr i64 %i.fh, 3
  br label %ZSTD_count.exit.i.us.i

.preheader.i.i.us.i:                              ; preds = %bb.q, %bb.s
  %.pn.i.i.us.i = phi ptr [ %.049.i.i.us.i, %bb.s ], [ %i.ed, %bb.q ]
  %.pn67.i.i.us.i = phi ptr [ %.045.i.i.us.i, %bb.s ], [ %i.ex, %bb.q ]
  %.045.i.i.us.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i.us.i, i64 8 ; 3 uses
  %.049.i.i.us.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.us.i, i64 8 ; 5 uses
  %i.fj = icmp ult ptr %.049.i.i.us.i, %i.fe
  br i1 %i.fj, label %bb.s, label %.loopexit.i.i.us.i

bb.s:                                             ; preds = %.preheader.i.i.us.i
  %.045.val.i.i.us.i = load i64, ptr %.045.i.i.us.i, align 1, !tbaa !26 ; 2 uses
  %.049.val.i.i.us.i = load i64, ptr %.049.i.i.us.i, align 1, !tbaa !26 ; 2 uses
  %.not59.i.i.us.i = icmp eq i64 %.045.val.i.i.us.i, %.049.val.i.i.us.i
  br i1 %.not59.i.i.us.i, label %.preheader.i.i.us.i, label %.thread63.i.i.us.i

.loopexit.i.i.us.i:                               ; preds = %.preheader.i.i.us.i, %bb.p
  %.251.i.i.us.i = phi ptr [ %i.ed, %bb.p ], [ %.049.i.i.us.i, %.preheader.i.i.us.i ] ; 5 uses
  %.247.i.i.us.i = phi ptr [ %i.ex, %bb.p ], [ %.045.i.i.us.i, %.preheader.i.i.us.i ] ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %..i.us.i, i64 -3
  %i.fl = icmp ult ptr %.251.i.i.us.i, %i.fk
  br i1 %i.fl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit.i.i.us.i
  %.247.val.i.i.us.i = load i32, ptr %.247.i.i.us.i, align 1, !tbaa !25
  %.251.val.i.i.us.i = load i32, ptr %.251.i.i.us.i, align 1, !tbaa !25
  %i.fm = icmp eq i32 %.247.val.i.i.us.i, %.251.val.i.i.us.i
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw i8, ptr %.251.i.i.us.i, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.247.i.i.us.i, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit.i.i.us.i
  %.352.i.i.us.i = phi ptr [ %i.fn, %bb.u ], [ %.251.i.i.us.i, %bb.t ], [ %.251.i.i.us.i, %.loopexit.i.i.us.i ] ; 5 uses
  %.348.i.i.us.i = phi ptr [ %i.fo, %bb.u ], [ %.247.i.i.us.i, %bb.t ], [ %.247.i.i.us.i, %.loopexit.i.i.us.i ] ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %..i.us.i, i64 -1
  %i.fq = icmp ult ptr %.352.i.i.us.i, %i.fp
  br i1 %i.fq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.348.val.i.i.us.i = load i16, ptr %.348.i.i.us.i, align 1, !tbaa !70
  %.352.val.i.i.us.i = load i16, ptr %.352.i.i.us.i, align 1, !tbaa !70
  %i.fr = icmp eq i16 %.348.val.i.i.us.i, %.352.val.i.i.us.i
  br i1 %i.fr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %.352.i.i.us.i, i64 2
  %i.ft = getelementptr inbounds nuw i8, ptr %.348.i.i.us.i, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.453.i.i.us.i = phi ptr [ %i.fs, %bb.x ], [ %.352.i.i.us.i, %bb.w ], [ %.352.i.i.us.i, %bb.v ] ; 4 uses
  %.4.i.i.us.i = phi ptr [ %i.ft, %bb.x ], [ %.348.i.i.us.i, %bb.w ], [ %.348.i.i.us.i, %bb.v ]
  %i.fu = icmp ult ptr %.453.i.i.us.i, %..i.us.i
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fv = load i8, ptr %.4.i.i.us.i, align 1, !tbaa !29
  %i.fw = load i8, ptr %.453.i.i.us.i, align 1, !tbaa !29
  %i.fx = icmp eq i8 %i.fv, %i.fw
  %spec.select.idx.i.i.us.i = zext i1 %i.fx to i64
  %spec.select.i.i.us.i = getelementptr inbounds nuw i8, ptr %.453.i.i.us.i, i64 %spec.select.idx.i.i.us.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.5.i.i.us.i = phi ptr [ %.453.i.i.us.i, %bb.y ], [ %spec.select.i.i.us.i, %bb.z ]
  %i.fy = ptrtoint ptr %.5.i.i.us.i to i64
  %i.fz = sub i64 %i.fy, %i.ei
  br label %ZSTD_count.exit.i.us.i

.thread63.i.i.us.i:                               ; preds = %bb.s
  %i.ga = xor i64 %.049.val.i.i.us.i, %.045.val.i.i.us.i
  %i.gb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ga, i1 true)
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %.049.i.i.us.i, i64 %i.gc
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = sub i64 %i.ge, %i.ei
  br label %ZSTD_count.exit.i.us.i

ZSTD_count.exit.i.us.i:                           ; preds = %.thread63.i.i.us.i, %bb.aa, %bb.r
  %.3.i.i.us.i = phi i64 [ %i.gf, %.thread63.i.i.us.i ], [ %i.fz, %bb.aa ], [ %i.fi, %bb.r ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.3.i.i.us.i
  %.not.i.us.i = icmp eq ptr %i.gg, %i.ey
  br i1 %.not.i.us.i, label %bb.ab, label %ZSTD_count_2segments.exit.us.i

bb.ab:                                            ; preds = %ZSTD_count.exit.i.us.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.3.i.i.us.i ; 6 uses
  %i.gi = icmp ult ptr %i.gh, %i.dd
  br i1 %i.gi, label %bb.ac, label %.loopexit.i22.i.us.i

bb.ac:                                            ; preds = %bb.ab
  %.val60.i37.i.us.i = load i64, ptr %i.cm, align 1, !tbaa !26 ; 2 uses
  %.val.i38.i.us.i = load i64, ptr %i.gh, align 1, !tbaa !26 ; 2 uses
  %.not.i39.i.us.i = icmp eq i64 %.val60.i37.i.us.i, %.val.i38.i.us.i
  br i1 %.not.i39.i.us.i, label %.preheader.i40.i.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = xor i64 %.val.i38.i.us.i, %.val60.i37.i.us.i
  %i.gk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.gj, i1 true)
  %i.gl = lshr i64 %i.gk, 3
  br label %ZSTD_count.exit49.i.us.i

.preheader.i40.i.us.i:                            ; preds = %bb.ac, %bb.ae
  %.pn.i41.i.us.i = phi ptr [ %.049.i44.i.us.i, %bb.ae ], [ %i.gh, %bb.ac ]
  %.pn67.i42.i.us.i = phi ptr [ %.045.i43.i.us.i, %bb.ae ], [ %i.cm, %bb.ac ]
  %.045.i43.i.us.i = getelementptr inbounds nuw i8, ptr %.pn67.i42.i.us.i, i64 8 ; 3 uses
  %.049.i44.i.us.i = getelementptr inbounds nuw i8, ptr %.pn.i41.i.us.i, i64 8 ; 5 uses
  %i.gm = icmp ult ptr %.049.i44.i.us.i, %i.dd
  br i1 %i.gm, label %bb.ae, label %.loopexit.i22.i.us.i

bb.ae:                                            ; preds = %.preheader.i40.i.us.i
  %.045.val.i45.i.us.i = load i64, ptr %.045.i43.i.us.i, align 1, !tbaa !26 ; 2 uses
  %.049.val.i46.i.us.i = load i64, ptr %.049.i44.i.us.i, align 1, !tbaa !26 ; 2 uses
  %.not59.i47.i.us.i = icmp eq i64 %.045.val.i45.i.us.i, %.049.val.i46.i.us.i
  br i1 %.not59.i47.i.us.i, label %.preheader.i40.i.us.i, label %.thread63.i48.i.us.i

.loopexit.i22.i.us.i:                             ; preds = %.preheader.i40.i.us.i, %bb.ab
  %.251.i23.i.us.i = phi ptr [ %i.gh, %bb.ab ], [ %.049.i44.i.us.i, %.preheader.i40.i.us.i ] ; 5 uses
  %.247.i24.i.us.i = phi ptr [ %i.cm, %bb.ab ], [ %.045.i43.i.us.i, %.preheader.i40.i.us.i ] ; 4 uses
  %i.gn = icmp ult ptr %.251.i23.i.us.i, %i.de
  br i1 %i.gn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.loopexit.i22.i.us.i
  %.247.val.i35.i.us.i = load i32, ptr %.247.i24.i.us.i, align 1, !tbaa !25
  %.251.val.i36.i.us.i = load i32, ptr %.251.i23.i.us.i, align 1, !tbaa !25
  %i.go = icmp eq i32 %.247.val.i35.i.us.i, %.251.val.i36.i.us.i
  br i1 %i.go, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %.251.i23.i.us.i, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.247.i24.i.us.i, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit.i22.i.us.i
  %.352.i25.i.us.i = phi ptr [ %i.gp, %bb.ag ], [ %.251.i23.i.us.i, %bb.af ], [ %.251.i23.i.us.i, %.loopexit.i22.i.us.i ] ; 5 uses
  %.348.i26.i.us.i = phi ptr [ %i.gq, %bb.ag ], [ %.247.i24.i.us.i, %bb.af ], [ %.247.i24.i.us.i, %.loopexit.i22.i.us.i ] ; 4 uses
  %i.gr = icmp ult ptr %.352.i25.i.us.i, %i.df
  br i1 %i.gr, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %.348.val.i33.i.us.i = load i16, ptr %.348.i26.i.us.i, align 1, !tbaa !70
  %.352.val.i34.i.us.i = load i16, ptr %.352.i25.i.us.i, align 1, !tbaa !70
  %i.gs = icmp eq i16 %.348.val.i33.i.us.i, %.352.val.i34.i.us.i
  br i1 %i.gs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gt = getelementptr inbounds nuw i8, ptr %.352.i25.i.us.i, i64 2
  %i.gu = getelementptr inbounds nuw i8, ptr %.348.i26.i.us.i, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.453.i27.i.us.i = phi ptr [ %i.gt, %bb.aj ], [ %.352.i25.i.us.i, %bb.ai ], [ %.352.i25.i.us.i, %bb.ah ] ; 4 uses
  %.4.i28.i.us.i = phi ptr [ %i.gu, %bb.aj ], [ %.348.i26.i.us.i, %bb.ai ], [ %.348.i26.i.us.i, %bb.ah ]
  %i.gv = icmp ult ptr %.453.i27.i.us.i, %i.aj
  br i1 %i.gv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gw = load i8, ptr %.4.i28.i.us.i, align 1, !tbaa !29
  %i.gx = load i8, ptr %.453.i27.i.us.i, align 1, !tbaa !29
  %i.gy = icmp eq i8 %i.gw, %i.gx
  %spec.select.idx.i31.i.us.i = zext i1 %i.gy to i64
  %spec.select.i32.i.us.i = getelementptr inbounds nuw i8, ptr %.453.i27.i.us.i, i64 %spec.select.idx.i31.i.us.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.5.i29.i.us.i = phi ptr [ %.453.i27.i.us.i, %bb.ak ], [ %spec.select.i32.i.us.i, %bb.al ]
  %i.gz = ptrtoint ptr %.5.i29.i.us.i to i64
  %i.ha = ptrtoint ptr %i.gh to i64
  %i.hb = sub i64 %i.gz, %i.ha
  br label %ZSTD_count.exit49.i.us.i

.thread63.i48.i.us.i:                             ; preds = %bb.ae
  %i.hc = xor i64 %.049.val.i46.i.us.i, %.045.val.i45.i.us.i
  %i.hd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hc, i1 true)
  %i.he = lshr i64 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %.049.i44.i.us.i, i64 %i.he
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.gh to i64
  %i.hi = sub i64 %i.hg, %i.hh
  br label %ZSTD_count.exit49.i.us.i

ZSTD_count.exit49.i.us.i:                         ; preds = %.thread63.i48.i.us.i, %bb.am, %bb.ad
  %.3.i30.i.us.i = phi i64 [ %i.hi, %.thread63.i48.i.us.i ], [ %i.hb, %bb.am ], [ %i.gl, %bb.ad ]
  %i.hj = add i64 %.3.i30.i.us.i, %.3.i.i.us.i
  br label %ZSTD_count_2segments.exit.us.i

ZSTD_count_2segments.exit.us.i:                   ; preds = %ZSTD_count.exit49.i.us.i, %ZSTD_count.exit.i.us.i
  %.0.i.us.i = phi i64 [ %i.hj, %ZSTD_count.exit49.i.us.i ], [ %.3.i.i.us.i, %ZSTD_count.exit.i.us.i ] ; 3 uses
  %.not253.us.i = icmp ult i64 %.0.i.us.i, %i.cp
  br i1 %.not253.us.i, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i, label %bb.an

bb.an:                                            ; preds = %ZSTD_count_2segments.exit.us.i
  %i.hk = select i1 %i.eu, ptr %i.cj, ptr %i.cm   ; 4 uses
  %i.hl = icmp ugt ptr %i.ex, %i.hk
  %or.cond11.i.i.us.i = and i1 %i.eq, %i.hl
  br i1 %or.cond11.i.i.us.i, label %.lr.ph.i.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.an, %bb.ao
  %.014.i.i.us.i = phi i64 [ %i.hr, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.0913.i.i.us.i = phi ptr [ %i.hm, %bb.ao ], [ %i.ed, %bb.an ]
  %.01012.i.i.us.i = phi ptr [ %i.ho, %bb.ao ], [ %i.ex, %bb.an ]
  %i.hm = getelementptr inbounds i8, ptr %.0913.i.i.us.i, i64 -1 ; 3 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !29
  %i.ho = getelementptr inbounds i8, ptr %.01012.i.i.us.i, i64 -1 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !29
  %i.hq = icmp eq i8 %i.hn, %i.hp
  br i1 %i.hq, label %bb.ao, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i

bb.ao:                                            ; preds = %.lr.ph.i.i.us.i
  %i.hr = add i64 %.014.i.i.us.i, 1               ; 2 uses
  %i.hs = icmp ugt ptr %i.hm, %.1238318.i
  %i.ht = icmp ugt ptr %i.ho, %i.hk
  %or.cond.i.i.us.i = and i1 %i.hs, %i.ht
  br i1 %or.cond.i.i.us.i, label %.lr.ph.i.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i, !llvm.loop !51

ZSTD_ldm_countBackwardsMatch.exit.i.us.i:         ; preds = %bb.ao, %.lr.ph.i.i.us.i, %bb.an
  %.0.lcssa.i.i.us.i = phi i64 [ 0, %bb.an ], [ %.014.i.i.us.i, %.lr.ph.i.i.us.i ], [ %i.hr, %bb.ao ] ; 3 uses
  %i.hu = sub i64 0, %.0.lcssa.i.i.us.i           ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.ex, i64 %i.hu
  %.not.i266.us.i = icmp ne ptr %i.hv, %i.hk
  %i.hw = icmp eq ptr %i.hk, %i.cj
  %or.cond.i.us.i = or i1 %i.hw, %.not.i266.us.i
  br i1 %or.cond.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i, label %bb.ap

bb.ap:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.i.us.i
  %i.hx = getelementptr inbounds i8, ptr %i.ed, i64 %i.hu ; 2 uses
  %i.hy = icmp ugt ptr %i.hx, %.1238318.i
  %or.cond11.i19.i.us.i = and i1 %i.dg, %i.hy
  br i1 %or.cond11.i19.i.us.i, label %.lr.ph.i21.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i

.lr.ph.i21.i.us.i:                                ; preds = %bb.ap, %bb.aq
  %.014.i22.i.us.i = phi i64 [ %i.ie, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %.0913.i23.i.us.i = phi ptr [ %i.hz, %bb.aq ], [ %i.hx, %bb.ap ]
  %.01012.i24.i.us.i = phi ptr [ %i.ib, %bb.aq ], [ %i.cl, %bb.ap ]
  %i.hz = getelementptr inbounds i8, ptr %.0913.i23.i.us.i, i64 -1 ; 3 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !29
  %i.ib = getelementptr inbounds i8, ptr %.01012.i24.i.us.i, i64 -1 ; 3 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !29
  %i.id = icmp eq i8 %i.ia, %i.ic
  br i1 %i.id, label %bb.aq, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i

bb.aq:                                            ; preds = %.lr.ph.i21.i.us.i
  %i.ie = add i64 %.014.i22.i.us.i, 1             ; 2 uses
  %i.if = icmp ugt ptr %i.hz, %.1238318.i
  %i.ig = icmp ugt ptr %i.ib, %i.cj
  %or.cond.i25.i.us.i = and i1 %i.if, %i.ig
  br i1 %or.cond.i25.i.us.i, label %.lr.ph.i21.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i, !llvm.loop !51

ZSTD_ldm_countBackwardsMatch.exit26.i.us.i:       ; preds = %bb.aq, %.lr.ph.i21.i.us.i, %bb.ap
  %.0.lcssa.i20.i.us.i = phi i64 [ 0, %bb.ap ], [ %.014.i22.i.us.i, %.lr.ph.i21.i.us.i ], [ %i.ie, %bb.aq ]
  %i.ih = add i64 %.0.lcssa.i20.i.us.i, %.0.lcssa.i.i.us.i
  br label %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i

ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i: ; preds = %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i, %ZSTD_ldm_countBackwardsMatch.exit.i.us.i
  %.2.us.i = phi i64 [ %.0.lcssa.i.i.us.i, %ZSTD_ldm_countBackwardsMatch.exit.i.us.i ], [ %i.ih, %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i ] ; 2 uses
  %i.ii = add i64 %.2.us.i, %.0.i.us.i            ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, %.0213309.us.i
  br i1 %i.ij, label %bb.ar, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.ar:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i
  br label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i: ; preds = %bb.ar, %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i, %ZSTD_count_2segments.exit.us.i, %bb.o, %.lr.ph312.split.us.i
  %.2221.us.i = phi i64 [ %.0219307.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i ], [ %.0219307.us.i, %.lr.ph312.split.us.i ], [ %.0219307.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0219307.us.i, %bb.o ], [ %.0.i.us.i, %bb.ar ] ; 2 uses
  %.2218.us.i = phi i64 [ %.0216308.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i ], [ %.0216308.us.i, %.lr.ph312.split.us.i ], [ %.0216308.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0216308.us.i, %bb.o ], [ %.2.us.i, %bb.ar ] ; 2 uses
  %.2215.us.i = phi i64 [ %.0213309.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i ], [ %.0213309.us.i, %.lr.ph312.split.us.i ], [ %.0213309.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0213309.us.i, %bb.o ], [ %i.ii, %bb.ar ]
  %.2211.us.i = phi ptr [ %.0209311.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.us.i ], [ %.0209311.us.i, %.lr.ph312.split.us.i ], [ %.0209311.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0209311.us.i, %bb.o ], [ %.0212310.us.i, %bb.ar ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0212310.us.i, i64 8 ; 2 uses
  %i.il = icmp ult ptr %i.ik, %i.eo
  br i1 %i.il, label %.lr.ph312.split.us.i, label %._crit_edge.i, !llvm.loop !52

.lr.ph312.split.i:                                ; preds = %.lr.ph312.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i
  %.0209311.i = phi ptr [ %.2211.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ null, %.lr.ph312.i ] ; 4 uses
  %.0212310.i = phi ptr [ %i.ka, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ %i.en, %.lr.ph312.i ] ; 4 uses
  %.0213309.i = phi i64 [ %.2215.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph312.i ] ; 5 uses
  %.0216308.i = phi i64 [ %.2218.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %.0219307.i = phi i64 [ %.2221.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0212310.i, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !69
  %.not250.i = icmp eq i32 %i.in, %i.ef
  br i1 %.not250.i, label %bb.as, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.as:                                            ; preds = %.lr.ph312.split.i
  %i.io = load i32, ptr %.0212310.i, align 4, !tbaa !61 ; 3 uses
  %.not251.i = icmp ugt i32 %i.io, %i.cg
  br i1 %.not251.i, label %bb.at, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.at:                                            ; preds = %bb.as
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ip ; 4 uses
  br i1 %i.ep, label %bb.au, label %.loopexit.i.i

bb.au:                                            ; preds = %bb.at
  %.val60.i.i = load i64, ptr %i.iq, align 1, !tbaa !26 ; 2 uses
  %.val.i.i = load i64, ptr %i.ed, align 1, !tbaa !26 ; 2 uses
  %.not.i269.i = icmp eq i64 %.val60.i.i, %.val.i.i
  br i1 %.not.i269.i, label %.preheader.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ir = xor i64 %.val.i.i, %.val60.i.i
  %i.is = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ir, i1 true)
  %i.it = lshr i64 %i.is, 3
  br label %ZSTD_count.exit.i

.preheader.i.i:                                   ; preds = %bb.au, %bb.aw
  %.pn.i.i = phi ptr [ %.049.i.i, %bb.aw ], [ %i.ed, %bb.au ]
  %.pn67.i.i = phi ptr [ %.045.i.i, %bb.aw ], [ %i.iq, %bb.au ]
  %.045.i.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i, i64 8 ; 3 uses
  %.049.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 5 uses
  %i.iu = icmp ult ptr %.049.i.i, %i.dd
  br i1 %i.iu, label %bb.aw, label %.loopexit.i.i

bb.aw:                                            ; preds = %.preheader.i.i
  %.045.val.i.i = load i64, ptr %.045.i.i, align 1, !tbaa !26 ; 2 uses
  %.049.val.i.i = load i64, ptr %.049.i.i, align 1, !tbaa !26 ; 2 uses
  %.not59.i.i = icmp eq i64 %.045.val.i.i, %.049.val.i.i
  br i1 %.not59.i.i, label %.preheader.i.i, label %.thread63.i.i

.thread63.i.i:                                    ; preds = %bb.aw
  %i.iv = xor i64 %.049.val.i.i, %.045.val.i.i
  %i.iw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.iv, i1 true)
  %i.ix = lshr i64 %i.iw, 3
  %i.iy = getelementptr inbounds nuw i8, ptr %.049.i.i, i64 %i.ix
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.iz, %i.ei
  br label %ZSTD_count.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.at
  %.251.i.i = phi ptr [ %i.ed, %bb.at ], [ %.049.i.i, %.preheader.i.i ] ; 5 uses
  %.247.i.i = phi ptr [ %i.iq, %bb.at ], [ %.045.i.i, %.preheader.i.i ] ; 4 uses
  %i.jb = icmp ult ptr %.251.i.i, %i.de
  br i1 %i.jb, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.loopexit.i.i
  %.247.val.i.i = load i32, ptr %.247.i.i, align 1, !tbaa !25
  %.251.val.i.i = load i32, ptr %.251.i.i, align 1, !tbaa !25
  %i.jc = icmp eq i32 %.247.val.i.i, %.251.val.i.i
  br i1 %i.jc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jd = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.loopexit.i.i
  %.352.i.i = phi ptr [ %i.jd, %bb.ay ], [ %.251.i.i, %bb.ax ], [ %.251.i.i, %.loopexit.i.i ] ; 5 uses
  %.348.i.i = phi ptr [ %i.je, %bb.ay ], [ %.247.i.i, %bb.ax ], [ %.247.i.i, %.loopexit.i.i ] ; 4 uses
  %i.jf = icmp ult ptr %.352.i.i, %i.df
  br i1 %i.jf, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.348.val.i.i = load i16, ptr %.348.i.i, align 1, !tbaa !70
  %.352.val.i.i = load i16, ptr %.352.i.i, align 1, !tbaa !70
  %i.jg = icmp eq i16 %.348.val.i.i, %.352.val.i.i
  br i1 %i.jg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jh = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 2
  %i.ji = getelementptr inbounds nuw i8, ptr %.348.i.i, i64 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.453.i.i = phi ptr [ %i.jh, %bb.bb ], [ %.352.i.i, %bb.ba ], [ %.352.i.i, %bb.az ] ; 4 uses
  %.4.i.i = phi ptr [ %i.ji, %bb.bb ], [ %.348.i.i, %bb.ba ], [ %.348.i.i, %bb.az ]
  %i.jj = icmp ult ptr %.453.i.i, %i.aj
  br i1 %i.jj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jk = load i8, ptr %.4.i.i, align 1, !tbaa !29
  %i.jl = load i8, ptr %.453.i.i, align 1, !tbaa !29
  %i.jm = icmp eq i8 %i.jk, %i.jl
  %spec.select.idx.i.i = zext i1 %i.jm to i64
  %spec.select.i268.i = getelementptr inbounds nuw i8, ptr %.453.i.i, i64 %spec.select.idx.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.5.i.i = phi ptr [ %.453.i.i, %bb.bc ], [ %spec.select.i268.i, %bb.bd ]
  %i.jn = ptrtoint ptr %.5.i.i to i64
  %i.jo = sub i64 %i.jn, %i.ei
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %bb.be, %.thread63.i.i, %bb.av
  %.3.i.i = phi i64 [ %i.ja, %.thread63.i.i ], [ %i.jo, %bb.be ], [ %i.it, %bb.av ] ; 3 uses
  %.not252.i = icmp ult i64 %.3.i.i, %i.cp
  br i1 %.not252.i, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %ZSTD_count.exit.i
  %i.jp = icmp ugt i32 %i.io, %.val262.i
  %or.cond11.i.i = and i1 %i.eq, %i.jp
  br i1 %or.cond11.i.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

.lr.ph.i270.i:                                    ; preds = %bb.bf, %bb.bg
  %.014.i.i = phi i64 [ %i.jv, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.0913.i.i = phi ptr [ %i.jq, %bb.bg ], [ %i.ed, %bb.bf ]
  %.01012.i.i = phi ptr [ %i.js, %bb.bg ], [ %i.iq, %bb.bf ]
  %i.jq = getelementptr inbounds i8, ptr %.0913.i.i, i64 -1 ; 3 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !29
  %i.js = getelementptr inbounds i8, ptr %.01012.i.i, i64 -1 ; 3 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !29
  %i.ju = icmp eq i8 %i.jr, %i.jt
  br i1 %i.ju, label %bb.bg, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

bb.bg:                                            ; preds = %.lr.ph.i270.i
  %i.jv = add i64 %.014.i.i, 1                    ; 2 uses
  %i.jw = icmp ugt ptr %i.jq, %.1238318.i
  %i.jx = icmp ugt ptr %i.js, %i.cm
  %or.cond.i271.i = and i1 %i.jw, %i.jx
  br i1 %or.cond.i271.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, !llvm.loop !51

ZSTD_ldm_countBackwardsMatch.exit.thread279.i:    ; preds = %bb.bg, %.lr.ph.i270.i, %bb.bf
  %.2.i = phi i64 [ 0, %bb.bf ], [ %.014.i.i, %.lr.ph.i270.i ], [ %i.jv, %bb.bg ] ; 2 uses
  %i.jy = add i64 %.2.i, %.3.i.i                  ; 2 uses
  %i.jz = icmp ugt i64 %i.jy, %.0213309.i
  br i1 %i.jz, label %bb.bh, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.bh:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.thread279.i
  br label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i: ; preds = %bb.bh, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, %ZSTD_count.exit.i, %bb.as, %.lr.ph312.split.i
  %.2221.i = phi i64 [ %.0219307.i, %ZSTD_count.exit.i ], [ %.0219307.i, %.lr.ph312.split.i ], [ %.0219307.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0219307.i, %bb.as ], [ %.3.i.i, %bb.bh ] ; 2 uses
  %.2218.i = phi i64 [ %.0216308.i, %ZSTD_count.exit.i ], [ %.0216308.i, %.lr.ph312.split.i ], [ %.0216308.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0216308.i, %bb.as ], [ %.2.i, %bb.bh ] ; 2 uses
  %.2215.i = phi i64 [ %.0213309.i, %ZSTD_count.exit.i ], [ %.0213309.i, %.lr.ph312.split.i ], [ %.0213309.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0213309.i, %bb.as ], [ %i.jy, %bb.bh ]
  %.2211.i = phi ptr [ %.0209311.i, %ZSTD_count.exit.i ], [ %.0209311.i, %.lr.ph312.split.i ], [ %.0209311.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0209311.i, %bb.as ], [ %.0212310.i, %bb.bh ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0212310.i, i64 8 ; 2 uses
  %i.kb = icmp ult ptr %i.ka, %i.eo
  br i1 %i.kb, label %.lr.ph312.split.i, label %._crit_edge.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0219.lcssa.i = phi i64 [ %.2221.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2221.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0216.lcssa.i = phi i64 [ %.2218.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2218.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0209.lcssa.i = phi ptr [ %.2211.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2211.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %i.kc = icmp eq ptr %.0209.lcssa.i, null
  br i1 %i.kc, label %.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kd = load i64, ptr %i.k, align 8, !tbaa !33  ; 3 uses
  %i.ke = load i64, ptr %i.l, align 8, !tbaa !56
  %.not249.i = icmp eq i64 %i.kd, %i.ke
  br i1 %.not249.i, label %ZSTD_ldm_generateSequences_internal.exit.thread72, label %bb.bj

ZSTD_ldm_generateSequences_internal.exit.thread72: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

end_hunk_0
