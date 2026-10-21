Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/dist_tasks?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@_get_avail_map:bb.a
  %i.bf = icmp eq i32 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %ind.escape = sub i32 %i.bb, %i.as
  %i.bg = add nsw i32 %i.bd, 1
  %i.bh = icmp slt i32 %i.bg, %i.r
  %cmp.n = icmp eq i32 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.az, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec145 = and i32 %i.ax, -2                   ; 5 uses
  %i.bi = add i32 %.0.i, %n.vec145                ; 2 uses
  %i.bj = mul i32 %n.vec145, %i.as
  %i.bk = add i32 %.024.i, %i.bj                  ; 3 uses
  %i.bl = add nsw i32 %bc.resume.val, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ]
  %i.bm = phi i32 [ %i.bl, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ] ; 2 uses
  %index.next153 = add nuw i32 %index151, 2       ; 2 uses
  %i.bn = add nsw i32 %i.bm, 2
  %i.bo = icmp eq i32 %index.next153, %n.vec145
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape155 = sub i32 %i.bk, %i.as
  %i.bp = add nsw i32 %i.bm, 1
  %i.bq = icmp slt i32 %i.bp, %i.r
  %cmp.n156 = icmp eq i32 %i.ax, %n.vec145
  br i1 %cmp.n156, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.131.i.ph = phi i32 [ %.0.i, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.02330.i.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec145, %vec.epilog.middle.block ]
  %.12529.i.ph = phi i32 [ %.024.i, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.131.i = phi i32 [ %i.bs, %vec.epilog.scalar.ph ], [ %.131.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.02330.i = phi i32 [ %i.bt, %vec.epilog.scalar.ph ], [ %.02330.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.12529.i = phi i32 [ %i.br, %vec.epilog.scalar.ph ], [ %.12529.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.br = add nuw nsw i32 %.12529.i, %i.as        ; 2 uses
  %i.bs = add nsw i32 %.131.i, 1                  ; 3 uses
  %i.bt = add nuw nsw i32 %.02330.i, 1            ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.ag
  %i.bv = icmp slt i32 %i.bs, %i.r                ; 2 uses
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %.127.lcssa.i = phi i32 [ %.026.i, %bb.e ], [ %ind.escape155, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.12529.i, %vec.epilog.scalar.ph ] ; 2 uses
  %.125.lcssa.i = phi i32 [ %.024.i, %bb.e ], [ %i.bk, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %i.br, %vec.epilog.scalar.ph ]
  %.1.lcssa.i = phi i32 [ %.0.i, %bb.e ], [ %i.bi, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bs, %vec.epilog.scalar.ph ]
  %.lcssa.i = phi i1 [ %i.ai, %bb.e ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %i.bv, %vec.epilog.scalar.ph ]
  br i1 %.lcssa.i, label %bb.e, label %_get_local_node_info.exit, !llvm.loop !13

_get_local_node_info.exit:                        ; preds = %._crit_edge.i
  %i.bx = load ptr, ptr %i.ad, align 8
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.next.i
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = load ptr, ptr %i.ae, align 8
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %indvars.iv.next.i
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = tail call i32 @slurm_get_log_level() #9
  %i.ce = icmp sgt i32 %i.cd, 6
  %i.cf = zext i16 %i.bz to i32                   ; 2 uses
  %i.cg = zext i16 %i.cc to i32                   ; 2 uses
  br i1 %i.ce, label %bb.f, label %_get_local_node_info.exit._crit_edge

bb.f:                                             ; preds = %_get_local_node_info.exit
  %i.ch = load i16, ptr %1, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i16, ptr %2, align 2
  %i.ck = zext i16 %i.cj to i32
  %i.cl = load i16, ptr %3, align 2
  %i.cm = zext i16 %i.cl to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cm) #9
  br label %_get_local_node_info.exit._crit_edge

_get_local_node_info.exit._crit_edge:             ; preds = %_get_local_node_info.exit, %bb.f
  %i.cn = mul nuw nsw i32 %i.cg, %i.cf            ; 3 uses
  %i.co = load i16, ptr %1, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = load i16, ptr %2, align 2
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.cr, %i.cp
  %. = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cs)
  %.mask = and i32 %., 65535                      ; 3 uses
  %i.ct = zext nneg i32 %.mask to i64             ; 2 uses
  %i.cu = tail call ptr @slurm_bit_alloc(i64 noundef %i.ct) #9 ; 5 uses
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load ptr, ptr @conf, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4232
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = zext i16 %i.cx to i64
  %i.cz = tail call ptr @slurm_bit_alloc(i64 noundef %i.cy) #9 ; 4 uses
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_get_local_node_info.exit._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.db = phi i32 [ 0, %.lr.ph ], [ %i.dj, %bb.i ] ; 2 uses
  %.07298 = phi i16 [ 0, %.lr.ph ], [ %i.di, %bb.i ]
  %i.dc = load ptr, ptr %i.da, align 8
  %i.dd = add nuw nsw i32 %i.db, %.127.lcssa.i
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = tail call i32 @slurm_bit_test(ptr noundef %i.dc, i64 noundef %i.de) #9
  %.not85 = icmp eq i32 %i.df, 0
  br i1 %.not85, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = urem i32 %i.db, %.mask
  %i.dh = zext nneg i32 %i.dg to i64
  tail call void @slurm_bit_set(ptr noundef %i.cu, i64 noundef %i.dh) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.di = add i16 %.07298, 1                      ; 2 uses
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = icmp samesign ugt i32 %i.cn, %i.dj
  br i1 %i.dk, label %bb.g, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.i, %_get_local_node_info.exit._crit_edge
  %i.dl = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.cu) #9 ; 2 uses
  store ptr %i.dl, ptr %i.b, align 8
  %i.dm = tail call i32 @slurm_get_log_level() #9
  %i.dn = icmp sgt i32 %i.dm, 6
  br i1 %i.dn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.27, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef nonnull %i.c, ptr noundef %i.dl) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not121 = icmp eq i32 %.mask, 0
  br i1 %.not121, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.k, %.loopexit95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit95 ], [ 0, %bb.k ] ; 3 uses
  %i.do = call i32 @slurm_bit_test(ptr noundef %i.cu, i64 noundef %indvars.iv) #9
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.loopexit95, label %bb.l

bb.l:                                             ; preds = %.lr.ph104
  %i.dq = load ptr, ptr @conf, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4232
  %i.ds = load i16, ptr %i.dr, align 8
  %i.dt = trunc nuw i64 %indvars.iv to i16
  %i.du = urem i16 %i.dt, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 4158
  %i.dw = load i16, ptr %i.dv, align 2
  %.not122 = icmp eq i16 %i.dw, 0
  br i1 %.not122, label %.loopexit95, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.l, %.lr.ph101
  %i.dx = phi ptr [ %i.eg, %.lr.ph101 ], [ %i.dq, %bb.l ]
  %.07199 = phi i16 [ %i.ef, %.lr.ph101 ], [ 0, %bb.l ] ; 2 uses
  %i.dy = load i16, ptr %3, align 2
  %i.dz = mul i16 %i.dy, %i.du
  %i.ea = add i16 %i.dz, %.07199
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4232
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = urem i16 %i.ea, %i.ec
  %i.ee = zext i16 %i.ed to i64
  call void @slurm_bit_set(ptr noundef %i.cz, i64 noundef %i.ee) #9
  %i.ef = add nuw i16 %.07199, 1                  ; 2 uses
  %i.eg = load ptr, ptr @conf, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4158
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = icmp ult i16 %i.ef, %i.ei
  br i1 %i.ej, label %.lr.ph101, label %.loopexit95, !llvm.loop !15

.loopexit95:                                      ; preds = %.lr.ph101, %bb.l, %.lr.ph104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ct
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !16

._crit_edge105:                                   ; preds = %.loopexit95, %bb.k
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.el = load i16, ptr %i.ek, align 8
  %.fr = freeze i16 %i.el                         ; 3 uses
  %i.em = icmp ult i16 %.fr, -32767
  %i.en = and i16 %.fr, 32767                     ; 2 uses
  %cond = icmp eq i16 %.fr, -2
  %or.cond = or i1 %i.em, %cond
  br i1 %or.cond, label %.loopexit94, label %bb.m

bb.m:                                             ; preds = %._crit_edge105
  %i.eo = load ptr, ptr @conf, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4158
  %i.eq = load i16, ptr %i.ep, align 2            ; 2 uses
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = icmp ne i16 %i.en, 0
  %i.et = and i1 %i.er, %i.es
  br i1 %i.et, label %.lr.ph120.preheader, label %.loopexit94

.lr.ph120.preheader:                              ; preds = %bb.m
  %i.eu = zext i16 %i.eq to i32
  %i.ev = zext nneg i16 %i.en to i32
  br label %.lr.ph120

.loopexit93:                                      ; preds = %.loopexit, %.lr.ph120
  %.2.lcssa = phi i32 [ %.1117, %.lr.ph120 ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.ew = icmp sgt i32 %.068118.in, 1
  %i.ex = icmp sgt i32 %.2.lcssa, 0
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %.lr.ph120, label %.loopexit94, !llvm.loop !17

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.loopexit93
  %.068118.in = phi i32 [ %.068118, %.loopexit93 ], [ %i.eu, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi i32 [ %.2.lcssa, %.loopexit93 ], [ %i.ev, %.lr.ph120.preheader ] ; 2 uses
  %.068118 = add nsw i32 %.068118.in, -1          ; 2 uses
  %4 = load ptr, ptr @conf, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 4184
  %i.fa = load i16, ptr %i.ez, align 8            ; 2 uses
  %.not123 = icmp eq i16 %i.fa, 0
  br i1 %.not123, label %.loopexit93, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph120
  %i.fb = zext i16 %i.fa to i32
  br label %.lr.ph114

.loopexit:                                        ; preds = %.lr.ph109, %.lr.ph114
  %.3.lcssa = phi i32 [ %.2111, %.lr.ph114 ], [ %i.fy, %.lr.ph109 ] ; 3 uses
  %i.fc = icmp samesign ugt i32 %.067112.in, 1
  %i.fd = icmp ne i32 %.3.lcssa, 0
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.lr.ph114, label %.loopexit93, !llvm.loop !18

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.loopexit
  %.067112.in = phi i32 [ %.067112, %.loopexit ], [ %i.fb, %.lr.ph114.preheader ] ; 2 uses
  %.2111 = phi i32 [ %.3.lcssa, %.loopexit ], [ %.1117, %.lr.ph114.preheader ] ; 2 uses
  %.067112 = add nsw i32 %.067112.in, -1          ; 2 uses
  %5 = load ptr, ptr @conf, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 4156
  %i.fg = load i16, ptr %i.ff, align 4            ; 2 uses
  %.not124 = icmp eq i16 %i.fg, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph114
  %i.fh = zext i16 %i.fg to i32
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.0.in107 = phi i32 [ %.0, %.lr.ph109 ], [ %i.fh, %.lr.ph109.preheader ] ; 2 uses
  %.3106 = phi i32 [ %i.fy, %.lr.ph109 ], [ %.2111, %.lr.ph109.preheader ]
  %.0 = add nsw i32 %.0.in107, -1                 ; 2 uses
  %i.fi = load ptr, ptr @conf, align 8            ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4184
  %i.fk = load i16, ptr %i.fj, align 8
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %.0, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, %.067112
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 4158
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul nsw i32 %i.fn, %i.fq
  %i.fs = add nuw nsw i32 %i.fr, %.068118
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 4232
  %i.fu = load i16, ptr %i.ft, align 8
  %i.fv = zext i16 %i.fu to i32
  %i.fw = urem i32 %i.fs, %i.fv
  %i.fx = zext nneg i32 %i.fw to i64
  call void @slurm_bit_clear(ptr noundef %i.cz, i64 noundef %i.fx) #9
  %i.fy = add nsw i32 %.3106, -1                  ; 3 uses
  %i.fz = icmp samesign ugt i32 %.0.in107, 1
  %i.ga = icmp ne i32 %i.fy, 0
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %i.gb, label %.lr.ph109, label %.loopexit, !llvm.loop !19

.loopexit94:                                      ; preds = %.loopexit93, %bb.m, %._crit_edge105
  %i.gc = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.cz) #9
  store ptr %i.gc, ptr %i.b, align 8
  %i.gd = call i32 @slurm_get_log_level() #9
  %i.ge = icmp sgt i32 %i.gd, 6
  br i1 %i.ge, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit94
  %i.gf = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.28, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.c, ptr noundef %i.gf) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit94
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not84 = icmp eq ptr %i.cu, null
  br i1 %.not84, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.a, align 8
  call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  %.069 = phi ptr [ null, %bb.c ], [ %i.cz, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.069
}

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_bit_fmt_hexmask(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_get_log_level() local_unnamed_addr #2

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_lllp_map_abstract_masks(i32 noundef range(i32 0, 65536) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @slurm_get_log_level() #9
  %i.c = icmp sgt i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.38, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._lllp_map_abstract_masks) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq i32 %0, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  store ptr %i.e, ptr %i.a, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = call i64 @slurm_bit_size(ptr noundef nonnull %i.e) #9 ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = call ptr @slurm_bit_alloc(i64 noundef %i.h) #9 ; 4 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %_lllp_map_abstract_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = and i64 %i.f, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.k = call i32 @slurm_bit_test(ptr noundef nonnull %i.e, i64 noundef %indvars.iv.i) #9
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.m = trunc i64 %indvars.iv.i to i16           ; 4 uses
  %i.n = load ptr, ptr @conf, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4240
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_block_map.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.l, 65535
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4232
  %i.t = load i16, ptr %i.s, align 8
  %.not.i.i = icmp ugt i16 %i.t, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @slurm_get_log_level() #9
  %i.v = icmp sgt i32 %i.u, 6
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4232
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i32
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.40, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._block_map, i32 noundef %i.r, i32 noundef %i.z) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr @conf, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4232
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = urem i16 %i.m, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.08.i.i = phi i16 [ %i.ad, %bb.i ], [ %i.m, %bb.f ]
  %i.ae = zext i16 %.08.i.i to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  br label %_block_map.exit.i

_block_map.exit.i:                                ; preds = %bb.j, %bb.e
  %.0.i.i = phi i16 [ %i.ag, %bb.j ], [ %i.m, %bb.e ] ; 2 uses
  %i.ah = zext i16 %.0.i.i to i64                 ; 2 uses
  %i.ai = call i64 @slurm_bit_size(ptr noundef %i.i) #9
  %i.aj = icmp sgt i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_block_map.exit.i
  call void @slurm_bit_set(ptr noundef %i.i, i64 noundef %i.ah) #9
  br label %bb.m

bb.l:                                             ; preds = %_block_map.exit.i
  %i.ak = zext i16 %.0.i.i to i32
  %i.al = call i64 @slurm_bit_size(ptr noundef %i.i) #9
  %i.am = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.39, i32 noundef %i.l, i32 noundef %i.ak, i64 noundef %i.al) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_lllp_map_abstract_mask.exit, label %.lr.ph.i, !llvm.loop !23

_lllp_map_abstract_mask.exit:                     ; preds = %bb.m, %bb.d
  %i.an = load ptr, ptr %i.a, align 8
  %.not8 = icmp eq ptr %i.an, null
  br i1 %.not8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_lllp_map_abstract_mask.exit
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_lllp_map_abstract_mask.exit
  store ptr %i.i, ptr %i.d, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.p, %bb.c
  ret void
}

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4034) i32 @lllp_distribution(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca [100 x i8], align 16              ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 5 uses
end_hunk_0
