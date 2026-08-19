inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@config_input_ref:bb.a
  store i32 %i.ch, ptr %i.cd, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  tail call void @ff_psnr_init(ptr noundef nonnull %i.cj, i32 noundef 15) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store ptr @highds, ptr %i.ck, align 8, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store ptr @diff1st, ptr %i.cl, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  store ptr @diff2nd, ptr %i.cm, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_psnr_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i64 @highds(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp slt i32 %1, %3
  %i.b = icmp slt i32 %0, %2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge178

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = sext i32 %2 to i64
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %3 to i64
  %i.g = sext i32 %5 to i64                       ; 6 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv182 = phi i64 [ %i.e, %.preheader.us.preheader ], [ %indvars.iv.next183, %._crit_edge.us ] ; 6 uses
  %.0177.us = phi i64 [ 0, %.preheader.us.preheader ], [ %i.dg, %._crit_edge.us ]
  %i.h = mul nsw i64 %indvars.iv182, %i.g
  %i.i = add nsw i64 %indvars.iv182, 1
  %i.j = mul nsw i64 %i.i, %i.g
  %i.k = add nsw i64 %indvars.iv182, -1
  %i.l = mul nsw i64 %i.k, %i.g
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, 2 ; 3 uses
  %i.m = mul nsw i64 %indvars.iv.next183, %i.g
  %i.n = add nsw i64 %indvars.iv182, -2
  %i.o = mul nsw i64 %i.n, %i.g
  %i.p = add nsw i64 %indvars.iv182, 3
  %i.q = mul nsw i64 %i.p, %i.g
  %invariant.gep = getelementptr [2 x i8], ptr %4, i64 %i.h
  %invariant.gep188 = getelementptr [2 x i8], ptr %4, i64 %i.j
  %invariant.gep190 = getelementptr [2 x i8], ptr %4, i64 %i.l
  %invariant.gep192 = getelementptr [2 x i8], ptr %4, i64 %i.m
  %invariant.gep194 = getelementptr [2 x i8], ptr %4, i64 %i.o
  %invariant.gep196 = getelementptr [2 x i8], ptr %4, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %.1175.us = phi i64 [ %.0177.us, %.preheader.us ], [ %i.dg, %bb.b ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv ; 6 uses
  %i.r = load i16, ptr %gep, align 2, !tbaa !75
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr i8, ptr %gep, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !75
  %i.v = sext i16 %i.u to i32
  %i.w = add nsw i32 %i.v, %i.s
  %gep189 = getelementptr [2 x i8], ptr %invariant.gep188, i64 %indvars.iv ; 6 uses
  %i.x = load i16, ptr %gep189, align 2, !tbaa !75
  %i.y = sext i16 %i.x to i32
  %i.z = add nsw i32 %i.w, %i.y
  %i.aa = getelementptr i8, ptr %gep189, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !75
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = mul nsw i32 %i.ad, 12
  %gep191 = getelementptr [2 x i8], ptr %invariant.gep190, i64 %indvars.iv ; 6 uses
  %i.af = load i16, ptr %gep191, align 2, !tbaa !75
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr i8, ptr %gep191, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !75
  %i.aj = sext i16 %i.ai to i32
  %gep193 = getelementptr [2 x i8], ptr %invariant.gep192, i64 %indvars.iv ; 6 uses
  %i.ak = load i16, ptr %gep193, align 2, !tbaa !75
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr i8, ptr %gep193, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !75
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr i8, ptr %gep, i64 -2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !75
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr i8, ptr %gep, i64 4
  %i.at = load i16, ptr %i.as, align 2, !tbaa !75
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr i8, ptr %gep189, i64 -2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr i8, ptr %gep189, i64 4
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !75
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr i8, ptr %gep191, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !75
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr i8, ptr %gep191, i64 4
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !75
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = getelementptr i8, ptr %gep193, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !75
  %i.bk = sext i16 %i.bj to i32
  %i.bl = add nsw i32 %i.bh, %i.bk
  %i.bm = getelementptr i8, ptr %gep193, i64 4
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !75
  %i.bo = sext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bl, %i.bo
  %gep195 = getelementptr [2 x i8], ptr %invariant.gep194, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %gep195, i64 -2
  %i.br = load <4 x i16>, ptr %i.bq, align 2, !tbaa !75
  %i.bs = sext <4 x i16> %i.br to <4 x i32>
  %gep197 = getelementptr [2 x i8], ptr %invariant.gep196, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %gep197, i64 -2
  %i.bu = load <4 x i16>, ptr %i.bt, align 2, !tbaa !75
  %i.bv = sext <4 x i16> %i.bu to <4 x i32>
  %i.bw = getelementptr i8, ptr %gep191, i64 -4
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !75
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %gep, i64 -4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !75
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr i8, ptr %gep189, i64 -4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !75
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr i8, ptr %gep193, i64 -4
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !75
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr i8, ptr %gep191, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !75
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr i8, ptr %gep, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr i8, ptr %gep189, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !75
  %i.cq = sext i16 %i.cp to i32
  %i.cr = getelementptr i8, ptr %gep193, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !75
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.aj, %i.ag
  %i.cv = add nsw i32 %i.cu, %i.al
  %i.cw = add nsw i32 %i.cv, %i.ao
  %i.cx = add nsw i32 %i.cw, %i.ar
  %i.cy = add nsw i32 %i.cx, %i.au
  %i.cz = add nsw i32 %i.cy, %i.ax
  %reass.add.us = add nsw i32 %i.cz, %i.ba
  %reass.mul.us = mul nsw i32 %reass.add.us, -3
  %.neg146.us = add nsw i32 %reass.mul.us, %i.ae
  %i.da = shl nsw i32 %i.bp, 1
  %i.db = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bs)
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bv)
  %op.rdx210 = add i32 %i.dc, %i.by
  %op.rdx211 = add nsw i32 %i.cb, %i.ce
  %op.rdx212 = add nsw i32 %i.ch, %i.ck
  %op.rdx213 = add nsw i32 %i.cn, %i.cq
  %op.rdx214 = add nsw i32 %i.da, %i.ct
  %op.rdx215 = add i32 %op.rdx210, %op.rdx211
  %op.rdx216 = add nsw i32 %op.rdx212, %op.rdx213
  %op.rdx217 = add i32 %op.rdx214, %i.db
  %op.rdx218 = add i32 %op.rdx215, %op.rdx216
  %op.rdx219 = add i32 %op.rdx218, %op.rdx217
  %i.dd = sub nsw i32 %.neg146.us, %op.rdx219
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = add i64 %.1175.us, %i.df                ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.dh, label %bb.b, label %._crit_edge.us, !llvm.loop !77

._crit_edge.us:                                   ; preds = %bb.b
  %i.di = icmp slt i64 %indvars.iv.next183, %i.f
  br i1 %i.di, label %.preheader.us, label %._crit_edge178, !llvm.loop !78

._crit_edge178:                                   ; preds = %._crit_edge.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.dg, %._crit_edge.us ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i64 0, -1) i64 @diff1st(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %.not86 = icmp eq i32 %0, 0
  %or.cond = or i1 %.not, %.not86
  br i1 %or.cond, label %._crit_edge84, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %5 = zext i32 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.083.us = phi i64 [ %i.ap, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.07382.us = phi i32 [ %i.au, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.a = mul i32 %.07382.us, %4
  %i.b = or disjoint i32 %.07382.us, 1
  %i.c = mul i32 %i.b, %4
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.181.us = phi i64 [ %.083.us, %.preheader.us ], [ %i.ap, %bb.b ]
  %6 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  %i.d = add i32 %i.a, %6                         ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !75   ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = or disjoint i32 %i.d, 1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !75
  %i.m = sext i16 %i.l to i32
  %i.n = add i32 %i.c, %6                         ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !75
  %i.r = sext i16 %i.q to i32
  %i.s = add i32 %i.n, 1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !75
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.e ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !75
  %i.z = sext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.j ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !75
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.o ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !75
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !75
  %i.ai = sext i16 %i.ah to i32
  %.neg75.us = add nsw i32 %i.m, %i.h
  %.neg77.us = add nsw i32 %.neg75.us, %i.r
  %.neg79.us = add nsw i32 %.neg77.us, %i.w
  %i.aj = add nsw i32 %i.z, %i.ac
  %i.ak = add nsw i32 %i.aj, %i.af
  %i.al = add nsw i32 %i.ak, %i.ai
  %i.am = sub nsw i32 %.neg79.us, %i.al
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.181.us, %i.ao                 ; 3 uses
  store i16 %i.g, ptr %i.x, align 2, !tbaa !75
  %i.aq = load i16, ptr %i.p, align 2, !tbaa !75
  store i16 %i.aq, ptr %i.ad, align 2, !tbaa !75
  %i.ar = load i16, ptr %i.k, align 2, !tbaa !75
  store i16 %i.ar, ptr %i.aa, align 2, !tbaa !75
  %i.as = load i16, ptr %i.u, align 2, !tbaa !75
  store i16 %i.as, ptr %i.ag, align 2, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next, %5
  br i1 %i.at, label %bb.b, label %._crit_edge.us, !llvm.loop !79

._crit_edge.us:                                   ; preds = %bb.b
  %i.au = add nuw i32 %.07382.us, 2               ; 2 uses
  %i.av = icmp ult i32 %i.au, %1
  br i1 %i.av, label %.preheader.us, label %._crit_edge84.loopexit87, !llvm.loop !80

._crit_edge84.loopexit87:                         ; preds = %._crit_edge.us
  %i.aw = shl i64 %i.ap, 1
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit87, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aw, %._crit_edge84.loopexit87 ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i64 0, -1) i64 @diff2nd(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) #5 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %.not128 = icmp eq i32 %0, 0
  %or.cond = or i1 %.not, %.not128
  br i1 %or.cond, label %._crit_edge126, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %6 = zext i32 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0125.us = phi i64 [ %i.bj, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.0121124.us = phi i32 [ %i.bs, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.a = mul i32 %.0121124.us, %5
  %i.b = or disjoint i32 %.0121124.us, 1
  %i.c = mul i32 %i.b, %5
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.1123.us = phi i64 [ %.0125.us, %.preheader.us ], [ %i.bj, %bb.b ]
  %7 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  %i.d = add i32 %i.a, %7                         ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !75
  %i.h = sext i16 %i.g to i32
  %i.i = or disjoint i32 %i.d, 1
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !75
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.m, %i.h
  %i.o = add i32 %i.c, %7                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !75
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.n, %i.s
  %i.u = add i32 %i.o, 1
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !75
  %i.y = sext i16 %i.x to i32
  %i.z = add nsw i32 %i.t, %i.y
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.e ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !75 ; 2 uses
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.j ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !75
  %i.af = sext i16 %i.ae to i32
  %i.ag = add nsw i32 %i.af, %i.ac
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.p ; 3 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !75
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.v ; 3 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !75
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.e ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !75
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.j ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !75
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.p ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.v ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !75
  %i.ba = sext i16 %i.az to i32
  %i.bb = add nsw i32 %i.z, %i.ar
  %i.bc = shl nsw i32 %i.ao, 1
  %i.bd = sub nsw i32 %i.bb, %i.bc
  %i.be = add nsw i32 %i.bd, %i.au
  %i.bf = add nsw i32 %i.be, %i.ax
  %i.bg = add nsw i32 %i.bf, %i.ba
  %i.bh = tail call i32 @llvm.abs.i32(i32 %i.bg, i1 true)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add i64 %.1123.us, %i.bi                ; 3 uses
  store i16 %i.ab, ptr %i.ap, align 2, !tbaa !75
  %i.bk = load i16, ptr %i.ah, align 2, !tbaa !75
  store i16 %i.bk, ptr %i.av, align 2, !tbaa !75
  %i.bl = load i16, ptr %i.ad, align 2, !tbaa !75
  store i16 %i.bl, ptr %i.as, align 2, !tbaa !75
  %i.bm = load i16, ptr %i.al, align 2, !tbaa !75
  store i16 %i.bm, ptr %i.ay, align 2, !tbaa !75
  %i.bn = load i16, ptr %i.f, align 2, !tbaa !75
  store i16 %i.bn, ptr %i.aa, align 2, !tbaa !75
  %i.bo = load i16, ptr %i.q, align 2, !tbaa !75
  store i16 %i.bo, ptr %i.ah, align 2, !tbaa !75
  %i.bp = load i16, ptr %i.k, align 2, !tbaa !75
  store i16 %i.bp, ptr %i.ad, align 2, !tbaa !75
  %i.bq = load i16, ptr %i.w, align 2, !tbaa !75
  store i16 %i.bq, ptr %i.al, align 2, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next, %6
  br i1 %i.br, label %bb.b, label %._crit_edge.us, !llvm.loop !81

._crit_edge.us:                                   ; preds = %bb.b
  %i.bs = add nuw i32 %.0121124.us, 2             ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %1
  br i1 %i.bt, label %.preheader.us, label %._crit_edge126.loopexit129, !llvm.loop !82

._crit_edge126.loopexit129:                       ; preds = %._crit_edge.us
  %i.bu = shl i64 %i.bj, 1
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit129, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bu, %._crit_edge126.loopexit129 ]
  ret i64 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.h = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.g, ptr noundef %i.a) #13 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %av_cmp_q.exit43.thread51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !34
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.s, align 8
  %i.v = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.g) #13 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %av_cmp_q.exit43.thread51, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.y = load i64, ptr %i.x, align 4              ; 5 uses
  store i64 %i.y, ptr %i.m, align 8
  %i.z = load i64, ptr %i.n, align 8              ; 5 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.z to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.y to i32 ; 4 uses
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = ashr i64 %i.y, 32                       ; 2 uses
  %i.ac = mul nsw i64 %i.aa, %i.ab
  %sext20.i = shl i64 %i.y, 32
  %i.ad = ashr exact i64 %sext20.i, 32            ; 2 uses
  %i.ae = ashr i64 %i.z, 32
  %i.af = mul nsw i64 %i.ae, %i.ad
  %.not.i = icmp eq i64 %i.ac, %i.af
  %i.ag = lshr i64 %i.z, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  br i1 %.not.i, label %bb.d, label %av_cmp_q.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %i.y, 4294967295           ; 2 uses
  %i.aj = icmp ugt i64 %i.z, 4294967295
  %or.cond.i = and i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %av_cmp_q.exit.thread46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp ne i32 %.sroa.011.0.extract.trunc.i, 0
  %i.al = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond5.i = and i1 %i.al, %i.ak
  %.not.unshifted = xor i32 %.sroa.011.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %.not = icmp sgt i32 %.not.unshifted, -1
  %or.cond = and i1 %or.cond5.i, %.not
  br i1 %or.cond, label %av_cmp_q.exit.thread46, label %av_cmp_q.exit.thread

av_cmp_q.exit.thread46:                           ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load i64, ptr %i.ap, align 8            ; 4 uses
  %.sroa.011.0.extract.trunc.i34 = trunc i64 %i.aq to i32 ; 2 uses
  %sext.i36 = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext.i36, 32
  %i.as = mul nsw i64 %i.ar, %i.ab
  %i.at = ashr i64 %i.aq, 32
  %i.au = mul nsw i64 %i.at, %i.ad
  %.not.i38 = icmp eq i64 %i.as, %i.au
  br i1 %.not.i38, label %bb.f, label %av_cmp_q.exit.thread

bb.f:                                             ; preds = %av_cmp_q.exit.thread46
  %i.av = icmp ugt i64 %i.aq, 4294967295
  %or.cond.i40 = and i1 %i.ai, %i.av
  br i1 %or.cond.i40, label %av_cmp_q.exit43.thread51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp ne i32 %.sroa.011.0.extract.trunc.i34, 0
  %i.ax = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond5.i41 = and i1 %i.ax, %i.aw
  %.not33.unshifted = xor i32 %.sroa.011.0.extract.trunc.i34, %.sroa.0.0.extract.trunc.i
  %.not33 = icmp sgt i32 %.not33.unshifted, -1
  %or.cond54 = and i1 %or.cond5.i41, %.not33
  br i1 %or.cond54, label %av_cmp_q.exit43.thread51, label %av_cmp_q.exit.thread

av_cmp_q.exit.thread:                             ; preds = %av_cmp_q.exit.thread46, %bb.g, %bb.c, %bb.e
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !85
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.7, i32 noundef %.sroa.011.0.extract.trunc.i, i32 noundef %i.ah, i32 noundef %i.bc, i32 noundef %i.be) #13
  br label %av_cmp_q.exit43.thread51

av_cmp_q.exit43.thread51:                         ; preds = %bb.g, %bb.f, %av_cmp_q.exit.thread, %bb.b, %bb.a
  %.0 = phi i32 [ %i.v, %bb.b ], [ %i.h, %bb.a ], [ 0, %av_cmp_q.exit.thread ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @ff_framesync_init_dualinput(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @xpsnr_child_next(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address_is_null) %1) #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = select i1 %.not, ptr %i.a, ptr null
  ret ptr %i.b
}

declare ptr @ff_framesync_child_class_iterate(ptr noundef) #3

declare void @ff_framesync_preinit(ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal i32 @do_xpsnr(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca [3 x ptr], align 16               ; 7 uses
  %i.f = alloca [3 x ptr], align 16               ; 7 uses
  %i.g = alloca [3 x i64], align 16               ; 7 uses
  %i.h = alloca [3 x double], align 16            ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 25 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 168 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 7 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = mul i32 %i.q, %i.o
  %i.s = uitofp nsz i32 %i.r to double
  %i.t = fdiv nsz double %i.s, 8.294400e+06
  %i.u = tail call nsz double @llvm.sqrt.f64(double %i.t)
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.u, double 3.200000e+01, double 5.000000e-01)
  %i.w = fptosi double %i.v to i32                ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  %i.y = shl nsw i32 %i.w, 2
  %spec.select = select i1 %i.x, i32 1, i32 %i.y  ; 3 uses
  %i.z = add i32 %spec.select, -1                 ; 2 uses
  %i.aa = add i32 %i.z, %i.o
  %i.ab = udiv i32 %i.aa, %spec.select            ; 2 uses
  %i.ac = add i32 %i.z, %i.q
  %i.ad = udiv i32 %i.ac, %spec.select            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !87
end_hunk_0
