Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/part_data?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@part_data_add_job_to_row:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i32 [ %.pre, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %1, align 8
  %i.q = add i32 %i.o, 1
  store i32 %i.q, ptr %i.g, align 4
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  store ptr %0, ptr %i.s, align 8
  ret void
}

declare void @job_res_add_cores(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @part_data_build_row_bitmaps(ptr nofree noundef captures(none) initializes((24, 25)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.part_row_data_t, align 8    ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.j = load i16, ptr %i.i, align 8              ; 3 uses
  switch i16 %i.j, label %.lr.ph.preheader [
    i16 1, label %bb.c
    i16 0, label %.loopexit
  ]

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i16 %i.j to i64         ; 3 uses
  %min.iters.check = icmp ult i16 %i.j, 5
  br i1 %min.iters.check, label %.lr.ph.preheader283, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.k = and i64 %wide.trip.count, 3              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %wide.trip.count, %i.m     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %index
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %index
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %index
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.v = load i32, ptr %i.r, align 4
  %i.w = load i32, ptr %i.s, align 4
  %i.x = load i32, ptr %i.t, align 4
  %i.y = load i32, ptr %i.u, align 4
  %i.z = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.w, i64 1
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 2
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 3
  %i.ad = add <4 x i32> %i.ac, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ad)
  br label %.lr.ph.preheader283

.lr.ph.preheader283:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0113165.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @clear_core_array(ptr noundef %i.ak) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 0, ptr %i.al, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.not135 = icmp eq ptr %1, null
  br i1 %.not135, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @job_res_rm_cores(ptr noundef %i.an, ptr noundef nonnull %i.h) #7
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @clear_core_array(ptr noundef %i.ap) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 0, ptr %i.aq, align 8
  %i.ar = load i32, ptr %i.ag, align 4
  %.not199 = icmp eq i32 %i.ar, 0
  br i1 %.not199, label %.loopexit, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.g, %.lr.ph191
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.lr.ph191 ], [ 0, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv246
  %i.au = load ptr, ptr %i.at, align 8
  tail call void @job_res_add_cores(ptr noundef %i.au, ptr noundef nonnull %i.h) #7
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.av = load i32, ptr %i.ag, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp samesign ult i64 %indvars.iv.next247, %i.aw
  br i1 %i.ax, label %.lr.ph191, label %.loopexit, !llvm.loop !18

.lr.ph:                                           ; preds = %.lr.ph.preheader283, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader283 ] ; 2 uses
  %.0113165 = phi i32 [ %i.bb, %.lr.ph ], [ %.0113165.ph, %.lr.ph.preheader283 ]
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ba, %.0113165                ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph188, label %bb.h

.lr.ph188:                                        ; preds = %._crit_edge, %.lr.ph188
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %.lr.ph188 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %indvars.iv243 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @clear_core_array(ptr noundef %i.bg) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 0, ptr %i.bh, align 8
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.bi = load i16, ptr %i.i, align 8
  %i.bj = zext i16 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next244, %i.bj
  br i1 %i.bk, label %.lr.ph188, label %.loopexit, !llvm.loop !20

bb.h:                                             ; preds = %._crit_edge
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bm = and i64 %i.bl, 1
  %.not126 = icmp eq i64 %i.bm, 0
  br i1 %.not126, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = tail call i32 @get_log_level() #7
  %i.bo = icmp sgt i32 %i.bn, 2
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.part_data_build_row_bitmaps) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @part_data_dump_res(ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bp = tail call i32 @get_log_level() #7
  %i.bq = icmp sgt i32 %i.bp, 6
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.2, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.part_data_build_row_bitmaps, i32 noundef %i.bb) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.g, align 8
  %i.bs = load i16, ptr %i.i, align 8
  %i.bt = tail call ptr @part_data_dup_row(ptr noundef %i.br, i16 noundef zeroext %i.bs) ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = zext i32 %i.bb to i64                   ; 5 uses
  %i.bw = tail call ptr @slurm_xcalloc(i64 noundef %i.bv, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @__func__.part_data_build_row_bitmaps) #7 ; 8 uses
  store ptr %i.bw, ptr %i.c, align 8
  %i.bx = load i16, ptr %i.i, align 8
  %.not193 = icmp eq i16 %i.bx, 0
  br i1 %.not193, label %._crit_edge176, label %.preheader158

.preheader158:                                    ; preds = %bb.o, %._crit_edge170
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %._crit_edge170 ], [ 0, %bb.o ] ; 6 uses
  %.0112175 = phi i32 [ %.1.lcssa, %._crit_edge170 ], [ 0, %bb.o ] ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv215 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %.not194 = icmp eq i32 %i.cb, 0
  br i1 %.not194, label %._crit_edge170, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %.preheader158
  %i.cc = sext i32 %.0112175 to i64
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %.lr.ph169
  %indvars.iv210 = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next211, %.lr.ph169 ] ; 3 uses
  %indvars.iv208 = phi i64 [ %i.cc, %.lr.ph169.preheader ], [ %indvars.iv.next209, %.lr.ph169 ] ; 2 uses
  %i.cd = phi ptr [ %i.bz, %.lr.ph169.preheader ], [ %i.da, %.lr.ph169 ]
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv210
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %indvars.iv208 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  store ptr %i.cg, ptr %i.ci, align 8
  %i.cj = load ptr, ptr %i.g, align 8
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %indvars.iv215
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv210
  store ptr null, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %i.ci, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i64 @bit_ffs(ptr noundef %i.cp) #7
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  store i32 %i.cr, ptr %i.ch, align 8
  %i.cs = tail call i32 @cr_get_coremap_offset(i32 noundef %i.cr) #7
  store i32 %i.cs, ptr %i.ch, align 8
  %i.ct = load ptr, ptr %i.ci, align 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i64 @bit_ffs(ptr noundef %i.cu) #7
  %i.cw = load i32, ptr %i.ch, align 8
  %i.cx = trunc i64 %i.cv to i32
  %i.cy = add i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.ch, align 8
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1 ; 2 uses
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.cz = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %indvars.iv215 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next211, %i.dd
  br i1 %i.de, label %.lr.ph169, label %._crit_edge170.loopexit, !llvm.loop !21

._crit_edge170.loopexit:                          ; preds = %.lr.ph169
  %i.df = trunc nsw i64 %indvars.iv.next209 to i32
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit, %.preheader158
  %i.dg = phi ptr [ %i.by, %.preheader158 ], [ %i.cz, %._crit_edge170.loopexit ]
  %.1.lcssa = phi i32 [ %.0112175, %.preheader158 ], [ %i.df, %._crit_edge170.loopexit ]
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv215
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.di, align 4
  %i.dj = load ptr, ptr %i.g, align 8
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %indvars.iv215 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void @clear_core_array(ptr noundef %i.dm) #7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 0, ptr %i.dn, align 8
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.do = load i16, ptr %i.i, align 8
  %i.dp = zext i16 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next216, %i.dp
  br i1 %i.dq, label %.preheader158, label %._crit_edge176, !llvm.loop !22

._crit_edge176:                                   ; preds = %._crit_edge170, %bb.o
  tail call void @qsort(ptr noundef %i.bw, i64 noundef %i.bv, i64 noundef 16, ptr noundef nonnull @_compare_support) #7
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ds = and i64 %i.dr, 1
  %.not127 = icmp eq i64 %i.ds, 0
  br i1 %.not127, label %.preheader154.preheader, label %.preheader156

.preheader156:                                    ; preds = %._crit_edge176, %bb.w
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.w ], [ 0, %._crit_edge176 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv218
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not133 = icmp eq ptr %i.dw, null
  br i1 %.not133, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader156
  %i.dx = call ptr @bit_fmt(ptr noundef nonnull %i.d, i32 noundef 63, ptr noundef nonnull %i.dw) #7 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %.preheader156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.d, ptr noundef nonnull align 1 dereferenceable(17) @.str.3, i64 17, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dy = load ptr, ptr %i.du, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not134 = icmp eq ptr %i.ea, null
  br i1 %.not134, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = call ptr @bit_fmt(ptr noundef nonnull %i.e, i32 noundef 63, ptr noundef nonnull %i.ea) #7 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.4, i64 17, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ec = call i32 @get_log_level() #7
  %i.ed = icmp sgt i32 %i.ec, 2
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv218
  %i.ef = load i32, ptr %i.ee, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.part_data_build_row_bitmaps, i32 noundef %i.ef, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %i.bv
  br i1 %exitcond222.not, label %.preheader154.preheader, label %.preheader156, !llvm.loop !23

.preheader154.preheader:                          ; preds = %bb.w, %._crit_edge176
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.preheader, %part_data_sort_res.exit
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %part_data_sort_res.exit ], [ 0, %.preheader154.preheader ] ; 3 uses
  %i.eg = load i16, ptr %i.i, align 8
  %.not195 = icmp eq i16 %i.eg, 0
  br i1 %.not195, label %.loopexit155, label %.lr.ph179

.lr.ph179:                                        ; preds = %.preheader154
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv226 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.ej = load i16, ptr %i.i, align 8
  %i.ek = zext i16 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next224, %i.ek
  br i1 %i.el, label %bb.y, label %.loopexit155, !llvm.loop !24

bb.y:                                             ; preds = %.lr.ph179, %bb.x
  %indvars.iv223 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next224, %bb.x ] ; 3 uses
  %i.em = load ptr, ptr %i.ei, align 8
  %i.en = load ptr, ptr %i.g, align 8
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %indvars.iv223
  %i.ep = call i32 @job_res_fit_in_row(ptr noundef %i.em, ptr noundef %i.eo) #7
  %.not132 = icmp eq i32 %i.ep, 0
  br i1 %.not132, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %indvars.iv223 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ev, null
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @clear_core_array(ptr noundef nonnull %i.ev) #7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i32 0, ptr %i.ez, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  call void @job_res_add_cores(ptr noundef %i.er, ptr noundef nonnull %i.et) #7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 12 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %.not13.i = icmp ult i32 %i.fb, %i.fd
  br i1 %.not13.i, label %part_data_add_job_to_row.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = add i32 %i.fd, 8                        ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 8
  %i.ff = zext i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.et, i64 noundef 1, i64 noundef %i.fg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.part_data_add_job_to_row) #7 ; 0 uses
  %.pre.i = load i32, ptr %i.fa, align 4
  br label %part_data_add_job_to_row.exit

part_data_add_job_to_row.exit:                    ; preds = %bb.ac, %bb.ad
  %i.fi = phi i32 [ %.pre.i, %bb.ad ], [ %i.fb, %bb.ac ] ; 2 uses
  %i.fj = load ptr, ptr %i.et, align 8
  %i.fk = add i32 %i.fi, 1
  store i32 %i.fk, ptr %i.fa, align 4
  %i.fl = zext i32 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fl
  store ptr %i.er, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv226
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr null, ptr %i.fo, align 8
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.x, %.preheader154, %part_data_add_job_to_row.exit
  %i.fp = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i136 = icmp eq ptr %i.fp, null
  br i1 %.not.i136, label %part_data_sort_res.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit155
  %i.fq = load i16, ptr %i.i, align 8             ; 2 uses
  %.not20.i = icmp eq i16 %i.fq, 0
  br i1 %.not20.i, label %part_data_sort_res.exit, label %.lr.ph19.i

.loopexit.i:                                      ; preds = %bb.af
  %.pre34.i = zext i16 %i.gf to i64
  %i.fr = icmp samesign ult i64 %indvars.iv.next25.i, %.pre34.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.fr, label %.lr.ph19.i, label %part_data_sort_res.exit, !llvm.loop !0

.lr.ph19.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.pre27.i = phi ptr [ %.pre2732.i, %.loopexit.i ], [ %i.fp, %.preheader.i ] ; 2 uses
  %i.fs = phi i16 [ %i.gf, %.loopexit.i ], [ %i.fq, %.preheader.i ] ; 3 uses
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %.loopexit.i ], [ 0, %.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 1, %.preheader.i ] ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 3 uses
  %i.ft = zext i16 %i.fs to i64
  %i.fu = icmp samesign ult i64 %indvars.iv.next25.i, %i.ft
  br i1 %i.fu, label %.lr.ph.i, label %part_data_sort_res.exit
end_hunk_0
