Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_ldm?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_ldm_gear_feed:bb.a
  %i.f = shl i64 %.072, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.06371
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = add i64 %i.k, %i.f                       ; 3 uses
  %i.m = or disjoint i64 %.06371, 1               ; 3 uses
  %i.n = and i64 %i.l, %i.c
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q
  store i64 %i.m, ptr %i.r, align 8, !tbaa !28
  %i.s = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.s, ptr %4, align 4, !tbaa !27
  %i.t = icmp eq i32 %i.s, 64
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.u = shl i64 %i.l, 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %i.aa = add i64 %i.z, %i.u                      ; 3 uses
  %i.ab = or disjoint i64 %.06371, 2              ; 3 uses
  %i.ac = and i64 %i.aa, %i.c
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %4, align 4, !tbaa !27    ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !28
  %i.ah = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !27
  %i.ai = icmp eq i32 %i.ah, 64
  br i1 %i.ai, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = shl i64 %i.aa, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !31
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, %i.aj                    ; 3 uses
  %i.aq = or disjoint i64 %.06371, 3              ; 3 uses
  %i.ar = and i64 %i.ap, %i.c
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %4, align 4, !tbaa !27    ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !28
  %i.aw = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.aw, ptr %4, align 4, !tbaa !27
  %i.ax = icmp eq i32 %i.aw, 64
  br i1 %i.ax, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ay = shl i64 %i.ap, 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = add i64 %i.bd, %i.ay                    ; 4 uses
  %i.bf = add i64 %.06371, 4                      ; 5 uses
  %i.bg = and i64 %i.be, %i.c
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.bi = load i32, ptr %4, align 4, !tbaa !27    ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !28
  %i.bl = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !27
  %i.bm = icmp eq i32 %i.bl, 64
  br i1 %i.bm, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = or disjoint i64 %i.bf, 3
  %i.bo = icmp ult i64 %i.bn, %2
  br i1 %i.bo, label %.lr.ph, label %.preheader, !llvm.loop !36

.lr.ph76:                                         ; preds = %.preheader, %.lr.ph76.backedge
  %.175 = phi i64 [ %i.bv, %.lr.ph76.backedge ], [ %.0.lcssa, %.preheader ]
  %.16474 = phi i64 [ %i.bw, %.lr.ph76.backedge ], [ %.063.lcssa, %.preheader ] ; 2 uses
  %i.bp = shl i64 %.175, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.16474
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !28
  %i.bv = add i64 %i.bu, %i.bp                    ; 4 uses
  %i.bw = add nuw i64 %.16474, 1                  ; 6 uses
  %i.bx = and i64 %i.bv, %i.c
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %.lr.ph76
  %i.bz = load i32, ptr %4, align 4, !tbaa !27    ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ca
  store i64 %i.bw, ptr %i.cb, align 8, !tbaa !28
  %i.cc = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.cc, ptr %4, align 4, !tbaa !27
  %i.cd = icmp ne i32 %i.cc, 64
  %i.ce = icmp ult i64 %i.bw, %2
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %.lr.ph76.backedge, label %.loopexit

bb.k:                                             ; preds = %.lr.ph76
  %.old = icmp ult i64 %i.bw, %2
  br i1 %.old, label %.lr.ph76.backedge, label %.loopexit

.lr.ph76.backedge:                                ; preds = %bb.k, %bb.j
  br label %.lr.ph76, !llvm.loop !37

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
  %.pre = load i64, ptr %i.k, align 8, !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bn
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.mb, %bb.bn ] ; 4 uses
  %.05588 = phi i64 [ 0, %.lr.ph ], [ %.25778, %bb.bn ] ; 2 uses
  %.05887 = phi i64 [ 0, %.lr.ph ], [ %i.mk, %bb.bn ] ; 2 uses
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !40
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
  %.val = load ptr, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.am = ptrtoint ptr %.val to i64               ; 3 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %6 = icmp ugt i32 %i.ao, -624951296
  br i1 %6, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre99.a = load i32, ptr %i.m, align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.o, align 4, !tbaa !13  ; 3 uses
  %i.aq = sub i64 %i.ag, %i.am
  %i.ar = trunc i64 %i.aq to i32
  %reass.sub.i = sub i32 %i.ar, %i.d              ; 3 uses
  %i.as = add i32 %reass.sub.i, -2                ; 6 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %i.at ; 3 uses
  store ptr %i.au, ptr %i.n, align 8, !tbaa !41
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store ptr %i.aw, ptr %i.p, align 8, !tbaa !42
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !43  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %reass.sub.i
  %i.az = sub i32 %i.ax, %i.as
  %storemerge.i = select i1 %i.ay, i32 2, i32 %i.az
  store i32 %storemerge.i, ptr %i.q, align 4, !tbaa !43
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, %reass.sub.i
  %i.bc = sub i32 %i.ba, %i.as
  %storemerge33.i = select i1 %i.bb, i32 2, i32 %i.bc
  store i32 %storemerge33.i, ptr %i.r, align 8, !tbaa !44
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !45
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.s, align 8, !tbaa !45
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !29  ; 4 uses
  %i.bg = icmp eq i32 %i.ap, 0
  br i1 %i.bg, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %7 = shl nuw i32 1, %i.ap
  %8 = and i32 %7, -2
  %unroll_iter = zext i32 %8 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !46
  %storemerge.i61 = tail call i32 @llvm.usub.sat.i32(i32 %i.bi, i32 %i.as)
  store i32 %storemerge.i61, ptr %i.bh, align 4, !tbaa !46
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46
  %storemerge.i61.1 = tail call i32 @llvm.usub.sat.i32(i32 %i.bl, i32 %i.as)
  store i32 %storemerge.i61.1, ptr %i.bk, align 4, !tbaa !46
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_ldm_reduceTable.exit, label %.lr.ph.i, !llvm.loop !48

.lr.ph.i.epil.preheader:                          ; preds = %bb.d
  %lcmp.mod172 = icmp eq i32 %i.ap, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !46
  %storemerge.i61.epil = tail call i32 @llvm.usub.sat.i32(i32 %i.bm, i32 %i.as)
  store i32 %storemerge.i61.epil, ptr %i.bf, align 4, !tbaa !46
  br label %ZSTD_ldm_reduceTable.exit

ZSTD_ldm_reduceTable.exit:                        ; preds = %.lr.ph.i, %.lr.ph.i.epil.preheader
  store i32 0, ptr %i.m, align 8, !tbaa !49
  %.pre104.a = ptrtoint ptr %i.au to i64          ; 2 uses
  %.pre105 = sub i64 %i.ak, %.pre104.a
  %.pre107 = trunc i64 %.pre105 to i32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %ZSTD_ldm_reduceTable.exit
  %.pre-phi108 = phi i32 [ %i.ao, %._crit_edge ], [ %.pre107, %ZSTD_ldm_reduceTable.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %i.am, %._crit_edge ], [ %.pre104.a, %ZSTD_ldm_reduceTable.exit ]
  %i.bn = phi i32 [ %.pre99.a, %._crit_edge ], [ 0, %ZSTD_ldm_reduceTable.exit ]
  %i.bo = phi ptr [ %.val, %._crit_edge ], [ %i.au, %ZSTD_ldm_reduceTable.exit ] ; 3 uses
  %i.bp = add i32 %i.bn, %i.d
  %i.bq = icmp ult i32 %i.bp, %.pre-phi108
  %i.br = load i32, ptr %i.q, align 4, !tbaa !43  ; 3 uses
  br i1 %i.bq, label %bb.f, label %.ZSTD_window_enforceMaxDist.exit_crit_edge

.ZSTD_window_enforceMaxDist.exit_crit_edge:       ; preds = %bb.e
  %.val262.i.pre = load i32, ptr %i.r, align 8, !tbaa !44
  br label %ZSTD_window_enforceMaxDist.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = sub i32 %.pre-phi108, %i.d              ; 3 uses
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bs, ptr %i.q, align 4, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = phi i32 [ %i.bs, %bb.g ], [ %i.br, %bb.f ] ; 4 uses
  %i.bv = load i32, ptr %i.r, align 8, !tbaa !44  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %i.bu
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bu, ptr %i.r, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val262.i101 = phi i32 [ %i.bu, %bb.i ], [ %i.bv, %bb.h ]
  store i32 0, ptr %i.m, align 8, !tbaa !27
  br label %ZSTD_window_enforceMaxDist.exit

ZSTD_window_enforceMaxDist.exit:                  ; preds = %.ZSTD_window_enforceMaxDist.exit_crit_edge, %bb.j
  %.val263.i = phi i32 [ %i.br, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %i.bu, %bb.j ] ; 2 uses
  %.val262.i = phi i32 [ %.val262.i.pre, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %.val262.i101, %bb.j ] ; 5 uses
  %.not.i.a = icmp ult i32 %.val263.i, %.val262.i ; 4 uses
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !15
  %.12.val.fr.i.i = freeze i32 %i.bx              ; 2 uses
  %i.by = load i32, ptr %i.v, align 4, !tbaa !16  ; 2 uses
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = load i32, ptr %i.o, align 4, !tbaa !13
  %i.cb = sub i32 %i.ca, %i.by
  br i1 %.not.i.a, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %ZSTD_window_enforceMaxDist.exit
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %ZSTD_window_enforceMaxDist.exit
  %i.cd = phi i32 [ %.val263.i, %bb.k ], [ %.val262.i, %ZSTD_window_enforceMaxDist.exit ] ; 3 uses
  %i.ce = phi ptr [ %i.cc, %bb.k ], [ null, %ZSTD_window_enforceMaxDist.exit ] ; 3 uses
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = select i1 %.not.i.a, ptr %i.cg, ptr null ; 4 uses
  %i.ci = zext i32 %.val262.i to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci ; 2 uses
  %i.ck = select i1 %.not.i.a, ptr %i.cj, ptr null ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ci ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al ; 6 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.co = zext i32 %.12.val.fr.i.i to i64         ; 7 uses
  %i.cp = icmp ult i64 %i.al, %i.co
  br i1 %i.cp, label %ZSTD_ldm_generateSequences_internal.exit.thread.a, label %ZSTD_ldm_gear_reset.exit.i

ZSTD_ldm_generateSequences_internal.exit.thread.a: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bl

ZSTD_ldm_gear_reset.exit.i:                       ; preds = %.thread.i
  %.val254.i = load i32, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %.12.val.fr.i.i, i32 64) ; 2 uses
  store i64 4294967295, ptr %5, align 8, !tbaa !23
  %i.cq = add i32 %.val254.i, -1
  %or.cond.not.i.i = icmp ult i32 %i.cq, %spec.select.i.i
  %i.cr = zext nneg i32 %.val254.i to i64
  %notmask15.i.i = shl nsw i64 -1, %i.cr
  %i.cs = xor i64 %notmask15.i.i, -1
  %i.ct = sub nuw nsw i32 %spec.select.i.i, %.val254.i
  %narrow.i.i = select i1 %or.cond.not.i.i, i32 %i.ct, i32 0
  %i.cu = zext nneg i32 %narrow.i.i to i64
  %.sink.i.i = shl i64 %i.cs, %i.cu
  store i64 %.sink.i.i, ptr %i.z, align 8, !tbaa !26
  %i.cv = add nsw i64 %i.al, -8
  %i.cw = icmp sgt i64 %i.cv, %i.co
  br i1 %i.cw, label %.lr.ph325.i, label %ZSTD_ldm_generateSequences_internal.exit

.lr.ph325.i:                                      ; preds = %ZSTD_ldm_gear_reset.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.co
  %i.cy = ptrtoint ptr %i.cn to i64
  %i.cz = sub nsw i64 0, %i.co
  %notmask.i = shl nsw i32 -1, %i.cb
  %i.da = xor i32 %notmask.i, -1
  %i.db = zext i32 %i.bz to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cm, i64 -7 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cm, i64 -3 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.cm, i64 -1 ; 2 uses
  %i.df = icmp ugt ptr %i.ck, %i.ch
  %.idx.i = shl nuw nsw i64 %i.db, 3
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph325.i
  %.0232324.i = phi ptr [ %i.cx, %.lr.ph325.i ], [ %i.lz, %.loopexit.i ] ; 6 uses
  %.0237323.i = phi ptr [ %i.af, %.lr.ph325.i ], [ %.3240.i, %.loopexit.i ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.dg = ptrtoint ptr %.0232324.i to i64
  %i.dh = sub i64 %i.cy, %i.dg
  %i.di = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %5, ptr noundef %.0232324.i, i64 noundef %i.dh, ptr noundef nonnull %i.w, ptr noundef %i.a) ; 3 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %.not327.i = icmp eq i32 %i.dj, 0
  br i1 %.not327.i, label %.loopexit.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.l
  %invariant.gep.i = getelementptr i8, ptr %.0232324.i, i64 %i.cz
  %i.dk = load i32, ptr %i.v, align 4, !tbaa !16
  %.val255.i = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.dl = zext nneg i32 %i.dk to i64
  %wide.trip.count.i63 = zext i32 %i.dj to i64    ; 2 uses
  br label %bb.m

.lr.ph321.i:                                      ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %.0232324.i, i64 %i.di
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i62
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i65, %bb.m ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i64
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !28
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.do ; 2 uses
  %i.dp = tail call i64 @ZSTD_XXH64(ptr noundef captures(address) %gep.i, i64 noundef %i.co, i64 noundef 0) #16 ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, %i.da                    ; 2 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv.i64 ; 4 uses
  store ptr %gep.i, ptr %i.ds, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.dr, ptr %i.dt, align 8, !tbaa !53
  %i.du = lshr i64 %i.dp, 32
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !54
  %i.dx = zext nneg i32 %i.dr to i64
  %i.dy = shl i64 %i.dx, %i.dl
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.val255.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !55
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 3, i32 1)
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i63
  br i1 %exitcond.not.i66, label %.lr.ph321.i, label %bb.m, !llvm.loop !56

bb.n:                                             ; preds = %bb.bk, %.lr.ph321.i
  %indvars.iv337.i = phi i64 [ 0, %.lr.ph321.i ], [ %indvars.iv.next338.i, %bb.bk ] ; 2 uses
  %.1238318.i = phi ptr [ %.0237323.i, %.lr.ph321.i ], [ %.2239.ph.i, %bb.bk ] ; 8 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv337.i ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !51 ; 18 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !54 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !53 ; 2 uses
  %i.eh = ptrtoint ptr %i.ec to i64               ; 5 uses
  %i.ei = sub i64 %i.eh, %.pre-phi                ; 3 uses
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = icmp ult ptr %i.ec, %.1238318.i
  br i1 %i.ek, label %.sink.split.i, label %.lr.ph312.i

.lr.ph312.i:                                      ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !55 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i ; 2 uses
  %i.eo = icmp ult ptr %i.ec, %i.dc
  %i.ep = icmp ugt ptr %i.ec, %.1238318.i         ; 2 uses
  br i1 %.not.i.a, label %.lr.ph312.split.us.i, label %.lr.ph312.split.i

.lr.ph312.split.us.i:                             ; preds = %.lr.ph312.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0209311.us.i = phi ptr [ %.2211.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ null, %.lr.ph312.i ] ; 4 uses
  %.0212310.us.i = phi ptr [ %i.ij, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %i.em, %.lr.ph312.i ] ; 4 uses
  %.0213309.us.i = phi i64 [ %.2215.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 5 uses
  %.0216308.us.i = phi i64 [ %.2218.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %.0219307.us.i = phi i64 [ %.2221.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0212310.us.i, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !57
  %.not250.us.i = icmp eq i32 %i.er, %i.ee
  br i1 %.not250.us.i, label %bb.o, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.o:                                             ; preds = %.lr.ph312.split.us.i
  %i.es = load i32, ptr %.0212310.us.i, align 4, !tbaa !46 ; 3 uses
end_hunk_0
begin_hunk_1_@ZSTD_ldm_generateSequences:bb.a
  %.352.i.i = phi ptr [ %i.jc, %bb.ay ], [ %.251.i.i, %bb.ax ], [ %.251.i.i, %.loopexit.i.i ] ; 5 uses
  %.348.i.i = phi ptr [ %i.jd, %bb.ay ], [ %.247.i.i, %bb.ax ], [ %.247.i.i, %.loopexit.i.i ] ; 4 uses
  %i.je = icmp ult ptr %.352.i.i, %i.de
  br i1 %i.je, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.348.val.i.i = load i16, ptr %.348.i.i, align 1, !tbaa !58
  %.352.val.i.i = load i16, ptr %.352.i.i, align 1, !tbaa !58
  %i.jf = icmp eq i16 %.348.val.i.i, %.352.val.i.i
  br i1 %i.jf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 2
  %i.jh = getelementptr inbounds nuw i8, ptr %.348.i.i, i64 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.453.i.i = phi ptr [ %i.jg, %bb.bb ], [ %.352.i.i, %bb.ba ], [ %.352.i.i, %bb.az ] ; 4 uses
  %.4.i.i = phi ptr [ %i.jh, %bb.bb ], [ %.348.i.i, %bb.ba ], [ %.348.i.i, %bb.az ]
  %i.ji = icmp ult ptr %.453.i.i, %i.aj
  br i1 %i.ji, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load i8, ptr %.4.i.i, align 1, !tbaa !31
  %i.jk = load i8, ptr %.453.i.i, align 1, !tbaa !31
  %i.jl = icmp eq i8 %i.jj, %i.jk
  %spec.select.idx.i.i = zext i1 %i.jl to i64
  %spec.select.i268.i = getelementptr inbounds nuw i8, ptr %.453.i.i, i64 %spec.select.idx.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.5.i.i = phi ptr [ %.453.i.i, %bb.bc ], [ %spec.select.i268.i, %bb.bd ]
  %i.jm = ptrtoint ptr %.5.i.i to i64
  %i.jn = sub i64 %i.jm, %i.eh
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %bb.be, %.thread63.i.i, %bb.av
  %.3.i.i = phi i64 [ %i.iz, %.thread63.i.i ], [ %i.jn, %bb.be ], [ %i.is, %bb.av ] ; 3 uses
  %.not252.i = icmp ult i64 %.3.i.i, %i.co
  br i1 %.not252.i, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %ZSTD_count.exit.i
  %i.jo = icmp ugt i32 %i.in, %.val262.i
  %or.cond11.i.i = and i1 %i.ep, %i.jo
  br i1 %or.cond11.i.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

.lr.ph.i270.i:                                    ; preds = %bb.bf, %bb.bg
  %.014.i.i = phi i64 [ %i.ju, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.0913.i.i = phi ptr [ %i.jp, %bb.bg ], [ %i.ec, %bb.bf ]
  %.01012.i.i = phi ptr [ %i.jr, %bb.bg ], [ %i.ip, %bb.bf ]
  %i.jp = getelementptr inbounds i8, ptr %.0913.i.i, i64 -1 ; 3 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !31
  %i.jr = getelementptr inbounds i8, ptr %.01012.i.i, i64 -1 ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !31
  %i.jt = icmp eq i8 %i.jq, %i.js
  br i1 %i.jt, label %bb.bg, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

bb.bg:                                            ; preds = %.lr.ph.i270.i
  %i.ju = add i64 %.014.i.i, 1                    ; 2 uses
  %i.jv = icmp ugt ptr %i.jp, %.1238318.i
  %i.jw = icmp ugt ptr %i.jr, %i.cl
  %or.cond.i271.i = and i1 %i.jv, %i.jw
  br i1 %or.cond.i271.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, !llvm.loop !60

ZSTD_ldm_countBackwardsMatch.exit.thread279.i:    ; preds = %bb.bg, %.lr.ph.i270.i, %bb.bf
  %.2.i = phi i64 [ 0, %bb.bf ], [ %.014.i.i, %.lr.ph.i270.i ], [ %i.ju, %bb.bg ] ; 2 uses
  %i.jx = add i64 %.2.i, %.3.i.i                  ; 2 uses
  %i.jy = icmp ugt i64 %i.jx, %.0213309.i
  br i1 %i.jy, label %bb.bh, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.bh:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.thread279.i
  br label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i: ; preds = %bb.bh, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, %ZSTD_count.exit.i, %bb.as, %.lr.ph312.split.i
  %.2221.i = phi i64 [ %.0219307.i, %ZSTD_count.exit.i ], [ %.0219307.i, %.lr.ph312.split.i ], [ %.0219307.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0219307.i, %bb.as ], [ %.3.i.i, %bb.bh ] ; 2 uses
  %.2218.i = phi i64 [ %.0216308.i, %ZSTD_count.exit.i ], [ %.0216308.i, %.lr.ph312.split.i ], [ %.0216308.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0216308.i, %bb.as ], [ %.2.i, %bb.bh ] ; 2 uses
  %.2215.i = phi i64 [ %.0213309.i, %ZSTD_count.exit.i ], [ %.0213309.i, %.lr.ph312.split.i ], [ %.0213309.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0213309.i, %bb.as ], [ %i.jx, %bb.bh ]
  %.2211.i = phi ptr [ %.0209311.i, %ZSTD_count.exit.i ], [ %.0209311.i, %.lr.ph312.split.i ], [ %.0209311.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0209311.i, %bb.as ], [ %.0212310.i, %bb.bh ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0212310.i, i64 8 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %i.en
  br i1 %i.ka, label %.lr.ph312.split.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0219.lcssa.i = phi i64 [ %.2221.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2221.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0216.lcssa.i = phi i64 [ %.2218.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2218.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0209.lcssa.i = phi ptr [ %.2211.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2211.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %i.kb = icmp eq ptr %.0209.lcssa.i, null
  br i1 %i.kb, label %.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kc = load i64, ptr %i.k, align 8, !tbaa !38  ; 3 uses
  %i.kd = load i64, ptr %i.l, align 8, !tbaa !40
  %.not249.i = icmp eq i64 %i.kc, %i.kd
  br i1 %.not249.i, label %ZSTD_ldm_generateSequences_internal.exit.thread72, label %bb.bj

ZSTD_ldm_generateSequences_internal.exit.thread72: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.ke = load ptr, ptr %1, align 8, !tbaa !62
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kc ; 3 uses
  %i.kg = add i64 %.0216.lcssa.i, %.0219.lcssa.i
  %i.kh = load i32, ptr %.0209.lcssa.i, align 4, !tbaa !46
  %i.ki = sub i32 %i.ej, %i.kh
  %i.kj = sub i64 0, %.0216.lcssa.i
  %i.kk = getelementptr inbounds i8, ptr %i.ec, i64 %i.kj
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %.1238318.i to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !63
  %i.kq = trunc i64 %i.kg to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !65
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !66
  %i.ks = add i64 %i.kc, 1
  store i64 %i.ks, ptr %i.k, align 8, !tbaa !38
  %i.kt = zext i32 %i.eg to i64                   ; 2 uses
  %i.ku = load i32, ptr %i.v, align 4, !tbaa !16  ; 2 uses
  %.sroa.6.0.insert.ext34.i = zext i32 %i.ee to i64
  %.sroa.6.0.insert.shift35.i = shl nuw i64 %.sroa.6.0.insert.ext34.i, 32
  %.sroa.0.0.insert.ext25.i = and i64 %i.ei, 4294967295
  %.sroa.0.0.insert.insert27.i = or disjoint i64 %.sroa.6.0.insert.shift35.i, %.sroa.0.0.insert.ext25.i
  %.val256.i = load ptr, ptr %i.t, align 8, !tbaa !29
  %.val257.i = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.kv = getelementptr inbounds nuw i8, ptr %.val257.i, i64 %i.kt ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !31  ; 2 uses
  %i.kx = zext i8 %i.kw to i32
  %i.ky = zext nneg i32 %i.ku to i64
  %i.kz = shl i64 %i.kt, %i.ky
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val256.i, i64 %i.kz
  %i.lb = zext i8 %i.kw to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lb
  store i64 %.sroa.0.0.insert.insert27.i, ptr %i.lc, align 4
  %i.ld = add nuw nsw i32 %i.kx, 1
  %notmask.i273.i = shl nsw i32 -1, %i.ku
  %i.le = xor i32 %notmask.i273.i, -1
  %i.lf = and i32 %i.ld, %i.le
  %i.lg = trunc i32 %i.lf to i8
  store i8 %i.lg, ptr %i.kv, align 1, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.0219.lcssa.i ; 4 uses
  %i.li = icmp ugt ptr %i.lh, %i.dm
  br i1 %i.li, label %.critedge.i, label %bb.bk

.critedge.i:                                      ; preds = %bb.bj
  %i.lj = sub i64 0, %i.di
  %i.lk = getelementptr inbounds i8, ptr %i.lh, i64 %i.lj
  br label %.loopexit.i

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.n
  %i.ll = zext i32 %i.eg to i64                   ; 2 uses
  %i.lm = load i32, ptr %i.v, align 4, !tbaa !16  ; 2 uses
  %.sroa.6.0.insert.ext.i = zext i32 %i.ee to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.ei, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.val260.i = load ptr, ptr %i.t, align 8, !tbaa !29
  %.val261.i = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %.val261.i, i64 %i.ll ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !31  ; 2 uses
  %i.lp = zext i8 %i.lo to i32
  %i.lq = zext nneg i32 %i.lm to i64
  %i.lr = shl i64 %i.ll, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val260.i, i64 %i.lr
  %i.lt = zext i8 %i.lo to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lt
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.lu, align 4
  %i.lv = add nuw nsw i32 %i.lp, 1
  %notmask.i.i = shl nsw i32 -1, %i.lm
  %i.lw = xor i32 %notmask.i.i, -1
  %i.lx = and i32 %i.lv, %i.lw
  %i.ly = trunc i32 %i.lx to i8
  store i8 %i.ly, ptr %i.ln, align 1, !tbaa !31
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %bb.bj
  %.2239.ph.i = phi ptr [ %i.lh, %bb.bj ], [ %.1238318.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next338.i = add nuw nsw i64 %indvars.iv337.i, 1 ; 2 uses
  %exitcond341.not.i = icmp eq i64 %indvars.iv.next338.i, %wide.trip.count.i63
  br i1 %exitcond341.not.i, label %.loopexit.i, label %bb.n, !llvm.loop !67

.loopexit.i:                                      ; preds = %bb.bk, %.critedge.i, %bb.l
  %.3240.i = phi ptr [ %i.lh, %.critedge.i ], [ %.0237323.i, %bb.l ], [ %.2239.ph.i, %bb.bk ] ; 2 uses
  %.3235.i = phi ptr [ %i.lk, %.critedge.i ], [ %.0232324.i, %bb.l ], [ %.0232324.i, %bb.bk ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.3235.i, i64 %i.di ; 2 uses
  %i.ma = icmp ult ptr %i.lz, %i.cn
  br i1 %i.ma, label %bb.l, label %ZSTD_ldm_generateSequences_internal.exit.loopexit, !llvm.loop !68

ZSTD_ldm_generateSequences_internal.exit.loopexit: ; preds = %.loopexit.i
  %.pre109 = ptrtoint ptr %.3240.i to i64
  %.pre111 = sub i64 %i.ak, %.pre109
  br label %ZSTD_ldm_generateSequences_internal.exit

ZSTD_ldm_generateSequences_internal.exit:         ; preds = %ZSTD_ldm_generateSequences_internal.exit.loopexit, %ZSTD_ldm_gear_reset.exit.i
  %.pre-phi112 = phi i64 [ %.pre111, %ZSTD_ldm_generateSequences_internal.exit.loopexit ], [ %i.al, %ZSTD_ldm_gear_reset.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %9 = icmp ugt i64 %.pre-phi112, -120
  br i1 %9, label %.critedge, label %ZSTD_ldm_generateSequences_internal.exit._crit_edge

ZSTD_ldm_generateSequences_internal.exit._crit_edge: ; preds = %ZSTD_ldm_generateSequences_internal.exit
  %.pre103 = load i64, ptr %i.k, align 8, !tbaa !38
  br label %bb.bl

bb.bl:                                            ; preds = %ZSTD_ldm_generateSequences_internal.exit._crit_edge, %ZSTD_ldm_generateSequences_internal.exit.thread.a
  %i.mb = phi i64 [ %i.ab, %ZSTD_ldm_generateSequences_internal.exit.thread.a ], [ %.pre103, %ZSTD_ldm_generateSequences_internal.exit._crit_edge ] ; 2 uses
  %.6.i69 = phi i64 [ %i.al, %ZSTD_ldm_generateSequences_internal.exit.thread.a ], [ %.pre-phi112, %ZSTD_ldm_generateSequences_internal.exit._crit_edge ]
  %i.mc = icmp ult i64 %i.ab, %i.mb
  br i1 %i.mc, label %bb.bm, label %.split

.split:                                           ; preds = %bb.bl
  %i.md = add i64 %i.al, %.05588
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.me = trunc i64 %.05588 to i32
  %i.mf = load ptr, ptr %1, align 8, !tbaa !62
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.mf, i64 %i.ab
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !63
  %i.mj = add i32 %i.mi, %i.me
  store i32 %i.mj, ptr %i.mh, align 4, !tbaa !63
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.split
  %.25778 = phi i64 [ %i.md, %.split ], [ %.6.i69, %bb.bm ]
  %i.mk = add nuw nsw i64 %.05887, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.mk, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !69

.critedge:                                        ; preds = %bb.bn, %bb.b, %ZSTD_ldm_generateSequences_internal.exit, %bb.a, %ZSTD_ldm_generateSequences_internal.exit.thread72
  %.2 = phi i64 [ -70, %ZSTD_ldm_generateSequences_internal.exit.thread72 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.bn ], [ %.pre-phi112, %ZSTD_ldm_generateSequences_internal.exit ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_ldm_skipSequences(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not53 = icmp eq i64 %1, 0
  br i1 %.not53, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.d = icmp ult i64 %.pre, %i.c
  br i1 %i.d, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.lr.ph
  %i.e = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.h
  %.02754102 = phi i64 [ %i.z, %bb.h ], [ %1, %.lr.ph103.preheader ] ; 3 uses
  %i.f = phi i64 [ %i.aa, %bb.h ], [ %.pre, %.lr.ph103.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not34 = icmp ugt i64 %.02754102, %i.j
  br i1 %.not34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph103
  %i.k = trunc nuw i64 %.02754102 to i32
  %i.l = sub nuw i32 %i.i, %i.k
  store i32 %i.l, ptr %i.h, align 4, !tbaa !63
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph103
  %i.m = sub nuw i64 %.02754102, %i.j             ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65   ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i64 %i.m to i32
  %i.s = sub nuw i32 %i.o, %i.r                   ; 3 uses
  store i32 %i.s, ptr %i.n, align 4, !tbaa !65
  %i.t = icmp ult i32 %i.s, %2
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %i.f, 1                      ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.c
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %i.y = add i32 %i.x, %i.s
  store i32 %i.y, ptr %i.w, align 4, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.u, ptr %i.a, align 8, !tbaa !70
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %i.m, %i.p                   ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !65
  %i.aa = add nuw i64 %i.f, 1                     ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !70
  %.not = icmp ne i64 %i.z, 0
  %i.ab = icmp ult i64 %i.aa, %i.c
  %or.cond = select i1 %.not, i1 %i.ab, i1 false
  br i1 %or.cond, label %.lr.ph103, label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.a, %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_ldm_skipRawSeqStoreBytes(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %i.c = add i64 %i.b, %1
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38   ; 3 uses
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !70 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.g)
  %exitcond.not42.not = icmp ult i64 %.promoted, %i.g
  br i1 %exitcond.not42.not, label %.lr.ph44.preheader, label %.loopexit

.lr.ph44.preheader:                               ; preds = %.lr.ph
  %i.h = load ptr, ptr %0, align 8, !tbaa !62
  br label %.lr.ph44

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %i.n, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.b
  %.0182843 = phi i32 [ %i.m, %bb.b ], [ %i.d, %.lr.ph44.preheader ] ; 3 uses
  %i.i = phi i64 [ %i.n, %bb.b ], [ %.promoted, %.lr.ph44.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %i.k = add i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload ; 2 uses
  %.not21 = icmp ult i32 %.0182843, %i.k
  br i1 %.not21, label %.thread, label %bb.c

.thread:                                          ; preds = %.lr.ph44
  %i.l = zext i32 %.0182843 to i64
  store i64 %i.l, ptr %i.a, align 8, !tbaa !71
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph44
  %i.m = sub nuw i32 %.0182843, %i.k              ; 2 uses
  %i.n = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !70
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.thread
  %i.o = phi i64 [ %i.i, %.thread ], [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.a, %.loopexit
  store i64 0, ptr %i.a, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_ldm_blockCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr i8, ptr %1, i64 28
  %.val5.i = load i32, ptr %i.f, align 4, !tbaa !43
  %.not.i79.a = icmp ult i32 %.val5.i, %.val.i
  br i1 %.not.i79.a, label %ZSTD_matchState_dictMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %ZSTD_matchState_dictMode.exit, label %bb.c

end_hunk_1
