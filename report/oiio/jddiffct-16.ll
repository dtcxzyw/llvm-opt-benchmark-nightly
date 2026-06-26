inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@output_data:bb.a
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !90
  %i.bk = load i32, ptr %i.av, align 4, !tbaa !50
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bh, ptr align 2 %i.bj, i64 %i.bm, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !92

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i32 %.044 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.epil.init
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !90
  %i.bs = load i32, ptr %i.av, align 4, !tbaa !50
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bp, ptr align 2 %i.br, i64 %i.bu, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.051, i64 96
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !47
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next56, %i.bx
  br i1 %i.by, label %bb.e, label %._crit_edge53, !llvm.loop !93

._crit_edge53:                                    ; preds = %._crit_edge, %.critedge2
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !78
  %i.ca = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.ca, ptr %i.i, align 8, !tbaa !78
  %i.cb = load i32, ptr %i.c, align 8, !tbaa !74
  %i.cc = icmp ult i32 %i.ca, %i.cb
  %. = select i1 %i.cc, i32 3, i32 4
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %._crit_edge53
  %.042 = phi i32 [ %., %._crit_edge53 ], [ 0, %.critedge ]
  ret i32 %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_consume_data(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @decompress_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pre = load i32, ptr %i.m, align 4, !tbaa !68
  br label %bb.b

.preheader:                                       ; preds = %bb.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph90, label %._crit_edge91.thread

.lr.ph90:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %.pre101 = load i32, ptr %i.w, align 8, !tbaa !71
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.ab = phi i32 [ %.pre, %.lr.ph ], [ %i.ba, %bb.i ]
  %.07084 = phi i32 [ %i.i, %.lr.ph ], [ %i.bd, %bb.i ] ; 3 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !70
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.ai = tail call i32 %i.ah(ptr noundef nonnull %0) #6, !inline_history !97
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %process_restart.exit.thread, label %process_restart.exit

process_restart.exit:                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  tail call void %i.ak(ptr noundef nonnull %0) #6, !inline_history !97
  %i.al = load i32, ptr %i.m, align 4, !tbaa !68
  %i.am = load i32, ptr %i.p, align 8, !tbaa !69
  %i.an = udiv i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 76
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %process_restart.exit, %bb.c, %bb.b
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !76  ; 3 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !98
  %i.at = load i32, ptr %i.p, align 8, !tbaa !69
  %i.au = sub i32 %i.at, %i.ap
  %i.av = tail call i32 %i.as(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef %.07084, i32 noundef %i.ap, i32 noundef %i.au) #6 ; 2 uses
  %i.aw = load i32, ptr %i.p, align 8, !tbaa !69
  %i.ax = sub i32 %i.aw, %i.ap
  %.not76 = icmp eq i32 %i.av, %i.ax
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.07084, ptr %i.h, align 8, !tbaa !77
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !76
  %i.az = add i32 %i.ay, %i.av
  store i32 %i.az, ptr %i.q, align 8, !tbaa !76
  br label %process_restart.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.m, align 4, !tbaa !68  ; 2 uses
  %.not77 = icmp eq i32 %i.ba, 0
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.n, align 4, !tbaa !70
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.n, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.q, align 8, !tbaa !76
  %i.bd = add nuw i32 %.07084, 1                  ; 2 uses
  %i.be = load i32, ptr %i.j, align 4, !tbaa !73
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.b, label %.preheader, !llvm.loop !99

bb.j:                                             ; preds = %.lr.ph90, %._crit_edge
  %i.bg = phi i32 [ %i.t, %.lr.ph90 ], [ %i.cw, %._crit_edge ]
  %i.bh = phi i32 [ %.pre101, %.lr.ph90 ], [ %i.cx, %._crit_edge ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv98
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !79 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 76 ; 2 uses
  %i.bo = icmp eq i32 %i.bh, %i.g
  %.in85 = select i1 %i.bo, ptr %i.bn, ptr %i.bm
  %i.bp = load i32, ptr %.in85, align 4, !tbaa !3
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph88, label %._crit_edge

.lr.ph88:                                         ; preds = %bb.j
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !53
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = sext i32 %i.bl to i64                   ; 4 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 28 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bt
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph88, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next, %bb.k ] ; 6 uses
  %.07187 = phi i32 [ %i.bs, %.lr.ph88 ], [ %3, %bb.k ]
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !64
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !100
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !54 ; 2 uses
  %2 = sext i32 %.07187 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %2
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.ci = load i32, ptr %i.bx, align 4, !tbaa !50
  tail call void %i.bz(ptr noundef nonnull %0, i32 noundef %i.bl, ptr noundef %i.cc, ptr noundef %i.cf, ptr noundef %i.ch, i32 noundef %i.ci) #6
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.cq = load i32, ptr %i.bx, align 4, !tbaa !50
  tail call void %i.cj(ptr noundef nonnull %0, ptr noundef %i.cm, ptr noundef %i.cp, i32 noundef %i.cq) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  %i.cs = icmp eq i32 %i.cr, %i.g
  %.in = select i1 %i.cs, ptr %i.bn, ptr %i.bm
  %i.ct = load i32, ptr %.in, align 4, !tbaa !3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.cv, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre102 = load i32, ptr %i.s, align 8, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.cw = phi i32 [ %.pre102, %._crit_edge.loopexit ], [ %i.bg, %bb.j ] ; 3 uses
  %i.cx = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ %i.bh, %bb.j ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = icmp slt i64 %indvars.iv.next99, %i.cy
  br i1 %i.cz, label %bb.j, label %._crit_edge91, !llvm.loop !104

._crit_edge91:                                    ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.db = add i32 %i.cx, 1                        ; 3 uses
  store i32 %i.db, ptr %i.da, align 8, !tbaa !71
  %i.dc = load i32, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.l, label %bb.q

._crit_edge91.thread:                             ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre103 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.df = add i32 %.pre103, 1                     ; 3 uses
  store i32 %i.df, ptr %i.de, align 8, !tbaa !71
  %i.dg = load i32, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.dh = icmp ult i32 %i.df, %i.dg
  br i1 %i.dh, label %.thread, label %bb.q

.thread:                                          ; preds = %._crit_edge91.thread
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge91
  %i.dj = icmp sgt i32 %i.cw, 1
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 84
  store i32 1, ptr %i.dl, align 4, !tbaa !73
  br label %start_iMCU_row.exit

bb.n:                                             ; preds = %.thread, %bb.l
  %i.dm = phi ptr [ %i.di, %.thread ], [ %i.dk, %bb.l ] ; 3 uses
  %i.dn = phi i32 [ %i.df, %.thread ], [ %i.db, %bb.l ]
  %i.do = phi i32 [ %i.dg, %.thread ], [ %i.dc, %bb.l ]
  %i.dp = add i32 %i.do, -1
  %i.dq = icmp ult i32 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 84 ; 2 uses
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !53
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !73
  br label %start_iMCU_row.exit

bb.p:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 76
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !75
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !73
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.m, %bb.o, %bb.p
  %i.dy = phi ptr [ %i.dk, %bb.m ], [ %i.dm, %bb.o ], [ %i.dm, %bb.p ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  store i32 0, ptr %i.dz, align 8, !tbaa !76
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  store i32 0, ptr %i.ea, align 8, !tbaa !77
  br label %process_restart.exit.thread

bb.q:                                             ; preds = %._crit_edge91.thread, %._crit_edge91
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !86
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !105
  tail call void %i.ee(ptr noundef nonnull %0) #6
  br label %process_restart.exit.thread

process_restart.exit.thread:                      ; preds = %bb.d, %bb.q, %start_iMCU_row.exit, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 4, %bb.q ], [ 3, %start_iMCU_row.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 296}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!8, !9, i64 0}
!33 = !{!34, !4, i64 40}
!34 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !35, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!35 = !{!"long", !5, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!34, !10, i64 0}
!38 = !{!8, !11, i64 8}
!39 = !{!40, !10, i64 0}
!40 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !35, i64 88, !35, i64 96}
!41 = !{!8, !23, i64 584}
!42 = !{!43, !10, i64 0}
!43 = !{!"", !44, i64 0, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !5, i64 88, !5, i64 168, !5, i64 248}
!44 = !{!"jpeg_d_coef_controller", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !45, i64 64}
!45 = !{!"p2 _ZTS20jvirt_barray_control", !16, i64 0}
!46 = !{!43, !10, i64 16}
!47 = !{!8, !4, i64 56}
!48 = !{!8, !10, i64 304}
!49 = !{!40, !10, i64 16}
!50 = !{!51, !4, i64 28}
!51 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!52 = !{!51, !4, i64 8}
!53 = !{!51, !4, i64 12}
!54 = !{!55, !55, i64 0}
!55 = !{!"p2 int", !16, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!40, !10, i64 32}
!59 = !{!51, !4, i64 32}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTS20jvirt_sarray_control", !10, i64 0}
!62 = distinct !{!62, !57}
!63 = !{!43, !10, i64 8}
!64 = !{!10, !10, i64 0}
!65 = !{!8, !28, i64 624}
!66 = !{!67, !10, i64 0}
!67 = !{!"jpeg_inverse_dct", !10, i64 0, !5, i64 8, !5, i64 88}
!68 = !{!8, !4, i64 372}
!69 = !{!8, !4, i64 480}
!70 = !{!43, !4, i64 76}
!71 = !{!8, !4, i64 176}
!72 = !{!8, !4, i64 440}
!73 = !{!43, !4, i64 84}
!74 = !{!8, !4, i64 424}
!75 = !{!51, !4, i64 76}
!76 = !{!43, !4, i64 72}
!77 = !{!43, !4, i64 80}
!78 = !{!8, !4, i64 184}
!79 = !{!51, !4, i64 4}
!80 = !{!40, !10, i64 56}
!81 = !{!82, !82, i64 0}
!82 = !{!"p2 short", !16, i64 0}
!83 = distinct !{!83, !57}
!84 = !{!8, !4, i64 172}
!85 = !{!8, !4, i64 180}
!86 = !{!8, !25, i64 600}
!87 = !{!88, !10, i64 0}
!88 = !{!"jpeg_input_controller", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32, !4, i64 36}
!89 = distinct !{!89, !57}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 short", !10, i64 0}
end_hunk_0
