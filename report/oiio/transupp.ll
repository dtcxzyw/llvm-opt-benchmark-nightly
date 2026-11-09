Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/transupp?download=true
inline.NumInlined: 31
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 56
begin_hunk_0_@do_crop_ext_flat:bb.a

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.epil.preheader ], [ %indvars.iv.next129.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %indvars.iv128.epil
  store i16 %i.cj, ptr %i.cs, align 2, !tbaa !22
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit109, label %bb.j, !llvm.loop !225

.loopexit109:                                     ; preds = %.loopexit109.loopexit.unr-lcssa, %bb.j, %.lr.ph115..loopexit109_crit_edge
  %i.ct = phi ptr [ %.pre141, %.lr.ph115..loopexit109_crit_edge ], [ %i.ck, %bb.j ], [ %i.ck, %.loopexit109.loopexit.unr-lcssa ]
  %i.cu = phi ptr [ %.pre, %.lr.ph115..loopexit109_crit_edge ], [ %i.ci, %bb.j ], [ %i.ci, %.loopexit109.loopexit.unr-lcssa ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv134 ; 2 uses
  %i.cw = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %i.am
  tail call void @jcopy_block_row(ptr noundef %i.cu, ptr noundef %i.cw, i32 noundef %i.ac) #10
  %i.cx = load i32, ptr %i.ao, align 4, !tbaa !95 ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, %i.ap
  br i1 %i.cy, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.loopexit109
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv134
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw [128 x i8], ptr %i.da, i64 %i.am
  %i.dc = getelementptr inbounds nuw [128 x i8], ptr %i.db, i64 %i.aq
  %i.dd = sub nuw i32 %i.cx, %i.ap
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 7
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dc, i8 0, i64 %i.df, i1 false)
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw [128 x i8], ptr %i.dg, i64 %i.as
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !22 ; 5 uses
  %i.dj = load i32, ptr %i.ao, align 4, !tbaa !95 ; 2 uses
  %i.dk = icmp ult i32 %i.ap, %i.dj
  br i1 %i.dk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !19 ; 5 uses
  %i.dm = zext i32 %i.dj to i64                   ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.at
  %xtraiter158 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv131.prol = phi i64 [ %indvars.iv.next132.prol, %.prol.preheader ], [ %i.at, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %indvars.iv131.prol
  store i16 %i.di, ptr %i.do, align 2, !tbaa !22
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter158
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !226

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv131.unr = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next132.prol, %.prol.preheader ]
  %i.dp = sub nsw i64 %i.at, %i.dm
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %.lr.ph.new ], [ %indvars.iv131.unr, %.prol.loopexit ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %indvars.iv131
  store i16 %i.di, ptr %i.dr, align 2, !tbaa !22
  %i.ds = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %indvars.iv131
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  store i16 %i.di, ptr %i.dt, align 2, !tbaa !22
  %i.du = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %indvars.iv131
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256
  store i16 %i.di, ptr %i.dv, align 2, !tbaa !22
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %indvars.iv131
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 384
  store i16 %i.di, ptr %i.dx, align 2, !tbaa !22
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131, 4 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next132.3, %i.dm
  br i1 %i.dy, label %.lr.ph.new, label %.loopexit, !llvm.loop !227

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.k, %.loopexit109
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dz = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next135, %i.ea
  br i1 %i.eb, label %.lr.ph115, label %.loopexit110, !llvm.loop !228

.loopexit110:                                     ; preds = %.lr.ph117, %.loopexit, %bb.h, %bb.e
  %i.ec = phi i32 [ %i.dz, %.loopexit ], [ %i.bf, %bb.e ], [ %i.cd, %bb.h ], [ %i.bm, %.lr.ph117 ] ; 2 uses
  %i.ed = add i32 %i.ec, %.0101118                ; 2 uses
  %i.ee = load i32, ptr %i.ag, align 8, !tbaa !93
  %i.ef = icmp ult i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !229

._crit_edge.loopexit:                             ; preds = %.loopexit110
  %.pre142 = load i32, ptr %i.j, align 4, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.eg = phi i32 [ %.pre142, %._crit_edge.loopexit ], [ %i.x, %bb.b ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next138, %i.eh
  br i1 %i.ei, label %bb.b, label %._crit_edge124, !llvm.loop !230

._crit_edge124:                                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_crop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #2 !guid !235 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %._crit_edge41
  %i.f = phi i32 [ %i.b, %.lr.ph44 ], [ %i.aw, %._crit_edge41 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next49, %._crit_edge41 ] ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %indvars.iv48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68   ; 2 uses
  %i.k = mul i32 %i.j, %3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !93
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !67
  %i.p = mul i32 %i.o, %2
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv48
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv48
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph40, %._crit_edge
  %i.u = phi i32 [ %i.j, %.lr.ph40 ], [ %i.as, %._crit_edge ]
  %.03538 = phi i32 [ 0, %.lr.ph40 ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.z = tail call ptr %i.x(ptr noundef %0, ptr noundef %i.y, i32 noundef %.03538, i32 noundef %i.u, i32 noundef 1) #10
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.ae = add i32 %.03538, %i.k
  %i.af = load i32, ptr %i.i, align 4, !tbaa !68
  %i.ag = tail call ptr %i.ac(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef 0) #10
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !68  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.s
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !95
  tail call void @jcopy_block_row(ptr noundef %i.al, ptr noundef %i.an, i32 noundef %i.ao) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !68  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.as = phi i32 [ %i.ah, %bb.c ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.at = add i32 %i.as, %.03538                  ; 2 uses
  %i.au = load i32, ptr %i.l, align 8, !tbaa !93
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %._crit_edge41.loopexit, !llvm.loop !233

._crit_edge41.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !89
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %bb.b
  %i.aw = phi i32 [ %.pre, %._crit_edge41.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next49, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge45, !llvm.loop !234

._crit_edge45:                                    ; preds = %._crit_edge41, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_flip_h_no_crop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 !guid !252 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = udiv i32 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.fr = freeze i32 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph93, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next132, %._crit_edge ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %indvars.iv131 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %.fr98 = freeze i32 %i.q                        ; 2 uses
  %i.r = mul i32 %.fr98, %.fr                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !93
  %.not95 = icmp eq i32 %i.t, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = mul i32 %.fr98, %2                       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv131 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 7 uses
  %.not97 = icmp eq i32 %i.r, 0
  %.not = icmp eq i32 %i.u, 0                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 4 uses
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  br i1 %.not97, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = add i32 %i.r, -1                         ; 3 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add nuw i32 %i.aa, 1                    ; 2 uses
  %.pre = load i32, ptr %i.w, align 4, !tbaa !68
  %wide.trip.count = zext i32 %i.ab to i64
  %wide.trip.count118 = zext i32 %i.ab to i64
  %i.ac = lshr i32 %i.z, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 7
  %i.af = lshr i32 %i.z, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 7
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge77.split.us.us
  %i.ai = phi i32 [ %i.dx, %._crit_edge77.split.us.us ], [ %.pre, %.lr.ph.split.us.preheader ]
  %.06387.us = phi i32 [ %i.dy, %._crit_edge77.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !94
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.an = tail call ptr %i.al(ptr noundef %0, ptr noundef %i.am, i32 noundef %.06387.us, i32 noundef %i.ai, i32 noundef 1) #10 ; 2 uses
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !68  ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.preheader68.lr.ph.us, label %._crit_edge77.split.us.us

.preheader68.lr.ph.us:                            ; preds = %.lr.ph.split.us
  br i1 %.not, label %.preheader68.lr.ph.split.us.us.split.us, label %.preheader68.us.us

.preheader68.lr.ph.split.us.us.split.us:          ; preds = %.preheader68.lr.ph.us
  %wide.trip.count123 = zext nneg i32 %i.ao to i64
  br label %.preheader68.us.us.us

.preheader68.us.us.us:                            ; preds = %._crit_edge.us.us.us, %.preheader68.lr.ph.split.us.us.split.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge.us.us.us ], [ 0, %.preheader68.lr.ph.split.us.us.split.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 5 uses
  %scevgep186 = getelementptr i8, ptr %i.ar, i64 128
  %scevgep187 = getelementptr i8, ptr %scevgep186, i64 %i.ae
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %middle.block, %.preheader68.us.us.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %middle.block ], [ 0, %.preheader68.us.us.us ] ; 3 uses
  %i.as = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %indvars.iv115 ; 2 uses
  %i.at = trunc i64 %indvars.iv115 to i32
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %i.r, %i.au
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr [128 x i8], ptr %i.ar, i64 %i.aw ; 3 uses
  %i.ay = shl nuw nsw i64 %i.aw, 7
  %i.az = getelementptr i8, ptr %i.ar, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 128
  %bound0203 = icmp ult ptr %i.ar, %i.ba
  %bound1204 = icmp ult ptr %i.ax, %scevgep187
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bb ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.as, i64 %i.bb ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep207, align 2, !tbaa !22, !alias.scope !253, !noalias !254 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec208 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec209 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !22, !alias.scope !254 ; 2 uses
  %strided.vec210 = shufflevector <8 x i16> %wide.vec209, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec211 = shufflevector <8 x i16> %wide.vec209, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bc = sub <4 x i16> zeroinitializer, %strided.vec211
  %interleaved.vec = shufflevector <4 x i16> %strided.vec210, <4 x i16> %i.bc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep207, align 2, !tbaa !22, !alias.scope !253, !noalias !254
  %i.bd = sub <4 x i16> zeroinitializer, %strided.vec208
  %interleaved.vec212 = shufflevector <4 x i16> %strided.vec, <4 x i16> %i.bd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec212, ptr %next.gep, align 2, !tbaa !22, !alias.scope !254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, 32
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !239

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.071.us.us.us = phi ptr [ %i.by, %scalar.ph ], [ %i.ax, %vector.memcheck ] ; 6 uses
  %.05970.us.us.us = phi ptr [ %i.bw, %scalar.ph ], [ %i.as, %vector.memcheck ] ; 6 uses
  %.06169.us.us.us = phi i32 [ %i.bz, %scalar.ph ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bf = load i16, ptr %.05970.us.us.us, align 2, !tbaa !22
  %i.bg = load i16, ptr %.071.us.us.us, align 2, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %.05970.us.us.us, i64 2 ; 2 uses
  store i16 %i.bg, ptr %.05970.us.us.us, align 2, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %.071.us.us.us, i64 2 ; 2 uses
  store i16 %i.bf, ptr %.071.us.us.us, align 2, !tbaa !22
  %i.bj = load i16, ptr %i.bh, align 2, !tbaa !22
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !22
  %i.bl = sub i16 0, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.05970.us.us.us, i64 4 ; 2 uses
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !22
  %i.bn = sub i16 0, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %.071.us.us.us, i64 4 ; 2 uses
  store i16 %i.bn, ptr %i.bi, align 2, !tbaa !22
  %i.bp = load i16, ptr %i.bm, align 2, !tbaa !22
  %i.bq = load i16, ptr %i.bo, align 2, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %.05970.us.us.us, i64 6 ; 2 uses
  store i16 %i.bq, ptr %i.bm, align 2, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %.071.us.us.us, i64 6 ; 2 uses
  store i16 %i.bp, ptr %i.bo, align 2, !tbaa !22
  %i.bt = load i16, ptr %i.br, align 2, !tbaa !22
  %i.bu = load i16, ptr %i.bs, align 2, !tbaa !22
  %i.bv = sub i16 0, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.05970.us.us.us, i64 8
  store i16 %i.bv, ptr %i.br, align 2, !tbaa !22
  %i.bx = sub i16 0, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %.071.us.us.us, i64 8
  store i16 %i.bx, ptr %i.bs, align 2, !tbaa !22
  %i.bz = add nuw nsw i32 %.06169.us.us.us, 4
  %i.ca = icmp ult i32 %.06169.us.us.us, 60
  br i1 %i.ca, label %scalar.ph, label %middle.block, !llvm.loop !240

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge.us.us.us, label %vector.memcheck, !llvm.loop !241

._crit_edge.us.us.us:                             ; preds = %middle.block
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge77.split.us.us, label %.preheader68.us.us.us, !llvm.loop !242

.preheader68.us.us:                               ; preds = %.preheader68.lr.ph.us, %.loopexit.us.us
  %i.cb = phi i32 [ %i.du, %.loopexit.us.us ], [ %i.ao, %.preheader68.lr.ph.us ]
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.loopexit.us.us ], [ 0, %.preheader68.lr.ph.us ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv112 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19 ; 5 uses
  %scevgep251 = getelementptr i8, ptr %i.cd, i64 128
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.ah
  br label %vector.memcheck254

vector.memcheck254:                               ; preds = %middle.block292, %.preheader68.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %middle.block292 ], [ 0, %.preheader68.us.us ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [128 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %i.r, %i.cg
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr [128 x i8], ptr %i.cd, i64 %i.ci ; 3 uses
  %i.ck = shl nuw nsw i64 %i.ci, 7
  %i.cl = getelementptr i8, ptr %i.cd, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 128
  %bound0274 = icmp ult ptr %i.cd, %i.cm
  %bound1275 = icmp ult ptr %i.cj, %scevgep252
  %found.conflict276 = and i1 %bound0274, %bound1275
  br i1 %found.conflict276, label %scalar.ph253, label %vector.body279

vector.body279:                                   ; preds = %vector.memcheck254, %vector.body279
  %index280 = phi i64 [ %index.next291, %vector.body279 ], [ 0, %vector.memcheck254 ] ; 2 uses
  %i.cn = shl i64 %index280, 2                    ; 2 uses
  %next.gep281 = getelementptr i8, ptr %i.cj, i64 %i.cn ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.ce, i64 %i.cn ; 2 uses
  %wide.vec283 = load <8 x i16>, ptr %next.gep282, align 2, !tbaa !22, !alias.scope !257, !noalias !258 ; 2 uses
  %strided.vec284 = shufflevector <8 x i16> %wide.vec283, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec285 = shufflevector <8 x i16> %wide.vec283, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec286 = load <8 x i16>, ptr %next.gep281, align 2, !tbaa !22, !alias.scope !258 ; 2 uses
  %strided.vec287 = shufflevector <8 x i16> %wide.vec286, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec288 = shufflevector <8 x i16> %wide.vec286, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.co = sub <4 x i16> zeroinitializer, %strided.vec288
  %interleaved.vec289 = shufflevector <4 x i16> %strided.vec287, <4 x i16> %i.co, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec289, ptr %next.gep282, align 2, !tbaa !22, !alias.scope !257, !noalias !258
  %i.cp = sub <4 x i16> zeroinitializer, %strided.vec285
  %interleaved.vec290 = shufflevector <4 x i16> %strided.vec284, <4 x i16> %i.cp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec290, ptr %next.gep281, align 2, !tbaa !22, !alias.scope !258
  %index.next291 = add nuw i64 %index280, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next291, 32
  br i1 %i.cq, label %middle.block292, label %vector.body279, !llvm.loop !246

scalar.ph253:                                     ; preds = %vector.memcheck254, %scalar.ph253
  %.071.us.us = phi ptr [ %i.dk, %scalar.ph253 ], [ %i.cj, %vector.memcheck254 ] ; 6 uses
  %.05970.us.us = phi ptr [ %i.di, %scalar.ph253 ], [ %i.ce, %vector.memcheck254 ] ; 6 uses
  %.06169.us.us = phi i32 [ %i.dl, %scalar.ph253 ], [ 0, %vector.memcheck254 ] ; 2 uses
  %i.cr = load i16, ptr %.05970.us.us, align 2, !tbaa !22
  %i.cs = load i16, ptr %.071.us.us, align 2, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %.05970.us.us, i64 2 ; 2 uses
  store i16 %i.cs, ptr %.05970.us.us, align 2, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %.071.us.us, i64 2 ; 2 uses
  store i16 %i.cr, ptr %.071.us.us, align 2, !tbaa !22
  %i.cv = load i16, ptr %i.ct, align 2, !tbaa !22
  %i.cw = load i16, ptr %i.cu, align 2, !tbaa !22
  %i.cx = sub i16 0, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.05970.us.us, i64 4 ; 2 uses
  store i16 %i.cx, ptr %i.ct, align 2, !tbaa !22
  %i.cz = sub i16 0, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.071.us.us, i64 4 ; 2 uses
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !22
  %i.db = load i16, ptr %i.cy, align 2, !tbaa !22
  %i.dc = load i16, ptr %i.da, align 2, !tbaa !22
  %i.dd = getelementptr inbounds nuw i8, ptr %.05970.us.us, i64 6 ; 2 uses
  store i16 %i.dc, ptr %i.cy, align 2, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %.071.us.us, i64 6 ; 2 uses
  store i16 %i.db, ptr %i.da, align 2, !tbaa !22
  %i.df = load i16, ptr %i.dd, align 2, !tbaa !22
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !22
  %i.dh = sub i16 0, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.05970.us.us, i64 8
  store i16 %i.dh, ptr %i.dd, align 2, !tbaa !22
  %i.dj = sub i16 0, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %.071.us.us, i64 8
  store i16 %i.dj, ptr %i.de, align 2, !tbaa !22
  %i.dl = add nuw nsw i32 %.06169.us.us, 4
  %i.dm = icmp ult i32 %.06169.us.us, 60
  br i1 %i.dm, label %scalar.ph253, label %middle.block292, !llvm.loop !247

middle.block292:                                  ; preds = %vector.body279, %scalar.ph253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %vector.memcheck254, !llvm.loop !241

._crit_edge.us.us:                                ; preds = %middle.block292
  %i.dn = load i32, ptr %i.x, align 4, !tbaa !95
  %.not101 = icmp eq i32 %i.dn, 0
  br i1 %.not101, label %.loopexit.us.us, label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge.us.us, %.lr.ph74.us.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph74.us.us ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %i.do = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw [128 x i8], ptr %i.do, i64 %indvars.iv109 ; 2 uses
  %i.dq = getelementptr inbounds nuw [128 x i8], ptr %i.dp, i64 %i.y
  tail call void @jcopy_block_row(ptr noundef nonnull %i.dq, ptr noundef %i.dp, i32 noundef 1) #10
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.dr = load i32, ptr %i.x, align 4, !tbaa !95
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next110, %i.ds
  br i1 %i.dt, label %.lr.ph74.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !248

.loopexit.us.us.loopexit:                         ; preds = %.lr.ph74.us.us
  %.pre134 = load i32, ptr %i.w, align 4, !tbaa !68
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %._crit_edge.us.us
  %i.du = phi i32 [ %.pre134, %.loopexit.us.us.loopexit ], [ %i.cb, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next113, %i.dv
  br i1 %i.dw, label %.preheader68.us.us, label %._crit_edge77.split.us.us, !llvm.loop !242

._crit_edge77.split.us.us:                        ; preds = %.loopexit.us.us, %._crit_edge.us.us.us, %.lr.ph.split.us
  %i.dx = phi i32 [ %i.ao, %.lr.ph.split.us ], [ %i.ao, %._crit_edge.us.us.us ], [ %i.du, %.loopexit.us.us ] ; 2 uses
  %i.dy = add i32 %i.dx, %.06387.us               ; 2 uses
  %i.dz = load i32, ptr %i.s, align 8, !tbaa !93
  %i.ea = icmp ult i32 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !249

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre137 = load i32, ptr %i.w, align 4, !tbaa !68 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %i.eb = phi i32 [ %i.eh, %.lr.ph.split.split.us ], [ %.pre137, %.lr.ph.split ]
  %.06387.us88 = phi i32 [ %i.ei, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ec = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !94
  %i.ef = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.eg = tail call ptr %i.ee(ptr noundef %0, ptr noundef %i.ef, i32 noundef %.06387.us88, i32 noundef %i.eb, i32 noundef 1) #10 ; 0 uses
  %i.eh = load i32, ptr %i.w, align 4, !tbaa !68  ; 2 uses
  %i.ei = add i32 %i.eh, %.06387.us88             ; 2 uses
  %i.ej = load i32, ptr %i.s, align 8, !tbaa !93
  %i.ek = icmp ult i32 %i.ei, %i.ej
  br i1 %i.ek, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !249

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %._crit_edge77.split.split
  %i.el = phi i32 [ %i.fh, %._crit_edge77.split.split ], [ %.pre137, %.lr.ph.split ]
  %.06387 = phi i32 [ %i.fi, %._crit_edge77.split.split ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !94
  %i.ep = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.eq = tail call ptr %i.eo(ptr noundef %0, ptr noundef %i.ep, i32 noundef %.06387, i32 noundef %i.el, i32 noundef 1) #10
  %i.er = load i32, ptr %i.w, align 4, !tbaa !68  ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.preheader68.lr.ph, label %._crit_edge77.split.split

.preheader68.lr.ph:                               ; preds = %.lr.ph.split.split
  %i.et = load i32, ptr %i.x, align 4, !tbaa !95
  %.not99 = icmp eq i32 %i.et, 0
  br i1 %.not99, label %._crit_edge77.split.split, label %.preheader68

.preheader68:                                     ; preds = %.preheader68.lr.ph, %.loopexit
  %i.eu = phi i32 [ %i.fd, %.loopexit ], [ %i.er, %.preheader68.lr.ph ]
  %i.ev = phi i32 [ %i.fe, %.loopexit ], [ 1, %.preheader68.lr.ph ]
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.loopexit ], [ 0, %.preheader68.lr.ph ] ; 2 uses
  %.not100 = icmp eq i32 %i.ev, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader68
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv128
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph74, %bb.c
  %indvars.iv125 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next126, %bb.c ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw [128 x i8], ptr %i.ex, i64 %indvars.iv125 ; 2 uses
  %i.ez = getelementptr inbounds nuw [128 x i8], ptr %i.ey, i64 %i.y
  tail call void @jcopy_block_row(ptr noundef nonnull %i.ez, ptr noundef %i.ey, i32 noundef 1) #10
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.fa = load i32, ptr %i.x, align 4, !tbaa !95  ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next126, %i.fb
  br i1 %i.fc, label %bb.c, label %.loopexit.loopexit, !llvm.loop !248

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre136 = load i32, ptr %i.w, align 4, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader68
  %i.fd = phi i32 [ %.pre136, %.loopexit.loopexit ], [ %i.eu, %.preheader68 ] ; 3 uses
  %i.fe = phi i32 [ %i.fa, %.loopexit.loopexit ], [ 0, %.preheader68 ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ff = sext i32 %i.fd to i64
  %i.fg = icmp slt i64 %indvars.iv.next129, %i.ff
  br i1 %i.fg, label %.preheader68, label %._crit_edge77.split.split, !llvm.loop !250

._crit_edge77.split.split:                        ; preds = %.loopexit, %.preheader68.lr.ph, %.lr.ph.split.split
  %i.fh = phi i32 [ %i.er, %.lr.ph.split.split ], [ %i.er, %.preheader68.lr.ph ], [ %i.fd, %.loopexit ] ; 2 uses
  %i.fi = add i32 %i.fh, %.06387                  ; 2 uses
  %i.fj = load i32, ptr %i.s, align 8, !tbaa !93
  %i.fk = icmp ult i32 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !249

._crit_edge:                                      ; preds = %._crit_edge77.split.us.us, %._crit_edge77.split.split, %.lr.ph.split.split.us, %bb.b
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.fl = load i32, ptr %i.a, align 4, !tbaa !89
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next132, %i.fm
  br i1 %i.fn, label %bb.b, label %._crit_edge94, !llvm.loop !251

._crit_edge94:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_reflect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 !guid !265 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph141, label %._crit_edge

.lr.ph141:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph141, %._crit_edge128
  %indvars.iv162 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next163, %._crit_edge128 ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %indvars.iv162 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %.fr143 = freeze i32 %i.i                       ; 2 uses
  %i.j = mul i32 %.fr143, %2                      ; 4 uses
  %i.k = mul i32 %.fr143, %4                      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68   ; 3 uses
  %i.n = mul i32 %i.m, %5                         ; 4 uses
  %.not142 = icmp eq i32 %i.n, 0
  br i1 %.not142, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv162 ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 3 uses
  %i.r = zext i32 %i.k to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 7                  ; 2 uses
  %.not92115 = icmp eq i32 %i.k, 0                ; 2 uses
  br i1 %.not, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %._crit_edge.split.us.us
  %i.t = phi i32 [ %i.jq, %._crit_edge.split.us.us ], [ %i.m, %.lr.ph127 ]
  %.088125.us = phi i32 [ %i.jr, %._crit_edge.split.us.us ], [ 0, %.lr.ph127 ] ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.y = tail call ptr %i.w(ptr noundef %0, ptr noundef %i.x, i32 noundef %.088125.us, i32 noundef %i.t, i32 noundef 1) #10 ; 3 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !68   ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.us, label %._crit_edge.split.us.us

.lr.ph.us:                                        ; preds = %.lr.ph127.split.us
  br i1 %.not92115, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us129

.lr.ph.split.us.split.us129:                      ; preds = %.lr.ph.us, %..loopexit95_crit_edge.us.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %..loopexit95_crit_edge.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ab = load i32, ptr %i.q, align 4, !tbaa !95  ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.k
  br i1 %i.ac, label %.lr.ph118.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us129
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv156
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %i.s, i1 false)
  br label %..loopexit95_crit_edge.us.us

.lr.ph118.us.us:                                  ; preds = %.lr.ph.split.us.split.us129
  %i.af = sub nuw i32 %i.ab, %i.k                 ; 3 uses
  %.not144 = icmp eq i32 %i.af, 0
  br i1 %.not144, label %.loopexit, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph118.us.us
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv156
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %i.r ; 2 uses
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.preheader
  %.3113.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us.preheader ], [ %i.aj, %.lr.ph.us.us.us ] ; 64 uses
  %.177112.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us.preheader ], [ %.mux, %.lr.ph.us.us.us ] ; 65 uses
  %.385111.us.us.us = phi i32 [ %i.k, %.lr.ph.us.us.us.preheader ], [ %i.ja, %.lr.ph.us.us.us ]
  %.187110.us.us.us = phi i32 [ %i.af, %.lr.ph.us.us.us.preheader ], [ %.mux207, %.lr.ph.us.us.us ]
  %i.aj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -128 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 2
  %i.al = load i16, ptr %.177112.us.us.us, align 2, !tbaa !22
  %i.am = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -126
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 4
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !22
  %i.ap = sub i16 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -124
  store i16 %i.ap, ptr %i.am, align 2, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 6
  %i.as = load i16, ptr %i.an, align 2, !tbaa !22
  %i.at = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -122
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 8
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.aw = sub i16 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -120
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 10
  %i.az = load i16, ptr %i.au, align 2, !tbaa !22
  %i.ba = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -118
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 12
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !22
  %i.bd = sub i16 0, %i.bc
  %i.be = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -116
  store i16 %i.bd, ptr %i.ba, align 2, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 14
  %i.bg = load i16, ptr %i.bb, align 2, !tbaa !22
  %i.bh = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -114
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 16
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !22
  %i.bk = sub i16 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -112
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 18
  %i.bn = load i16, ptr %i.bi, align 2, !tbaa !22
  %i.bo = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -110
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 20
  %i.bq = load i16, ptr %i.bm, align 2, !tbaa !22
  %i.br = sub i16 0, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -108
  store i16 %i.br, ptr %i.bo, align 2, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 22
  %i.bu = load i16, ptr %i.bp, align 2, !tbaa !22
  %i.bv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -106
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 24
  %i.bx = load i16, ptr %i.bt, align 2, !tbaa !22
  %i.by = sub i16 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -104
  store i16 %i.by, ptr %i.bv, align 2, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 26
  %i.cb = load i16, ptr %i.bw, align 2, !tbaa !22
  %i.cc = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -102
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 28
  %i.ce = load i16, ptr %i.ca, align 2, !tbaa !22
  %i.cf = sub i16 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -100
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 30
  %i.ci = load i16, ptr %i.cd, align 2, !tbaa !22
  %i.cj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -98
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 32
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !22
  %i.cm = sub i16 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -96
  store i16 %i.cm, ptr %i.cj, align 2, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 34
  %i.cp = load i16, ptr %i.ck, align 2, !tbaa !22
  %i.cq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -94
  store i16 %i.cp, ptr %i.cn, align 2, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 36
  %i.cs = load i16, ptr %i.co, align 2, !tbaa !22
  %i.ct = sub i16 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -92
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 38
  %i.cw = load i16, ptr %i.cr, align 2, !tbaa !22
  %i.cx = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -90
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 40
  %i.cz = load i16, ptr %i.cv, align 2, !tbaa !22
  %i.da = sub i16 0, %i.cz
  %i.db = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -88
  store i16 %i.da, ptr %i.cx, align 2, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 42
  %i.dd = load i16, ptr %i.cy, align 2, !tbaa !22
  %i.de = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -86
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 44
  %i.dg = load i16, ptr %i.dc, align 2, !tbaa !22
  %i.dh = sub i16 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -84
  store i16 %i.dh, ptr %i.de, align 2, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 46
  %i.dk = load i16, ptr %i.df, align 2, !tbaa !22
  %i.dl = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -82
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 48
  %i.dn = load i16, ptr %i.dj, align 2, !tbaa !22
  %i.do = sub i16 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -80
  store i16 %i.do, ptr %i.dl, align 2, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 50
  %i.dr = load i16, ptr %i.dm, align 2, !tbaa !22
  %i.ds = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -78
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 52
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !22
  %i.dv = sub i16 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -76
  store i16 %i.dv, ptr %i.ds, align 2, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 54
  %i.dy = load i16, ptr %i.dt, align 2, !tbaa !22
  %i.dz = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -74
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 56
  %i.eb = load i16, ptr %i.dx, align 2, !tbaa !22
  %i.ec = sub i16 0, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -72
  store i16 %i.ec, ptr %i.dz, align 2, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 58
  %i.ef = load i16, ptr %i.ea, align 2, !tbaa !22
  %i.eg = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -70
  store i16 %i.ef, ptr %i.ed, align 2, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 60
  %i.ei = load i16, ptr %i.ee, align 2, !tbaa !22
  %i.ej = sub i16 0, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -68
  store i16 %i.ej, ptr %i.eg, align 2, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 62
  %i.em = load i16, ptr %i.eh, align 2, !tbaa !22
  %i.en = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -66
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 64
  %i.ep = load i16, ptr %i.el, align 2, !tbaa !22
  %i.eq = sub i16 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -64
  store i16 %i.eq, ptr %i.en, align 2, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 66
  %i.et = load i16, ptr %i.eo, align 2, !tbaa !22
  %i.eu = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -62
  store i16 %i.et, ptr %i.er, align 2, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 68
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !22
  %i.ex = sub i16 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -60
  store i16 %i.ex, ptr %i.eu, align 2, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 70
  %i.fa = load i16, ptr %i.ev, align 2, !tbaa !22
  %i.fb = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -58
  store i16 %i.fa, ptr %i.ey, align 2, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 72
  %i.fd = load i16, ptr %i.ez, align 2, !tbaa !22
  %i.fe = sub i16 0, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -56
  store i16 %i.fe, ptr %i.fb, align 2, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 74
  %i.fh = load i16, ptr %i.fc, align 2, !tbaa !22
  %i.fi = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -54
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !22
  %i.fj = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 76
  %i.fk = load i16, ptr %i.fg, align 2, !tbaa !22
  %i.fl = sub i16 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -52
  store i16 %i.fl, ptr %i.fi, align 2, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 78
  %i.fo = load i16, ptr %i.fj, align 2, !tbaa !22
  %i.fp = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -50
  store i16 %i.fo, ptr %i.fm, align 2, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 80
  %i.fr = load i16, ptr %i.fn, align 2, !tbaa !22
  %i.fs = sub i16 0, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -48
  store i16 %i.fs, ptr %i.fp, align 2, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 82
  %i.fv = load i16, ptr %i.fq, align 2, !tbaa !22
  %i.fw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -46
  store i16 %i.fv, ptr %i.ft, align 2, !tbaa !22
  %i.fx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 84
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !22
  %i.fz = sub i16 0, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -44
  store i16 %i.fz, ptr %i.fw, align 2, !tbaa !22
  %i.gb = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 86
  %i.gc = load i16, ptr %i.fx, align 2, !tbaa !22
  %i.gd = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -42
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 88
  %i.gf = load i16, ptr %i.gb, align 2, !tbaa !22
  %i.gg = sub i16 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -40
  store i16 %i.gg, ptr %i.gd, align 2, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 90
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !22
  %i.gk = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -38
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 92
  %i.gm = load i16, ptr %i.gi, align 2, !tbaa !22
  %i.gn = sub i16 0, %i.gm
  %i.go = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -36
  store i16 %i.gn, ptr %i.gk, align 2, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 94
  %i.gq = load i16, ptr %i.gl, align 2, !tbaa !22
  %i.gr = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -34
  store i16 %i.gq, ptr %i.go, align 2, !tbaa !22
  %i.gs = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 96
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !22
  %i.gu = sub i16 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -32
  store i16 %i.gu, ptr %i.gr, align 2, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 98
  %i.gx = load i16, ptr %i.gs, align 2, !tbaa !22
  %i.gy = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -30
  store i16 %i.gx, ptr %i.gv, align 2, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 100
  %i.ha = load i16, ptr %i.gw, align 2, !tbaa !22
  %i.hb = sub i16 0, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -28
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !22
  %i.hd = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 102
  %i.he = load i16, ptr %i.gz, align 2, !tbaa !22
  %i.hf = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -26
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 104
  %i.hh = load i16, ptr %i.hd, align 2, !tbaa !22
  %i.hi = sub i16 0, %i.hh
  %i.hj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -24
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !22
  %i.hk = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 106
  %i.hl = load i16, ptr %i.hg, align 2, !tbaa !22
  %i.hm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -22
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !22
  %i.hn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 108
  %i.ho = load i16, ptr %i.hk, align 2, !tbaa !22
  %i.hp = sub i16 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -20
  store i16 %i.hp, ptr %i.hm, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 110
  %i.hs = load i16, ptr %i.hn, align 2, !tbaa !22
  %i.ht = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -18
  store i16 %i.hs, ptr %i.hq, align 2, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 112
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !22
  %i.hw = sub i16 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -16
  store i16 %i.hw, ptr %i.ht, align 2, !tbaa !22
  %i.hy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 114
  %i.hz = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.ia = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -14
  store i16 %i.hz, ptr %i.hx, align 2, !tbaa !22
  %i.ib = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 116
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !22
  %i.id = sub i16 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -12
  store i16 %i.id, ptr %i.ia, align 2, !tbaa !22
  %i.if = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 118
  %i.ig = load i16, ptr %i.ib, align 2, !tbaa !22
  %i.ih = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -10
  store i16 %i.ig, ptr %i.ie, align 2, !tbaa !22
  %i.ii = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 120
  %i.ij = load i16, ptr %i.if, align 2, !tbaa !22
  %i.ik = sub i16 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -8
  store i16 %i.ik, ptr %i.ih, align 2, !tbaa !22
  %i.im = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 122
  %i.in = load i16, ptr %i.ii, align 2, !tbaa !22
  %i.io = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -6
  store i16 %i.in, ptr %i.il, align 2, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 124
  %i.iq = load i16, ptr %i.im, align 2, !tbaa !22
  %i.ir = sub i16 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -4
  store i16 %i.ir, ptr %i.io, align 2, !tbaa !22
  %i.it = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 126
  %i.iu = load i16, ptr %i.ip, align 2, !tbaa !22
  %i.iv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -2
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !22
  %i.iw = load i16, ptr %i.it, align 2, !tbaa !22
  %i.ix = sub i16 0, %i.iw
  store i16 %i.ix, ptr %i.iv, align 2, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 128
  %i.iz = add i32 %.187110.us.us.us, -1           ; 2 uses
  %i.ja = add i32 %.385111.us.us.us, -1           ; 2 uses
  %i.jb = icmp ne i32 %i.iz, 0
  %i.jc = icmp ne i32 %i.ja, 0                    ; 2 uses
  %i.jd = select i1 %i.jb, i1 %i.jc, i1 false     ; 3 uses
  %brmerge = select i1 %i.jd, i1 true, i1 %i.jc
  %.mux = select i1 %i.jd, ptr %i.iy, ptr %i.aj
  %.mux207 = select i1 %i.jd, i32 %i.iz, i32 %i.af
  br i1 %brmerge, label %.lr.ph.us.us.us, label %..loopexit95_crit_edge.us.us, !llvm.loop !259

..loopexit95_crit_edge.us.us:                     ; preds = %.lr.ph.us.us.us, %bb.c
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.je = load i32, ptr %i.l, align 4, !tbaa !68  ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next157, %i.jf
  br i1 %i.jg, label %.lr.ph.split.us.split.us129, label %._crit_edge.split.us.us, !llvm.loop !260

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us
  %i.jh = load i32, ptr %i.q, align 4, !tbaa !95
  %.not180 = icmp eq i32 %i.jh, 0
  br i1 %.not180, label %.lr.ph.split.us.split.us.split.us133, label %._crit_edge.split.us.us

.lr.ph.split.us.split.us.split.us133:             ; preds = %.lr.ph.split.us.split.us.us, %.loopexit95.us.us.us135
  %i.ji = phi i32 [ %i.jm, %.loopexit95.us.us.us135 ], [ %i.z, %.lr.ph.split.us.split.us.us ]
  %i.jj = phi i32 [ %i.jn, %.loopexit95.us.us.us135 ], [ 0, %.lr.ph.split.us.split.us.us ] ; 2 uses
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.loopexit95.us.us.us135 ], [ 0, %.lr.ph.split.us.split.us.us ] ; 2 uses
  %.not181 = icmp eq i32 %i.jj, 0
  br i1 %.not181, label %bb.d, label %.loopexit95.us.us.us135

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.split.us133
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv159
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.jl, i8 0, i64 %i.s, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !95
  %.pre168 = load i32, ptr %i.l, align 4, !tbaa !68
  br label %.loopexit95.us.us.us135

.loopexit95.us.us.us135:                          ; preds = %.lr.ph.split.us.split.us.split.us133, %bb.d
  %i.jm = phi i32 [ %i.ji, %.lr.ph.split.us.split.us.split.us133 ], [ %.pre168, %bb.d ] ; 3 uses
  %i.jn = phi i32 [ %i.jj, %.lr.ph.split.us.split.us.split.us133 ], [ %.pre, %bb.d ]
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jo = sext i32 %i.jm to i64
  %i.jp = icmp slt i64 %indvars.iv.next160, %i.jo
  br i1 %i.jp, label %.lr.ph.split.us.split.us.split.us133, label %._crit_edge.split.us.us, !llvm.loop !261

._crit_edge.split.us.us:                          ; preds = %..loopexit95_crit_edge.us.us, %.loopexit95.us.us.us135, %.lr.ph.split.us.split.us.us, %.lr.ph127.split.us
  %i.jq = phi i32 [ %i.z, %.lr.ph127.split.us ], [ %i.z, %.lr.ph.split.us.split.us.us ], [ %i.jm, %.loopexit95.us.us.us135 ], [ %i.je, %..loopexit95_crit_edge.us.us ] ; 2 uses
  %i.jr = add i32 %i.jq, %.088125.us              ; 2 uses
  %i.js = icmp ult i32 %i.jr, %i.n
  br i1 %i.js, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !262

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %.not92115, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split, %.lr.ph127.split.split.us
  %i.jt = phi i32 [ %i.jz, %.lr.ph127.split.split.us ], [ %i.m, %.lr.ph127.split ]
  %.088125.us137 = phi i32 [ %i.ka, %.lr.ph127.split.split.us ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.ju = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !94
  %i.jx = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.jy = tail call ptr %i.jw(ptr noundef %0, ptr noundef %i.jx, i32 noundef %.088125.us137, i32 noundef %i.jt, i32 noundef 1) #10 ; 0 uses
  %i.jz = load i32, ptr %i.l, align 4, !tbaa !68  ; 2 uses
  %i.ka = add i32 %i.jz, %.088125.us137           ; 2 uses
  %i.kb = icmp ult i32 %i.ka, %i.n
  br i1 %i.kb, label %.lr.ph127.split.split.us, label %._crit_edge128, !llvm.loop !262

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split, %._crit_edge.split
  %.088125 = phi i32 [ %i.ti, %._crit_edge.split ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !94
  %i.kf = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.kg = load i32, ptr %i.l, align 4, !tbaa !68
  %i.kh = tail call ptr %i.ke(ptr noundef %0, ptr noundef %i.kf, i32 noundef %.088125, i32 noundef %i.kg, i32 noundef 1) #10
  %i.ki = load i32, ptr %i.l, align 4, !tbaa !68  ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.lr.ph127.split.split
  %wide.trip.count = zext nneg i32 %i.ki to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph, %..loopexit96_crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %..loopexit96_crit_edge ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !19
  %i.km = getelementptr inbounds nuw [128 x i8], ptr %i.kl, i64 %i.p ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph
  %.175103 = phi ptr [ %i.km, %.preheader.lr.ph ], [ %i.tc, %.preheader ] ; 65 uses
  %.076102 = phi ptr [ %i.km, %.preheader.lr.ph ], [ %.mux209, %.preheader ] ; 64 uses
  %.183101 = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.te, %.preheader ]
  %.086100 = phi i32 [ %i.j, %.preheader.lr.ph ], [ %.mux210, %.preheader ]
  %i.kn = getelementptr inbounds i8, ptr %.076102, i64 -128 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.076102, i64 -126
  %i.kp = load i16, ptr %i.kn, align 2, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %.175103, i64 2
  store i16 %i.kp, ptr %.175103, align 2, !tbaa !22
  %i.kr = getelementptr inbounds i8, ptr %.076102, i64 -124
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !22
  %i.kt = sub i16 0, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %.175103, i64 4
  store i16 %i.kt, ptr %i.kq, align 2, !tbaa !22
  %i.kv = getelementptr inbounds i8, ptr %.076102, i64 -122
  %i.kw = load i16, ptr %i.kr, align 2, !tbaa !22
  %i.kx = getelementptr inbounds nuw i8, ptr %.175103, i64 6
  store i16 %i.kw, ptr %i.ku, align 2, !tbaa !22
  %i.ky = getelementptr inbounds i8, ptr %.076102, i64 -120
  %i.kz = load i16, ptr %i.kv, align 2, !tbaa !22
  %i.la = sub i16 0, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.175103, i64 8
  store i16 %i.la, ptr %i.kx, align 2, !tbaa !22
  %i.lc = getelementptr inbounds i8, ptr %.076102, i64 -118
  %i.ld = load i16, ptr %i.ky, align 2, !tbaa !22
  %i.le = getelementptr inbounds nuw i8, ptr %.175103, i64 10
  store i16 %i.ld, ptr %i.lb, align 2, !tbaa !22
  %i.lf = getelementptr inbounds i8, ptr %.076102, i64 -116
  %i.lg = load i16, ptr %i.lc, align 2, !tbaa !22
  %i.lh = sub i16 0, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %.175103, i64 12
  store i16 %i.lh, ptr %i.le, align 2, !tbaa !22
  %i.lj = getelementptr inbounds i8, ptr %.076102, i64 -114
  %i.lk = load i16, ptr %i.lf, align 2, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %.175103, i64 14
  store i16 %i.lk, ptr %i.li, align 2, !tbaa !22
  %i.lm = getelementptr inbounds i8, ptr %.076102, i64 -112
  %i.ln = load i16, ptr %i.lj, align 2, !tbaa !22
  %i.lo = sub i16 0, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %.175103, i64 16
  store i16 %i.lo, ptr %i.ll, align 2, !tbaa !22
  %i.lq = getelementptr inbounds i8, ptr %.076102, i64 -110
  %i.lr = load i16, ptr %i.lm, align 2, !tbaa !22
  %i.ls = getelementptr inbounds nuw i8, ptr %.175103, i64 18
  store i16 %i.lr, ptr %i.lp, align 2, !tbaa !22
  %i.lt = getelementptr inbounds i8, ptr %.076102, i64 -108
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !22
  %i.lv = sub i16 0, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.175103, i64 20
  store i16 %i.lv, ptr %i.ls, align 2, !tbaa !22
  %i.lx = getelementptr inbounds i8, ptr %.076102, i64 -106
  %i.ly = load i16, ptr %i.lt, align 2, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %.175103, i64 22
  store i16 %i.ly, ptr %i.lw, align 2, !tbaa !22
  %i.ma = getelementptr inbounds i8, ptr %.076102, i64 -104
  %i.mb = load i16, ptr %i.lx, align 2, !tbaa !22
  %i.mc = sub i16 0, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.175103, i64 24
  store i16 %i.mc, ptr %i.lz, align 2, !tbaa !22
  %i.me = getelementptr inbounds i8, ptr %.076102, i64 -102
  %i.mf = load i16, ptr %i.ma, align 2, !tbaa !22
  %i.mg = getelementptr inbounds nuw i8, ptr %.175103, i64 26
  store i16 %i.mf, ptr %i.md, align 2, !tbaa !22
  %i.mh = getelementptr inbounds i8, ptr %.076102, i64 -100
  %i.mi = load i16, ptr %i.me, align 2, !tbaa !22
  %i.mj = sub i16 0, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %.175103, i64 28
  store i16 %i.mj, ptr %i.mg, align 2, !tbaa !22
  %i.ml = getelementptr inbounds i8, ptr %.076102, i64 -98
  %i.mm = load i16, ptr %i.mh, align 2, !tbaa !22
  %i.mn = getelementptr inbounds nuw i8, ptr %.175103, i64 30
  store i16 %i.mm, ptr %i.mk, align 2, !tbaa !22
  %i.mo = getelementptr inbounds i8, ptr %.076102, i64 -96
  %i.mp = load i16, ptr %i.ml, align 2, !tbaa !22
  %i.mq = sub i16 0, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.175103, i64 32
  store i16 %i.mq, ptr %i.mn, align 2, !tbaa !22
  %i.ms = getelementptr inbounds i8, ptr %.076102, i64 -94
  %i.mt = load i16, ptr %i.mo, align 2, !tbaa !22
  %i.mu = getelementptr inbounds nuw i8, ptr %.175103, i64 34
  store i16 %i.mt, ptr %i.mr, align 2, !tbaa !22
  %i.mv = getelementptr inbounds i8, ptr %.076102, i64 -92
  %i.mw = load i16, ptr %i.ms, align 2, !tbaa !22
  %i.mx = sub i16 0, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.175103, i64 36
  store i16 %i.mx, ptr %i.mu, align 2, !tbaa !22
  %i.mz = getelementptr inbounds i8, ptr %.076102, i64 -90
  %i.na = load i16, ptr %i.mv, align 2, !tbaa !22
  %i.nb = getelementptr inbounds nuw i8, ptr %.175103, i64 38
  store i16 %i.na, ptr %i.my, align 2, !tbaa !22
  %i.nc = getelementptr inbounds i8, ptr %.076102, i64 -88
  %i.nd = load i16, ptr %i.mz, align 2, !tbaa !22
  %i.ne = sub i16 0, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.175103, i64 40
  store i16 %i.ne, ptr %i.nb, align 2, !tbaa !22
  %i.ng = getelementptr inbounds i8, ptr %.076102, i64 -86
  %i.nh = load i16, ptr %i.nc, align 2, !tbaa !22
  %i.ni = getelementptr inbounds nuw i8, ptr %.175103, i64 42
  store i16 %i.nh, ptr %i.nf, align 2, !tbaa !22
  %i.nj = getelementptr inbounds i8, ptr %.076102, i64 -84
  %i.nk = load i16, ptr %i.ng, align 2, !tbaa !22
  %i.nl = sub i16 0, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.175103, i64 44
  store i16 %i.nl, ptr %i.ni, align 2, !tbaa !22
  %i.nn = getelementptr inbounds i8, ptr %.076102, i64 -82
  %i.no = load i16, ptr %i.nj, align 2, !tbaa !22
  %i.np = getelementptr inbounds nuw i8, ptr %.175103, i64 46
  store i16 %i.no, ptr %i.nm, align 2, !tbaa !22
  %i.nq = getelementptr inbounds i8, ptr %.076102, i64 -80
  %i.nr = load i16, ptr %i.nn, align 2, !tbaa !22
  %i.ns = sub i16 0, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %.175103, i64 48
  store i16 %i.ns, ptr %i.np, align 2, !tbaa !22
  %i.nu = getelementptr inbounds i8, ptr %.076102, i64 -78
  %i.nv = load i16, ptr %i.nq, align 2, !tbaa !22
  %i.nw = getelementptr inbounds nuw i8, ptr %.175103, i64 50
  store i16 %i.nv, ptr %i.nt, align 2, !tbaa !22
  %i.nx = getelementptr inbounds i8, ptr %.076102, i64 -76
  %i.ny = load i16, ptr %i.nu, align 2, !tbaa !22
  %i.nz = sub i16 0, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %.175103, i64 52
  store i16 %i.nz, ptr %i.nw, align 2, !tbaa !22
  %i.ob = getelementptr inbounds i8, ptr %.076102, i64 -74
  %i.oc = load i16, ptr %i.nx, align 2, !tbaa !22
  %i.od = getelementptr inbounds nuw i8, ptr %.175103, i64 54
  store i16 %i.oc, ptr %i.oa, align 2, !tbaa !22
  %i.oe = getelementptr inbounds i8, ptr %.076102, i64 -72
  %i.of = load i16, ptr %i.ob, align 2, !tbaa !22
  %i.og = sub i16 0, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.175103, i64 56
  store i16 %i.og, ptr %i.od, align 2, !tbaa !22
  %i.oi = getelementptr inbounds i8, ptr %.076102, i64 -70
  %i.oj = load i16, ptr %i.oe, align 2, !tbaa !22
  %i.ok = getelementptr inbounds nuw i8, ptr %.175103, i64 58
  store i16 %i.oj, ptr %i.oh, align 2, !tbaa !22
  %i.ol = getelementptr inbounds i8, ptr %.076102, i64 -68
  %i.om = load i16, ptr %i.oi, align 2, !tbaa !22
  %i.on = sub i16 0, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %.175103, i64 60
  store i16 %i.on, ptr %i.ok, align 2, !tbaa !22
  %i.op = getelementptr inbounds i8, ptr %.076102, i64 -66
  %i.oq = load i16, ptr %i.ol, align 2, !tbaa !22
  %i.or = getelementptr inbounds nuw i8, ptr %.175103, i64 62
  store i16 %i.oq, ptr %i.oo, align 2, !tbaa !22
  %i.os = getelementptr inbounds i8, ptr %.076102, i64 -64
  %i.ot = load i16, ptr %i.op, align 2, !tbaa !22
  %i.ou = sub i16 0, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %.175103, i64 64
  store i16 %i.ou, ptr %i.or, align 2, !tbaa !22
  %i.ow = getelementptr inbounds i8, ptr %.076102, i64 -62
  %i.ox = load i16, ptr %i.os, align 2, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %.175103, i64 66
  store i16 %i.ox, ptr %i.ov, align 2, !tbaa !22
  %i.oz = getelementptr inbounds i8, ptr %.076102, i64 -60
  %i.pa = load i16, ptr %i.ow, align 2, !tbaa !22
  %i.pb = sub i16 0, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.175103, i64 68
  store i16 %i.pb, ptr %i.oy, align 2, !tbaa !22
  %i.pd = getelementptr inbounds i8, ptr %.076102, i64 -58
  %i.pe = load i16, ptr %i.oz, align 2, !tbaa !22
  %i.pf = getelementptr inbounds nuw i8, ptr %.175103, i64 70
  store i16 %i.pe, ptr %i.pc, align 2, !tbaa !22
  %i.pg = getelementptr inbounds i8, ptr %.076102, i64 -56
  %i.ph = load i16, ptr %i.pd, align 2, !tbaa !22
  %i.pi = sub i16 0, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %.175103, i64 72
  store i16 %i.pi, ptr %i.pf, align 2, !tbaa !22
  %i.pk = getelementptr inbounds i8, ptr %.076102, i64 -54
  %i.pl = load i16, ptr %i.pg, align 2, !tbaa !22
  %i.pm = getelementptr inbounds nuw i8, ptr %.175103, i64 74
  store i16 %i.pl, ptr %i.pj, align 2, !tbaa !22
  %i.pn = getelementptr inbounds i8, ptr %.076102, i64 -52
  %i.po = load i16, ptr %i.pk, align 2, !tbaa !22
  %i.pp = sub i16 0, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %.175103, i64 76
  store i16 %i.pp, ptr %i.pm, align 2, !tbaa !22
  %i.pr = getelementptr inbounds i8, ptr %.076102, i64 -50
  %i.ps = load i16, ptr %i.pn, align 2, !tbaa !22
  %i.pt = getelementptr inbounds nuw i8, ptr %.175103, i64 78
  store i16 %i.ps, ptr %i.pq, align 2, !tbaa !22
  %i.pu = getelementptr inbounds i8, ptr %.076102, i64 -48
  %i.pv = load i16, ptr %i.pr, align 2, !tbaa !22
  %i.pw = sub i16 0, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %.175103, i64 80
  store i16 %i.pw, ptr %i.pt, align 2, !tbaa !22
  %i.py = getelementptr inbounds i8, ptr %.076102, i64 -46
  %i.pz = load i16, ptr %i.pu, align 2, !tbaa !22
  %i.qa = getelementptr inbounds nuw i8, ptr %.175103, i64 82
  store i16 %i.pz, ptr %i.px, align 2, !tbaa !22
  %i.qb = getelementptr inbounds i8, ptr %.076102, i64 -44
  %i.qc = load i16, ptr %i.py, align 2, !tbaa !22
  %i.qd = sub i16 0, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %.175103, i64 84
  store i16 %i.qd, ptr %i.qa, align 2, !tbaa !22
  %i.qf = getelementptr inbounds i8, ptr %.076102, i64 -42
  %i.qg = load i16, ptr %i.qb, align 2, !tbaa !22
  %i.qh = getelementptr inbounds nuw i8, ptr %.175103, i64 86
  store i16 %i.qg, ptr %i.qe, align 2, !tbaa !22
  %i.qi = getelementptr inbounds i8, ptr %.076102, i64 -40
  %i.qj = load i16, ptr %i.qf, align 2, !tbaa !22
  %i.qk = sub i16 0, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %.175103, i64 88
  store i16 %i.qk, ptr %i.qh, align 2, !tbaa !22
  %i.qm = getelementptr inbounds i8, ptr %.076102, i64 -38
  %i.qn = load i16, ptr %i.qi, align 2, !tbaa !22
  %i.qo = getelementptr inbounds nuw i8, ptr %.175103, i64 90
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !22
  %i.qp = getelementptr inbounds i8, ptr %.076102, i64 -36
  %i.qq = load i16, ptr %i.qm, align 2, !tbaa !22
  %i.qr = sub i16 0, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %.175103, i64 92
  store i16 %i.qr, ptr %i.qo, align 2, !tbaa !22
  %i.qt = getelementptr inbounds i8, ptr %.076102, i64 -34
  %i.qu = load i16, ptr %i.qp, align 2, !tbaa !22
  %i.qv = getelementptr inbounds nuw i8, ptr %.175103, i64 94
  store i16 %i.qu, ptr %i.qs, align 2, !tbaa !22
  %i.qw = getelementptr inbounds i8, ptr %.076102, i64 -32
  %i.qx = load i16, ptr %i.qt, align 2, !tbaa !22
  %i.qy = sub i16 0, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %.175103, i64 96
  store i16 %i.qy, ptr %i.qv, align 2, !tbaa !22
  %i.ra = getelementptr inbounds i8, ptr %.076102, i64 -30
  %i.rb = load i16, ptr %i.qw, align 2, !tbaa !22
  %i.rc = getelementptr inbounds nuw i8, ptr %.175103, i64 98
  store i16 %i.rb, ptr %i.qz, align 2, !tbaa !22
  %i.rd = getelementptr inbounds i8, ptr %.076102, i64 -28
  %i.re = load i16, ptr %i.ra, align 2, !tbaa !22
  %i.rf = sub i16 0, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %.175103, i64 100
  store i16 %i.rf, ptr %i.rc, align 2, !tbaa !22
  %i.rh = getelementptr inbounds i8, ptr %.076102, i64 -26
  %i.ri = load i16, ptr %i.rd, align 2, !tbaa !22
  %i.rj = getelementptr inbounds nuw i8, ptr %.175103, i64 102
  store i16 %i.ri, ptr %i.rg, align 2, !tbaa !22
  %i.rk = getelementptr inbounds i8, ptr %.076102, i64 -24
  %i.rl = load i16, ptr %i.rh, align 2, !tbaa !22
  %i.rm = sub i16 0, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %.175103, i64 104
  store i16 %i.rm, ptr %i.rj, align 2, !tbaa !22
  %i.ro = getelementptr inbounds i8, ptr %.076102, i64 -22
  %i.rp = load i16, ptr %i.rk, align 2, !tbaa !22
  %i.rq = getelementptr inbounds nuw i8, ptr %.175103, i64 106
  store i16 %i.rp, ptr %i.rn, align 2, !tbaa !22
  %i.rr = getelementptr inbounds i8, ptr %.076102, i64 -20
  %i.rs = load i16, ptr %i.ro, align 2, !tbaa !22
  %i.rt = sub i16 0, %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %.175103, i64 108
  store i16 %i.rt, ptr %i.rq, align 2, !tbaa !22
  %i.rv = getelementptr inbounds i8, ptr %.076102, i64 -18
  %i.rw = load i16, ptr %i.rr, align 2, !tbaa !22
  %i.rx = getelementptr inbounds nuw i8, ptr %.175103, i64 110
  store i16 %i.rw, ptr %i.ru, align 2, !tbaa !22
  %i.ry = getelementptr inbounds i8, ptr %.076102, i64 -16
  %i.rz = load i16, ptr %i.rv, align 2, !tbaa !22
  %i.sa = sub i16 0, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %.175103, i64 112
  store i16 %i.sa, ptr %i.rx, align 2, !tbaa !22
  %i.sc = getelementptr inbounds i8, ptr %.076102, i64 -14
  %i.sd = load i16, ptr %i.ry, align 2, !tbaa !22
  %i.se = getelementptr inbounds nuw i8, ptr %.175103, i64 114
  store i16 %i.sd, ptr %i.sb, align 2, !tbaa !22
  %i.sf = getelementptr inbounds i8, ptr %.076102, i64 -12
  %i.sg = load i16, ptr %i.sc, align 2, !tbaa !22
  %i.sh = sub i16 0, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %.175103, i64 116
  store i16 %i.sh, ptr %i.se, align 2, !tbaa !22
  %i.sj = getelementptr inbounds i8, ptr %.076102, i64 -10
  %i.sk = load i16, ptr %i.sf, align 2, !tbaa !22
  %i.sl = getelementptr inbounds nuw i8, ptr %.175103, i64 118
  store i16 %i.sk, ptr %i.si, align 2, !tbaa !22
  %i.sm = getelementptr inbounds i8, ptr %.076102, i64 -8
  %i.sn = load i16, ptr %i.sj, align 2, !tbaa !22
  %i.so = sub i16 0, %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %.175103, i64 120
  store i16 %i.so, ptr %i.sl, align 2, !tbaa !22
  %i.sq = getelementptr inbounds i8, ptr %.076102, i64 -6
  %i.sr = load i16, ptr %i.sm, align 2, !tbaa !22
  %i.ss = getelementptr inbounds nuw i8, ptr %.175103, i64 122
  store i16 %i.sr, ptr %i.sp, align 2, !tbaa !22
  %i.st = getelementptr inbounds i8, ptr %.076102, i64 -4
  %i.su = load i16, ptr %i.sq, align 2, !tbaa !22
  %i.sv = sub i16 0, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.175103, i64 124
  store i16 %i.sv, ptr %i.ss, align 2, !tbaa !22
  %i.sx = getelementptr inbounds i8, ptr %.076102, i64 -2
  %i.sy = load i16, ptr %i.st, align 2, !tbaa !22
  %i.sz = getelementptr inbounds nuw i8, ptr %.175103, i64 126
  store i16 %i.sy, ptr %i.sw, align 2, !tbaa !22
  %i.ta = load i16, ptr %i.sx, align 2, !tbaa !22
  %i.tb = sub i16 0, %i.ta
  store i16 %i.tb, ptr %i.sz, align 2, !tbaa !22
  %i.tc = getelementptr inbounds nuw i8, ptr %.175103, i64 128 ; 2 uses
  %i.td = add i32 %.086100, -1                    ; 2 uses
  %i.te = add i32 %.183101, -1                    ; 2 uses
  %i.tf = icmp ne i32 %i.td, 0
  %i.tg = icmp ne i32 %i.te, 0                    ; 2 uses
  %i.th = select i1 %i.tf, i1 %i.tg, i1 false     ; 3 uses
  %brmerge208 = select i1 %i.th, i1 true, i1 %i.tg
  %.mux209 = select i1 %i.th, ptr %i.kn, ptr %i.tc
  %.mux210 = select i1 %i.th, i32 %i.td, i32 %i.j
  br i1 %brmerge208, label %.preheader, label %..loopexit96_crit_edge, !llvm.loop !263

.loopexit:                                        ; preds = %.lr.ph118.us.us, %.loopexit
  br label %.loopexit

..loopexit96_crit_edge:                           ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader.lr.ph, !llvm.loop !260

._crit_edge.split:                                ; preds = %..loopexit96_crit_edge, %.lr.ph127.split.split
  %i.ti = add i32 %i.ki, %.088125                 ; 2 uses
  %i.tj = icmp ult i32 %i.ti, %i.n
  br i1 %i.tj, label %.lr.ph127.split.split, label %._crit_edge128, !llvm.loop !262

._crit_edge128:                                   ; preds = %._crit_edge.split, %.lr.ph127.split.split.us, %._crit_edge.split.us.us, %bb.b
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.tk = load i32, ptr %i.a, align 4, !tbaa !89
  %i.tl = sext i32 %i.tk to i64
  %i.tm = icmp slt i64 %indvars.iv.next163, %i.tl
  br i1 %i.tm, label %bb.b, label %._crit_edge, !llvm.loop !264

._crit_edge:                                      ; preds = %._crit_edge128, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jcopy_markers_setup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !guid !266 {
bb.a:
  %i.a = and i32 %1, -5
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 254, i32 noundef 65535) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %1, -2
  %or.cond3 = icmp eq i32 %i.b, 2
  br i1 %or.cond3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.c = icmp eq i32 %1, 3
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 224, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 225, i32 noundef 65535) #10
  br i1 %i.c, label %.loopexit.thread.sink.split.sink.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 226, i32 noundef 65535) #10
  br label %.loopexit.thread.sink.split.sink.split

.loopexit:                                        ; preds = %bb.c
  %i.d = icmp eq i32 %1, 4
  br i1 %i.d, label %.loopexit.thread.sink.split, label %.loopexit.thread

.loopexit.thread.sink.split.sink.split:           ; preds = %.preheader, %.preheader.split.us.preheader
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 227, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 228, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 229, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 230, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 231, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 232, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 233, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 234, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 235, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 236, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 237, i32 noundef 65535) #10
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef 238, i32 noundef 65535) #10
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.loopexit.thread.sink.split.sink.split, %.loopexit
  %.sink = phi i32 [ 226, %.loopexit ], [ 239, %.loopexit.thread.sink.split.sink.split ]
  tail call void @jpeg_save_markers(ptr noundef %0, i32 noundef %.sink, i32 noundef 65535) #10
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %.loopexit
  ret void
}

declare void @jpeg_save_markers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @jcopy_markers_execute(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !guid !268 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.034 = load ptr, ptr %i.a, align 8, !tbaa !269 ; 2 uses
  %.not35 = icmp eq ptr %.034, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.036 = phi ptr [ %.034, %.lr.ph ], [ %.0, %bb.u ] ; 12 uses
  switch i32 %2, label %bb.f [
    i32 0, label %bb.u
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !97
  %.not31 = icmp eq i8 %i.e, -2
  br i1 %.not31, label %bb.f, label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97
  %i.h = icmp eq i8 %i.g, -30
  br i1 %i.h, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !97
  %.not30 = icmp eq i8 %i.j, -30
  br i1 %.not30, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %i.k = load i32, ptr %i.b, align 4, !tbaa !100
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !97
  %i.n = icmp eq i8 %i.m, -32
  br i1 %i.n, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !98
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  %i.u = icmp eq i8 %i.t, 74
  br i1 %i.u, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 70
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %i.aa = icmp eq i8 %i.z, 73
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 70
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !270
  %.not33 = icmp ne i32 %i.ah, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !97 ; 2 uses
  %i.ai = icmp eq i8 %.pre, -18
  %or.cond = select i1 %.not33, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.o, label %._crit_edge37

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !98
  %i.al = icmp ugt i32 %i.ak, 4
  br i1 %i.al, label %bb.p, label %._crit_edge37

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = icmp eq i8 %i.ao, 65
  br i1 %i.ap, label %bb.q, label %._crit_edge37

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = icmp eq i8 %i.ar, 100
  br i1 %i.as, label %bb.r, label %._crit_edge37

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = icmp eq i8 %i.au, 111
  br i1 %i.av, label %bb.s, label %._crit_edge37

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.ay = icmp eq i8 %i.ax, 98
  br i1 %i.ay, label %bb.t, label %._crit_edge37

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20
  %i.bb = icmp eq i8 %i.ba, 101
  br i1 %i.bb, label %bb.u, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.n, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bc = phi i8 [ %.pre, %bb.n ], [ -18, %bb.t ], [ -18, %bb.s ], [ -18, %bb.r ], [ -18, %bb.q ], [ -18, %bb.p ], [ -18, %bb.o ]
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !99
  %i.bg = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !98
  tail call void @jpeg_write_marker(ptr noundef nonnull %1, i32 noundef %i.bd, ptr noundef %i.bf, i32 noundef %i.bh) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.t, %bb.m, %bb.e, %bb.d, %bb.c, %._crit_edge37
  %.0 = load ptr, ptr %.036, align 8, !tbaa !269  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !267

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void
}

declare void @jpeg_write_marker(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS22jpeg_decompress_struct", !8, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p2 _ZTS20jvirt_barray_control", !10, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !9, i64 56, !11, i64 64, !6, i64 72, !11, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!13 = !{!12, !6, i64 16}
!14 = !{!12, !6, i64 28}
!15 = !{!12, !6, i64 36}
!16 = !{!12, !6, i64 44}
!17 = !{!12, !6, i64 52}
!18 = !{!"p1 short", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!12, !6, i64 12}
!25 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!26 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!27 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!28 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!29 = !{!"double", !5, i64 0}
!30 = !{!"p2 omnipotent char", !10, i64 0}
!31 = !{!"p1 int", !8, i64 0}
!32 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!33 = !{!"p1 omnipotent char", !8, i64 0}
!34 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!35 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!36 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!37 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!38 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!39 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!40 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!41 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!42 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!43 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!44 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!45 = !{!"jpeg_decompress_struct", !25, i64 0, !26, i64 8, !27, i64 16, !8, i64 24, !6, i64 32, !6, i64 36, !28, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !29, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !30, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !31, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !8, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !6, i64 372, !6, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !21, i64 384, !21, i64 386, !6, i64 388, !5, i64 392, !6, i64 396, !32, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !33, i64 432, !6, i64 440, !5, i64 448, !6, i64 480, !6, i64 484, !6, i64 488, !5, i64 492, !6, i64 532, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !31, i64 552, !6, i64 560, !6, i64 564, !34, i64 568, !35, i64 576, !36, i64 584, !37, i64 592, !38, i64 600, !39, i64 608, !40, i64 616, !41, i64 624, !42, i64 632, !43, i64 640, !44, i64 648}
!46 = !{!45, !6, i64 56}
!47 = !{!12, !6, i64 72}
!48 = !{!12, !6, i64 0}
!49 = !{!45, !6, i64 136}
!50 = !{!45, !6, i64 140}
!51 = !{!45, !6, i64 408}
!52 = !{!45, !6, i64 412}
!53 = !{!12, !6, i64 88}
!54 = !{!12, !6, i64 92}
!55 = !{!12, !6, i64 112}
!56 = !{!12, !6, i64 116}
!57 = !{!45, !25, i64 0}
!58 = !{!"long", !5, i64 0}
!59 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !58, i64 128, !30, i64 136, !6, i64 144, !30, i64 152, !6, i64 160, !6, i64 164}
!60 = !{!59, !6, i64 40}
!61 = !{!59, !8, i64 0}
!62 = !{!12, !6, i64 104}
!63 = !{!12, !6, i64 108}
!64 = !{!12, !9, i64 56}
!65 = !{!45, !8, i64 304}
!66 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !8, i64 80, !8, i64 88}
!67 = !{!66, !6, i64 8}
!68 = !{!66, !6, i64 12}
!69 = !{!12, !6, i64 96}
!70 = !{!12, !6, i64 100}
!71 = !{!12, !6, i64 8}
!72 = !{!12, !6, i64 20}
!73 = !{!45, !26, i64 8}
!74 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !58, i64 88, !58, i64 96}
!75 = !{!"p1 _ZTS20jvirt_barray_control", !8, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!12, !11, i64 80}
!78 = !{!"p1 _ZTS20jpeg_destination_mgr", !8, i64 0}
!79 = !{!"p1 _ZTS16jpeg_comp_master", !8, i64 0}
!80 = !{!"p1 _ZTS22jpeg_c_main_controller", !8, i64 0}
!81 = !{!"p1 _ZTS22jpeg_c_prep_controller", !8, i64 0}
!82 = !{!"p1 _ZTS22jpeg_c_coef_controller", !8, i64 0}
!83 = !{!"p1 _ZTS18jpeg_marker_writer", !8, i64 0}
!84 = !{!"p1 _ZTS20jpeg_color_converter", !8, i64 0}
!85 = !{!"p1 _ZTS16jpeg_downsampler", !8, i64 0}
!86 = !{!"p1 _ZTS16jpeg_forward_dct", !8, i64 0}
!87 = !{!"p1 _ZTS20jpeg_entropy_encoder", !8, i64 0}
!88 = !{!"jpeg_compress_struct", !25, i64 0, !26, i64 8, !27, i64 16, !8, i64 24, !6, i64 32, !6, i64 36, !78, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !29, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !8, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !6, i64 272, !8, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !21, i64 332, !21, i64 334, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !5, i64 376, !6, i64 408, !6, i64 412, !6, i64 416, !5, i64 420, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !31, i64 480, !6, i64 488, !79, i64 496, !80, i64 504, !81, i64 512, !82, i64 520, !83, i64 528, !84, i64 536, !85, i64 544, !86, i64 552, !87, i64 560, !8, i64 568, !6, i64 576}
!89 = !{!88, !6, i64 92}
!90 = !{!88, !8, i64 104}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!12, !11, i64 64}
!93 = !{!66, !6, i64 32}
!94 = !{!74, !8, i64 64}
!95 = !{!66, !6, i64 28}
!96 = !{!"jpeg_marker_struct", !32, i64 0, !5, i64 8, !6, i64 12, !6, i64 16, !33, i64 24}
!97 = !{!96, !5, i64 8}
!98 = !{!96, !6, i64 16}
!99 = !{!96, !33, i64 24}
!100 = !{!88, !6, i64 324}
!101 = !{!88, !6, i64 80}
!102 = !{!88, !6, i64 84}
!103 = !{!88, !6, i64 348}
!104 = !{!88, !6, i64 356}
!105 = !{!88, !6, i64 360}
!106 = !{!88, !6, i64 352}
!107 = !{!"llvm.loop.unswitch.partial.disable"}
!108 = distinct !{!108, !23}
!109 = !{i64 1111071433903641316}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = !{i64 2005117992222638766}
!113 = !{!45, !6, i64 60}
!114 = !{!12, !6, i64 4}
!115 = !{!45, !6, i64 416}
!116 = !{!45, !6, i64 420}
!117 = !{!12, !6, i64 40}
!118 = !{!12, !6, i64 48}
!119 = !{!12, !6, i64 24}
!120 = !{!12, !6, i64 32}
!121 = !{!74, !8, i64 0}
!122 = !{!74, !8, i64 40}
!123 = !{i64 -1533261992207935272}
!124 = distinct !{!124, !91}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{null}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = distinct !{!130, !23}
!131 = distinct !{null, null}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = distinct !{null, null}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = distinct !{!140, !23}
!141 = distinct !{!141, !23}
!142 = !{i64 -732827374796211051}
!143 = !{!88, !6, i64 96}
!144 = !{!66, !6, i64 16}
!145 = !{!88, !25, i64 0}
!146 = !{!8, !8, i64 0}
!147 = !{!66, !8, i64 80}
!148 = !{!45, !32, i64 400}
!149 = !{!45, !6, i64 48}
!150 = !{!45, !6, i64 52}
!151 = distinct !{!151, !23}
!152 = !{i64 6775885533845006617}
!153 = distinct !{null}
!154 = distinct !{!154, !23}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{null}
!159 = distinct !{!159, !23}
!160 = distinct !{!160, !23, !107}
!161 = distinct !{!161, !23}
!162 = distinct !{!162, !23}
!163 = distinct !{null}
!164 = distinct !{!164, !23}
!165 = distinct !{!165, !23}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = distinct !{null}
!169 = distinct !{!169, !23}
!170 = distinct !{!170, !23}
!171 = distinct !{!171, !23, !107}
!172 = distinct !{!172, !23}
!173 = distinct !{!173, !23}
!174 = distinct !{null}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23, !107}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = distinct !{null}
!181 = distinct !{!181, !23}
!182 = distinct !{!182, !23}
!183 = distinct !{!183, !23, !107}
!184 = distinct !{!184, !23}
!185 = distinct !{!185, !23}
!186 = distinct !{null}
!187 = distinct !{!187, !23}
!188 = distinct !{!188, !23}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23, !107}
!191 = distinct !{!191, !23}
!192 = distinct !{!192, !23}
!193 = distinct !{null}
!194 = distinct !{!194, !23}
!195 = distinct !{!195, !23}
!196 = distinct !{!196, !23, !107}
!197 = distinct !{!197, !23}
!198 = distinct !{!198, !23}
!199 = distinct !{null}
!200 = distinct !{!200, !23}
!201 = distinct !{!201, !91}
!202 = distinct !{!202, !23}
!203 = distinct !{!203, !23}
!204 = distinct !{!204, !91}
!205 = distinct !{!205, !23}
!206 = distinct !{null}
!207 = distinct !{!207, !23}
!208 = distinct !{!208, !23}
!209 = distinct !{!209, !23}
!210 = distinct !{null}
!211 = distinct !{!211, !23}
!212 = distinct !{!212, !23}
!213 = distinct !{!213, !23}
!214 = distinct !{!214, !23}
!215 = !{i64 -1976249699540793749}
!216 = distinct !{!216, !23}
!217 = distinct !{!217, !23}
!218 = distinct !{!218, !23}
!219 = distinct !{!219, !23}
!220 = distinct !{!220, !23}
!221 = distinct !{!221, !23}
!222 = !{i64 -6387719305887489597}
!223 = distinct !{!223, !23}
!224 = distinct !{!224, !23}
!225 = distinct !{!225, !91}
!226 = distinct !{!226, !91}
!227 = distinct !{!227, !23}
!228 = distinct !{!228, !23}
!229 = distinct !{!229, !23}
!230 = distinct !{!230, !23}
!231 = !{i64 -4019737555904544907}
!232 = distinct !{!232, !23}
!233 = distinct !{!233, !23}
!234 = distinct !{!234, !23}
!235 = !{i64 3725362038872342915}
!236 = distinct !{!236, i1 false, !"LVerDomain"}
!237 = distinct !{!237, !236}
!238 = distinct !{!238, !236}
!239 = distinct !{!239, !23, !255, !256}
!240 = distinct !{!240, !23, !255}
!241 = distinct !{!241, !23}
!242 = distinct !{!242, !23}
!243 = distinct !{!243, i1 false, !"LVerDomain"}
!244 = distinct !{!244, !243}
!245 = distinct !{!245, !243}
!246 = distinct !{!246, !23, !255, !256}
!247 = distinct !{!247, !23, !255}
!248 = distinct !{!248, !23}
!249 = distinct !{!249, !23}
!250 = distinct !{!250, !23, !107}
!251 = distinct !{!251, !23}
!252 = !{i64 4058674364396203068}
!253 = !{!237}
!254 = !{!238}
!255 = !{!"llvm.loop.isvectorized", i32 1}
!256 = !{!"llvm.loop.unroll.runtime.disable"}
!257 = !{!244}
!258 = !{!245}
!259 = distinct !{!259, !23}
!260 = distinct !{!260, !23}
!261 = distinct !{!261, !23, !107}
!262 = distinct !{!262, !23}
!263 = distinct !{!263, !23}
!264 = distinct !{!264, !23}
!265 = !{i64 -2908422263758783893}
!266 = !{i64 2871116723670237721}
!267 = distinct !{!267, !23}
!268 = !{i64 2236394864282470086}
!269 = !{!32, !32, i64 0}
!270 = !{!88, !6, i64 336}
end_hunk_0
