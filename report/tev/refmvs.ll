Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/refmvs?download=true
inline.NumInlined: 71
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dav1d_refmvs_init_frame:bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !16
  %i.ps = load i8, ptr %i.az, align 4, !tbaa !82  ; 2 uses
  %.not.i163.3 = icmp eq i8 %i.ps, 0
  br i1 %.not.i163.3, label %get_poc_diff.exit165.thread.3, label %get_poc_diff.exit165.3

get_poc_diff.exit165.3:                           ; preds = %get_poc_diff.exit165.thread.2
  %i.pt = zext i8 %i.ps to i32
  %i.pu = getelementptr inbounds nuw [7 x i8], ptr %5, i64 %i.mx
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !16
  %i.px = zext i8 %i.pw to i32
  %i.py = add nsw i32 %i.pt, -1
  %i.pz = shl nuw i32 1, %i.py                    ; 2 uses
  %i.qa = sub nsw i32 %i.na, %i.px                ; 2 uses
  %i.qb = add nsw i32 %i.pz, -1
  %i.qc = and i32 %i.qa, %i.qb
  %i.qd = and i32 %i.qa, %i.pz
  %i.qe = sub nsw i32 %i.qc, %i.qd
  %.fr.3 = freeze i32 %i.qe                       ; 2 uses
  %i.qf = icmp ugt i32 %.fr.3, 31
  %i.qg = trunc nuw nsw i32 %.fr.3 to i8
  %spec.select176.3 = select i1 %i.qf, i8 0, i8 %i.qg
  br label %get_poc_diff.exit165.thread.3

get_poc_diff.exit165.thread.3:                    ; preds = %get_poc_diff.exit165.3, %get_poc_diff.exit165.thread.2
  %i.qh = phi i8 [ 0, %get_poc_diff.exit165.thread.2 ], [ %spec.select176.3, %get_poc_diff.exit165.3 ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nu, i64 3
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !16
  %i.qj = load i8, ptr %i.az, align 4, !tbaa !82  ; 2 uses
  %.not.i163.4 = icmp eq i8 %i.qj, 0
  br i1 %.not.i163.4, label %get_poc_diff.exit165.thread.4, label %get_poc_diff.exit165.4

get_poc_diff.exit165.4:                           ; preds = %get_poc_diff.exit165.thread.3
  %i.qk = zext i8 %i.qj to i32
  %i.ql = getelementptr inbounds nuw [7 x i8], ptr %5, i64 %i.mx
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !16
  %i.qo = zext i8 %i.qn to i32
  %i.qp = add nsw i32 %i.qk, -1
  %i.qq = shl nuw i32 1, %i.qp                    ; 2 uses
  %i.qr = sub nsw i32 %i.na, %i.qo                ; 2 uses
  %i.qs = add nsw i32 %i.qq, -1
  %i.qt = and i32 %i.qr, %i.qs
  %i.qu = and i32 %i.qr, %i.qq
  %i.qv = sub nsw i32 %i.qt, %i.qu
  %.fr.4 = freeze i32 %i.qv                       ; 2 uses
  %i.qw = icmp ugt i32 %.fr.4, 31
  %i.qx = trunc nuw nsw i32 %.fr.4 to i8
  %spec.select176.4 = select i1 %i.qw, i8 0, i8 %i.qx
  br label %get_poc_diff.exit165.thread.4

get_poc_diff.exit165.thread.4:                    ; preds = %get_poc_diff.exit165.4, %get_poc_diff.exit165.thread.3
  %i.qy = phi i8 [ 0, %get_poc_diff.exit165.thread.3 ], [ %spec.select176.4, %get_poc_diff.exit165.4 ]
  %i.qz = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !16
  %i.ra = load i8, ptr %i.az, align 4, !tbaa !82  ; 2 uses
  %.not.i163.5 = icmp eq i8 %i.ra, 0
  br i1 %.not.i163.5, label %get_poc_diff.exit165.thread.5, label %get_poc_diff.exit165.5

get_poc_diff.exit165.5:                           ; preds = %get_poc_diff.exit165.thread.4
  %i.rb = zext i8 %i.ra to i32
  %i.rc = getelementptr inbounds nuw [7 x i8], ptr %5, i64 %i.mx
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 5
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !16
  %i.rf = zext i8 %i.re to i32
  %i.rg = add nsw i32 %i.rb, -1
  %i.rh = shl nuw i32 1, %i.rg                    ; 2 uses
  %i.ri = sub nsw i32 %i.na, %i.rf                ; 2 uses
  %i.rj = add nsw i32 %i.rh, -1
  %i.rk = and i32 %i.ri, %i.rj
  %i.rl = and i32 %i.ri, %i.rh
  %i.rm = sub nsw i32 %i.rk, %i.rl
  %.fr.5 = freeze i32 %i.rm                       ; 2 uses
  %i.rn = icmp ugt i32 %.fr.5, 31
  %i.ro = trunc nuw nsw i32 %.fr.5 to i8
  %spec.select176.5 = select i1 %i.rn, i8 0, i8 %i.ro
  br label %get_poc_diff.exit165.thread.5

get_poc_diff.exit165.thread.5:                    ; preds = %get_poc_diff.exit165.5, %get_poc_diff.exit165.thread.4
  %i.rp = phi i8 [ 0, %get_poc_diff.exit165.thread.4 ], [ %spec.select176.5, %get_poc_diff.exit165.5 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.nu, i64 5
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !16
  %i.rr = load i8, ptr %i.az, align 4, !tbaa !82  ; 2 uses
  %.not.i163.6 = icmp eq i8 %i.rr, 0
  br i1 %.not.i163.6, label %get_poc_diff.exit165.thread.6, label %get_poc_diff.exit165.6

get_poc_diff.exit165.6:                           ; preds = %get_poc_diff.exit165.thread.5
  %i.rs = zext i8 %i.rr to i32
  %i.rt = getelementptr inbounds nuw [7 x i8], ptr %5, i64 %i.mx
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 6
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !16
  %i.rw = zext i8 %i.rv to i32
  %i.rx = add nsw i32 %i.rs, -1
  %i.ry = shl nuw i32 1, %i.rx                    ; 2 uses
  %i.rz = sub nsw i32 %i.na, %i.rw                ; 2 uses
  %i.sa = add nsw i32 %i.ry, -1
  %i.sb = and i32 %i.rz, %i.sa
  %i.sc = and i32 %i.rz, %i.ry
  %i.sd = sub nsw i32 %i.sb, %i.sc
  %.fr.6 = freeze i32 %i.sd                       ; 2 uses
  %i.se = icmp ugt i32 %.fr.6, 31
  %i.sf = trunc nuw nsw i32 %.fr.6 to i8
  %spec.select176.6 = select i1 %i.se, i8 0, i8 %i.sf
  br label %get_poc_diff.exit165.thread.6

get_poc_diff.exit165.thread.6:                    ; preds = %get_poc_diff.exit165.6, %get_poc_diff.exit165.thread.5
  %i.sg = phi i8 [ 0, %get_poc_diff.exit165.thread.5 ], [ %spec.select176.6, %get_poc_diff.exit165.6 ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.nu, i64 6
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %get_poc_diff.exit165.thread.6, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.si = load i32, ptr %i.jp, align 8, !tbaa !66 ; 2 uses
  %i.sj = sext i32 %i.si to i64
  %i.sk = icmp slt i64 %indvars.iv.next, %i.sj
  br i1 %i.sk, label %bb.ac, label %.loopexit178.loopexit

.loopexit178.loopexit:                            ; preds = %.loopexit
  %i.sl = icmp sgt i32 %i.si, 0
  %i.sm = zext i1 %i.sl to i32
  br label %.loopexit178

.loopexit178:                                     ; preds = %.loopexit178.loopexit, %bb.ab, %bb.n, %get_poc_diff.exit150.thread.6
  %i.sn = phi i32 [ %i.sm, %.loopexit178.loopexit ], [ 0, %bb.ab ], [ 0, %bb.n ], [ 0, %get_poc_diff.exit150.thread.6 ]
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.sn, ptr %i.so, align 4, !tbaa !50
  br label %bb.ae

.critedge:                                        ; preds = %bb.d
  store i32 0, ptr %i.ag, align 4, !tbaa !63
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %.loopexit178
  %.1 = phi i32 [ 0, %.loopexit178 ], [ -12, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dav1d_refmvs_dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #10 {
bb.a:
  store ptr @load_tmvs_c, ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr @save_tmvs_c, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr @splat_mv_c, ptr %i.b, align 8, !tbaa !86
  %i.c = load i32, ptr @dav1d_cpu_flags, align 4, !tbaa !18
  %i.d = load i32, ptr @dav1d_cpu_flags_mask, align 4, !tbaa !18
  %i.e = and i32 %i.d, %i.c                       ; 5 uses
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %refmvs_dsp_init_x86.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @dav1d_splat_mv_sse2, ptr %i.b, align 8, !tbaa !86
  %i.g = and i32 %i.e, 2
  %.not11.i = icmp eq i32 %i.g, 0
  br i1 %.not11.i, label %refmvs_dsp_init_x86.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @dav1d_save_tmvs_ssse3, ptr %i.a, align 8, !tbaa !85
  %i.h = and i32 %i.e, 4
  %.not12.i = icmp eq i32 %i.h, 0
  br i1 %.not12.i, label %refmvs_dsp_init_x86.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @dav1d_load_tmvs_sse4, ptr %0, align 8, !tbaa !84
  %i.i = and i32 %i.e, 8
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %refmvs_dsp_init_x86.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @dav1d_save_tmvs_avx2, ptr %i.a, align 8, !tbaa !85
  store ptr @dav1d_splat_mv_avx2, ptr %i.b, align 8, !tbaa !86
  %i.j = and i32 %i.e, 16
  %.not14.i = icmp eq i32 %i.j, 0
  br i1 %.not14.i, label %refmvs_dsp_init_x86.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @dav1d_save_tmvs_avx512icl, ptr %i.a, align 8, !tbaa !85
  store ptr @dav1d_splat_mv_avx512icl, ptr %i.b, align 8, !tbaa !86
  br label %refmvs_dsp_init_x86.exit

refmvs_dsp_init_x86.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @load_tmvs_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = icmp eq i32 %i.b, 1
  %spec.select = select i1 %i.c, i32 0, i32 %1
  %i.d = icmp sgt i32 %4, -1
  tail call void @llvm.assume(i1 %i.d)
  %6 = sub nuw nsw i32 %5, %4
  %7 = icmp ult i32 %6, 17
  tail call void @llvm.assume(i1 %7)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !88
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %5, i32 %i.f) ; 4 uses
  %i.h = tail call i32 @llvm.smax.i32(i32 %2, i32 8)
  %i.i = add nsw i32 %i.h, -8                     ; 2 uses
  %i.j = add nsw i32 %3, 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !89
  %i.m = tail call noundef i32 @llvm.smin.i32(i32 %i.j, i32 %i.l) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %i.r = shl nsw i64 %i.o, 4
  %i.s = sext i32 %spec.select to i64
  %i.t = mul nsw i64 %i.r, %i.s                   ; 2 uses
  %i.u = icmp slt i32 %4, %i.g                    ; 2 uses
  %i.v = icmp slt i32 %2, %3
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.preheader149.preheader, label %._crit_edge153.split

.preheader149.preheader:                          ; preds = %bb.a
  %i.w = getelementptr [5 x i8], ptr %i.q, i64 %i.t
  %i.x = and i32 %4, 15
  %i.y = zext nneg i32 %i.x to i64
  %i.z = mul nsw i64 %i.o, %i.y
  %i.aa = getelementptr [5 x i8], ptr %i.w, i64 %i.z
  %i.ab = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ad = sub nsw i64 %i.ab, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.preheader, %._crit_edge
  %.0123152 = phi i32 [ %i.eq, %._crit_edge ], [ %4, %.preheader149.preheader ]
  %.0124151 = phi ptr [ %i.ep, %._crit_edge ], [ %i.aa, %.preheader149.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader149, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ab, %.preheader149 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader149 ]
  %i.af = getelementptr inbounds [5 x i8], ptr %.0124151, i64 %indvars.iv.prol
  store i32 -2147450880, ptr %i.af, align 1, !tbaa !16
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !87

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader149
  %indvars.iv.unr = phi i64 [ %i.ab, %.preheader149 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  br i1 %i.ae, label %._crit_edge, label %.preheader149.new

._crit_edge153.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !61
  br label %._crit_edge153.split

._crit_edge153.split:                             ; preds = %._crit_edge153.split.loopexit, %bb.a
  %i.ag = phi ptr [ %.pre, %._crit_edge153.split.loopexit ], [ %i.q, %bb.a ]
  %i.ah = getelementptr inbounds [5 x i8], ptr %i.ag, i64 %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %._crit_edge153.split
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = zext nneg i32 %4 to i64
  %i.ap = mul nsw i64 %i.o, %i.ao
  %i.aq = icmp slt i32 %i.i, %i.m
  %or.cond197 = select i1 %i.u, i1 %i.aq, i1 false
  br i1 %or.cond197, label %.lr.ph163.split.us.split.us, label %._crit_edge164

.lr.ph163.split.us.split.us:                      ; preds = %.lr.ph163, %..loopexit_crit_edge.us.us
  %i.ar = phi i32 [ %i.em, %..loopexit_crit_edge.us.us ], [ %i.aj, %.lr.ph163 ]
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %..loopexit_crit_edge.us.us ], [ 0, %.lr.ph163 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv176
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16  ; 2 uses
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp eq i8 %i.at, -32
  br i1 %i.av, label %..loopexit_crit_edge.us.us, label %.lr.ph160.us.us

.lr.ph160.us.us:                                  ; preds = %.lr.ph163.split.us.split.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv176
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -4                   ; 2 uses
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.bb = zext i8 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = getelementptr inbounds [5 x i8], ptr %i.bd, i64 %i.ap
  %i.bf = getelementptr [7 x i8], ptr %0, i64 %indvars.iv176
  %i.bg = add nsw i32 %i.au, 31
  %or.cond3.i.us.us = icmp ult i32 %i.bg, 63
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge156.us.us, %.lr.ph160.us.us
  %.0118158.us.us = phi i32 [ %4, %.lr.ph160.us.us ], [ %i.el, %._crit_edge156.us.us ] ; 3 uses
  %.0119157.us.us = phi ptr [ %i.be, %.lr.ph160.us.us ], [ %i.ek, %._crit_edge156.us.us ] ; 2 uses
  %i.bh = and i32 %.0118158.us.us, 2147483640     ; 2 uses
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483641) %i.bh, i32 %4)
  %i.bj = add nuw nsw i32 %i.bh, 8
  %i.bk = tail call noundef i32 @llvm.smin.i32(i32 %i.bj, i32 %i.g)
  br label %bb.b

bb.b:                                             ; preds = %.thread.us.us, %.lr.ph.us.us
  %.0115154.us.us = phi i32 [ %i.i, %.lr.ph.us.us ], [ %i.ei, %.thread.us.us ] ; 9 uses
  %i.bl = zext nneg i32 %.0115154.us.us to i64
  %i.bm = getelementptr inbounds nuw [5 x i8], ptr %.0119157.us.us, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !58  ; 4 uses
  %.not.us.us = icmp eq i8 %i.bo, 0
  br i1 %.not.us.us, label %.thread.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bf, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 58
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16  ; 4 uses
  %.not134.us.us = icmp eq i8 %i.bs, 0
  br i1 %.not134.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.014.0.copyload.us.us = load i32, ptr %i.bm, align 1, !tbaa !16 ; 5 uses
  %or.cond.i.us.us = icmp ult i8 %i.bs, 32
  tail call void @llvm.assume(i1 %or.cond.i.us.us)
  tail call void @llvm.assume(i1 %or.cond3.i.us.us)
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @mv_projection.div_mult, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !59
  %i.bw = zext i16 %i.bv to i32
  %i.bx = mul nsw i32 %i.bw, %i.au                ; 2 uses
  %sext.i.us.us = shl i32 %.sroa.014.0.copyload.us.us, 16
  %i.by = ashr exact i32 %sext.i.us.us, 16
  %i.bz = mul nsw i32 %i.bx, %i.by                ; 2 uses
  %i.ca = add nsw i32 %i.bz, 8192
  %i.cb = ashr i32 %i.bz, 31
  %i.cc = add nsw i32 %i.ca, %i.cb
  %i.cd = ashr i32 %i.cc, 14
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 -16383)
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 16383) ; 2 uses
  %i.cg = tail call i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = lshr i32 %i.cg, 6                       ; 2 uses
  %i.ci = xor i32 %i.cf, %i.az
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = sub nsw i32 0, %i.ch
  %i.cl = select i1 %i.cj, i32 %i.ck, i32 %i.ch
  %i.cm = add nsw i32 %i.cl, %.0118158.us.us      ; 3 uses
  %.not135.us.us = icmp sge i32 %i.cm, %i.bi
  %i.cn = icmp slt i32 %i.cm, %i.bk
  %or.cond.us.us = and i1 %.not135.us.us, %i.cn
  br i1 %or.cond.us.us, label %bb.f, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %bb.d
  %i.co = add nuw nsw i32 %.0115154.us.us, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.co)
  %i.cp = add nsw i32 %smax, -1                   ; 2 uses
  %i.cq = add nuw nsw i32 %.0115154.us.us, 1      ; 2 uses
  %.not136.us.us200 = icmp slt i32 %i.cq, %i.m
  br i1 %.not136.us.us200, label %.lr.ph, label %.thread.us.us

.preheader.us.us:                                 ; preds = %bb.e
  %i.cr = add nuw nsw i32 %i.cs, 1                ; 2 uses
  %.not136.us.us = icmp slt i32 %i.cr, %i.m
  br i1 %.not136.us.us, label %.lr.ph, label %.thread.us.us

.lr.ph:                                           ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %i.cs = phi i32 [ %i.cr, %.preheader.us.us ], [ %i.cq, %.preheader.us.us.preheader ] ; 2 uses
  %.2.us.us202 = phi ptr [ %i.cv, %.preheader.us.us ], [ %i.bm, %.preheader.us.us.preheader ] ; 2 uses
  %.2117.us.us201 = phi i32 [ %i.cs, %.preheader.us.us ], [ %.0115154.us.us, %.preheader.us.us.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.us.us202, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !58
  %.not137.us.us = icmp eq i8 %i.cu, %i.bo
  br i1 %.not137.us.us, label %bb.e, label %.thread.us.us

bb.e:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.us.us202, i64 5 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !16
  %.not138.us.us = icmp eq i32 %i.cw, %.sroa.014.0.copyload.us.us
  br i1 %.not138.us.us, label %.preheader.us.us, label %.thread.us.us

bb.f:                                             ; preds = %bb.d
  %i.cx = ashr i32 %.sroa.014.0.copyload.us.us, 16
  %i.cy = mul nsw i32 %i.bx, %i.cx                ; 2 uses
  %i.cz = add nsw i32 %i.cy, 8192
  %i.da = ashr i32 %i.cy, 31
  %i.db = add nsw i32 %i.cz, %i.da
  %i.dc = ashr i32 %i.db, 14
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 -16383)
  %i.de = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 16383) ; 2 uses
  %i.df = xor i32 %i.de, %i.az
  %i.dg = icmp slt i32 %i.df, 0
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %i.di = lshr i32 %i.dh, 6                       ; 2 uses
  %i.dj = sub nsw i32 0, %i.di
end_hunk_0
