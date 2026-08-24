Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jdcolor?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jinit_color_deconverter:bb.a
  %i.dw = add nsw i64 %.029.i71, 1
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, 256
  br i1 %exitcond.not.i73, label %build_ycc_rgb_table.exit, label %bb.r, !llvm.loop !60

bb.s:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @null_convert, ptr %i.dx, align 8, !tbaa !48
  br label %build_ycc_rgb_table.exit

bb.t:                                             ; preds = %bb.p
  %i.dy = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store i32 25, ptr %i.dz, align 8, !tbaa !43
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !45
  tail call void %i.ea(ptr noundef nonnull %0) #5
  br label %build_ycc_rgb_table.exit

bb.u:                                             ; preds = %bb.f
  %i.eb = load i32, ptr %i.f, align 4, !tbaa !40
  %i.ec = icmp eq i32 %i.o, %i.eb
  br i1 %i.ec, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @null_convert, ptr %i.eg, align 8, !tbaa !48
  br label %build_ycc_rgb_table.exit

bb.w:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i32 25, ptr %i.ei, align 8, !tbaa !43
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !45
  tail call void %i.ej(ptr noundef nonnull %0) #5
  br label %build_ycc_rgb_table.exit

build_ycc_rgb_table.exit.loopexit.unr-lcssa:      ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %build_ycc_rgb_table.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %build_ycc_rgb_table.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.7, %build_ycc_rgb_table.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.x ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.ek = getelementptr inbounds nuw [96 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i32 0, ptr %i.el, align 8, !tbaa !50
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %build_ycc_rgb_table.exit, label %bb.x, !llvm.loop !61

build_ycc_rgb_table.exit:                         ; preds = %bb.r, %bb.m, %build_ycc_rgb_table.exit.loopexit.unr-lcssa, %bb.x, %bb.h, %bb.v, %bb.w, %bb.t, %bb.s, %bb.o, %bb.n, %bb.j
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.en = load i32, ptr %i.em, align 4, !tbaa !63
  %.not69 = icmp eq i32 %i.en, 0
  br i1 %.not69, label %bb.y, label %bb.z

bb.y:                                             ; preds = %build_ycc_rgb_table.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %build_ycc_rgb_table.exit, %bb.y
  %.sink = phi i32 [ %i.ep, %bb.y ], [ 1, %build_ycc_rgb_table.exit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sink, ptr %i.eq, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_pass_dcolor(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grayscale_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  tail call void @jcopy_sample_rows(ptr noundef %i.a, i32 noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %4, i32 noundef %i.c) #5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ycc_rgb_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph51, label %._crit_edge.split

.lr.ph51:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.r = add nsw i32 %.in, -1
  %i.s = add i32 %.04549, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.04450, i64 8
  %i.u = icmp sgt i32 %.in, 1
  br i1 %i.u, label %.lr.ph, label %._crit_edge.split, !llvm.loop !68

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.r, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.04450 = phi ptr [ %i.t, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.04549 = phi i32 [ %i.s, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !65
  %i.w = zext i32 %.04549 to i64                  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.af = load ptr, ptr %.04450, align 8, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.04247 = phi ptr [ %i.af, %.lr.ph ], [ %i.bo, %bb.b ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !70
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !70
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, %i.ai
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !70
  store i8 %i.at, ptr %.04247, align 1, !tbaa !70
  %i.au = zext i8 %i.ak to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = lshr i64 %i.az, 16
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, %i.ai
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.f, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %.04247, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !70
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = add nsw i32 %i.bi, %i.ai
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.f, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %.04247, i64 2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %.04247, i64 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !71

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph51, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @null_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66   ; 5 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge36.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = load i32, ptr %5, align 8, !tbaa !41       ; 2 uses
  %i.d = icmp slt i32 %6, 1
  %.not27 = icmp eq i32 %i.b, 0
  %7 = zext i32 %6 to i64                         ; 10 uses
  %brmerge = select i1 %i.d, i1 true, i1 %.not27
  br i1 %brmerge, label %._crit_edge36.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = add i32 %i.b, -1
  %xtraiter = and i32 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.f = icmp ult i32 %i.e, 7
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge33
  %.in = phi i32 [ %i.aq, %._crit_edge33 ], [ %4, %.preheader.preheader ] ; 2 uses
  %.02335 = phi ptr [ %i.as, %._crit_edge33 ], [ %3, %.preheader.preheader ] ; 2 uses
  %.02434 = phi i32 [ %i.ar, %._crit_edge33 ], [ %2, %.preheader.preheader ] ; 2 uses
  %i.g = zext i32 %.02434 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69   ; 2 uses
  %i.l = load ptr, ptr %.02335, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.01930.prol = phi i32 [ %i.q, %.prol.preheader ], [ %i.b, %.lr.ph ]
  %.02029.prol = phi ptr [ %i.p, %.prol.preheader ], [ %i.m, %.lr.ph ] ; 2 uses
  %.02128.prol = phi ptr [ %i.n, %.prol.preheader ], [ %i.k, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.02128.prol, i64 1 ; 2 uses
  %i.o = load i8, ptr %.02128.prol, align 1, !tbaa !70
  store i8 %i.o, ptr %.02029.prol, align 1, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %.02029.prol, i64 %7 ; 2 uses
  %i.q = add i32 %.01930.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !72

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.01930.unr = phi i32 [ %i.b, %.lr.ph ], [ %i.q, %.prol.preheader ]
  %.02029.unr = phi ptr [ %i.m, %.lr.ph ], [ %i.p, %.prol.preheader ]
  %.02128.unr = phi ptr [ %i.k, %.lr.ph ], [ %i.n, %.prol.preheader ]
  br i1 %i.f, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.01930 = phi i32 [ %i.ap, %.lr.ph.new ], [ %.01930.unr, %.prol.loopexit ]
  %.02029 = phi ptr [ %i.ao, %.lr.ph.new ], [ %.02029.unr, %.prol.loopexit ] ; 2 uses
  %.02128 = phi ptr [ %i.am, %.lr.ph.new ], [ %.02128.unr, %.prol.loopexit ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  %i.s = load i8, ptr %.02128, align 1, !tbaa !70
  store i8 %i.s, ptr %.02029, align 1, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %.02029, i64 %7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02128, i64 2
  %i.v = load i8, ptr %i.r, align 1, !tbaa !70
  store i8 %i.v, ptr %i.t, align 1, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02128, i64 3
  %i.y = load i8, ptr %i.u, align 1, !tbaa !70
  store i8 %i.y, ptr %i.w, align 1, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !70
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !70
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %7 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02128, i64 6
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !70
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02128, i64 7
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !70
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %7 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02128, i64 8
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !70
  store i8 %i.an, ptr %i.al, align 1, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %7
  %i.ap = add i32 %.01930, -8                     ; 2 uses
  %.not.7 = icmp eq i32 %i.ap, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %7
  br i1 %exitcond.not, label %._crit_edge33, label %.lr.ph, !llvm.loop !74

._crit_edge33:                                    ; preds = %._crit_edge
  %i.aq = add nsw i32 %.in, -1
  %i.ar = add i32 %.02434, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.02335, i64 8
  %i.at = icmp sgt i32 %.in, 1
  br i1 %i.at, label %.preheader, label %._crit_edge36.split, !llvm.loop !75

._crit_edge36.split:                              ; preds = %._crit_edge33, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ycck_cmyk_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph62, label %._crit_edge.split

.lr.ph62:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph62
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.s = add nsw i32 %.in, -1
  %i.t = add i32 %.05060, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.04961, i64 8
  %i.v = icmp sgt i32 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge.split, !llvm.loop !76

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.s, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.04961 = phi ptr [ %i.u, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.05060 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !65
  %i.x = zext i32 %.05060 to i64                  ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.x
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.aj = load ptr, ptr %.04961, align 8, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.04758 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bv, %bb.b ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !70
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = xor i8 %i.al, -1
  %.neg53 = zext i8 %i.at to i32                  ; 3 uses
  %i.au = sub i32 %.neg53, %i.as
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.f, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !70
  store i8 %i.ax, ptr %.04758, align 1, !tbaa !70
  %i.ay = zext i8 %i.an to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aq
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.bd = add nsw i64 %i.bc, %i.ba
  %i.be = lshr i64 %i.bd, 16
  %i.bf = trunc i64 %i.be to i32
  %i.bg = sub i32 %.neg53, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %.04758, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !70
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = sub i32 %.neg53, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.f, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !70
  %i.br = getelementptr inbounds nuw i8, ptr %.04758, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %.04758, i64 3
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %.04758, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !77

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph62, %bb.a
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"jpeg_decompress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !16, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !18, i64 184, !6, i64 192, !6, i64 224, !6, i64 256, !5, i64 288, !11, i64 296, !5, i64 304, !5, i64 308, !6, i64 312, !6, i64 328, !6, i64 344, !5, i64 360, !5, i64 364, !6, i64 368, !19, i64 370, !19, i64 372, !5, i64 376, !6, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !20, i64 408, !5, i64 416, !6, i64 424, !5, i64 456, !5, i64 460, !5, i64 464, !6, i64 468, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !26, i64 568, !27, i64 576, !28, i64 584, !29, i64 592, !30, i64 600, !31, i64 608}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!32 = !{!33, !11, i64 0}
!33 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !34, i64 88}
!34 = !{!"long", !6, i64 0}
!35 = !{!9, !30, i64 600}
!36 = !{!37, !11, i64 0}
!37 = !{!"", !38, i64 0, !18, i64 16, !18, i64 24, !39, i64 32, !39, i64 40}
!38 = !{!"jpeg_color_deconverter", !11, i64 0, !11, i64 8}
!39 = !{!"p1 long", !11, i64 0}
!40 = !{!9, !5, i64 52}
!41 = !{!9, !5, i64 48}
!42 = !{!9, !10, i64 0}
!43 = !{!44, !5, i64 40}
!44 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !34, i64 128, !16, i64 136, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164}
!45 = !{!44, !11, i64 0}
!46 = !{!9, !5, i64 56}
!47 = !{!9, !5, i64 136}
!48 = !{!37, !11, i64 8}
!49 = !{!9, !11, i64 296}
!50 = !{!51, !5, i64 48}
!51 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !11, i64 88}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{null}
!55 = !{!37, !18, i64 16}
!56 = !{!37, !18, i64 24}
!57 = !{!37, !39, i64 32}
!58 = !{!37, !39, i64 40}
end_hunk_0
