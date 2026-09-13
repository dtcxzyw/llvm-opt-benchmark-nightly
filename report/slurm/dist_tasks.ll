Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/dist_tasks?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@_get_avail_map:bb.a
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
  %i.ez = load ptr, ptr @conf, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4184
  %i.fb = load i16, ptr %i.fa, align 8            ; 2 uses
  %.not123 = icmp eq i16 %i.fb, 0
  br i1 %.not123, label %.loopexit93, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph120
  %i.fc = zext i16 %i.fb to i32
  br label %.lr.ph114

.loopexit:                                        ; preds = %.lr.ph109, %.lr.ph114
  %.3.lcssa = phi i32 [ %.2111, %.lr.ph114 ], [ %i.ga, %.lr.ph109 ] ; 3 uses
  %i.fd = icmp samesign ugt i32 %.067112.in, 1
  %i.fe = icmp ne i32 %.3.lcssa, 0
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %.lr.ph114, label %.loopexit93, !llvm.loop !18

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.loopexit
  %.067112.in = phi i32 [ %.067112, %.loopexit ], [ %i.fc, %.lr.ph114.preheader ] ; 2 uses
  %.2111 = phi i32 [ %.3.lcssa, %.loopexit ], [ %.1117, %.lr.ph114.preheader ] ; 2 uses
  %.067112 = add nsw i32 %.067112.in, -1          ; 2 uses
  %i.fg = load ptr, ptr @conf, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4156
  %i.fi = load i16, ptr %i.fh, align 4            ; 2 uses
  %.not124 = icmp eq i16 %i.fi, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph114
  %i.fj = zext i16 %i.fi to i32
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.0.in107 = phi i32 [ %.0, %.lr.ph109 ], [ %i.fj, %.lr.ph109.preheader ] ; 2 uses
  %.3106 = phi i32 [ %i.ga, %.lr.ph109 ], [ %.2111, %.lr.ph109.preheader ]
  %.0 = add nsw i32 %.0.in107, -1                 ; 2 uses
  %i.fk = load ptr, ptr @conf, align 8            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4184
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = zext i16 %i.fm to i32
  %i.fo = mul nuw nsw i32 %.0, %i.fn
  %i.fp = add nuw nsw i32 %i.fo, %.067112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 4158
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = zext i16 %i.fr to i32
  %i.ft = mul nuw nsw i32 %i.fp, %i.fs
  %i.fu = add nuw nsw i32 %i.ft, %.068118
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 4232
  %i.fw = load i16, ptr %i.fv, align 8
  %i.fx = zext i16 %i.fw to i32
  %i.fy = urem i32 %i.fu, %i.fx
  %i.fz = zext nneg i32 %i.fy to i64
  call void @slurm_bit_clear(ptr noundef %i.cz, i64 noundef %i.fz) #9
  %i.ga = add nsw i32 %.3106, -1                  ; 3 uses
  %i.gb = icmp samesign ugt i32 %.0.in107, 1
  %i.gc = icmp ne i32 %i.ga, 0
  %i.gd = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %i.gd, label %.lr.ph109, label %.loopexit, !llvm.loop !19

.loopexit94:                                      ; preds = %.loopexit93, %bb.m, %._crit_edge105
  %i.ge = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.cz) #9
  store ptr %i.ge, ptr %i.b, align 8
  %i.gf = call i32 @slurm_get_log_level() #9
  %i.gg = icmp sgt i32 %i.gf, 6
  br i1 %i.gg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit94
  %i.gh = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.28, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.c, ptr noundef %i.gh) #9
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
end_hunk_0
begin_hunk_1_@_alloc_mask:bb.a
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %.not136 = icmp eq i16 %i.m, 0
  %i.o = load i16, ptr %i.c, align 2              ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  br i1 %.not136, label %.preheader88.lr.ph.split, label %.preheader88.lr.ph.split.us

.preheader88.lr.ph.split.us:                      ; preds = %.preheader88.lr.ph
  %.not137 = icmp eq i16 %i.o, 0
  br i1 %.not137, label %.preheader88.us, label %.preheader88.us.us

.preheader88.us.us:                               ; preds = %.preheader88.lr.ph.split.us, %bb.g
  %.056110.us.us = phi i32 [ %.157.us.us, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  %.060109.us.us = phi i32 [ %i.ag, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  %.065108.us.us = phi i32 [ %i.ak, %bb.g ], [ 0, %.preheader88.lr.ph.split.us ]
  br label %.preheader87.us.us.us

.preheader87.us.us.us:                            ; preds = %bb.e, %.preheader88.us.us
  %.051100.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %.253.us.us.us157164, %bb.e ]
  %.05899.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %.159.us.us.us, %bb.e ]
  %.16198.us.us.us = phi i32 [ %.060109.us.us, %.preheader88.us.us ], [ %i.ag, %bb.e ]
  %.06797.us.us.us = phi i32 [ 0, %.preheader88.us.us ], [ %i.ah, %bb.e ]
  br label %.outer

.outer:                                           ; preds = %._crit_edge208, %.preheader87.us.us.us
  %.not81.us.us.us = phi i1 [ false, %._crit_edge208 ], [ true, %.preheader87.us.us.us ]
  %.15292.us.us.us.ph = phi i32 [ 1, %._crit_edge208 ], [ %.051100.us.us.us, %.preheader87.us.us.us ] ; 2 uses
  %.05491.us.us.us.ph = phi i32 [ %.05491.us.us.us.lcssa, %._crit_edge208 ], [ 0, %.preheader87.us.us.us ]
  %.26290.us.us.us.ph = phi i32 [ %i.aa, %._crit_edge208 ], [ %.16198.us.us.us, %.preheader87.us.us.us ] ; 2 uses
  %.06389.us.us.us.ph = phi i32 [ %i.ab, %._crit_edge208 ], [ 0, %.preheader87.us.us.us ] ; 2 uses
  %i.q = sext i32 %.26290.us.us.us.ph to i64
  %i.r = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %.not82.us.us.us203 = icmp sgt i64 %i.r, %i.q
  %spec.select.us.us.us204 = select i1 %.not82.us.us.us203, i32 %.26290.us.us.us.ph, i32 0 ; 3 uses
  %i.s = sext i32 %spec.select.us.us.us204 to i64 ; 2 uses
  %i.t = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.h, i64 noundef %i.s) #9
  %.not83.us.us.us205 = icmp eq i32 %i.t, 0
  br i1 %.not83.us.us.us205, label %.thread, label %._crit_edge208

bb.c:                                             ; preds = %.thread
  %i.u = sext i32 %i.ac to i64
  %i.v = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.h) #9
  %.not82.us.us.us = icmp sgt i64 %i.v, %i.u
  %spec.select.us.us.us = select i1 %.not82.us.us.us, i32 %i.ac, i32 0 ; 3 uses
  %i.w = sext i32 %spec.select.us.us.us to i64    ; 2 uses
  %i.x = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.h, i64 noundef %i.w) #9
  %.not83.us.us.us = icmp eq i32 %i.x, 0
  br i1 %.not83.us.us.us, label %.thread, label %._crit_edge208, !llvm.loop !36

._crit_edge208:                                   ; preds = %bb.c, %.outer
  %.05491.us.us.us.lcssa = phi i32 [ %.05491.us.us.us.ph, %.outer ], [ 1, %bb.c ] ; 2 uses
  %.06389.us.us.us.lcssa = phi i32 [ %.06389.us.us.us.ph, %.outer ], [ %i.ad, %bb.c ]
  %spec.select.us.us.us.lcssa = phi i32 [ %spec.select.us.us.us204, %.outer ], [ %spec.select.us.us.us, %bb.c ]
  %.lcssa193 = phi i64 [ %i.s, %.outer ], [ %i.w, %bb.c ]
  tail call void @slurm_bit_set(ptr noundef %i.j, i64 noundef %.lcssa193) #9
  %i.y = load i32, ptr %4, align 4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4
  %i.aa = add nsw i32 %spec.select.us.us.us.lcssa, 1 ; 2 uses
  %i.ab = add nuw nsw i32 %.06389.us.us.us.lcssa, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.p
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %.outer, !llvm.loop !36

.thread:                                          ; preds = %.outer, %bb.c
  %spec.select.us.us.us207 = phi i32 [ %spec.select.us.us.us, %bb.c ], [ %spec.select.us.us.us204, %.outer ]
  %.06389.us.us.us206 = phi i32 [ %i.ad, %bb.c ], [ %.06389.us.us.us.ph, %.outer ]
  %i.ac = add nsw i32 %spec.select.us.us.us207, 1 ; 4 uses
  %i.ad = add nuw nsw i32 %.06389.us.us.us206, 1  ; 3 uses
  %exitcond.not155 = icmp eq i32 %i.ad, %i.p
  br i1 %exitcond.not155, label %bb.d, label %bb.c, !llvm.loop !36

._crit_edge.us.us.us:                             ; preds = %._crit_edge208
  %.not80.us.us.us = icmp eq i32 %.05491.us.us.us.lcssa, 0 ; 2 uses
  %spec.select = select i1 %.not80.us.us.us, ptr %3, ptr %6
  %spec.select191 = select i1 %.not80.us.us.us, i32 %.05899.us.us.us, i32 1
  br label %.sink.split

bb.d:                                             ; preds = %.thread
  br i1 %.not81.us.us.us, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.us.us.us, %bb.d
  %.sink = phi ptr [ %6, %bb.d ], [ %spec.select, %._crit_edge.us.us.us ] ; 2 uses
  %.253.us.us.us157164.ph = phi i32 [ %.15292.us.us.us.ph, %bb.d ], [ 1, %._crit_edge.us.us.us ]
  %.ph = phi i32 [ %i.ac, %bb.d ], [ %i.aa, %._crit_edge.us.us.us ]
  %.159.us.us.us.ph = phi i32 [ 1, %bb.d ], [ %spec.select191, %._crit_edge.us.us.us ]
  %i.ae = load i32, ptr %.sink, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %.sink, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.253.us.us.us157164 = phi i32 [ %.15292.us.us.us.ph, %bb.d ], [ %.253.us.us.us157164.ph, %.sink.split ] ; 2 uses
  %i.ag = phi i32 [ %i.ac, %bb.d ], [ %.ph, %.sink.split ] ; 2 uses
  %.159.us.us.us = phi i32 [ 1, %bb.d ], [ %.159.us.us.us.ph, %.sink.split ] ; 2 uses
  %i.ah = add nuw nsw i32 %.06797.us.us.us, 1     ; 2 uses
  %exitcond144.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond144.not, label %._crit_edge101.split.us.us.us, label %.preheader87.us.us.us, !llvm.loop !37

._crit_edge101.split.us.us.us:                    ; preds = %bb.e
  %.not78.us.us = icmp eq i32 %.159.us.us.us, 0
  br i1 %.not78.us.us, label %.sink.split185, label %bb.f

bb.f:                                             ; preds = %._crit_edge101.split.us.us.us
  %.not79.us.us = icmp eq i32 %.253.us.us.us157164, 0
  br i1 %.not79.us.us, label %bb.g, label %.sink.split185

.sink.split185:                                   ; preds = %._crit_edge101.split.us.us.us, %bb.f
  %.sink189 = phi ptr [ %5, %bb.f ], [ %2, %._crit_edge101.split.us.us.us ] ; 2 uses
  %.157.us.us.ph = phi i32 [ 1, %bb.f ], [ %.056110.us.us, %._crit_edge101.split.us.us.us ]
  %i.ai = load i32, ptr %.sink189, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %.sink189, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split185, %bb.f
  %.157.us.us = phi i32 [ 1, %bb.f ], [ %.157.us.us.ph, %.sink.split185 ] ; 2 uses
  %i.ak = add nuw nsw i32 %.065108.us.us, 1       ; 2 uses
  %exitcond145.not = icmp eq i32 %i.ak, %i.l
  br i1 %exitcond145.not, label %._crit_edge, label %.preheader88.us.us, !llvm.loop !38

.preheader88.us:                                  ; preds = %.preheader88.lr.ph.split.us, %.preheader88.us
  %.065108.us = phi i32 [ %i.ao, %.preheader88.us ], [ 0, %.preheader88.lr.ph.split.us ]
  %.promoted.us = load i32, ptr %3, align 4
  %i.al = add i32 %.promoted.us, %i.n
  store i32 %i.al, ptr %3, align 4
  %i.am = load i32, ptr %2, align 4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %2, align 4
  %i.ao = add nuw nsw i32 %.065108.us, 1          ; 2 uses
  %exitcond146.not = icmp eq i32 %i.ao, %i.l
  br i1 %exitcond146.not, label %._crit_edge.thread, label %.preheader88.us, !llvm.loop !38

.preheader88.lr.ph.split:                         ; preds = %.preheader88.lr.ph
  %.promoted = load i32, ptr %2, align 4
  %i.ap = add i32 %.promoted, %i.l
  store i32 %i.ap, ptr %2, align 4
  br label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.g
  %i.aq = icmp eq i32 %.157.us.us, 0
  br i1 %i.aq, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %.preheader88.us, %.preheader88.lr.ph.split, %bb.b, %._crit_edge
  %i.ar = load i32, ptr %1, align 4
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.au = load i16, ptr %i.at, align 4
  %.fr = freeze i16 %i.au                         ; 3 uses
  %.not75 = icmp sgt i16 %.fr, -1
  br i1 %.not75, label %.loopexit86, label %switch.early.test

switch.early.test:                                ; preds = %bb.h
  switch i16 %.fr, label %bb.i [
    i16 -2, label %.loopexit86
    i16 -32768, label %.loopexit86
  ]

bb.i:                                             ; preds = %switch.early.test
  %i.av = and i16 %.fr, 32767                     ; 2 uses
  %i.aw = load i16, ptr %i.c, align 2             ; 2 uses
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = icmp ugt i16 %i.aw, 1
  %i.az = icmp ne i16 %i.av, 0
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit86

.lr.ph:                                           ; preds = %bb.i
  %i.bb = load i16, ptr %i.b, align 2             ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = icmp ult i16 %i.bb, 2
  %brmerge = or i1 %i.bd, %.not135
  br i1 %brmerge, label %.loopexit86, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.be = zext nneg i16 %i.av to i32
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %..loopexit85_crit_edge.split.us.us
  %.164131.us.in = phi i32 [ %.164131.us, %..loopexit85_crit_edge.split.us.us ], [ %i.ax, %.preheader.lr.ph.us.preheader ] ; 2 uses
  %.0130.us = phi i32 [ %i.bp, %..loopexit85_crit_edge.split.us.us ], [ %i.be, %.preheader.lr.ph.us.preheader ]
  %.164131.us = add nsw i32 %.164131.us.in, -1    ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %..loopexit_crit_edge.us.us, %.preheader.lr.ph.us
  %.168126.us.us.in = phi i32 [ %i.bc, %.preheader.lr.ph.us ], [ %.168126.us.us, %..loopexit_crit_edge.us.us ] ; 2 uses
  %.1125.us.us = phi i32 [ %.0130.us, %.preheader.lr.ph.us ], [ %i.bp, %..loopexit_crit_edge.us.us ]
  %.168126.us.us = add nsw i32 %.168126.us.us.in, -1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.us.us
  %.2122.us.us = phi i32 [ %.1125.us.us, %.preheader.us.us ], [ %i.bp, %bb.j ] ; 2 uses
  %.166.in121.us.us = phi i32 [ %i.l, %.preheader.us.us ], [ %.166.us.us, %bb.j ] ; 2 uses
  %.166.us.us = add nsw i32 %.166.in121.us.us, -1 ; 2 uses
  %i.bf = mul nuw nsw i32 %.166.us.us, %i.bc
  %i.bg = add nuw nsw i32 %i.bf, %.168126.us.us
  %i.bh = mul nuw nsw i32 %i.bg, %i.ax
  %i.bi = add nuw nsw i32 %i.bh, %.164131.us
  %i.bj = load ptr, ptr @conf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4232
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = zext i16 %i.bl to i32
  %i.bn = urem i32 %i.bi, %i.bm
  %i.bo = zext nneg i32 %i.bn to i64
  call void @slurm_bit_clear(ptr noundef %i.j, i64 noundef %i.bo) #9
  %i.bp = add nsw i32 %.2122.us.us, -1            ; 4 uses
  %i.bq = icmp sgt i32 %.166.in121.us.us, 1
  %i.br = icmp ne i32 %i.bp, 0                    ; 2 uses
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.j, label %..loopexit_crit_edge.us.us, !llvm.loop !39

..loopexit_crit_edge.us.us:                       ; preds = %bb.j
  %i.bt = icmp sgt i32 %.168126.us.us.in, 2
  %i.bu = select i1 %i.bt, i1 %i.br, i1 false
  br i1 %i.bu, label %.preheader.us.us, label %..loopexit85_crit_edge.split.us.us, !llvm.loop !40

..loopexit85_crit_edge.split.us.us:               ; preds = %..loopexit_crit_edge.us.us
  %i.bv = icmp sgt i32 %.164131.us.in, 2
  %i.bw = icmp sgt i32 %.2122.us.us, 1
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.preheader.lr.ph.us, label %.loopexit86, !llvm.loop !41

.loopexit86:                                      ; preds = %..loopexit85_crit_edge.split.us.us, %.lr.ph, %bb.i, %switch.early.test, %switch.early.test, %bb.h
  call fastcc void @_lllp_map_abstract_masks(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bz = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.by) #9 ; 2 uses
  %.not77 = icmp eq ptr %i.by, null
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit86
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #9
  br label %bb.l

bb.l:                                             ; preds = %.loopexit86, %bb.k, %bb.a
  %.069 = phi ptr [ null, %bb.a ], [ %i.bz, %bb.k ], [ %i.bz, %.loopexit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.069
}

declare void @slurm_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_sprint_cpu_bind_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4034) i32 @_task_layout_lllp_block(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = zext i16 %i.l to i32                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 6 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.r = tail call i32 @slurm_get_log_level() #9
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call fastcc ptr @_get_avail_map(ptr noundef %i.u, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c) ; 5 uses
  store ptr %i.v, ptr %i.d, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i16, ptr %i.w, align 8              ; 2 uses
  switch i16 %i.x, label %bb.f [
    i16 0, label %bb.e
    i16 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 8192
  %.not109 = icmp eq i16 %i.aa, 0
  %i.ab = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %i.v) #9 ; 2 uses
  br i1 %.not109, label %.thread, label %.thread129

bb.f:                                             ; preds = %bb.d
  %i.ac = zext i16 %i.x to i32
  %i.ad = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %i.v) #9
  br label %.thread129

.thread129:                                       ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %i.ad, %bb.f ], [ %i.ab, %bb.e ] ; 4 uses
  %.079132 = phi i32 [ %i.ac, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %i.af = load ptr, ptr @conf, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4158
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = load i16, ptr %i.c, align 2
  %.not111 = icmp ugt i16 %i.ah, %i.ai
  br i1 %.not111, label %.thread, label %bb.g

bb.g:                                             ; preds = %.thread129
  %i.aj = load i16, ptr %i.n, align 2
  %i.ak = zext i16 %i.aj to i32
  %.rhs.trunc = trunc nuw i32 %.079132 to i16
  %i.al = udiv i16 %i.ah, %.rhs.trunc
  %.zext = zext i16 %i.al to i32
  %i.am = mul nuw nsw i32 %.zext, %i.ak           ; 2 uses
  %i.an = icmp slt i32 %i.ae, %i.am
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30, i32 noundef %i.ae, i32 noundef %i.am) #9 ; 0 uses
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.am

.thread:                                          ; preds = %bb.e, %bb.g, %.thread129
  %.not110128 = phi i1 [ false, %.thread129 ], [ false, %bb.g ], [ true, %bb.e ]
  %i.ap = phi i32 [ %i.ae, %.thread129 ], [ %i.ae, %bb.g ], [ %i.ab, %bb.e ] ; 4 uses
  %.079127 = phi i32 [ %.079132, %.thread129 ], [ %.079132, %bb.g ], [ 0, %bb.e ]
  %i.aq = icmp slt i32 %i.ap, %i.m
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not122 = icmp eq i32 %i.at, 0
  br i1 %.not122, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.31, i32 noundef %i.ap, i32 noundef %i.m) #9 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #9
  br label %bb.am

bb.l:                                             ; preds = %.thread
  %i.av = icmp samesign ult i32 %i.ap, %i.q
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = udiv i32 %i.ap, %i.m                    ; 2 uses
  %i.ax = tail call i32 @slurm_get_log_level() #9
  %i.ay = icmp sgt i32 %i.ax, 2
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i16, ptr %i.n, align 2
  %i.ba = zext i16 %i.az to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.32, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._task_layout_lllp_block, i32 noundef %i.ba, i32 noundef %i.aw) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = trunc i32 %i.aw to i16
  store i16 %i.bb, ptr %i.n, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bc = tail call i64 @slurm_bit_size(ptr noundef nonnull %i.v) #9
  %.fr = freeze i64 %i.bc
  %i.bd = trunc i64 %.fr to i32                   ; 2 uses
  %i.be = zext i16 %i.l to i64
  %i.bf = tail call ptr @slurm_xcalloc(i64 noundef %i.be, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1234, ptr noundef nonnull @__func__._task_layout_lllp_block) #9 ; 3 uses
  store ptr %i.bf, ptr %2, align 8
  %i.bg = load i16, ptr %i.c, align 2             ; 3 uses
  %i.bh = zext i16 %i.bg to i32                   ; 4 uses
  %i.bi = load i16, ptr %i.a, align 2             ; 2 uses
  %i.bj = zext i16 %i.bi to i64                   ; 3 uses
  %i.bk = load i16, ptr %i.b, align 2             ; 3 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, %i.bj            ; 2 uses
  %i.bn = tail call ptr @slurm_xcalloc(i64 noundef %i.bm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1238, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  store ptr %i.bn, ptr %i.e, align 8
  %i.bo = tail call ptr @slurm_xcalloc(i64 noundef %i.bm, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.33, i32 noundef 1239, ptr noundef nonnull @__func__._task_layout_lllp_block) #9
  store ptr %i.bo, ptr %i.f, align 8
end_hunk_1
