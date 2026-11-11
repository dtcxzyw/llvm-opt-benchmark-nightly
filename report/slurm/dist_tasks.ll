Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/dist_tasks?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@_get_avail_map:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4264
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 @nodelist_find(ptr noundef %i.n, ptr noundef %i.q) #9 ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp ugt i32 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %.outer.i.split.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = load ptr, ptr @conf, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4264
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.y, ptr noundef %i.z) #9 ; 0 uses
  tail call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.p

.outer.i.split.lr.ph:                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.ad, align 8
  br label %.outer.i.split

.outer.i:                                         ; preds = %.lr.ph.i
  %i.ah = add nuw i32 %umin.i, 1
  %i.ai = mul i32 %i.aw, %i.ah
  %i.aj = add i32 %i.ai, %.024.ph.i110
  br label %.outer.i.split

.outer.i.split:                                   ; preds = %.outer.i, %.outer.i.split.lr.ph
  %i.ak = phi i32 [ -1, %.outer.i.split.lr.ph ], [ %i.az, %.outer.i ] ; 2 uses
  %.024.ph.i110 = phi i32 [ 0, %.outer.i.split.lr.ph ], [ %i.aj, %.outer.i ] ; 2 uses
  %indvars.iv.ph.i109 = phi i64 [ -1, %.outer.i.split.lr.ph ], [ %indvars.iv.next.i, %.outer.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i, %.outer.i.split
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.ph.i109, %.outer.i.split ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds [2 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %indvars.iv.next.i
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = xor i32 %i.ak, -1
  %i.au = add i32 %i.r, %i.at
  %i.av = add i32 %i.am, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.av) ; 3 uses
  %i.aw = mul nuw i32 %i.as, %i.ap                ; 2 uses
  %i.ax = add nsw i32 %i.ak, 1
  %i.ay = add i32 %i.ax, %umin.i
  %i.az = freeze i32 %i.ay                        ; 2 uses
  %.exit.i = icmp slt i32 %i.az, %i.r
  br i1 %.exit.i, label %.outer.i, label %_get_local_node_info.exit, !llvm.loop !10

_get_local_node_info.exit:                        ; preds = %.lr.ph.i
  %i.ba = mul i32 %i.aw, %umin.i
  %i.bb = add nuw i32 %i.ba, %.024.ph.i110
  %i.bc = tail call i32 @slurm_get_log_level() #9
  %i.bd = icmp sgt i32 %i.bc, 6
  %i.be = zext i16 %i.ao to i32                   ; 2 uses
  %i.bf = zext i16 %i.ar to i32                   ; 2 uses
  br i1 %i.bd, label %bb.d, label %_get_local_node_info.exit._crit_edge

bb.d:                                             ; preds = %_get_local_node_info.exit
  %i.bg = load i16, ptr %1, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = load i16, ptr %2, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = load i16, ptr %3, align 2
  %i.bl = zext i16 %i.bk to i32
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl) #9
  br label %_get_local_node_info.exit._crit_edge

_get_local_node_info.exit._crit_edge:             ; preds = %_get_local_node_info.exit, %bb.d
  %i.bm = mul nuw nsw i32 %i.bf, %i.be            ; 3 uses
  %i.bn = load i16, ptr %1, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = load i16, ptr %2, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, %i.bo
  %. = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.br)
  %.mask = and i32 %., 65535                      ; 3 uses
  %i.bs = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bt = tail call ptr @slurm_bit_alloc(i64 noundef %i.bs) #9 ; 5 uses
  store ptr %i.bt, ptr %i.a, align 8
  %i.bu = load ptr, ptr @conf, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4232
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = zext i16 %i.bw to i64
  %i.by = tail call ptr @slurm_bit_alloc(i64 noundef %i.bx) #9 ; 4 uses
  %.not136 = icmp eq i32 %i.bm, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_get_local_node_info.exit._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.ca = phi i32 [ 0, %.lr.ph ], [ %i.ci, %bb.g ] ; 2 uses
  %.072112 = phi i16 [ 0, %.lr.ph ], [ %i.ch, %bb.g ]
  %i.cb = load ptr, ptr %i.bz, align 8
  %i.cc = add nuw nsw i32 %i.ca, %i.bb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = tail call i32 @slurm_bit_test(ptr noundef %i.cb, i64 noundef %i.cd) #9
  %.not85 = icmp eq i32 %i.ce, 0
  br i1 %.not85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = urem i32 %i.ca, %.mask
  %i.cg = zext nneg i32 %i.cf to i64
  tail call void @slurm_bit_set(ptr noundef %i.bt, i64 noundef %i.cg) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ch = add i16 %.072112, 1                     ; 2 uses
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = icmp samesign ugt i32 %i.bm, %i.ci
  br i1 %i.cj, label %bb.e, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.g, %_get_local_node_info.exit._crit_edge
  %i.ck = tail call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.bt) #9 ; 2 uses
  store ptr %i.ck, ptr %i.b, align 8
  %i.cl = tail call i32 @slurm_get_log_level() #9
  %i.cm = icmp sgt i32 %i.cl, 6
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.27, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef nonnull %i.c, ptr noundef %i.ck) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not137 = icmp eq i32 %.mask, 0
  br i1 %.not137, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.i, %.loopexit95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit95 ], [ 0, %bb.i ] ; 3 uses
  %i.cn = call i32 @slurm_bit_test(ptr noundef %i.bt, i64 noundef %indvars.iv) #9
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.loopexit95, label %bb.j

bb.j:                                             ; preds = %.lr.ph118
  %i.cp = load ptr, ptr @conf, align 8            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4232
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = trunc nuw i64 %indvars.iv to i16
  %i.ct = urem i16 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 4158
  %i.cv = load i16, ptr %i.cu, align 2
  %.not138 = icmp eq i16 %i.cv, 0
  br i1 %.not138, label %.loopexit95, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.j, %.lr.ph115
  %i.cw = phi ptr [ %i.df, %.lr.ph115 ], [ %i.cp, %bb.j ]
  %.071113 = phi i16 [ %i.de, %.lr.ph115 ], [ 0, %bb.j ] ; 2 uses
  %i.cx = load i16, ptr %3, align 2
  %i.cy = mul i16 %i.cx, %i.ct
  %i.cz = add i16 %i.cy, %.071113
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 4232
  %i.db = load i16, ptr %i.da, align 8
  %i.dc = urem i16 %i.cz, %i.db
  %i.dd = zext i16 %i.dc to i64
  call void @slurm_bit_set(ptr noundef %i.by, i64 noundef %i.dd) #9
  %i.de = add nuw i16 %.071113, 1                 ; 2 uses
  %i.df = load ptr, ptr @conf, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4158
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = icmp ult i16 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph115, label %.loopexit95, !llvm.loop !12

.loopexit95:                                      ; preds = %.lr.ph115, %bb.j, %.lr.ph118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bs
  br i1 %exitcond.not, label %._crit_edge119, label %.lr.ph118, !llvm.loop !13

._crit_edge119:                                   ; preds = %.loopexit95, %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.dk = load i16, ptr %i.dj, align 8
  %.fr = freeze i16 %i.dk                         ; 3 uses
  %i.dl = icmp ult i16 %.fr, -32767
  %i.dm = and i16 %.fr, 32767                     ; 2 uses
  %cond = icmp eq i16 %.fr, -2
  %or.cond = or i1 %i.dl, %cond
  br i1 %or.cond, label %.loopexit94, label %bb.k

bb.k:                                             ; preds = %._crit_edge119
  %i.dn = load ptr, ptr @conf, align 8            ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4158
  %i.dp = load i16, ptr %i.do, align 2            ; 2 uses
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = icmp ne i16 %i.dm, 0
  %i.ds = and i1 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph135.preheader, label %.loopexit94

.lr.ph135.preheader:                              ; preds = %bb.k
  %i.dt = zext i16 %i.dp to i32
  %i.du = zext nneg i16 %i.dm to i32
  br label %.lr.ph135

.loopexit93:                                      ; preds = %.loopexit, %.lr.ph135
  %.pre152155 = phi ptr [ %.pre152, %.lr.ph135 ], [ %.pre152153, %.loopexit ]
  %4 = phi ptr [ %5, %.lr.ph135 ], [ %.pre149, %.loopexit ]
  %.2.lcssa = phi i32 [ %.1132, %.lr.ph135 ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.dv = icmp sgt i32 %.068133.in, 1
  %i.dw = icmp sgt i32 %.2.lcssa, 0
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph135, label %.loopexit94, !llvm.loop !14

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %.loopexit93
  %.pre152 = phi ptr [ %.pre152155, %.loopexit93 ], [ %i.dn, %.lr.ph135.preheader ] ; 3 uses
  %5 = phi ptr [ %4, %.loopexit93 ], [ %i.dn, %.lr.ph135.preheader ] ; 2 uses
  %.068133.in = phi i32 [ %.068133, %.loopexit93 ], [ %i.dt, %.lr.ph135.preheader ] ; 2 uses
  %.1132 = phi i32 [ %.2.lcssa, %.loopexit93 ], [ %i.du, %.lr.ph135.preheader ] ; 2 uses
  %.068133 = add nsw i32 %.068133.in, -1          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 4184
  %i.dz = load i16, ptr %i.dy, align 8            ; 2 uses
  %.not139 = icmp eq i16 %i.dz, 0
  br i1 %.not139, label %.loopexit93, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %.lr.ph135
  %i.ea = zext i16 %i.dz to i32
  br label %.lr.ph129

.loopexit.loopexit:                               ; preds = %.lr.ph123
  %.pre151 = load ptr, ptr @conf, align 8         ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph129
  %.pre152153 = phi ptr [ %.pre152154, %.lr.ph129 ], [ %.pre151, %.loopexit.loopexit ] ; 2 uses
  %.pre149 = phi ptr [ %6, %.lr.ph129 ], [ %.pre151, %.loopexit.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.2126, %.lr.ph129 ], [ %i.ex, %.loopexit.loopexit ] ; 3 uses
  %i.eb = icmp samesign ugt i32 %.067127.in, 1
  %i.ec = icmp ne i32 %.3.lcssa, 0
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %.lr.ph129, label %.loopexit93, !llvm.loop !15

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.loopexit
  %.pre152154 = phi ptr [ %.pre152153, %.loopexit ], [ %.pre152, %.lr.ph129.preheader ]
  %6 = phi ptr [ %.pre149, %.loopexit ], [ %.pre152, %.lr.ph129.preheader ] ; 2 uses
  %.067127.in = phi i32 [ %.067127, %.loopexit ], [ %i.ea, %.lr.ph129.preheader ] ; 2 uses
  %.2126 = phi i32 [ %.3.lcssa, %.loopexit ], [ %.1132, %.lr.ph129.preheader ] ; 2 uses
  %.067127 = add nsw i32 %.067127.in, -1          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 4156
  %i.ef = load i16, ptr %i.ee, align 4            ; 2 uses
  %.not140 = icmp eq i16 %i.ef, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.lr.ph129
  %i.eg = zext i16 %i.ef to i32
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.lr.ph123
  %.0.in121 = phi i32 [ %.0, %.lr.ph123 ], [ %i.eg, %.lr.ph123.preheader ] ; 2 uses
  %.3120 = phi i32 [ %i.ex, %.lr.ph123 ], [ %.2126, %.lr.ph123.preheader ]
  %.0 = add nsw i32 %.0.in121, -1                 ; 2 uses
  %i.eh = load ptr, ptr @conf, align 8            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4184
  %i.ej = load i16, ptr %i.ei, align 8
  %i.ek = zext i16 %i.ej to i32
  %i.el = mul nuw nsw i32 %.0, %i.ek
  %i.em = add nuw nsw i32 %i.el, %.067127
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 4158
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nsw i32 %i.em, %i.ep
  %i.er = add nuw nsw i32 %i.eq, %.068133
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 4232
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = zext i16 %i.et to i32
  %i.ev = urem i32 %i.er, %i.eu
  %i.ew = zext nneg i32 %i.ev to i64
  call void @slurm_bit_clear(ptr noundef %i.by, i64 noundef %i.ew) #9
  %i.ex = add nsw i32 %.3120, -1                  ; 3 uses
  %i.ey = icmp samesign ugt i32 %.0.in121, 1
  %i.ez = icmp ne i32 %i.ex, 0
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %.lr.ph123, label %.loopexit.loopexit, !llvm.loop !16

.loopexit94:                                      ; preds = %.loopexit93, %bb.k, %._crit_edge119
  %i.fb = call ptr @slurm_bit_fmt_hexmask(ptr noundef %i.by) #9
  store ptr %i.fb, ptr %i.b, align 8
  %i.fc = call i32 @slurm_get_log_level() #9
  %i.fd = icmp sgt i32 %i.fc, 6
  br i1 %i.fd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit94
  %i.fe = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.28, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_avail_map, ptr noundef %i.c, ptr noundef %i.fe) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit94
  call void @slurm_xfree(ptr noundef nonnull %i.b) #9
  %.not84 = icmp eq ptr %i.bt, null
  br i1 %.not84, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.a, align 8
  call void @slurm_cred_unlock_args(ptr noundef %0) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.069 = phi ptr [ null, %bb.c ], [ %i.by, %bb.o ]
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
  br i1 %exitcond.not.i, label %_lllp_map_abstract_mask.exit, label %.lr.ph.i, !llvm.loop !17

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

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
